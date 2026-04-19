inline.NumInlined: 535
inline.NumDeleted: 238
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.av = icmp eq ptr %.sroa.14.3.a, %.sroa.0151.3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %.sroa.9.0.lcssa = phi i1 [ true, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %i.av, %._crit_edge.loopexit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.9.2, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.0151.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.0151.3, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.16.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.16.1, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.10.1, %._crit_edge.loopexit ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  %.sroa.10.0263 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %.sroa.16.0261 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 10 uses
  %.sroa.0151.0260 = phi ptr [ null, %.lr.ph ], [ %.sroa.0151.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 12 uses
  %.sroa.9.0259 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 10 uses
  %.sroa.14.0258 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.3.a, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %storemerge266
  %i.ba = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 noundef signext 32, i64 noundef 0) #23
  %i.bb = icmp eq i64 %i.ba, -1
end_hunk_1
begin_hunk_2_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a

.loopexit192:                                     ; preds = %bb.as, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48, %bb.at
  %.sroa.16.0261.lcssa318 = phi ptr [ %.sroa.16.0261, %bb.as ], [ %.sroa.10.0263, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.16.0261, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48 ], [ %.sroa.16.0261, %bb.at ]
  %.sroa.14.1.ph = phi ptr [ %.sroa.9.1, %bb.as ], [ %.sroa.9.0259, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.9.0259, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48 ], [ %.sroa.9.1, %bb.at ]
  %.sroa.0151.1.ph = phi ptr [ %.sroa.0151.2, %bb.as ], [ %.sroa.0151.0260, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0151.0260, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48 ], [ %.sroa.0151.2, %bb.at ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a

.loopexit.split-lp:                               ; preds = %bb.h, %bb.u
  %.sroa.16.0261324 = phi ptr [ %.sroa.10.0263, %bb.h ], [ %.sroa.16.0261, %bb.u ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx
end_hunk_3
begin_hunk_4_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  br i1 %.ph, label %.critedge.thread, label %_ZNSt6vectorImSaImEE9push_backERKm.exit56

.critedge.thread:                                 ; preds = %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.critedge
  %.not.i47 = icmp eq ptr %.sroa.14.0258, %.sroa.9.0259
  br i1 %.not.i47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.thread
  store i64 %storemerge266, ptr %.sroa.14.0258, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.14.0258, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit56

bb.t:                                             ; preds = %.critedge.thread
end_hunk_4
begin_hunk_5_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  br label %bb.bx

_ZNSt6vectorImSaImEE9push_backERKm.exit56:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53, %bb.s, %.critedge
  %.sroa.14.2.a = phi ptr [ %.sroa.14.0258, %.critedge ], [ %i.dl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53 ], [ %i.cx, %bb.s ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0259, %.critedge ], [ %i.dm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53 ], [ %.sroa.9.0259, %bb.s ] ; 5 uses
  %.sroa.0151.2 = phi ptr [ %.sroa.0151.0260, %.critedge ], [ %i.di, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53 ], [ %.sroa.0151.0260, %bb.s ] ; 5 uses
  %i.do = load ptr, ptr %1, align 8
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %storemerge266 ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
bb.bx:                                            ; preds = %.loopexit192, %.loopexit.split-lp, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit81, %bb.x, %bb.bu, %bb.bl, %bb.bc
  %.sroa.16.0229 = phi ptr [ %.sroa.16.0.lcssa, %bb.bl ], [ %.sroa.16.0.lcssa, %bb.bc ], [ %.sroa.16.0.lcssa, %bb.bu ], [ %.sroa.16.0261, %bb.x ], [ %.sroa.16.0261, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit81 ], [ %.sroa.16.0261.lcssa318, %.loopexit192 ], [ %.sroa.16.0261324, %.loopexit.split-lp ]
  %.sroa.0159.0210 = phi ptr [ %.sroa.0159.0.lcssa, %bb.bl ], [ %.sroa.0159.0.lcssa, %bb.bc ], [ %.sroa.0159.0.lcssa, %bb.bu ], [ %.sroa.0159.0264, %bb.x ], [ %.sroa.0159.0264, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit81 ], [ %.sroa.0159.0264, %.loopexit192 ], [ %.sroa.0159.0264, %.loopexit.split-lp ] ; 3 uses
  %.sroa.14.5 = phi ptr [ %.sroa.14.0.lcssa, %bb.bl ], [ %.sroa.14.0.lcssa, %bb.bc ], [ %.sroa.14.0.lcssa, %bb.bu ], [ %.sroa.9.0259, %bb.x ], [ %.sroa.9.1, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit81 ], [ %.sroa.14.1.ph, %.loopexit192 ], [ %.sroa.9.0259, %.loopexit.split-lp ]
  %.sroa.0151.5 = phi ptr [ %.sroa.0151.0.lcssa, %bb.bl ], [ %.sroa.0151.0.lcssa, %bb.bc ], [ %.sroa.0151.0.lcssa, %bb.bu ], [ %.sroa.0151.0260, %bb.x ], [ %.sroa.0151.2, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit81 ], [ %.sroa.0151.1.ph, %.loopexit192 ], [ %.sroa.0151.0260, %.loopexit.split-lp ] ; 3 uses
  %.pn26.pn = phi { ptr, i32 } [ %i.kc, %bb.bl ], [ %i.iz, %bb.bc ], [ %i.li, %bb.bu ], [ %i.dn, %bb.x ], [ %.pn, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit81 ], [ %lpad.loopexit, %.loopexit192 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
end_hunk_6
begin_hunk_7_@"_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEENK3$_1clB5cxx11ERKS9_m":bb.a
  br i1 %i.q, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit, %bb.i
  %.029.i.i = phi i32 [ %i.y, %bb.i ], [ 1, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.x, %bb.i ], [ %1, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ] ; 5 uses
  %i.r = icmp ult i64 %.02328.i.i, 100
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.t = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.x = udiv i64 %.02328.i.i, 10000
  %i.y = add i32 %.029.i.i, 4                     ; 2 uses
  %i.z = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.z, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !35

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
end_hunk_7
