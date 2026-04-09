inline.NumInlined: 88
inline.NumDeleted: 49
begin_hunk_0_@_ZN5boost10filesystem6detail11unique_pathERKNS0_4pathEPNS_6system10error_codeE:bb.a
bb.g:                                             ; preds = %bb.f
  %i.v = load atomic ptr, ptr @_ZN5boost10filesystem6detail12_GLOBAL__N_111fill_randomE monotonic, align 8
  %i.w = invoke noundef i32 %i.v(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %.noexc.us unwind label %.split.us ; 2 uses

.noexc.us:                                        ; preds = %bb.g
  %.not.i.us = icmp eq i32 %i.w, 0
  br i1 %.not.i.us, label %_ZNK5boost6system10error_codecvbEv.exit.thread30.us, label %bb.h, !prof !20

bb.h:                                             ; preds = %.noexc.us
  invoke void @_ZN5boost10filesystem10emit_errorEiPNS_6system10error_codeEPKc(i32 noundef %i.w, ptr noundef null, ptr noundef nonnull @.str.4)
end_hunk_0
begin_hunk_1_@_ZN5boost10filesystem6detail11unique_pathERKNS0_4pathEPNS_6system10error_codeE:bb.a
  %.2.us = phi i32 [ %i.ac, %_ZNK5boost6system10error_codecvbEv.exit.thread30.us ], [ %.035.us, %.lr.ph.split.us ]
  %i.am = add nuw i64 %.01834.us, 1               ; 2 uses
  %exitcond37.not = icmp eq i64 %i.am, %i.o
  br i1 %exitcond37.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !21

.split.us:                                        ; preds = %bb.h, %bb.g
  %i.an = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN5boost10filesystem6detail11unique_pathERKNS0_4pathEPNS_6system10error_codeE:bb.a
bb.k:                                             ; preds = %bb.j
  %i.at = load atomic ptr, ptr @_ZN5boost10filesystem6detail12_GLOBAL__N_111fill_randomE monotonic, align 8
  %i.au = invoke noundef i32 %i.at(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %.noexc unwind label %.split   ; 2 uses

.noexc:                                           ; preds = %bb.k
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %_ZN5boost10filesystem6detail12_GLOBAL__N_119system_crypt_randomEPvmPNS_6system10error_codeE.exit, label %bb.l, !prof !20

bb.l:                                             ; preds = %.noexc
  invoke void @_ZN5boost10filesystem10emit_errorEiPNS_6system10error_codeEPKc(i32 noundef %i.au, ptr noundef nonnull %2, ptr noundef nonnull @.str.4)
          to label %_ZN5boost10filesystem6detail12_GLOBAL__N_119system_crypt_randomEPvmPNS_6system10error_codeE.exit unwind label %.split

_ZN5boost10filesystem6detail12_GLOBAL__N_119system_crypt_randomEPvmPNS_6system10error_codeE.exit: ; preds = %.noexc, %bb.l
  %i.av = load i64, ptr %i.p, align 8, !tbaa !22  ; 2 uses
  %i.aw = and i64 %i.av, 1
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread30, label %bb.m
end_hunk_2
begin_hunk_3_@_ZN5boost10filesystem6detail11unique_pathERKNS0_4pathEPNS_6system10error_codeE:bb.a
  br i1 %i.ax, label %_ZNK5boost6system10error_codecvbEv.exit, label %bb.s

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.m
  %i.ay = load i32, ptr %2, align 8, !tbaa !24
  %.not32 = icmp eq i32 %i.ay, 0
  br i1 %.not32, label %_ZNK5boost6system10error_codecvbEv.exit.thread30, label %bb.s

end_hunk_3
begin_hunk_4_@_ZN5boost10filesystem6detail11unique_pathERKNS0_4pathEPNS_6system10error_codeE:bb.a
  %.2 = phi i32 [ %i.bj, %_ZNK5boost6system10error_codecvbEv.exit.thread30 ], [ %.035, %.lr.ph.split ]
  %i.bt = add nuw i64 %.01834, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.o
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !21

.critedge:                                        ; preds = %bb.o, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.not23 = icmp eq ptr %2, null
end_hunk_4
begin_hunk_5_@llvm.assume
!17 = !{!"long", !5, i64 0}
!18 = !{!16, !17, i64 8}
!19 = !{!5, !5, i64 0}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = distinct !{!21, !9}
!22 = !{!23, !17, i64 16}
!23 = !{!"_ZTSN5boost6system10error_codeE", !5, i64 0, !17, i64 16}
!24 = !{!25, !4, i64 0}
!25 = !{!"_ZTSSt10error_code", !4, i64 0, !26, i64 8}
!26 = !{!"p1 _ZTSNSt3_V214error_categoryE", !14, i64 0}
end_hunk_5
