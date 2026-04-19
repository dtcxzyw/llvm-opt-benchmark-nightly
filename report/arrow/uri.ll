inline.NumInlined: 922
inline.NumDeleted: 458
begin_hunk_0_@_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt16TypeEE7ConvertERKS2_PKcmPt:bb.a

bb.ak:                                            ; preds = %bb.aj
  %.not73.i = icmp eq i64 %i.ch, 0
  br i1 %.not73.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split, label %5

5:                                                ; preds = %bb.ak
  %6 = icmp ugt i16 %i.ck, 6553
  br i1 %6, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit, label %bb.al, !prof !16

bb.al:                                            ; preds = %5
  %7 = load i8, ptr %i.cd, align 1, !tbaa !14
  %8 = add i8 %7, -48                             ; 2 uses
  %.not74.i = icmp ne i64 %i.ch, 1
  %i.cl = icmp ugt i8 %8, 9
  %or.cond.i21 = or i1 %.not74.i, %i.cl
  br i1 %or.cond.i21, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit, label %bb.am, !prof !248

bb.am:                                            ; preds = %bb.al
  %i.cm = mul nuw i16 %i.ck, 10                   ; 3 uses
  %i.cn = zext nneg i8 %8 to i16
  %i.co = add i16 %i.cm, %i.cn                    ; 2 uses
  %.not78.i = icmp ult i16 %i.co, %i.cm
  %.75.i = tail call i16 @llvm.umax.i16(i16 %i.co, i16 %i.cm)
  br i1 %.not78.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split

_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split: ; preds = %bb.k, %bb.q, %bb.w, %bb.ab, %bb.aa, %bb.z, %bb.ad, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am
  %.555.i.sink = phi i16 [ 0, %bb.ad ], [ %.75.i, %bb.am ], [ %i.ck, %bb.ak ], [ %i.cc, %bb.ai ], [ %i.bv, %bb.ag ], [ %i.bp, %bb.ae ], [ %.1.i, %bb.k ], [ %.1.i.1, %bb.q ], [ %.1.i.2, %bb.w ], [ %i.bh, %bb.ab ], [ %i.bf, %bb.aa ], [ %i.bc, %bb.z ]
  store i16 %.555.i.sink, ptr %4, align 2, !tbaa !179
  br label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit

_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit:     ; preds = %bb.i, %bb.m, %bb.s, %bb.y, %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split, %bb.am, %bb.al, %5, %bb.aj, %bb.ah, %bb.af, %.critedge, %bb.e, %bb.a
  %.0 = phi i1 [ false, %bb.al ], [ false, %bb.a ], [ false, %bb.e ], [ false, %5 ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split ], [ false, %bb.am ], [ false, %bb.aj ], [ false, %bb.ah ], [ false, %bb.af ], [ false, %bb.y ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.i ]
  ret i1 %.0
}

end_hunk_0
begin_hunk_1_@llvm.umax.i16
!245 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !13, i64 8}
!246 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!247 = distinct !{!247, !18}
!248 = !{!"branch_weights", i32 4001, i32 4000000}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN5arrow8internal12JoinToStringIJRA67_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!251 = distinct !{!251, !"_ZN5arrow8internal12JoinToStringIJRA67_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
end_hunk_1
