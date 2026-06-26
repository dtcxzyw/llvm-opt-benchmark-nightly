inline.NumInlined: 8589
inline.NumDeleted: 3289
begin_hunk_0_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dxb, ptr %i.c, align 1, !tbaa !70
  %i.dxc = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxd = getelementptr i8, ptr %i.dxc, i64 -24
  %i.dxe = load i64, ptr %i.dxd, align 8
  %i.dxf = getelementptr inbounds i8, ptr %0, i64 %i.dxe
  %i.dxg = getelementptr inbounds nuw i8, ptr %i.dxf, i64 16
  %i.dxh = load i64, ptr %i.dxg, align 8, !tbaa !659
  %.not.i2509 = icmp eq i64 %i.dxh, 0
  br i1 %.not.i2509, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dxi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dxj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dxb)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507: ; preds = %bb.agk, %bb.agh, %bb.lb, %bb.kn, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944, %bb.agz, %bb.aga, %.thread2790, %.thread2779, %.thread2771, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148, %bb.fh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092, %bb.dv, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14820 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ 0, %bb.abq ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ 0, %bb.pz ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ 0, %bb.oo ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ 0, %bb.rp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ 0, %bb.za ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ 0, %bb.acw ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ 0, %bb.adp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ 0, %bb.zy ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ 0, %bb.aez ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ 0, %bb.lb ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ch ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dv ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ 0, %bb.fh ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0806, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2771 ], [ 0, %.thread2779 ], [ 0, %.thread2790 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.kz, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.kn ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3805 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ null, %bb.lb ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ch ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dv ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ null, %bb.fh ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2771 ], [ null, %.thread2779 ], [ null, %.thread2790 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0802, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.kn ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7801 = phi i8 [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ %.0794, %bb.abq ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ %.0794, %bb.pz ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ %.3797, %bb.oo ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ %.0794, %bb.rp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ %.0794, %bb.za ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ %.0794, %bb.acw ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ %.0794, %bb.adp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ %.0794, %bb.zy ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ %.0794, %bb.aez ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ %.1795, %bb.lb ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ %.0794, %bb.t ], [ %.0794, %bb.aq ], [ %.0794, %bb.ch ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0794, %bb.dv ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ %.0794, %bb.fh ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ %.0794, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0794, %bb.ahm ], [ %.0794, %bb.md ], [ %.0794, %bb.no ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ %.3797, %bb.oj ], [ %.0794, %bb.ni ], [ %.3797, %bb.ov ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ %.0794, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ %.5799, %bb.tw ], [ %.0794, %bb.ss ], [ %.5799, %bb.ud ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ %.5799, %bb.tx ], [ %.0794, %bb.wj ], [ %.0794, %bb.wb ], [ %.0794, %.thread2771 ], [ %.0794, %.thread2779 ], [ %.0794, %.thread2790 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ %.0794, %bb.adj ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ %.0794, %bb.aga ], [ %.0794, %bb.qt ], [ %.0794, %bb.wc ], [ %.0794, %bb.agz ], [ %.0794, %bb.xs ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ %.0794, %bb.zs ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ %.1795, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1795, %bb.kn ], [ %.0794, %bb.agh ], [ %.0794, %bb.agk ]
  %i.dxk = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !745

bb.ail:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !70
  %i.dxl = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxm = getelementptr i8, ptr %i.dxl, i64 -24
  %i.dxn = load i64, ptr %i.dxm, align 8
  %i.dxo = getelementptr inbounds i8, ptr %0, i64 %i.dxn
  %i.dxp = getelementptr inbounds nuw i8, ptr %i.dxo, i64 16
  %i.dxq = load i64, ptr %i.dxp, align 8, !tbaa !659
  %.not.i2514 = icmp eq i64 %i.dxq, 0
  br i1 %.not.i2514, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518, %bb.ail
  %.not851 = icmp eq i8 %.0806, 0
  br i1 %.not851, label %_ZNSolsEj.exit2151, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0806, ptr %i.a, align 1, !tbaa !70
  %i.dxt = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxu = getelementptr i8, ptr %i.dxt, i64 -24
  %i.dxv = load i64, ptr %i.dxu, align 8
  %i.dxw = getelementptr inbounds i8, ptr %0, i64 %i.dxv
  %i.dxx = getelementptr inbounds nuw i8, ptr %i.dxw, i64 16
  %i.dxy = load i64, ptr %i.dxx, align 8, !tbaa !659
  %.not.i2519 = icmp eq i64 %i.dxy, 0
  br i1 %.not.i2519, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dxz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dya = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2151

_ZNSolsEj.exit2151:                               ; preds = %bb.by, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dyb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyc = load i32, ptr %i.dyb, align 4, !tbaa !739
  %i.dyd = and i32 %i.dyc, 8192
  %.not.i2524 = icmp eq i32 %i.dyd, 0
  br i1 %.not.i2524, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2151
  %i.dye = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dyf = icmp eq i32 %i.dye, 0
  br i1 %i.dyf, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525

bb.aiu:                                           ; preds = %bb.ait
  %i.dyg = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dyh = getelementptr inbounds nuw i8, ptr %i.dyg, i64 32
  %i.dyi = load i32, ptr %i.dyh, align 8, !tbaa !677
  %i.dyj = icmp eq i32 %i.dyi, 0
  br i1 %i.dyj, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyg, i64 232
  %i.dyl = load ptr, ptr %i.dyk, align 8, !tbaa !727 ; 2 uses
  %i.dym = load ptr, ptr %i.dyl, align 8, !tbaa !446
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dym, i64 48
  %i.dyo = load ptr, ptr %i.dyn, align 8
  %i.dyp = invoke noundef i32 %i.dyo(ptr noundef nonnull align 8 dereferenceable(64) %i.dyl)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyq = landingpad { ptr, i32 }
          catch ptr null
  %i.dyr = extractvalue { ptr, i32 } %i.dyq, 0
  call void @__clang_call_terminate(ptr %i.dyr) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525: ; preds = %_ZNSolsEj.exit2151, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kv, %bb.lc, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.bz, %bb.ci, %bb.u, %bb.ar, %bb.gm, %bb.ib, %bb.jk, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dw, %bb.dp, %bb.fi, %bb.fb, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lb, %bb.j ], [ %lpad.phi2986, %bb.lc ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.dso, %bb.agl ], [ %lpad.phi3016, %bb.dw ], [ %.pn935.pn, %bb.gm ], [ %.pn931.pn, %bb.ib ], [ %.pn927.pn, %bb.jk ], [ %i.cnl, %bb.xr ], [ %i.tz, %bb.bz ], [ %lpad.phi3006, %bb.fi ], [ %i.bmg, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dex, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byl, %bb.st ], [ %i.byj, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.dek, %bb.abk ], [ %i.ckh, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbr, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cvn, %bb.yz ], [ %.pn943, %bb.dp ], [ %.pn939, %bb.fb ], [ %i.bit, %bb.nh ], [ %i.chf, %bb.wd ], [ %i.bsy, %bb.qu ], [ %i.cxu, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.dki, %bb.adi ], [ %lpad.phi3026, %bb.ci ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dqf, %bb.afk ], [ %i.bsi, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cmy, %bb.xm ], [ %i.azm, %bb.kv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.la, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %i.q = icmp uge i8 %.sroa.03.0.i.i, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = icmp ult i8 %i.s, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !746   ; 2 uses
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !746   ; 2 uses
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !746 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 7
  br i1 %i.ac, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !446
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !677
  %i.aj = or i32 %i.ai, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %bb.k

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ak = phi i8 [ %i.v, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread ], [ %i.s, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.am, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.an = and i16 %i.a, 3
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond.i14 = and i1 %i.ao, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.ap = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.ap, 0
  %i.aq = srem i16 %i.a, 400
  %i.ar = icmp eq i16 %i.aq, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ar
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.as = zext nneg i8 %i.c to i64
  %i.at = add nuw nsw i64 %i.as, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aw, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not = icmp ult i8 %.sroa.03.0.i.i17, %i.am
  br i1 %.not, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ax = sext i16 %i.a to i32
  %i.ay = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.ay to i32
  %i.az = add nsw i32 %.neg.i.i, %i.ax            ; 4 uses
  %i.ba = zext nneg i8 %i.c to i32
  %i.bb = zext i8 %i.am to i32
  %i.bc = add nsw i32 %i.az, -399
  %i.bd = icmp slt i32 %i.az, 0
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.az
  %i.bf = sdiv i32 %i.be, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bf, -400
  %i.bg = add nsw i32 %.neg15.i.i, %i.az          ; 3 uses
  %i.bh = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bh, i32 -3, i32 9
  %i.bi = add nsw i32 %.v.i.i, %i.ba
  %i.bj = mul nsw i32 %i.bi, 153
  %i.bk = add nsw i32 %i.bj, 2
  %i.bl = udiv i32 %i.bk, 5
  %i.bm = mul nsw i32 %i.bg, 365
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = udiv i32 %i.bg, 100
  %i.bp = mul nsw i32 %i.bf, 146097
  %i.bq = add nuw nsw i32 %i.bb, -719469
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bp
  %i.bt = add nsw i32 %i.bs, %i.bn
  %i.bu = add nsw i32 %i.bt, %i.bm
  %i.bv = sub nsw i32 %i.bu, %i.bo                ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -5
  %i.bx = add nsw i32 %i.bv, 4
  %.in.i.i = select i1 %i.bw, i32 %i.bx, i32 %i.bv
  %i.by = urem i32 %.in.i.i, 7
  %i.bz = trunc nuw nsw i32 %i.by to i8           ; 2 uses
  %i.ca = icmp ult i8 %i.ak, 7
  %i.cb = icmp ne i8 %i.ak, %i.bz
  %or.cond32 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond32, label %bb.j, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !446
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !677
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.k

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %bb.i
  %.sroa.023.0 = phi i8 [ %i.bz, %bb.i ], [ %i.ab, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread ], [ %i.ak, %.thread ], [ %i.ak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20 ], [ %i.y, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37 ]
  %.sroa.023.0.fr = freeze i8 %.sroa.023.0
  %2 = urem i8 %.sroa.023.0.fr, 7
  %3 = zext nneg i8 %2 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a ]
  ret i32 %.1
}

