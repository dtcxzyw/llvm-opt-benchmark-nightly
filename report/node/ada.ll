inline.NumInlined: 8298
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 103
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %.sroa.speculated.i.i1092 = call i64 @llvm.umin.i64(i64 %i.byi, i64 %i.byg)
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byh, i64 %i.bya
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.speculated.i.i1092, ptr %i.byj)
  %i.byk = load i32, ptr %i.fy, align 8           ; 3 uses
  %i.byl = icmp eq i32 %i.byk, -1
  br i1 %i.byl, label %_ZNK3ada14url_aggregator10get_searchEv.exit1104, label %bb.pf

bb.pf:                                            ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1095
  %i.bym = load i64, ptr %i.fw, align 8           ; 4 uses
  %i.byn = trunc i64 %i.bym to i32
  %i.byo = load i32, ptr %i.fz, align 4           ; 2 uses
  %.not.i1096 = icmp eq i32 %i.byo, -1
  %spec.select.i1097 = select i1 %.not.i1096, i32 %i.byn, i32 %i.byo ; 2 uses
  %i.byp = sub i32 %spec.select.i1097, %i.byk
  %i.byq = icmp ult i32 %i.byp, 2
  br i1 %i.byq, label %_ZNK3ada14url_aggregator10get_searchEv.exit1104, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.byr = zext i32 %i.byk to i64                 ; 5 uses
  %i.bys = icmp ult i64 %i.bym, %i.byr
  br i1 %i.bys, label %bb.ph, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1098

bb.ph:                                            ; preds = %bb.pg
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.byr, i64 noundef %i.bym) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1098: ; preds = %bb.pg
  %i.byt = zext i32 %spec.select.i1097 to i64
  %i.byu = sub nsw i64 %i.byt, %i.byr
  %i.byv = load ptr, ptr %i.fv, align 8
  %i.byw = sub nuw i64 %i.bym, %i.byr
  %.sroa.speculated.i.i1099 = call i64 @llvm.umin.i64(i64 %i.byw, i64 %i.byu)
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byv, i64 %i.byr
  br label %_ZNK3ada14url_aggregator10get_searchEv.exit1104

_ZNK3ada14url_aggregator10get_searchEv.exit1104:  ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1095, %bb.pf, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1098
  %.sroa.4.0.i1100 = phi ptr [ %i.byx, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1098 ], [ @.str.48, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1095 ], [ @.str.48, %bb.pf ]
  %.sroa.0.0.i1101 = phi i64 [ %.sroa.speculated.i.i1099, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1098 ], [ 0, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1095 ], [ 0, %bb.pf ]
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i1101, ptr %.sroa.4.0.i1100)
  %i.byy = load i8, ptr %i.ga, align 1, !range !73, !noundef !74
  store i8 %i.byy, ptr %i.d, align 1
  br i1 %.not349, label %.critedge385.jt8, label %bb.pi

bb.pi:                                            ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1104
  %i.byz = sub nuw i64 %.sroa.01255.1, %.15326.jt83050 ; 2 uses
  %i.bza = load i8, ptr %i.bxe, align 1
  %i.bzb = icmp eq i8 %i.bza, 63
  br i1 %i.bzb, label %.critedge385.jt15, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  call void @_ZN3ada14url_aggregator12clear_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.bzc = icmp ugt i64 %i.byz, 1
  br i1 %i.bzc, label %bb.pk, label %bb.po

bb.pk:                                            ; preds = %bb.pj
  %i.bzd = load i8, ptr %i.bxe, align 1
  %i.bze = or i8 %i.bzd, 32
  %i.bzf = add i8 %i.bze, -97
  %spec.select.i.i1105 = icmp ult i8 %i.bzf, 26
  br i1 %spec.select.i.i1105, label %bb.pl, label %bb.po

bb.pl:                                            ; preds = %bb.pk
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bxe, i64 1
  %i.bzh = load i8, ptr %i.bzg, align 1
  switch i8 %i.bzh, label %bb.po [
    i8 58, label %bb.pm
    i8 124, label %bb.pm
  ]

bb.pm:                                            ; preds = %bb.pl, %bb.pl
  %i.bzi = icmp eq i64 %i.byz, 2
  br i1 %i.bzi, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bxe, i64 2
  %i.bzk = load i8, ptr %i.bzj, align 1
  switch i8 %i.bzk, label %bb.po [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106
  ]

bb.po:                                            ; preds = %bb.pn, %bb.pl, %bb.pk, %bb.pj
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  %i.bzl = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %i.bzm = extractvalue { i64, ptr } %i.bzl, 0    ; 6 uses
  %i.bzn = extractvalue { i64, ptr } %i.bzl, 1    ; 5 uses
  store ptr %i.bzn, ptr %i.gb, align 8
  %i.bzo = load i8, ptr %i.f, align 1
  %i.bzp = icmp eq i8 %i.bzo, 6
  br i1 %i.bzp, label %bb.pp, label %bb.ps

