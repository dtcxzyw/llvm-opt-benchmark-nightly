inline.NumInlined: 334
inline.NumDeleted: 192
begin_hunk_0_@_ZN6Assimp11HMPImporter20CreateOutputFaceListEjj:bb.a
  %i.h = mul i32 %i.g, %i.f                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.h, ptr %i.i, align 8
  %i.j = zext i32 %i.h to i64                     ; 3 uses
  %i.k = shl nuw nsw i64 %i.j, 4
  %i.l = or disjoint i64 %i.k, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #22 ; 2 uses
  store i64 %i.j, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %.loopexit133, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.n, %bb.b ], [ %i.s, %bb.c ] ; 3 uses
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.p
  br i1 %i.t, label %.loopexit133, label %bb.c

.loopexit133:                                     ; preds = %bb.c, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr %i.n, ptr %i.u, align 8
  %i.v = shl i32 %i.h, 2                          ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11HMPImporter20CreateOutputFaceListEjj:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1140.us, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit129_crit_edge.us, label %bb.e, !llvm.loop !34

..loopexit129_crit_edge.us:                       ; preds = %.loopexit.us
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %._crit_edge, label %.lr.ph.us, !llvm.loop !35

._crit_edge:                                      ; preds = %..loopexit129_crit_edge.us, %.lr.ph152, %.loopexit130
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11HMPImporter13ReadFirstSkinEjPKhPS2_:bb.a
bb.l:                                             ; preds = %bb.k
  %i.ag = add nuw i32 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

bb.m:                                             ; preds = %bb.k, %bb.j, %.lr.ph
  %i.ah = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !46
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !46
  store i8 0, ptr %i.a, align 8, !alias.scope !46
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !46 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !46 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_3
begin_hunk_4_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !46 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
end_hunk_4
begin_hunk_5_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !46 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

end_hunk_5
begin_hunk_6_@llvm.sqrt.v4f32
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5, !8, !9}
!33 = distinct !{!33, !5, !9, !8}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!39 = distinct !{!39, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!42 = distinct !{!42, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!45 = distinct !{!45, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!46 = !{!44, !41, !38}
end_hunk_6
