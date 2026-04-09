inline.NumInlined: 334
inline.NumDeleted: 192
begin_hunk_0_@_ZN6Assimp11HMPImporter20CreateOutputFaceListEjj:bb.a
  %i.h = mul i32 %i.g, %i.f                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.h, ptr %i.i, align 8
  %i.j = zext i32 %i.h to i64                     ; 5 uses
  %i.k = shl nuw nsw i64 %i.j, 4
  %i.l = or disjoint i64 %i.k, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #22 ; 2 uses
  store i64 %i.j, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %.loopexit133, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.j
  %3 = add nuw nsw i64 %i.j, 1152921504606846975
  %4 = and i64 %3, 1152921504606846975
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %5 = phi ptr [ %7, %.prol.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !34

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.n, %bb.b ], [ %7, %.prol.preheader ]
  %8 = icmp samesign ult i64 %4, 7
  br i1 %8, label %.loopexit133, label %bb.c

bb.c:                                             ; preds = %.prol.loopexit, %bb.c
  %i.q = phi ptr [ %i.s, %bb.c ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.q, align 8
  %9 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store ptr null, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store i32 0, ptr %22, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.p
  br i1 %i.t, label %.loopexit133, label %bb.c

.loopexit133:                                     ; preds = %.prol.loopexit, %bb.c, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr %i.n, ptr %i.u, align 8
  %i.v = shl i32 %i.h, 2                          ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11HMPImporter20CreateOutputFaceListEjj:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1140.us, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit129_crit_edge.us, label %bb.e, !llvm.loop !36

..loopexit129_crit_edge.us:                       ; preds = %.loopexit.us
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %._crit_edge, label %.lr.ph.us, !llvm.loop !37

._crit_edge:                                      ; preds = %..loopexit129_crit_edge.us, %.lr.ph152, %.loopexit130
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11HMPImporter13ReadFirstSkinEjPKhPS2_:bb.a
bb.l:                                             ; preds = %bb.k
  %i.ag = add nuw i32 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

bb.m:                                             ; preds = %bb.k, %bb.j, %.lr.ph
  %i.ah = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !48
  store i8 0, ptr %i.a, align 8, !alias.scope !48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !48 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !48 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_3
begin_hunk_4_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !48 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
end_hunk_4
begin_hunk_5_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !48 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

end_hunk_5
begin_hunk_6_@llvm.sqrt.v4f32
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5, !8, !9}
!33 = distinct !{!33, !5, !9, !8}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!41 = distinct !{!41, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!44 = distinct !{!44, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!47 = distinct !{!47, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!48 = !{!46, !43, !40}
end_hunk_6