bb.pp:                                            ; preds = %bb.po
  %i.bzq = icmp ugt i64 %i.bzm, 1
  br i1 %i.bzq, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1108, label %bb.pq

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1108:   ; preds = %bb.pp
  %i.bzr = add i64 %i.bzm, -1
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzn, i64 1 ; 2 uses
  %i.bzt = call ptr @memchr(ptr noundef nonnull %i.bzs, i32 noundef 47, i64 noundef %i.bzr) #31 ; 2 uses
  %.not.i1109 = icmp eq ptr %i.bzt, null
  %i.bzu = ptrtoint ptr %i.bzt to i64
  %i.bzv = ptrtoint ptr %i.bzn to i64
  %i.bzw = sub i64 %i.bzu, %i.bzv
  %i.bzx = icmp eq i64 %i.bzw, -1
  %or.cond1746 = select i1 %.not.i1109, i1 true, i1 %i.bzx
  %i.bzy = icmp ne i64 %i.bzm, 2
  %or.cond1784 = select i1 %or.cond1746, i1 %i.bzy, i1 false
  br i1 %or.cond1784, label %bb.pr, label %.lr.ph3055.preheader

bb.pq:                                            ; preds = %bb.pp
  %cond3065 = icmp eq i64 %i.bzm, 0
  br i1 %cond3065, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3055.preheader

bb.pr:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1108
  %i.bzz = load i8, ptr %i.bzs, align 1
  %i.caa = or i8 %i.bzz, 32
  %i.cab = add i8 %i.caa, -97
  %spec.select.i.i1116 = icmp ult i8 %i.cab, 26
  br i1 %spec.select.i.i1116, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1117, label %.lr.ph3055.preheader

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1117: ; preds = %bb.pr
  %i.cac = getelementptr inbounds nuw i8, ptr %i.bzn, i64 2
  %i.cad = load i8, ptr %i.cac, align 1
  %i.cae = icmp eq i8 %i.cad, 58
  br i1 %i.cae, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3055.preheader

bb.ps:                                            ; preds = %bb.po
  %cond3066 = icmp eq i64 %i.bzm, 0
  br i1 %cond3066, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3055.preheader

.lr.ph3055.preheader:                             ; preds = %bb.pr, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1108, %bb.pq, %bb.ps, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1117
  br label %.lr.ph3055

bb.pt:                                            ; preds = %.lr.ph3055
  %.not13.i1121 = icmp eq i64 %i.caf, 0
  br i1 %.not13.i1121, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3055, !llvm.loop !29

.lr.ph3055:                                       ; preds = %.lr.ph3055.preheader, %bb.pt
  %.1.i11203054 = phi i64 [ %i.caf, %bb.pt ], [ %i.bzm, %.lr.ph3055.preheader ]
  %i.caf = add i64 %.1.i11203054, -1              ; 4 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.bzn, i64 %i.caf
  %i.cah = load i8, ptr %i.cag, align 1
  %i.cai = icmp eq i8 %i.cah, 47
  br i1 %i.cai, label %bb.pu, label %bb.pt, !llvm.loop !29

bb.pu:                                            ; preds = %.lr.ph3055
  store i64 %i.caf, ptr %37, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 1 dereferenceable(1) %39)
  %i.caj = load ptr, ptr %38, align 8
  %i.cak = load i64, ptr %i.gc, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.cak, ptr %i.caj)
  %i.cal = load ptr, ptr %38, align 8             ; 2 uses
  %i.cam = icmp eq ptr %i.cal, %i.gd
  br i1 %i.cam, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1126: ; preds = %bb.pu
  %i.can = load i64, ptr %i.gd, align 8
  %i.cao = add i64 %i.can, 1
  call void @_ZdlPvm(ptr noundef %i.cal, i64 noundef %i.cao) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1128: ; preds = %bb.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1126
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread

_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread: ; preds = %bb.pt, %bb.ps, %bb.pq, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1128
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  br label %.critedge369.jt16.preheader

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106: ; preds = %bb.pn, %bb.pn, %bb.pn, %bb.pn, %bb.pm
  call void @_ZN3ada14url_aggregator14clear_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store i8 1, ptr %i.d, align 1
  br label %.critedge369.jt16.preheader

.critedge385.jt8:                                 ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1104
  %i.cap = add i64 %.15326.jt83050, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.cap, %.sroa.01255.1
  br i1 %.not.jt8, label %.critedge369.jt6..loopexit2652.loopexit2863_crit_edge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1079, !llvm.loop !136

.critedge385.jt15:                                ; preds = %bb.pi
  %i.caq = add i64 %.15326.jt83050, 1
  br label %.critedge369.jt15

bb.pv:                                            ; preds = %bb.ah
  unreachable

.critedge369.jt6.preheader:                       ; preds = %bb.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit643
  %.15326.jt6.ph = phi i64 [ %i.iz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.iz, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit643 ], [ %.031121332581, %bb.bg ] ; 2 uses
  %.not.jt63036 = icmp ugt i64 %.15326.jt6.ph, %.sroa.01255.1
  br i1 %.not.jt63036, label %.loopexit2652, label %.lr.ph3038, !llvm.loop !136

.lr.ph3038:                                       ; preds = %.critedge369.jt6.preheader
  br label %bb.by, !llvm.loop !136

.critedge369:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906
  %.15326 = phi i64 [ %.93202625, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901 ], [ %.93202618, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906 ] ; 2 uses
  %.18 = phi i32 [ %.82626, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901 ], [ %.82619, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906 ]
  %.not = icmp ugt i64 %.15326, %.sroa.01255.1
  br i1 %.not, label %.loopexit2652, label %bb.ah, !llvm.loop !136

.critedge369.jt19:                                ; preds = %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453.thread, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.ex, %bb.ev
  %i.car = add i64 %i.adm, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.car, %.sroa.01255.1
  br i1 %.not.jt19, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit910, !llvm.loop !136

