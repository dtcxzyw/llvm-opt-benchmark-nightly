inline.NumInlined: 46
inline.NumDeleted: 24
begin_hunk_0_@_Z9saveImagePiPKcii:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.ag, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.us unwind label %.loopexit.split.us

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.us: ; preds = %.noexc36.us, %bb.d
  %.0.i.i.i.us = phi i8 [ %i.q, %bb.d ], [ %i.u, %.noexc36.us ]
end_hunk_0
begin_hunk_1_@_Z9saveImagePiPKcii:bb.a
_ZNSolsEPFRSoS_E.exit.us:                         ; preds = %.noexc38.us
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit._crit_edge, label %.preheader.us, !llvm.loop !32

.invoke61:                                        ; preds = %.preheader.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us ] ; 2 uses
end_hunk_1
begin_hunk_2_@_Z9saveImagePiPKcii:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us: ; preds = %.invoke
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond48.not, label %._crit_edge.us, label %.invoke61, !llvm.loop !33

._crit_edge.us:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %i.ab = load ptr, ptr %4, align 8, !tbaa !11
end_hunk_2
begin_hunk_3_@_Z9saveImagePiPKcii:bb.a
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %4, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i.us = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.us, label %.split.us, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us

end_hunk_3
begin_hunk_4_@_Z9saveImagePiPKcii:bb.a
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %4, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.split.us, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

end_hunk_4
begin_hunk_5_@_Z9saveImagePiPKcii:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef signext i8 %i.av(ptr noundef nonnull align 8 dereferenceable(570) %i.an, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc36, %bb.g
  %.0.i.i.i = phi i8 [ %i.as, %bb.g ], [ %i.aw, %.noexc36 ]
end_hunk_5
begin_hunk_6_@_Z9saveImagePiPKcii:bb.a
_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc38
  %i.az = add nuw nsw i32 %.02041, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.az, %2
  br i1 %exitcond.not, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit._crit_edge, label %.preheader, !llvm.loop !32

.loopexit.split:                                  ; preds = %bb.h, %.noexc36, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc38
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_Z29initializeRandomColouredImagePiii:bb.a
  store i32 %i.m, ptr %i.n, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !41

._crit_edge.us:                                   ; preds = %bb.b
  %i.o = add nuw nsw i32 %.01720.us, 1            ; 2 uses
  %exitcond24.not = icmp eq i32 %i.o, %1
  br i1 %exitcond24.not, label %._crit_edge21, label %.preheader.us, !llvm.loop !42

._crit_edge21:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
end_hunk_7
begin_hunk_8_@_Z15initializeImagePiPcii:bb.a
bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !43

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %._crit_edge22, label %.preheader.us, !llvm.loop !44

.split.us:                                        ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_Z15initializeImagePiPcii:bb.a

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.e
  call void @exit(i32 noundef 1) #10
end_hunk_9
begin_hunk_10_@_Z22initializeColoredImagePiPcii:bb.a
bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !45

._crit_edge.us:                                   ; preds = %bb.e
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge30, label %.preheader.us, !llvm.loop !46

.split.us:                                        ; preds = %bb.d, %bb.c, %bb.b
  %i.q = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11_@_Z22initializeColoredImagePiPcii:bb.a

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.h ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.g
  call void @exit(i32 noundef 1) #10
end_hunk_11
begin_hunk_12_@llvm.smin.i32
!29 = !{!"p1 int", !19, i64 0}
!30 = !{!"p1 short", !19, i64 0}
!31 = !{!6, !6, i64 0}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = !{!35, !38, i64 240}
!35 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !14, i64 0, !36, i64 216, !6, i64 224, !28, i64 225, !37, i64 232, !38, i64 240, !39, i64 248, !40, i64 256}
!36 = !{!"p1 _ZTSSo", !19, i64 0}
!37 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!38 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!39 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!40 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
end_hunk_12
