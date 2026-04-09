inline.NumInlined: 188
inline.NumDeleted: 70
begin_hunk_0_@_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke noundef i32 %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %.noexc.i unwind label %bb.ak  ; 0 uses

.noexc.i:                                         ; preds = %bb.ai
  store ptr null, ptr %i.fk, align 8, !tbaa !93
end_hunk_0
begin_hunk_1_@_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef i32 %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
          to label %.noexc1.i unwind label %bb.ak ; 0 uses

.noexc1.i:                                        ; preds = %bb.aj
  store ptr null, ptr %i.fq, align 8, !tbaa !89
end_hunk_1
begin_hunk_2_@_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !93
end_hunk_2
begin_hunk_3_@_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc1 unwind label %bb.d    ; 0 uses

.noexc1:                                          ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !89
end_hunk_3
begin_hunk_4_@_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.e, align 8, !tbaa !174
  %.not30 = icmp eq i16 %i.h, 19
  br i1 %.not30, label %bb.d, label %.critedge

end_hunk_4
begin_hunk_5_@_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj:bb.a
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.m = load i16, ptr %i.e, align 8, !tbaa !174
  %.not29 = icmp eq i16 %i.m, 19
  br i1 %.not29, label %bb.f, label %.critedge

end_hunk_5
begin_hunk_6_@_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj:bb.a
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.r = load i16, ptr %i.e, align 8, !tbaa !174
  %.not = icmp eq i16 %i.r, 19
  br i1 %.not, label %bb.j, label %.critedge

end_hunk_6
begin_hunk_7_@_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj:bb.a
bb.k:                                             ; preds = %bb.j, %bb.h, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !177

.critedge:                                        ; preds = %bb.k, %bb.c, %bb.b, %bb.e, %bb.i, %bb.a
  %i.u = phi i32 [ 0, %bb.a ], [ -2147024809, %bb.c ], [ -2147024809, %bb.b ], [ -2147024809, %bb.e ], [ -2147024809, %bb.i ], [ 0, %bb.k ]
end_hunk_7
begin_hunk_8_@_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.e, align 8, !tbaa !174
  %.not30.i = icmp eq i16 %i.h, 19
  br i1 %.not30.i, label %bb.d, label %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

end_hunk_8
begin_hunk_9_@_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj:bb.a
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.m = load i16, ptr %i.e, align 8, !tbaa !174
  %.not29.i = icmp eq i16 %i.m, 19
  br i1 %.not29.i, label %bb.f, label %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

end_hunk_9
begin_hunk_10_@_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj:bb.a
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.r = load i16, ptr %i.e, align 8, !tbaa !174
  %.not.i = icmp eq i16 %i.r, 19
  br i1 %.not.i, label %bb.j, label %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

end_hunk_10
begin_hunk_11_@_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj:bb.a
bb.k:                                             ; preds = %bb.j, %bb.h, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %bb.b, !llvm.loop !177

_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.i, %bb.k, %bb.a
  %i.u = phi i32 [ 0, %bb.a ], [ 0, %bb.k ], [ -2147024809, %bb.i ], [ -2147024809, %bb.e ], [ -2147024809, %bb.b ], [ -2147024809, %bb.c ]
end_hunk_11
begin_hunk_12_@_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv:bb.a
_ZeqRK4GUIDS1_.exit44.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit44, %_ZeqRK4GUIDS1_.exit26, %_ZeqRK4GUIDS1_.exit
  %.sink49 = phi i64 [ 16, %_ZeqRK4GUIDS1_.exit26 ], [ 16, %_ZeqRK4GUIDS1_.exit ], [ 8, %_ZeqRK4GUIDS1_.exit44 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %.sink49
  store ptr %i.ej, ptr %2, align 8, !tbaa !178
  %i.ek = load ptr, ptr %0, align 8, !tbaa !83
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
end_hunk_12
begin_hunk_13_@_ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(712) %i.d) #21, !inline_history !179
  br label %_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit

_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit:     ; preds = %bb.a, %bb.b
end_hunk_13
begin_hunk_14_@_ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(712) %i.d) #21, !inline_history !179
  br label %_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit

_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit:     ; preds = %bb.a, %bb.b
end_hunk_14
begin_hunk_15_@llvm.vector.reduce.add.v4i32
!171 = !{!"_ZTSN9NCompress6NBZip28CEncoder8CFlusherE", !15, i64 0}
!172 = distinct !{!172, !51}
!173 = distinct !{!173, !51}
!174 = !{!175, !176, i64 0}
!175 = !{!"_ZTS14tagPROPVARIANT", !176, i64 0, !176, i64 2, !176, i64 4, !176, i64 6, !6, i64 8}
!176 = !{!"short", !6, i64 0}
!177 = distinct !{!177, !51}
!178 = !{!11, !11, i64 0}
!179 = !{ptr @_ZN9NCompress6NBZip28CEncoder7ReleaseEv}
end_hunk_15