.critedge369.jt10:                                ; preds = %bb.ox, %bb.ox
  %i.cas = add i64 %.15326.jt83050, 1             ; 18 uses
  %.not.jt10 = icmp ugt i64 %i.cas, %.sroa.01255.1
  br i1 %.not.jt10, label %.loopexit2652, label %bb.ll, !llvm.loop !136

.critedge369.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit2652, label %.preheader1791, !llvm.loop !136

.critedge369.jt9:                                 ; preds = %bb.lm, %bb.lm
  %i.cat = add i64 %.15326.jt83050, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.cat, %.sroa.01255.1
  br i1 %.not.jt9, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit983, !llvm.loop !136

.critedge369.jt17:                                ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1075, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit809.thread, %bb.hm, %bb.hk, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437, %bb.hh, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1071, %bb.mi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1072, %.critedge381.jt17
  %.15326.jt17 = phi i64 [ %i.bkg, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1075 ], [ %i.apj, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437 ], [ %i.apj, %bb.hh ], [ %i.cat, %bb.mi ], [ %i.bkg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1072 ], [ %i.apj, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread ], [ %i.apj, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit809.thread ], [ %i.apj, %bb.hm ], [ %i.apj, %bb.hk ], [ %i.bgu, %.critedge381.jt17 ], [ %i.bkg, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1071 ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15326.jt17, %.sroa.01255.1
  br i1 %.not.jt17, label %.loopexit2652, label %bb.le, !llvm.loop !136

.critedge369.jt0:                                 ; preds = %.lr.ph2114, %bb.bx, %bb.dn
  %.15326.jt0 = phi i64 [ %spec.select394, %bb.bx ], [ %i.vy, %bb.dn ], [ %.63172113, %.lr.ph2114 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15326.jt0, %.sroa.01255.1
  br i1 %.not.jt0, label %.loopexit2652, label %bb.bh, !llvm.loop !136

.critedge369.jt12:                                ; preds = %bb.do, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.15326.jt12 = phi i64 [ %i.vz, %bb.do ], [ %i.pn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15326.jt12, %.sroa.01255.1
  br i1 %.not.jt12, label %.loopexit2652, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit707.thread, !llvm.loop !136

.critedge369.jt7:                                 ; preds = %bb.ci, %bb.ch
  %i.cau = add i64 %.15326.jt63037, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.cau, %.sroa.01255.1
  br i1 %.not.jt7, label %.loopexit2652, label %bb.df, !llvm.loop !136

.critedge369.jt15:                                ; preds = %.critedge385.jt15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt15, %.critedge381.jt15, %.critedge375.jt15
  %.15326.jt15 = phi i64 [ %i.bhb, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt15 ], [ %i.caq, %.critedge385.jt15 ], [ %i.uy, %.critedge375.jt15 ], [ %i.bgv, %.critedge381.jt15 ] ; 2 uses
  %.not.jt15 = icmp ugt i64 %.15326.jt15, %.sroa.01255.1
  br i1 %.not.jt15, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit711, !llvm.loop !136

.critedge369.jt3:                                 ; preds = %.thread1487, %bb.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i598
  %.15326.jt3 = phi i64 [ %.15326.jt0, %bb.bh ], [ %.33142126, %.thread1487 ], [ %.15326.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i598 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15326.jt3, %.sroa.01255.1
  br i1 %.not.jt3, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit715, !llvm.loop !136

.critedge369.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit2652, label %.critedge369.jt4.thread, !llvm.loop !136

.critedge369.jt18:                                ; preds = %bb.ba, %bb.az
  %.not.jt18 = icmp ugt i64 %i.iz, %.sroa.01255.1
  br i1 %.not.jt18, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit871, !llvm.loop !136

.critedge369.jt13:                                ; preds = %bb.ay, %bb.ax
  %.not.jt13 = icmp ugt i64 %i.iz, %.sroa.01255.1
  br i1 %.not.jt13, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit703, !llvm.loop !136

.critedge369.jt14:                                ; preds = %bb.ax
  %.not.jt14 = icmp ugt i64 %i.iz, %.sroa.01255.1
  br i1 %.not.jt14, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit643, !llvm.loop !136

.critedge369.jt11:                                ; preds = %bb.ba
  %.pre2328 = add i64 %.13122131, 2               ; 4 uses
  %.not.jt11 = icmp ugt i64 %.pre2328, %.sroa.01255.1
  br i1 %.not.jt11, label %.loopexit2652, label %bb.bw, !llvm.loop !136

.critedge369.jt16.preheader:                      ; preds = %bb.cx, %bb.oz, %bb.oy, %bb.cw, %bb.cu, %bb.ln, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit974, %_ZNK3ada14url_aggregator12get_hostnameEv.exit699, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690, %bb.li, %.critedge381.jt16, %bb.lk, %bb.mg, %bb.mg, %bb.mg, %bb.mg, %bb.mf, %_ZNK3ada14url_aggregator12get_pathnameEv.exit949, %bb.ly, %bb.ly, %bb.ly, %bb.ly, %bb.lo, %bb.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i969, %bb.lz, %bb.bx
  %.15326.jt16.ph = phi i64 [ %spec.select394, %bb.bx ], [ %i.cas, %bb.ly ], [ %i.cas, %_ZNK3ada14url_aggregator12get_pathnameEv.exit949 ], [ %.15326.jt63037, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.cat, %bb.mg ], [ %i.cat, %bb.mf ], [ %i.cat, %bb.mg ], [ %i.cas, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit979 ], [ %i.cat, %bb.mg ], [ %.15326.jt63037, %bb.cw ], [ %i.cas, %bb.ly ], [ %.10321, %bb.lk ], [ %i.cas, %bb.ly ], [ %.10321, %bb.li ], [ %i.cas, %bb.ly ], [ %.15326.jt63037, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690 ], [ %.sroa.01255.1, %bb.bw ], [ %i.cau, %_ZNK3ada14url_aggregator12get_hostnameEv.exit699 ], [ %i.cas, %bb.lx ], [ %i.cas, %bb.lz ], [ %i.cas, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i969 ], [ %i.cas, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit974 ], [ %i.cas, %bb.lo ], [ %i.cas, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967 ], [ %.15326.jt83050, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1106 ], [ %i.bgw, %.critedge381.jt16 ], [ %.15326.jt83050, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread ], [ %.15326.jt83050, %bb.oz ], [ %i.cat, %bb.mg ], [ %.15326.jt63037, %bb.cu ], [ %i.cas, %bb.ln ], [ %.15326.jt83050, %bb.oy ], [ %.15326.jt63037, %bb.cx ] ; 5 uses
  %.not.jt163056 = icmp ugt i64 %.15326.jt16.ph, %.sroa.01255.1
  br i1 %.not.jt163056, label %.loopexit2652, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.peel, !llvm.loop !136

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.peel: ; preds = %.critedge369.jt16.preheader
  %i.cav = sub nuw i64 %.sroa.01255.1, %.15326.jt16.ph ; 2 uses
  %i.caw = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.15326.jt16.ph ; 4 uses
  %.not1755.peel = icmp eq i64 %.sroa.01255.1, %.15326.jt16.ph
  br i1 %.not1755.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt16.peel, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929.peel

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929.peel: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.peel
  %i.cax = call ptr @memchr(ptr noundef %i.caw, i32 noundef 63, i64 noundef %i.cav) #31 ; 2 uses
  %.not.i930.peel = icmp eq ptr %i.cax, null
  %i.cay = ptrtoint ptr %i.cax to i64
  %i.caz = ptrtoint ptr %i.caw to i64
  %i.cba = sub i64 %i.cay, %i.caz                 ; 2 uses
  %.not353.peel = icmp eq i64 %i.cba, -1
  %or.cond1744.peel = select i1 %.not.i930.peel, i1 true, i1 %.not353.peel
  br i1 %or.cond1744.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt16.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt15

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt16.peel: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.peel
  call void @_ZN3ada14url_aggregator21consume_prepared_pathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.cav, ptr %i.caw)
  %.not.jt16.not.peel = icmp eq i64 %.sroa.01255.1, -1
  br i1 %.not.jt16.not.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.lr.ph.peel.newph, label %.critedge369.jt6..loopexit2652.loopexit2863_crit_edge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927.lr.ph.peel.newph: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt16.peel
  %i.cbb = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %i.gr ; 4 uses
  %i.cbc = ptrtoint ptr %i.cbb to i64
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927, !llvm.loop !136

.critedge369.jt6..loopexit2652.loopexit2863_crit_edge: ; preds = %.critedge375.jt6, %.critedge385.jt8, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread.jt16.peel
  br label %.loopexit2652, !llvm.loop !136

.loopexit2652:                                    ; preds = %.critedge369.jt2, %.critedge369.jt18, %.critedge369, %.critedge369.jt6.preheader, %.critedge369.jt6..loopexit2652.loopexit2863_crit_edge, %.critedge369.jt8.preheader, %.critedge369.jt16.preheader, %.critedge369.jt19, %.critedge369.jt10, %.critedge369.jt9, %.critedge369.jt17, %.critedge369.jt0, %.critedge369.jt12, %.critedge369.jt7, %.critedge369.jt15, %.critedge369.jt3, %.critedge369.jt4, %.critedge369.jt13, %.critedge369.jt14, %.critedge369.jt11
  br i1 %.sroa.14.0, label %bb.pw, label %.critedge389.critedge

bb.pw:                                            ; preds = %.loopexit2652
  call void @_ZN3ada14url_aggregator26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01248.0, ptr %.sroa.91249.0)
  br label %.critedge389.critedge

.critedge372:                                     ; preds = %bb.hk, %bb.hm, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit809.thread, %bb.ev, %bb.ex, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437, %bb.mk, %bb.mm, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit1006.thread, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread1628, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453.thread1593, %bb.hg, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1699, %.thread1495
  %i.cbd = load ptr, ptr %26, align 8             ; 2 uses
  %i.cbe = icmp eq ptr %i.cbd, %i.ac
  br i1 %i.cbe, label %.critedge389.sink.split, label %.critedge389.sink.split.sink.split

.critedge389.critedge:                            ; preds = %bb.pw, %bb.lh, %bb.dp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit711, %.loopexit2652, %bb.bf, %bb.bd, %bb.lg
  %i.cbf = load ptr, ptr %26, align 8             ; 2 uses
  %i.cbg = icmp eq ptr %i.cbf, %i.ac
  br i1 %i.cbg, label %.critedge389.sink.split, label %.critedge389.sink.split.sink.split

.critedge389.sink.split.sink.split:               ; preds = %.critedge389.critedge, %.critedge372
  %.sink3059 = phi ptr [ %i.cbd, %.critedge372 ], [ %i.cbf, %.critedge389.critedge ]
  %i.cbh = load i64, ptr %i.ac, align 8
  %i.cbi = add i64 %i.cbh, 1
  call void @_ZdlPvm(ptr noundef %.sink3059, i64 noundef %i.cbi) #34
  br label %.critedge389.sink.split

.critedge389.sink.split:                          ; preds = %.critedge389.sink.split.sink.split, %.critedge389.critedge, %.critedge372
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %.critedge389

.critedge389:                                     ; preds = %.critedge389.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada14url_aggregatorD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada14href_from_fileB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.4") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 85 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = icmp ult i64 %1, 16
  br i1 %i.c, label %bb.b, label %.preheader513.preheader

.preheader513.preheader:                          ; preds = %bb.a
  %i.d = add i64 %1, -16                          ; 2 uses
  %i.e = lshr i64 %i.d, 4                         ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.preheader513.epil.preheader, label %.preheader513.preheader.new

.preheader513.preheader.new:                      ; preds = %.preheader513.preheader
  %unroll_iter = and i64 %i.f, 2305843009213693950
  br label %.preheader513

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not6.not.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not6.not.i.i, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, label %.lr.ph.i.i

_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.i, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  br label %bb.z

_ZN3ada7unicode18is_tabs_or_newlineEc.exit:       ; preds = %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.bwm = zext i32 %.0.i1025 to i64
  %i.bwn = sub nsw i64 %i.bwm, %i.bwh
  %i.bwo = load ptr, ptr %i.fp, align 8
  %i.bwp = sub nuw i64 %i.bwf, %i.bwh
  %.sroa.speculated.i.i1026 = call i64 @llvm.umin.i64(i64 %i.bwp, i64 %i.bwn)
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwo, i64 %i.bwh
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.speculated.i.i1026, ptr %i.bwq)
  %i.bwr = load i32, ptr %i.fs, align 8           ; 3 uses
  %i.bws = icmp eq i32 %i.bwr, -1
  br i1 %i.bws, label %_ZNK3ada14url_aggregator10get_searchEv.exit1038, label %bb.oy

bb.oy:                                            ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029
  %i.bwt = load i64, ptr %i.fq, align 8           ; 4 uses
  %i.bwu = trunc i64 %i.bwt to i32
  %i.bwv = load i32, ptr %i.ft, align 4           ; 2 uses
  %.not.i1030 = icmp eq i32 %i.bwv, -1
  %spec.select.i1031 = select i1 %.not.i1030, i32 %i.bwu, i32 %i.bwv ; 2 uses
  %i.bww = sub i32 %spec.select.i1031, %i.bwr
  %i.bwx = icmp ult i32 %i.bww, 2
  br i1 %i.bwx, label %_ZNK3ada14url_aggregator10get_searchEv.exit1038, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bwy = zext i32 %i.bwr to i64                 ; 5 uses
  %i.bwz = icmp ult i64 %i.bwt, %i.bwy
  br i1 %i.bwz, label %bb.pa, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032

bb.pa:                                            ; preds = %bb.oz
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.bwy, i64 noundef %i.bwt) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032: ; preds = %bb.oz
  %i.bxa = zext i32 %spec.select.i1031 to i64
  %i.bxb = sub nsw i64 %i.bxa, %i.bwy
  %i.bxc = load ptr, ptr %i.fp, align 8
  %i.bxd = sub nuw i64 %i.bwt, %i.bwy
  %.sroa.speculated.i.i1033 = call i64 @llvm.umin.i64(i64 %i.bxd, i64 %i.bxb)
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxc, i64 %i.bwy
  br label %_ZNK3ada14url_aggregator10get_searchEv.exit1038