declare { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !739
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !677
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !727  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !446
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit unwind label %bb.e, !inline_history !743 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #26
  ret void

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !716, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !70
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !446
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !659
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dxe, ptr %i.c, align 1, !tbaa !70
  %i.dxf = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxg = getelementptr i8, ptr %i.dxf, i64 -24
  %i.dxh = load i64, ptr %i.dxg, align 8
  %i.dxi = getelementptr inbounds i8, ptr %0, i64 %i.dxh
  %i.dxj = getelementptr inbounds nuw i8, ptr %i.dxi, i64 16
  %i.dxk = load i64, ptr %i.dxj, align 8, !tbaa !659
  %.not.i2509 = icmp eq i64 %i.dxk, 0
  br i1 %.not.i2509, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dxl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dxm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dxe)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507: ; preds = %bb.agk, %bb.agh, %bb.lb, %bb.kn, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944, %bb.agz, %bb.aga, %.thread2790, %.thread2779, %.thread2771, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148, %bb.fh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092, %bb.dv, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14820 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ 0, %bb.abq ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ 0, %bb.pz ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ 0, %bb.oo ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ 0, %bb.rp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ 0, %bb.za ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ 0, %bb.acw ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ 0, %bb.adp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ 0, %bb.zy ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ 0, %bb.aez ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ 0, %bb.lb ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ch ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dv ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ 0, %bb.fh ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0806, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2771 ], [ 0, %.thread2779 ], [ 0, %.thread2790 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.kn ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3805 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ null, %bb.lb ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ch ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dv ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ null, %bb.fh ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2771 ], [ null, %.thread2779 ], [ null, %.thread2790 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0802, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.kn ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7801 = phi i8 [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ %.0794, %bb.abq ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ %.0794, %bb.pz ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ %.3797, %bb.oo ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ %.0794, %bb.rp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ %.0794, %bb.za ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ %.0794, %bb.acw ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ %.0794, %bb.adp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ %.0794, %bb.zy ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ %.0794, %bb.aez ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ %.1795, %bb.lb ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ %.0794, %bb.t ], [ %.0794, %bb.aq ], [ %.0794, %bb.ch ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0794, %bb.dv ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ %.0794, %bb.fh ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ %.0794, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0794, %bb.ahm ], [ %.0794, %bb.md ], [ %.0794, %bb.no ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ %.3797, %bb.oj ], [ %.0794, %bb.ni ], [ %.3797, %bb.ov ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ %.0794, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ %.5799, %bb.tw ], [ %.0794, %bb.ss ], [ %.5799, %bb.ud ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ %.5799, %bb.tx ], [ %.0794, %bb.wj ], [ %.0794, %bb.wb ], [ %.0794, %.thread2771 ], [ %.0794, %.thread2779 ], [ %.0794, %.thread2790 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ %.0794, %bb.adj ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ %.0794, %bb.aga ], [ %.0794, %bb.qt ], [ %.0794, %bb.wc ], [ %.0794, %bb.agz ], [ %.0794, %bb.xs ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ %.0794, %bb.zs ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ %.1795, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1795, %bb.kn ], [ %.0794, %bb.agh ], [ %.0794, %bb.agk ]
  %i.dxn = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !767

bb.ail:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !70
  %i.dxo = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxp = getelementptr i8, ptr %i.dxo, i64 -24
  %i.dxq = load i64, ptr %i.dxp, align 8
  %i.dxr = getelementptr inbounds i8, ptr %0, i64 %i.dxq
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxr, i64 16
  %i.dxt = load i64, ptr %i.dxs, align 8, !tbaa !659
  %.not.i2514 = icmp eq i64 %i.dxt, 0
  br i1 %.not.i2514, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518, %bb.ail
  %.not851 = icmp eq i8 %.0806, 0
  br i1 %.not851, label %_ZNSolsEj.exit2151, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0806, ptr %i.a, align 1, !tbaa !70
  %i.dxw = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxx = getelementptr i8, ptr %i.dxw, i64 -24
  %i.dxy = load i64, ptr %i.dxx, align 8
  %i.dxz = getelementptr inbounds i8, ptr %0, i64 %i.dxy
  %i.dya = getelementptr inbounds nuw i8, ptr %i.dxz, i64 16
  %i.dyb = load i64, ptr %i.dya, align 8, !tbaa !659
  %.not.i2519 = icmp eq i64 %i.dyb, 0
  br i1 %.not.i2519, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dyc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dyd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2151

_ZNSolsEj.exit2151:                               ; preds = %bb.by, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !739
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2524 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2524, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2151
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !677
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !727 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !446
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525: ; preds = %_ZNSolsEj.exit2151, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kv, %bb.lc, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.bz, %bb.ci, %bb.u, %bb.ar, %bb.gm, %bb.ib, %bb.jk, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dw, %bb.dp, %bb.fi, %bb.fb, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lc, %bb.j ], [ %lpad.phi2986, %bb.lc ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3016, %bb.dw ], [ %.pn935.pn, %bb.gm ], [ %.pn931.pn, %bb.ib ], [ %.pn927.pn, %bb.jk ], [ %i.cno, %bb.xr ], [ %i.ua, %bb.bz ], [ %lpad.phi3006, %bb.fi ], [ %i.bmi, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dfa, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.den, %bb.abk ], [ %i.ckk, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cvq, %bb.yz ], [ %.pn943, %bb.dp ], [ %.pn939, %bb.fb ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.dkl, %bb.adi ], [ %lpad.phi3026, %bb.ci ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dqi, %bb.afk ], [ %i.bsk, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cnb, %bb.xm ], [ %i.azn, %bb.kv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %i.q = icmp uge i8 %.sroa.03.0.i.i, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = icmp ult i8 %i.s, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !746   ; 2 uses
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !746   ; 2 uses
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !746 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 7
  br i1 %i.ac, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !446
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !677
  %i.aj = or i32 %i.ai, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %bb.k

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ak = phi i8 [ %i.v, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread ], [ %i.s, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.am, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.an = and i16 %i.a, 3
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond.i14 = and i1 %i.ao, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.ap = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.ap, 0
  %i.aq = srem i16 %i.a, 400
  %i.ar = icmp eq i16 %i.aq, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ar
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.as = zext nneg i8 %i.c to i64
  %i.at = add nuw nsw i64 %i.as, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aw, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not = icmp ult i8 %.sroa.03.0.i.i17, %i.am
  br i1 %.not, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ax = sext i16 %i.a to i32
  %i.ay = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.ay to i32
  %i.az = add nsw i32 %.neg.i.i, %i.ax            ; 4 uses
  %i.ba = zext nneg i8 %i.c to i32
  %i.bb = zext i8 %i.am to i32
  %i.bc = add nsw i32 %i.az, -399
  %i.bd = icmp slt i32 %i.az, 0
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.az
  %i.bf = sdiv i32 %i.be, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bf, -400
  %i.bg = add nsw i32 %.neg15.i.i, %i.az          ; 3 uses
  %i.bh = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bh, i32 -3, i32 9
  %i.bi = add nsw i32 %.v.i.i, %i.ba
  %i.bj = mul nsw i32 %i.bi, 153
  %i.bk = add nsw i32 %i.bj, 2
  %i.bl = udiv i32 %i.bk, 5
  %i.bm = mul nsw i32 %i.bg, 365
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = udiv i32 %i.bg, 100
  %i.bp = mul nsw i32 %i.bf, 146097
  %i.bq = add nuw nsw i32 %i.bb, -719469
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bp
  %i.bt = add nsw i32 %i.bs, %i.bn
  %i.bu = add nsw i32 %i.bt, %i.bm
  %i.bv = sub nsw i32 %i.bu, %i.bo                ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -5
  %i.bx = add nsw i32 %i.bv, 4
  %.in.i.i = select i1 %i.bw, i32 %i.bx, i32 %i.bv
  %i.by = urem i32 %.in.i.i, 7
  %i.bz = trunc nuw nsw i32 %i.by to i8           ; 2 uses
  %i.ca = icmp ult i8 %i.ak, 7
  %i.cb = icmp ne i8 %i.ak, %i.bz
  %or.cond32 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond32, label %bb.j, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !446
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !677
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.k

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %bb.i
  %.sroa.023.0 = phi i8 [ %i.bz, %bb.i ], [ %i.ab, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread ], [ %i.ak, %.thread ], [ %i.ak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20 ], [ %i.y, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37 ]
  %.sroa.023.0.fr = freeze i8 %.sroa.023.0
  %2 = urem i8 %.sroa.023.0.fr, 7
  %3 = zext nneg i8 %2 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !766, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !70
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !446
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !659
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %5 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = load ptr, ptr %1, align 8, !tbaa !446
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !446    ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !688, !range !86, !noundef !87
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !694  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !695
  %.not.i1.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n)
          to label %.noexc18 unwind label %bb.s

end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dxe, ptr %i.c, align 1, !tbaa !70
  %i.dxf = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxg = getelementptr i8, ptr %i.dxf, i64 -24
  %i.dxh = load i64, ptr %i.dxg, align 8
  %i.dxi = getelementptr inbounds i8, ptr %0, i64 %i.dxh
  %i.dxj = getelementptr inbounds nuw i8, ptr %i.dxi, i64 16
  %i.dxk = load i64, ptr %i.dxj, align 8, !tbaa !659
  %.not.i2509 = icmp eq i64 %i.dxk, 0
  br i1 %.not.i2509, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dxl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dxm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dxe)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507: ; preds = %bb.agk, %bb.agh, %bb.lb, %bb.kn, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944, %bb.agz, %bb.aga, %.thread2790, %.thread2779, %.thread2771, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148, %bb.fh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092, %bb.dv, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14820 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ 0, %bb.abq ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ 0, %bb.pz ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ 0, %bb.oo ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ 0, %bb.rp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ 0, %bb.za ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ 0, %bb.acw ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ 0, %bb.adp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ 0, %bb.zy ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ 0, %bb.aez ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ 0, %bb.lb ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ch ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dv ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ 0, %bb.fh ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0806, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2771 ], [ 0, %.thread2779 ], [ 0, %.thread2790 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.kn ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3805 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ null, %bb.lb ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ch ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dv ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ null, %bb.fh ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2771 ], [ null, %.thread2779 ], [ null, %.thread2790 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0802, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.kn ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7801 = phi i8 [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ %.0794, %bb.abq ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ %.0794, %bb.pz ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ %.3797, %bb.oo ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ %.0794, %bb.rp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ %.0794, %bb.za ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ %.0794, %bb.acw ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ %.0794, %bb.adp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ %.0794, %bb.zy ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ %.0794, %bb.aez ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ %.1795, %bb.lb ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ %.0794, %bb.t ], [ %.0794, %bb.aq ], [ %.0794, %bb.ch ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0794, %bb.dv ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ %.0794, %bb.fh ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ %.0794, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0794, %bb.ahm ], [ %.0794, %bb.md ], [ %.0794, %bb.no ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ %.3797, %bb.oj ], [ %.0794, %bb.ni ], [ %.3797, %bb.ov ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ %.0794, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ %.5799, %bb.tw ], [ %.0794, %bb.ss ], [ %.5799, %bb.ud ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ %.5799, %bb.tx ], [ %.0794, %bb.wj ], [ %.0794, %bb.wb ], [ %.0794, %.thread2771 ], [ %.0794, %.thread2779 ], [ %.0794, %.thread2790 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ %.0794, %bb.adj ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ %.0794, %bb.aga ], [ %.0794, %bb.qt ], [ %.0794, %bb.wc ], [ %.0794, %bb.agz ], [ %.0794, %bb.xs ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ %.0794, %bb.zs ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ %.1795, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1795, %bb.kn ], [ %.0794, %bb.agh ], [ %.0794, %bb.agk ]
  %i.dxn = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !806

bb.ail:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !70
  %i.dxo = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxp = getelementptr i8, ptr %i.dxo, i64 -24
  %i.dxq = load i64, ptr %i.dxp, align 8
  %i.dxr = getelementptr inbounds i8, ptr %0, i64 %i.dxq
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxr, i64 16
  %i.dxt = load i64, ptr %i.dxs, align 8, !tbaa !659
  %.not.i2514 = icmp eq i64 %i.dxt, 0
  br i1 %.not.i2514, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518, %bb.ail
  %.not851 = icmp eq i8 %.0806, 0
  br i1 %.not851, label %_ZNSolsEj.exit2151, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0806, ptr %i.a, align 1, !tbaa !70
  %i.dxw = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxx = getelementptr i8, ptr %i.dxw, i64 -24
  %i.dxy = load i64, ptr %i.dxx, align 8
  %i.dxz = getelementptr inbounds i8, ptr %0, i64 %i.dxy
  %i.dya = getelementptr inbounds nuw i8, ptr %i.dxz, i64 16
  %i.dyb = load i64, ptr %i.dya, align 8, !tbaa !659
  %.not.i2519 = icmp eq i64 %i.dyb, 0
  br i1 %.not.i2519, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dyc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dyd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2151

_ZNSolsEj.exit2151:                               ; preds = %bb.by, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !739
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2524 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2524, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2151
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !677
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !727 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !446
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525: ; preds = %_ZNSolsEj.exit2151, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kv, %bb.lc, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.bz, %bb.ci, %bb.u, %bb.ar, %bb.gm, %bb.ib, %bb.jk, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dw, %bb.dp, %bb.fi, %bb.fb, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lc, %bb.j ], [ %lpad.phi2986, %bb.lc ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3016, %bb.dw ], [ %.pn935.pn, %bb.gm ], [ %.pn931.pn, %bb.ib ], [ %.pn927.pn, %bb.jk ], [ %i.cno, %bb.xr ], [ %i.ua, %bb.bz ], [ %lpad.phi3006, %bb.fi ], [ %i.bmi, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dfa, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.den, %bb.abk ], [ %i.ckk, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cvq, %bb.yz ], [ %.pn943, %bb.dp ], [ %.pn939, %bb.fb ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.dkl, %bb.adi ], [ %lpad.phi3026, %bb.ci ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dqi, %bb.afk ], [ %i.bsk, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cnb, %bb.xm ], [ %i.azn, %bb.kv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %i.q = icmp uge i8 %.sroa.03.0.i.i, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = icmp ult i8 %i.s, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !746   ; 2 uses
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !746   ; 2 uses
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !746 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 7
  br i1 %i.ac, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !446
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !677
  %i.aj = or i32 %i.ai, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %bb.k

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ak = phi i8 [ %i.v, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread ], [ %i.s, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.am, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.an = and i16 %i.a, 3
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond.i14 = and i1 %i.ao, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.ap = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.ap, 0
  %i.aq = srem i16 %i.a, 400
  %i.ar = icmp eq i16 %i.aq, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ar
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.as = zext nneg i8 %i.c to i64
  %i.at = add nuw nsw i64 %i.as, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aw, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not = icmp ult i8 %.sroa.03.0.i.i17, %i.am
  br i1 %.not, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ax = sext i16 %i.a to i32
  %i.ay = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.ay to i32
  %i.az = add nsw i32 %.neg.i.i, %i.ax            ; 4 uses
  %i.ba = zext nneg i8 %i.c to i32
  %i.bb = zext i8 %i.am to i32
  %i.bc = add nsw i32 %i.az, -399
  %i.bd = icmp slt i32 %i.az, 0
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.az
  %i.bf = sdiv i32 %i.be, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bf, -400
  %i.bg = add nsw i32 %.neg15.i.i, %i.az          ; 3 uses
  %i.bh = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bh, i32 -3, i32 9
  %i.bi = add nsw i32 %.v.i.i, %i.ba
  %i.bj = mul nsw i32 %i.bi, 153
  %i.bk = add nsw i32 %i.bj, 2
  %i.bl = udiv i32 %i.bk, 5
  %i.bm = mul nsw i32 %i.bg, 365
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = udiv i32 %i.bg, 100
  %i.bp = mul nsw i32 %i.bf, 146097
  %i.bq = add nuw nsw i32 %i.bb, -719469
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bp
  %i.bt = add nsw i32 %i.bs, %i.bn
  %i.bu = add nsw i32 %i.bt, %i.bm
  %i.bv = sub nsw i32 %i.bu, %i.bo                ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -5
  %i.bx = add nsw i32 %i.bv, 4
  %.in.i.i = select i1 %i.bw, i32 %i.bx, i32 %i.bv
  %i.by = urem i32 %.in.i.i, 7
  %i.bz = trunc nuw nsw i32 %i.by to i8           ; 2 uses
  %i.ca = icmp ult i8 %i.ak, 7
  %i.cb = icmp ne i8 %i.ak, %i.bz
  %or.cond32 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond32, label %bb.j, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !446
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !677
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.k

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %bb.i
  %.sroa.023.0 = phi i8 [ %i.bz, %bb.i ], [ %i.ab, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread ], [ %i.ak, %.thread ], [ %i.ak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20 ], [ %i.y, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37 ]
  %.sroa.023.0.fr = freeze i8 %.sroa.023.0
  %2 = urem i8 %.sroa.023.0.fr, 7
  %3 = zext nneg i8 %2 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !805, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !70
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !446
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !659
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %5 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = load ptr, ptr %1, align 8, !tbaa !446
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !446    ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !688, !range !86, !noundef !87
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !694  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !695
  %.not.i1.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n)
          to label %.noexc18 unwind label %bb.s

end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dxe, ptr %i.c, align 1, !tbaa !70
  %i.dxf = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxg = getelementptr i8, ptr %i.dxf, i64 -24
  %i.dxh = load i64, ptr %i.dxg, align 8
  %i.dxi = getelementptr inbounds i8, ptr %0, i64 %i.dxh
  %i.dxj = getelementptr inbounds nuw i8, ptr %i.dxi, i64 16
  %i.dxk = load i64, ptr %i.dxj, align 8, !tbaa !659
  %.not.i2509 = icmp eq i64 %i.dxk, 0
  br i1 %.not.i2509, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dxl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dxm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dxe)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507: ; preds = %bb.agk, %bb.agh, %bb.lb, %bb.kn, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944, %bb.agz, %bb.aga, %.thread2790, %.thread2779, %.thread2771, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148, %bb.fh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092, %bb.dv, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14820 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ 0, %bb.abq ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ 0, %bb.pz ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ 0, %bb.oo ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ 0, %bb.rp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ 0, %bb.za ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ 0, %bb.acw ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ 0, %bb.adp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ 0, %bb.zy ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ 0, %bb.aez ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ 0, %bb.lb ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ch ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dv ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ 0, %bb.fh ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0806, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2771 ], [ 0, %.thread2779 ], [ 0, %.thread2790 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.kn ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3805 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ null, %bb.lb ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ch ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dv ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ null, %bb.fh ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2771 ], [ null, %.thread2779 ], [ null, %.thread2790 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0802, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.kn ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7801 = phi i8 [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2513 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2498 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit985 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit980 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1020 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1015 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1074 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1035 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1130 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1089 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1195 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1145 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1261 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1256 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1328 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1323 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1397 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1392 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1447 ], [ %.0794, %bb.abq ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1527 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1522 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1572 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1542 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1622 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1587 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1647 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1642 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1683 ], [ %.0794, %bb.pz ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1708 ], [ %.3797, %bb.oo ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1746 ], [ %.0794, %bb.rp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1791 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1786 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1833 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1806 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1858 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1853 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1880 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1875 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1915 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1895 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2010 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1930 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2149 ], [ %.0794, %bb.za ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2184 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2025 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2284 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2199 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 ], [ %.0794, %bb.acw ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 ], [ %.0794, %bb.adp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2394 ], [ %.0794, %bb.zy ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2431 ], [ %.0794, %bb.aez ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2458 ], [ %.1795, %bb.lb ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2453 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2478 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2473 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2483 ], [ %.0794, %bb.t ], [ %.0794, %bb.aq ], [ %.0794, %bb.ch ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0794, %bb.dv ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1092 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1177 ], [ %.0794, %bb.fh ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1148 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1241 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1308 ], [ %.0794, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1412 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1505 ], [ %.0794, %bb.ahm ], [ %.0794, %bb.md ], [ %.0794, %bb.no ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1546 ], [ %.3797, %bb.oj ], [ %.0794, %bb.ni ], [ %.3797, %bb.ov ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1627 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1678 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1703 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1741 ], [ %.0794, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ %.5799, %bb.tw ], [ %.0794, %bb.ss ], [ %.5799, %bb.ud ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1838 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1860 ], [ %.5799, %bb.tx ], [ %.0794, %bb.wj ], [ %.0794, %bb.wb ], [ %.0794, %.thread2771 ], [ %.0794, %.thread2779 ], [ %.0794, %.thread2790 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 ], [ %.0794, %bb.adj ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 ], [ %.0794, %bb.aga ], [ %.0794, %bb.qt ], [ %.0794, %bb.wc ], [ %.0794, %bb.agz ], [ %.0794, %bb.xs ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1944 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1969 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2039 ], [ %.0794, %bb.zs ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2179 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2213 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2243 ], [ %.1795, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1795, %bb.kn ], [ %.0794, %bb.agh ], [ %.0794, %bb.agk ]
  %i.dxn = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !814

bb.ail:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !70
  %i.dxo = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxp = getelementptr i8, ptr %i.dxo, i64 -24
  %i.dxq = load i64, ptr %i.dxp, align 8
  %i.dxr = getelementptr inbounds i8, ptr %0, i64 %i.dxq
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxr, i64 16
  %i.dxt = load i64, ptr %i.dxs, align 8, !tbaa !659
  %.not.i2514 = icmp eq i64 %i.dxt, 0
  br i1 %.not.i2514, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2518, %bb.ail
  %.not851 = icmp eq i8 %.0806, 0
  br i1 %.not851, label %_ZNSolsEj.exit2151, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0806, ptr %i.a, align 1, !tbaa !70
  %i.dxw = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxx = getelementptr i8, ptr %i.dxw, i64 -24
  %i.dxy = load i64, ptr %i.dxx, align 8
  %i.dxz = getelementptr inbounds i8, ptr %0, i64 %i.dxy
  %i.dya = getelementptr inbounds nuw i8, ptr %i.dxz, i64 16
  %i.dyb = load i64, ptr %i.dya, align 8, !tbaa !659
  %.not.i2519 = icmp eq i64 %i.dyb, 0
  br i1 %.not.i2519, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dyc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dyd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2151

_ZNSolsEj.exit2151:                               ; preds = %bb.by, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2523, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !739
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2524 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2524, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2151
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !677
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !727 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !446
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2525: ; preds = %_ZNSolsEj.exit2151, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kv, %bb.lc, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.bz, %bb.ci, %bb.u, %bb.ar, %bb.gm, %bb.ib, %bb.jk, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dw, %bb.dp, %bb.fi, %bb.fb, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lc, %bb.j ], [ %lpad.phi2986, %bb.lc ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3016, %bb.dw ], [ %.pn935.pn, %bb.gm ], [ %.pn931.pn, %bb.ib ], [ %.pn927.pn, %bb.jk ], [ %i.cno, %bb.xr ], [ %i.ua, %bb.bz ], [ %lpad.phi3006, %bb.fi ], [ %i.bmi, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dfa, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.den, %bb.abk ], [ %i.ckk, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cvq, %bb.yz ], [ %.pn943, %bb.dp ], [ %.pn939, %bb.fb ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.dkl, %bb.adi ], [ %lpad.phi3026, %bb.ci ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dqi, %bb.afk ], [ %i.bsk, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cnb, %bb.xm ], [ %i.azn, %bb.kv ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %i.q = icmp uge i8 %.sroa.03.0.i.i, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = icmp ult i8 %i.s, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !746   ; 2 uses
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !746   ; 2 uses
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !746 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 7
  br i1 %i.ac, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !446
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !677
  %i.aj = or i32 %i.ai, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %bb.k

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ak = phi i8 [ %i.v, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread ], [ %i.s, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.am, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.an = and i16 %i.a, 3
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond.i14 = and i1 %i.ao, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.ap = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.ap, 0
  %i.aq = srem i16 %i.a, 400
  %i.ar = icmp eq i16 %i.aq, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ar
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.as = zext nneg i8 %i.c to i64
  %i.at = add nuw nsw i64 %i.as, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aw, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not = icmp ult i8 %.sroa.03.0.i.i17, %i.am
  br i1 %.not, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ax = sext i16 %i.a to i32
  %i.ay = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.ay to i32
  %i.az = add nsw i32 %.neg.i.i, %i.ax            ; 4 uses
  %i.ba = zext nneg i8 %i.c to i32
  %i.bb = zext i8 %i.am to i32
  %i.bc = add nsw i32 %i.az, -399
  %i.bd = icmp slt i32 %i.az, 0
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.az
  %i.bf = sdiv i32 %i.be, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bf, -400
  %i.bg = add nsw i32 %.neg15.i.i, %i.az          ; 3 uses
  %i.bh = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bh, i32 -3, i32 9
  %i.bi = add nsw i32 %.v.i.i, %i.ba
  %i.bj = mul nsw i32 %i.bi, 153
  %i.bk = add nsw i32 %i.bj, 2
  %i.bl = udiv i32 %i.bk, 5
  %i.bm = mul nsw i32 %i.bg, 365
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = udiv i32 %i.bg, 100
  %i.bp = mul nsw i32 %i.bf, 146097
  %i.bq = add nuw nsw i32 %i.bb, -719469
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bp
  %i.bt = add nsw i32 %i.bs, %i.bn
  %i.bu = add nsw i32 %i.bt, %i.bm
  %i.bv = sub nsw i32 %i.bu, %i.bo                ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -5
  %i.bx = add nsw i32 %i.bv, 4
  %.in.i.i = select i1 %i.bw, i32 %i.bx, i32 %i.bv
  %i.by = urem i32 %.in.i.i, 7
  %i.bz = trunc nuw nsw i32 %i.by to i8           ; 2 uses
  %i.ca = icmp ult i8 %i.ak, 7
  %i.cb = icmp ne i8 %i.ak, %i.bz
  %or.cond32 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond32, label %bb.j, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !446
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !677
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.k

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %bb.i
  %.sroa.023.0 = phi i8 [ %i.bz, %bb.i ], [ %i.ab, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread ], [ %i.ak, %.thread ], [ %i.ak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20 ], [ %i.y, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37 ]
  %.sroa.023.0.fr = freeze i8 %.sroa.023.0
  %2 = urem i8 %.sroa.023.0.fr, 7
  %3 = zext nneg i8 %2 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !813, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !70
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !446
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !659
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %5 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = load ptr, ptr %1, align 8, !tbaa !446
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !446    ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !688, !range !86, !noundef !87
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !694  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !695
  %.not.i1.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n)
          to label %.noexc18 unwind label %bb.s

end_hunk_3
