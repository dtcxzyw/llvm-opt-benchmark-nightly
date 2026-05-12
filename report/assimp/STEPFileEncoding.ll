inline.NumInlined: 172
inline.NumDeleted: 107
begin_hunk_0_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph416:                                        ; preds = %bb.a, %.thread307
  %i.d = phi i64 [ %i.nx, %.thread307 ], [ %i.c, %bb.a ]
  %.0146.ph637 = phi i64 [ %.pre-phi, %.thread307 ], [ 0, %bb.a ] ; 23 uses
  %i.e = add i64 %.0146.ph637, 3                  ; 3 uses
  %i.f = add nuw i64 %.0146.ph637, 1              ; 9 uses
  %i.g = add i64 %.0146.ph637, 2                  ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.b:                                             ; preds = %.lr.ph416, %bb.ci
  %i.i = phi i64 [ %i.d, %.lr.ph416 ], [ %i.nw, %bb.ci ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8                ; 9 uses
  %i.k = getelementptr i8, ptr %i.j, i64 %.0146.ph637 ; 8 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 92
end_hunk_1
begin_hunk_2_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224

bb.ba:                                            ; preds = %bb.ae
  %i.kh = sub i64 %.0153.lcssa, %i.h              ; 3 uses
  %i.ki = and i64 %i.kh, 7
  %.not = icmp eq i64 %i.ki, 0
  br i1 %.not, label %.lr.ph407.preheader, label %.critedge

.lr.ph407.preheader:                              ; preds = %bb.ba
  %i.kj = lshr exact i64 %i.kh, 3                 ; 2 uses
  %i.kk = lshr exact i64 %i.kh, 1                 ; 2 uses
  %i.kl = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.kk) #13 ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  br label %.lr.ph407

._crit_edge408:                                   ; preds = %bb.cc
  %i.kn = mul nuw i64 %i.kj, 5
  %i.ko = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kn) #13
          to label %bb.cd unwind label %bb.cf     ; 4 uses

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %bb.cc
  %.0154405 = phi i64 [ %i.nl, %bb.cc ], [ 0, %.lr.ph407.preheader ] ; 2 uses
  %.0155404 = phi ptr [ %i.nm, %bb.cc ], [ %i.km, %.lr.ph407.preheader ] ; 9 uses
  %i.kp = load i8, ptr %.0155404, align 1         ; 5 uses
  %i.kq = add i8 %i.kp, -48                       ; 2 uses
  %or.cond.i.i225 = icmp ult i8 %i.kq, 10
end_hunk_2
begin_hunk_3_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.nl = add nuw nsw i64 %.0154405, 1            ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.0155404, i64 8
  %exitcond475.not = icmp eq i64 %i.nl, %i.kj
  br i1 %exitcond475.not, label %._crit_edge408, label %.lr.ph407, !llvm.loop !15

bb.cd:                                            ; preds = %._crit_edge408
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kk
end_hunk_3
begin_hunk_4_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.noexc:                                           ; preds = %.lr.ph.i273
  %i.nq = getelementptr inbounds nuw i8, ptr %.057.i275, i64 4 ; 2 uses
  %.not.i276 = icmp eq ptr %i.nq, %i.nn
  br i1 %.not.i276, label %_ZN4utf88utf32to8IPhPKjEET_T0_S5_S4_.exit277, label %.lr.ph.i273, !llvm.loop !16

_ZN4utf88utf32to8IPhPKjEET_T0_S5_S4_.exit277:     ; preds = %.noexc
  %.reass.reass = add i64 %.0153.lcssa, %invariant.op
end_hunk_4
begin_hunk_5_@_ZN4utf88utf16to8IPKtPhEET0_T_S5_S4_:bb.a
  %.1 = phi ptr [ %i.h, %bb.d ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.r = tail call noundef ptr @_ZN4utf86appendIPhEET_jS2_(i32 noundef %.016, ptr noundef %.01728) ; 2 uses
  %.not = icmp eq ptr %.1, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.h ]
end_hunk_5
begin_hunk_6_@llvm.umin.i64
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !4, !12}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
end_hunk_6