_ZNK3ada14url_aggregator10get_searchEv.exit1038:  ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029, %bb.oy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032
  %.sroa.4.0.i1034 = phi ptr [ %i.bxe, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032 ], [ @.str.48, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029 ], [ @.str.48, %bb.oy ]
  %.sroa.0.0.i1035 = phi i64 [ %.sroa.speculated.i.i1033, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1032 ], [ 0, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1029 ], [ 0, %bb.oy ]
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i1035, ptr %.sroa.4.0.i1034)
  %i.bxf = load i8, ptr %i.fu, align 1, !range !73, !noundef !74
  store i8 %i.bxf, ptr %i.d, align 1
  br i1 %.not314, label %.critedge350.jt8, label %bb.pb

bb.pb:                                            ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1038
  %i.bxg = sub nuw i64 %.sroa.01179.1, %.15292.jt82867 ; 2 uses
  %i.bxh = load i8, ptr %i.bvl, align 1
  %i.bxi = icmp eq i8 %i.bxh, 63
  br i1 %i.bxi, label %.critedge354.critedge, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_ZN3ada14url_aggregator12clear_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.bxj = icmp ugt i64 %i.bxg, 1
  br i1 %i.bxj, label %bb.pd, label %bb.ph

bb.pd:                                            ; preds = %bb.pc
  %i.bxk = load i8, ptr %i.bvl, align 1
  %i.bxl = or i8 %i.bxk, 32
  %i.bxm = add i8 %i.bxl, -97
  %spec.select.i.i1039 = icmp ult i8 %i.bxm, 26
  br i1 %spec.select.i.i1039, label %bb.pe, label %bb.ph

