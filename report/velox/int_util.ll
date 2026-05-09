inline.NumInlined: 2127
inline.NumDeleted: 609
begin_hunk_0_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i8 %1, 10
  %2 = icmp ugt i8 %1, 99                         ; 2 uses
  %i.j = select i1 %2, i64 3, i64 2
  %i.k = select i1 %i.i, i64 1, i64 %i.j          ; 3 uses
  %i.l = icmp slt i64 %i.e, %i.k
  br i1 %i.l, label %.lr.ph, label %bb.c, !prof !206

bb.c:                                             ; preds = %bb.b
  br i1 %2, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.c
  %i.m = urem i8 %1, 100
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.q = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.s, ptr %i.t, align 1, !tbaa !7
  %i.u = load i8, ptr %i.q, align 2, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !7
  br label %bb.e

end_hunk_1
begin_hunk_2_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %bb.b
  %i.af = icmp eq i8 %1, 0
  %i.ag = icmp ult i8 %1, 10
  %3 = icmp ugt i8 %1, 99                         ; 2 uses
  %i.ah = select i1 %3, i64 3, i64 2
  %i.ai = select i1 %i.ag, i64 1, i64 %i.ah       ; 6 uses
  %i.aj = icmp ugt i8 %1, 9
  %i.ak = shl nuw nsw i32 %i.f, 1
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ar = zext i8 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.pre75 = load ptr, ptr %0, align 8, !tbaa !306 ; 4 uses
  br i1 %i.af, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us
  %i.au = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us ], [ %.pre75, %.lr.ph ]
  %i.av = icmp eq ptr %i.au, %i.a
  %i.aw = load i64, ptr %i.a, align 8
  %i.ax = shl i64 %i.aw, 1
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br label %.split

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %3, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bc = or disjoint i8 %i.aq, 48
  br label %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit25.us37

_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit25.us37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us34, %.lr.ph.split.split.us
  %i.bd = phi ptr [ %.pre75, %.lr.ph.split.split.us ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us34 ]
  %i.be = icmp eq ptr %i.bd, %i.a
  %i.bf = load i64, ptr %i.a, align 8
  %i.bg = shl i64 %i.bf, 1
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us34 unwind label %.split.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us34: ; preds = %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yEEES2_IS4_nES2_IS4_oES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit25.us37
  %i.bi = load ptr, ptr %0, align 8, !tbaa !306   ; 5 uses
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !1487
  %i.bk = add i64 %i.bj, -1
  %.not62 = icmp slt i64 %i.bk, %i.ai
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.aj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us47
  %i.bn = phi ptr [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us47 ], [ %.pre75, %.lr.ph.split.split ]
  %i.bo = icmp eq ptr %i.bn, %i.a
  %i.bp = load i64, ptr %i.a, align 8
  %i.bq = shl i64 %i.bp, 1
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br label %.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.bw = phi ptr [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.pre75, %.lr.ph.split.split ]
  %i.bx = icmp eq ptr %i.bw, %i.a
  %i.by = load i64, ptr %i.a, align 8
  %i.bz = shl i64 %i.by, 1
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

._crit_edge.loopexit64.a:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us34
  %i.cf = load i8, ptr %i.at, align 1, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !7
  %i.ch = load i8, ptr %i.as, align 2, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !7
  store i8 %i.bc, ptr %i.bi, align 1, !tbaa !7
  br label %._crit_edge
end_hunk_8
