inline.NumInlined: 139
inline.NumDeleted: 81
begin_hunk_0_@_ZN6hermes7sendIPCEcjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.u, i8 noundef signext 10), !inline_history !41
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
end_hunk_0
begin_hunk_1_@_ZN6hermes10receiveIPCEv:bb.a
  %4 = alloca %"struct.hermes::IPCCommand", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !26
  store i8 0, ptr %i.d, align 8, !tbaa !8
end_hunk_1
begin_hunk_2_@_ZN6hermes10receiveIPCEv:bb.a
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !43
  %i.aa = and i32 %i.z, 5
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ab, align 8, !tbaa !44
  br label %bb.ad

bb.g:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc10, %bb.d, %bb.b
end_hunk_2
begin_hunk_3_@_ZN6hermes10receiveIPCEv:bb.a
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !43
  %i.al = and i32 %i.ak, 5
  %.not35 = icmp eq i32 %i.al, 0
  br i1 %.not35, label %bb.q, label %bb.l
end_hunk_3
begin_hunk_4_@_ZN6hermes10receiveIPCEv:bb.a
bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.aq, ptr %3, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !26
  store i8 0, ptr %i.aq, align 8, !tbaa !8
end_hunk_4
begin_hunk_5_@_ZN6hermes10receiveIPCEv:bb.a
_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.bi = load i8, ptr %i.b, align 1, !tbaa !8
  store i8 %i.bi, ptr %4, align 8, !tbaa !46
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !4
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !42
  %i.bn = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.bo = load i64, ptr %i.ar, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !49
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i, label %._crit_edge.i.i

end_hunk_5
begin_hunk_6_@_ZN6hermes10receiveIPCEv:bb.a

.noexc25:                                         ; preds = %.noexc.i
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !22
  %i.br = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !8
  br label %._crit_edge.i.i

end_hunk_6
begin_hunk_7_@_ZN6hermes10receiveIPCEv:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !26
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !22
end_hunk_7
begin_hunk_8_@_ZN6hermes10receiveIPCEv:bb.a
  store i64 %i.by, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !42
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !22 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bm
  br i1 %i.cc, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
end_hunk_8
begin_hunk_9_@_ZN6hermes10receiveIPCEv:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.cj, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ck = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aq
end_hunk_9
begin_hunk_10_@_ZN6hermes10receiveIPCEv:bb.a
  %i.df = getelementptr inbounds i8, ptr %2, i64 %i.de
  store ptr %i.dc, ptr %i.df, align 8, !tbaa !9
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
end_hunk_10
begin_hunk_11_@llvm.assume
!38 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!39 = !{!"p1 int", !17, i64 0}
!40 = !{!"p1 short", !17, i64 0}
!41 = distinct !{null, null, null, null}
!42 = !{!24, !25, i64 0}
!43 = !{!12, !15, i64 32}
!44 = !{!45, !30, i64 40}
!45 = !{!"_ZTSSt22_Optional_payload_baseIN6hermes10IPCCommandEE", !6, i64 0, !30, i64 40}
!46 = !{!47, !6, i64 0}
!47 = !{!"_ZTSN6hermes10IPCCommandE", !6, i64 0, !5, i64 4, !23, i64 8}
!48 = !{!47, !5, i64 4}
!49 = !{!13, !13, i64 0}
!50 = !{!51, !13, i64 8}
!51 = !{!"_ZTSSi", !13, i64 8}
end_hunk_11