bb.pe:                                            ; preds = %bb.pd
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bvl, i64 1
  %i.bxo = load i8, ptr %i.bxn, align 1
  switch i8 %i.bxo, label %bb.ph [
    i8 58, label %bb.pf
    i8 124, label %bb.pf
  ]

bb.pf:                                            ; preds = %bb.pe, %bb.pe
  %i.bxp = icmp eq i64 %i.bxg, 2
  br i1 %i.bxp, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bvl, i64 2
  %i.bxr = load i8, ptr %i.bxq, align 1
  switch i8 %i.bxr, label %bb.ph [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040
  ]

bb.ph:                                            ; preds = %bb.pg, %bb.pe, %bb.pd, %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  %i.bxs = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %i.bxt = extractvalue { i64, ptr } %i.bxs, 0    ; 6 uses
  %i.bxu = extractvalue { i64, ptr } %i.bxs, 1    ; 5 uses
  store ptr %i.bxu, ptr %i.fv, align 8
  %i.bxv = load i8, ptr %i.f, align 1
  %i.bxw = icmp eq i8 %i.bxv, 6
  br i1 %i.bxw, label %bb.pi, label %bb.pl

bb.pi:                                            ; preds = %bb.ph
  %i.bxx = icmp ugt i64 %i.bxt, 1
  br i1 %i.bxx, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042, label %bb.pj

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042:   ; preds = %bb.pi
  %i.bxy = add i64 %i.bxt, -1
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxu, i64 1 ; 2 uses
  %i.bya = call ptr @memchr(ptr noundef nonnull %i.bxz, i32 noundef 47, i64 noundef %i.bxy) #31 ; 2 uses
  %.not.i1043 = icmp eq ptr %i.bya, null
  %i.byb = ptrtoint ptr %i.bya to i64
  %i.byc = ptrtoint ptr %i.bxu to i64
  %i.byd = sub i64 %i.byb, %i.byc
  %i.bye = icmp eq i64 %i.byd, -1
  %or.cond1663 = select i1 %.not.i1043, i1 true, i1 %i.bye
  %i.byf = icmp ne i64 %i.bxt, 2
  %or.cond1697 = select i1 %or.cond1663, i1 %i.byf, i1 false
  br i1 %or.cond1697, label %bb.pk, label %.lr.ph2872.preheader

