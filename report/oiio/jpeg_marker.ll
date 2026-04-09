inline.NumInlined: 175
inline.NumDeleted: 89
begin_hunk_0_@_ZNK22photos_editing_formats8image_io10JpegMarker12GetHexStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef signext i8 %i.ad(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 32)
          to label %.noexc5._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge unwind label %bb.k, !inline_history !60 ; 0 uses

.noexc5._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge: ; preds = %.noexc5
  %.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZNK22photos_editing_formats8image_io10JpegMarker12GetHexStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.f:                                             ; preds = %bb.b, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.af = phi ptr [ %i.f, %bb.b ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store i8 48, ptr %i.ag, align 8, !tbaa !61
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.e, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 2, ptr %i.ak, align 8, !tbaa !62
  %i.al = load i8, ptr %1, align 1, !tbaa !7
  %i.am = zext i8 %i.al to i32
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.am)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !9, !alias.scope !69
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !13, !alias.scope !69
  store i8 0, ptr %i.ao, align 8, !tbaa !16, !alias.scope !69
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24, !noalias !69 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !noalias !69 ; 2 uses
  %i.au = icmp ugt ptr %i.ar, %i.at
  %.08.i.i.i = select i1 %i.au, ptr %i.ar, ptr %i.at ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
end_hunk_1
begin_hunk_2_@_ZNK22photos_editing_formats8image_io10JpegMarker12GetHexStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !28, !noalias !69 ; 2 uses
  %i.ax = ptrtoint ptr %.08.i.i.i to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
end_hunk_2
begin_hunk_3_@_ZNK22photos_editing_formats8image_io10JpegMarker12GetHexStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.i:                                             ; preds = %bb.j, %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !69 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ao
  br i1 %i.bd, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.be = load i64, ptr %i.ao, align 8, !tbaa !16, !alias.scope !69
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #12
  br label %.body
end_hunk_3
begin_hunk_4_@llvm.experimental.noalias.scope.decl
!57 = !{!"p1 _ZTS15__locale_struct", !12, i64 0}
!58 = !{!"p1 int", !12, i64 0}
!59 = !{!"p1 short", !12, i64 0}
!60 = distinct !{null}
!61 = !{!44, !5, i64 224}
!62 = !{!36, !15, i64 16}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!65 = distinct !{!65, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!68 = distinct !{!68, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!69 = !{!67, !64}
end_hunk_4
