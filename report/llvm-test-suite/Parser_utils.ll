inline.NumInlined: 230
inline.NumDeleted: 93
begin_hunk_0_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = invoke noundef signext i8 %i.lj(ptr noundef nonnull align 8 dereferenceable(570) %i.lc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !83

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc251, %bb.ar
  %.0.i.i.i = phi i8 [ %i.lg, %bb.ar ], [ %i.lk, %.noexc251 ]
end_hunk_0
begin_hunk_1_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %i.lr = add nuw nsw i32 %.0143356, 1            ; 2 uses
  %i.ls = load i32, ptr %i.ku, align 4, !tbaa !4
  %i.lt = icmp slt i32 %i.lr, %i.ls
  br i1 %i.lt, label %.lr.ph357, label %.preheader302, !llvm.loop !84

bb.at:                                            ; preds = %.lr.ph357
  %i.lu = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
._crit_edge361:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229, %.preheader302
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 2 uses
  %exitcond420.not = icmp eq i64 %indvars.iv.next417, %wide.trip.count419
  br i1 %exitcond420.not, label %._crit_edge363, label %.preheader303, !llvm.loop !85

.lr.ph360:                                        ; preds = %.preheader302, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229
  %.0142359 = phi i32 [ %i.lw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229 ], [ 0, %.preheader302 ]
end_hunk_2
begin_hunk_3_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %i.lw = add nuw nsw i32 %.0142359, 1            ; 2 uses
  %i.lx = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.ly = icmp slt i32 %i.lw, %i.lx
  br i1 %i.ly, label %.lr.ph360, label %._crit_edge361, !llvm.loop !86

bb.au:                                            ; preds = %.lr.ph360
  %i.lz = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 48
  %i.mn = load ptr, ptr %i.mm, align 8
  %i.mo = invoke noundef signext i8 %i.mn(ptr noundef nonnull align 8 dereferenceable(570) %i.mg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258 unwind label %.loopexit, !inline_history !83

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258: ; preds = %.noexc261, %bb.av
  %.0.i.i.i259 = phi i8 [ %i.mk, %bb.av ], [ %i.mo, %.noexc261 ]
end_hunk_4
begin_hunk_5_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %i.nn = add nuw nsw i32 %.0126364, 1            ; 2 uses
  %i.no = load i32, ptr %i.nh, align 4, !tbaa !4
  %i.np = icmp slt i32 %i.nn, %i.no
  br i1 %i.np, label %.lr.ph366, label %.preheader, !llvm.loop !87

bb.ba:                                            ; preds = %.lr.ph366
  %i.nq = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235: ; preds = %.lr.ph368.split
  %i.ns = add nuw nsw i32 %.0125367, 1            ; 2 uses
  %exitcond421.not = icmp eq i32 %i.ns, %i.ne
  br i1 %exitcond421.not, label %._crit_edge369, label %.lr.ph368.split, !llvm.loop !88

.split:                                           ; preds = %.lr.ph368.split
  %i.nt = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %i.nz = getelementptr inbounds i8, ptr %i.kh, i64 %i.ny
  %i.oa = sext i32 %i.nv to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store i64 %i.oa, ptr %i.ob, align 8, !tbaa !89
  %i.oc = load ptr, ptr %1, align 8, !tbaa !26
  %i.od = getelementptr inbounds nuw [24 x i8], ptr %i.oc, i64 %indvars.iv428
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !32
end_hunk_7
begin_hunk_8_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
._crit_edge373:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %exitcond427.not = icmp eq i64 %indvars.iv.next424, %wide.trip.count426
  br i1 %exitcond427.not, label %._crit_edge380, label %bb.ax, !llvm.loop !90

.lr.ph372.split:                                  ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242
  %.0371 = phi i32 [ %i.ox, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ 0, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238 ]
end_hunk_8
begin_hunk_9_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242: ; preds = %.lr.ph372.split
  %i.ox = add nuw nsw i32 %.0371, 1               ; 2 uses
  %exitcond422.not = icmp eq i32 %i.ox, %i.ng
  br i1 %exitcond422.not, label %._crit_edge373, label %.lr.ph372.split, !llvm.loop !91

.split375:                                        ; preds = %.lr.ph372.split
  %i.oy = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
  %sext481 = shl i64 %i.pe, 32
  %i.pf = ashr exact i64 %sext481, 32
  %i.pg = icmp slt i64 %indvars.iv.next429, %i.pf
  br i1 %i.pg, label %bb.aq, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !92

_ZNSt6vectorIiSaIiEED2Ev.exit244:                 ; preds = %.split375, %.split, %.loopexit, %.loopexit.split-lp, %bb.au, %bb.at, %bb.bd, %bb.ba, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %.pn170.pn = phi { ptr, i32 } [ %.pn167.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %i.gh, %bb.s ], [ %i.ok, %bb.bd ], [ %i.lz, %bb.au ], [ %i.lu, %bb.at ], [ %i.nq, %bb.ba ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.oy, %.split375 ], [ %lpad.loopexit, %.loopexit ], [ %i.nt, %.split ]
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.add.v4i32
!80 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!81 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!82 = !{!"p1 short", !11, i64 0}
!83 = distinct !{null, null}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14}
!89 = !{!64, !39, i64 16}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
end_hunk_11