bb.pj:                                            ; preds = %bb.pi
  %cond2882 = icmp eq i64 %i.bxt, 0
  br i1 %cond2882, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872.preheader

bb.pk:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042
  %i.byg = load i8, ptr %i.bxz, align 1
  %i.byh = or i8 %i.byg, 32
  %i.byi = add i8 %i.byh, -97
  %spec.select.i.i1050 = icmp ult i8 %i.byi, 26
  br i1 %spec.select.i.i1050, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051, label %.lr.ph2872.preheader

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051: ; preds = %bb.pk
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bxu, i64 2
  %i.byk = load i8, ptr %i.byj, align 1
  %i.byl = icmp eq i8 %i.byk, 58
  br i1 %i.byl, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872.preheader

bb.pl:                                            ; preds = %bb.ph
  %cond2883 = icmp eq i64 %i.bxt, 0
  br i1 %cond2883, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872.preheader

.lr.ph2872.preheader:                             ; preds = %bb.pk, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1042, %bb.pj, %bb.pl, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051
  br label %.lr.ph2872

bb.pm:                                            ; preds = %.lr.ph2872
  %.not13.i1055 = icmp eq i64 %i.bym, 0
  br i1 %.not13.i1055, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph2872, !llvm.loop !29

.lr.ph2872:                                       ; preds = %.lr.ph2872.preheader, %bb.pm
  %.1.i10542871 = phi i64 [ %i.bym, %bb.pm ], [ %i.bxt, %.lr.ph2872.preheader ]
  %i.bym = add i64 %.1.i10542871, -1              ; 4 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bxu, i64 %i.bym
  %i.byo = load i8, ptr %i.byn, align 1
  %i.byp = icmp eq i8 %i.byo, 47
  br i1 %i.byp, label %bb.pn, label %bb.pm, !llvm.loop !29

