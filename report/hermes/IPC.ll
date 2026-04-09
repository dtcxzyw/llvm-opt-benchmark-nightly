inline.NumInlined: 139
inline.NumDeleted: 81
begin_hunk_0_@_ZN6hermes10receiveIPCEv:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.g, !inline_history !43

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc10, %bb.c
  %.0.i.i.i = phi i8 [ %i.o, %bb.c ], [ %i.s, %.noexc10 ]
end_hunk_0
begin_hunk_1_@_ZN6hermes10receiveIPCEv:bb.a
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !44
  %i.aa = and i32 %i.z, 5
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ab, align 8, !tbaa !45
  br label %bb.ad

bb.g:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc10, %bb.d, %bb.b
end_hunk_1
begin_hunk_2_@_ZN6hermes10receiveIPCEv:bb.a
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !44
  %i.al = and i32 %i.ak, 5
  %.not35 = icmp eq i32 %i.al, 0
  br i1 %.not35, label %bb.q, label %bb.l
end_hunk_2
begin_hunk_3_@_ZN6hermes10receiveIPCEv:bb.a
  store i64 0, ptr %i.ar, align 8, !tbaa !26
  store i8 0, ptr %i.aq, align 8, !tbaa !8
  %i.as = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSirsEPFRSiS_E.exit unwind label %bb.y, !inline_history !47 ; 3 uses

_ZNSirsEPFRSiS_E.exit:                            ; preds = %bb.q
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !9
end_hunk_3
begin_hunk_4_@_ZN6hermes10receiveIPCEv:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef signext i8 %i.bf(ptr noundef nonnull align 8 dereferenceable(570) %i.ay, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i18 unwind label %bb.y, !inline_history !43

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i18: ; preds = %.noexc21, %bb.s
  %.0.i.i.i19 = phi i8 [ %i.bc, %bb.s ], [ %i.bg, %.noexc21 ]
end_hunk_4
begin_hunk_5_@_ZN6hermes10receiveIPCEv:bb.a
_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.bi = load i8, ptr %i.b, align 1, !tbaa !8
  store i8 %i.bi, ptr %4, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !4
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !42
  %i.bn = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.bo = load i64, ptr %i.ar, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !51
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i, label %._crit_edge.i.i

end_hunk_5
begin_hunk_6_@_ZN6hermes10receiveIPCEv:bb.a

.noexc25:                                         ; preds = %.noexc.i
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !22
  %i.br = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !8
  br label %._crit_edge.i.i

end_hunk_6
begin_hunk_7_@_ZN6hermes10receiveIPCEv:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !26
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !22
end_hunk_7
begin_hunk_8_@_ZN6hermes10receiveIPCEv:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.cj, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ck = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aq
end_hunk_8
begin_hunk_9_@_ZN6hermes10receiveIPCEv:bb.a
  %i.df = getelementptr inbounds i8, ptr %2, i64 %i.de
  store ptr %i.dc, ptr %i.df, align 8, !tbaa !9
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !52
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
end_hunk_9
begin_hunk_10_@llvm.assume
!40 = !{!"p1 short", !17, i64 0}
!41 = distinct !{null, null, null, null}
!42 = !{!24, !25, i64 0}
!43 = distinct !{null}
!44 = !{!12, !15, i64 32}
!45 = !{!46, !30, i64 40}
!46 = !{!"_ZTSSt22_Optional_payload_baseIN6hermes10IPCCommandEE", !6, i64 0, !30, i64 40}
!47 = distinct !{null}
!48 = !{!49, !6, i64 0}
!49 = !{!"_ZTSN6hermes10IPCCommandE", !6, i64 0, !5, i64 4, !23, i64 8}
!50 = !{!49, !5, i64 4}
!51 = !{!13, !13, i64 0}
!52 = !{!53, !13, i64 8}
!53 = !{!"_ZTSSi", !13, i64 8}
end_hunk_10
