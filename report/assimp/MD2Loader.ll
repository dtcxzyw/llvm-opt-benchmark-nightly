inline.NumInlined: 299
inline.NumDeleted: 163
begin_hunk_0_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.cj = load i32, ptr %i.ci, align 1            ; 3 uses
  store i32 %i.cj, ptr %i.bi, align 8
  %i.ck = load i32, ptr %i.ci, align 1            ; 2 uses
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = shl nuw nsw i64 %i.cl, 4
  %i.cn = or disjoint i64 %i.cm, 8
  %i.co = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cn) #21
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

bb.u:                                             ; preds = %bb.t
  store i64 %i.cl, ptr %i.co, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cq = icmp eq i32 %i.ck, 0
  br i1 %i.cq, label %.loopexit243, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cl
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %i.cs = phi ptr [ %i.cp, %bb.v ], [ %i.cu, %bb.w ] ; 3 uses
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr null, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cr
  br i1 %i.cv, label %.loopexit243, label %bb.w

.loopexit243:                                     ; preds = %bb.w, %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  store ptr %i.cp, ptr %i.cw, align 8
  %i.cx = mul i32 %i.cj, 3                        ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ho = load ptr, ptr %i.j, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #17, !inline_history !8
  ret void

bb.bo:                                            ; preds = %.lr.ph, %bb.dc
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ru = load i32, ptr %i.rt, align 1
  %i.rv = zext i32 %i.ru to i64
  %i.rw = icmp samesign ult i64 %indvars.iv.next, %i.rv
  br i1 %i.rw, label %bb.bo, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, !llvm.loop !9

.thread233:                                       ; preds = %bb.aj, %bb.ar, %bb.bb, %bb.bh
  %.pn160.pn.pn.pn.ph = phi { ptr, i32 } [ %i.gt, %bb.bh ], [ %.pn147.pn.pn, %bb.bb ], [ %.pn151.pn, %bb.ar ], [ %i.es, %bb.aj ]
end_hunk_3
begin_hunk_4_@_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.sa = load ptr, ptr %i.j, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #17, !inline_history !8
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit211

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit211: ; preds = %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i210, %_ZNSt6vectorIhSaIhEED2Ev.exit208, %_ZNSt6vectorIhSaIhEED2Ev.exit208.thread239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
end_hunk_4
begin_hunk_5_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !19
  store i8 0, ptr %i.a, align 8, !alias.scope !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !19 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !19 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_5
begin_hunk_6_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !19 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
end_hunk_6
begin_hunk_7_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !19 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

end_hunk_7
begin_hunk_8_@llvm.experimental.noalias.scope.decl
!5 = distinct !{!5, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{null, null}
!9 = distinct !{!9, !7}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!12 = distinct !{!12, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!15 = distinct !{!15, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!18 = distinct !{!18, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!19 = !{!17, !14, !11}
end_hunk_8