bb.pn:                                            ; preds = %.lr.ph2872
  store i64 %i.bym, ptr %33, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 1 dereferenceable(1) %35)
  %i.byq = load ptr, ptr %34, align 8
  %i.byr = load i64, ptr %i.fw, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.byr, ptr %i.byq)
  %i.bys = load ptr, ptr %34, align 8             ; 2 uses
  %i.byt = icmp eq ptr %i.bys, %i.fx
  br i1 %i.byt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060: ; preds = %bb.pn
  %i.byu = load i64, ptr %i.fx, align 8
  %i.byv = add i64 %i.byu, 1
  call void @_ZdlPvm(ptr noundef %i.bys, i64 noundef %i.byv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062: ; preds = %bb.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  br label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread

_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread: ; preds = %bb.pm, %bb.pl, %bb.pj, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %.critedge334.jt16.preheader

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040: ; preds = %bb.pg, %bb.pg, %bb.pg, %bb.pg, %bb.pf
  call void @_ZN3ada14url_aggregator14clear_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store i8 1, ptr %i.d, align 1
  br label %.critedge334.jt16.preheader

.critedge350.jt8:                                 ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1038
  %i.byw = add i64 %.15292.jt82867, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.byw, %.sroa.01179.1
  br i1 %.not.jt8, label %.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1013, !llvm.loop !165

bb.po:                                            ; preds = %bb.ah
  unreachable

.critedge334.jt6.preheader:                       ; preds = %bb.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit581
  %.15292.jt6.ph = phi i64 [ %i.il, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.il, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit581 ], [ %.027719952425, %bb.bg ] ; 2 uses
  %.not.jt62853 = icmp ugt i64 %.15292.jt6.ph, %.sroa.01179.1
  br i1 %.not.jt62853, label %.critedge354.critedge, label %.lr.ph2855, !llvm.loop !165

.lr.ph2855:                                       ; preds = %.critedge334.jt6.preheader
  br label %bb.bu, !llvm.loop !165

.critedge334:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840
  %.15292 = phi i64 [ %.92862469, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835 ], [ %.92862462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840 ] ; 2 uses
  %.18 = phi i32 [ %.82470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835 ], [ %.82463, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840 ]
  %.not = icmp ugt i64 %.15292, %.sroa.01179.1
  br i1 %.not, label %.critedge354.critedge, label %bb.ah, !llvm.loop !165

.critedge334.jt19:                                ; preds = %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418.thread, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.es, %bb.eq
  %i.byx = add i64 %i.abw, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.byx, %.sroa.01179.1
  br i1 %.not.jt19, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit844, !llvm.loop !165

.critedge334.jt10:                                ; preds = %bb.oq, %bb.oq
  %i.byy = add i64 %.15292.jt82867, 1             ; 18 uses
  %.not.jt10 = icmp ugt i64 %i.byy, %.sroa.01179.1
  br i1 %.not.jt10, label %.critedge354.critedge, label %bb.le, !llvm.loop !165

.critedge334.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.critedge354.critedge, label %.preheader1704, !llvm.loop !165

.critedge334.jt9:                                 ; preds = %bb.lf, %bb.lf
  %i.byz = add i64 %.15292.jt82867, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.byz, %.sroa.01179.1
  br i1 %.not.jt9, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit917, !llvm.loop !165

.critedge334.jt17:                                ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1009, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit743.thread, %bb.hh, %bb.hf, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402, %bb.hc, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1005, %bb.mb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1006, %.critedge346.jt17
  %.15292.jt17 = phi i64 [ %i.byz, %bb.mb ], [ %i.ant, %bb.hf ], [ %i.bin, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1009 ], [ %i.bin, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1005 ], [ %i.bin, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1006 ], [ %i.bfe, %.critedge346.jt17 ], [ %i.ant, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread ], [ %i.ant, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit743.thread ], [ %i.ant, %bb.hh ], [ %i.ant, %bb.hc ], [ %i.ant, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402 ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15292.jt17, %.sroa.01179.1
  br i1 %.not.jt17, label %.critedge354.critedge, label %bb.kz, !llvm.loop !165

.critedge334.jt0:                                 ; preds = %.lr.ph1976, %bb.bt, %bb.dj
  %.15292.jt0 = phi i64 [ %spec.select359, %bb.bt ], [ %i.ul, %bb.dj ], [ %.62831975, %.lr.ph1976 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15292.jt0, %.sroa.01179.1
  br i1 %.not.jt0, label %.critedge354.critedge, label %bb.bh, !llvm.loop !165

.critedge334.jt12:                                ; preds = %bb.dk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.15292.jt12 = phi i64 [ %i.um, %bb.dk ], [ %i.ob, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15292.jt12, %.sroa.01179.1
  br i1 %.not.jt12, label %.critedge354.critedge, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit645.thread, !llvm.loop !165

.critedge334.jt7:                                 ; preds = %bb.ce, %bb.cd
  %i.bza = add i64 %.15292.jt62854, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.bza, %.sroa.01179.1
  br i1 %.not.jt7, label %.critedge354.critedge, label %bb.db, !llvm.loop !165

.critedge334.jt3:                                 ; preds = %.thread1404, %bb.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i563
  %.15292.jt3 = phi i64 [ %.32801988, %.thread1404 ], [ %.15292.jt0, %bb.bh ], [ %.15292.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i563 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15292.jt3, %.sroa.01179.1
  br i1 %.not.jt3, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit649, !llvm.loop !165

.critedge334.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.critedge354.critedge, label %.critedge334.jt4.thread, !llvm.loop !165

.critedge334.jt18:                                ; preds = %bb.ba, %bb.az
  %.not.jt18 = icmp ugt i64 %i.il, %.sroa.01179.1
  br i1 %.not.jt18, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit805, !llvm.loop !165

.critedge334.jt13:                                ; preds = %bb.ay, %bb.ax
  %.not.jt13 = icmp ugt i64 %i.il, %.sroa.01179.1
  br i1 %.not.jt13, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit641, !llvm.loop !165

.critedge334.jt14:                                ; preds = %bb.ax
  %.not.jt14 = icmp ugt i64 %i.il, %.sroa.01179.1
  br i1 %.not.jt14, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit581, !llvm.loop !165

.critedge334.jt11:                                ; preds = %bb.ba
  %.pre2183 = add i64 %.12781993, 2               ; 4 uses
  %.not.jt11 = icmp ugt i64 %.pre2183, %.sroa.01179.1
  br i1 %.not.jt11, label %.critedge354.critedge, label %bb.bs, !llvm.loop !165

.critedge334.jt16.preheader:                      ; preds = %bb.ct, %bb.os, %bb.or, %bb.cs, %bb.cq, %bb.lg, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit908, %_ZNK3ada14url_aggregator12get_hostnameEv.exit637, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628, %bb.lb, %.critedge346.jt16, %bb.ld, %bb.lz, %bb.lz, %bb.lz, %bb.lz, %bb.ly, %_ZNK3ada14url_aggregator12get_pathnameEv.exit883, %bb.lr, %bb.lr, %bb.lr, %bb.lr, %bb.lh, %bb.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i903, %bb.ls, %bb.bt
  %.15292.jt16.ph = phi i64 [ %spec.select359, %bb.bt ], [ %.15292.jt62854, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.byy, %bb.lr ], [ %i.byy, %_ZNK3ada14url_aggregator12get_pathnameEv.exit883 ], [ %i.byz, %bb.lz ], [ %i.byz, %bb.lz ], [ %i.byz, %bb.ly ], [ %i.byy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913 ], [ %i.byy, %bb.lh ], [ %i.byz, %bb.lz ], [ %i.byy, %bb.lr ], [ %i.byy, %bb.lr ], [ %.10287, %bb.ld ], [ %i.byy, %bb.lr ], [ %.10287, %bb.lb ], [ %.15292.jt62854, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit628 ], [ %.sroa.01179.1, %bb.bs ], [ %i.bza, %_ZNK3ada14url_aggregator12get_hostnameEv.exit637 ], [ %i.byy, %bb.lq ], [ %i.byy, %bb.ls ], [ %i.byy, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i903 ], [ %i.byy, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit908 ], [ %.15292.jt62854, %bb.cs ], [ %i.byy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901 ], [ %i.bff, %.critedge346.jt16 ], [ %.15292.jt82867, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1040 ], [ %.15292.jt82867, %bb.os ], [ %.15292.jt82867, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread ], [ %i.byz, %bb.lz ], [ %.15292.jt62854, %bb.cq ], [ %i.byy, %bb.lg ], [ %.15292.jt82867, %bb.or ], [ %.15292.jt62854, %bb.ct ] ; 4 uses
  %.not.jt162873 = icmp ugt i64 %.15292.jt16.ph, %.sroa.01179.1
  br i1 %.not.jt162873, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel, !llvm.loop !165

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel: ; preds = %.critedge334.jt16.preheader
  %.not1672.peel = icmp eq i64 %.sroa.01179.1, %.15292.jt16.ph
  br i1 %.not1672.peel, label %.critedge334.jt16.backedge.peel, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel
  %i.bzb = sub nuw i64 %.sroa.01179.1, %.15292.jt16.ph
  %i.bzc = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.15292.jt16.ph ; 2 uses
  %i.bzd = call ptr @memchr(ptr noundef %i.bzc, i32 noundef 63, i64 noundef %i.bzb) #31 ; 2 uses
  %.not.i864.peel = icmp eq ptr %i.bzd, null
  %i.bze = ptrtoint ptr %i.bzd to i64
  %i.bzf = ptrtoint ptr %i.bzc to i64
  %i.bzg = sub i64 %i.bze, %i.bzf
  %.not318.peel = icmp eq i64 %i.bzg, -1
  %or.cond1661.peel = or i1 %.not.i864.peel, %.not318.peel
  br i1 %or.cond1661.peel, label %.critedge334.jt16.backedge.peel, label %.critedge354.critedge

.critedge334.jt16.backedge.peel:                  ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.peel
  %.not.jt16.not.peel = icmp eq i64 %.sroa.01179.1, -1
  br i1 %.not.jt16.not.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.lr.ph.peel.newph, label %.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861.lr.ph.peel.newph: ; preds = %.critedge334.jt16.backedge.peel
  %i.bzh = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %i.gl ; 2 uses
  %i.bzi = ptrtoint ptr %i.bzh to i64
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861, !llvm.loop !165

.critedge337:                                     ; preds = %bb.hf, %bb.hh, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit743.thread, %bb.eq, %bb.es, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402, %bb.md, %bb.mf, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit940.thread, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit402.thread1545, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit418.thread1510, %bb.hb, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1616, %.thread1412
  %i.bzj = load ptr, ptr %26, align 8             ; 2 uses
  %i.bzk = icmp eq ptr %i.bzj, %i.w
  br i1 %i.bzk, label %.critedge354.sink.split, label %.critedge354.sink.split.sink.split

.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge: ; preds = %.critedge340.jt6, %.critedge350.jt8, %.critedge334.jt16.backedge.peel
  br label %.critedge354.critedge, !llvm.loop !165

.critedge354.critedge:                            ; preds = %.critedge334, %.critedge334.jt18, %.critedge334.jt2, %bb.ah, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861, %.critedge334.jt6.preheader, %.critedge334.jt6..critedge354.critedge.loopexit2701_crit_edge, %.critedge334.jt8.preheader, %.critedge334.jt16.preheader, %bb.cm, %bb.ld, %bb.pb, %bb.la, %.critedge334.jt11, %.critedge334.jt14, %.critedge334.jt13, %.critedge334.jt4, %.critedge334.jt3, %.critedge334.jt7, %.critedge334.jt12, %.critedge334.jt0, %.critedge334.jt17, %.critedge334.jt9, %.critedge334.jt10, %.critedge334.jt19, %bb.bf, %bb.bd
  %i.bzl = load ptr, ptr %26, align 8             ; 2 uses
  %i.bzm = icmp eq ptr %i.bzl, %i.w
  br i1 %i.bzm, label %.critedge354.sink.split, label %.critedge354.sink.split.sink.split

.critedge354.sink.split.sink.split:               ; preds = %.critedge354.critedge, %.critedge337
  %.sink2876 = phi ptr [ %i.bzj, %.critedge337 ], [ %i.bzl, %.critedge354.critedge ]
  %i.bzn = load i64, ptr %i.w, align 8
  %i.bzo = add i64 %i.bzn, 1
  call void @_ZdlPvm(ptr noundef %.sink2876, i64 noundef %i.bzo) #34
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
end_hunk_1
