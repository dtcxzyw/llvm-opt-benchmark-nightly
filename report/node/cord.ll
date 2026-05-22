inline.NumInlined: 2124
inline.NumDeleted: 685
begin_hunk_0_@_ZN4abslL10VerifyTreeEPNS_13cord_internal7CordRepE:bb.a
  %i.ag = sext i32 %narrow.i.i.i to i64
  %.not50.i = icmp ugt i64 %i.z, %i.ag
  br i1 %.not50.i, label %bb.k, label %_ZN4absl13InlinedVectorIPNS_13cord_internal7CordRepELm2ESaIS3_EE9push_backERKS3_.exit64.i, !prof !7

bb.k:                                             ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call fastcc void @_ZN4abslL11ReportErrorB5cxx11EPNS_13cord_internal7CordRepES2_(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.ai = load atomic ptr, ptr @_ZN4absl16raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  call void %i.ai(i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 1527, ptr noundef nonnull align 8 dereferenceable(32) %11) #21, !inline_history !8
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1527, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_) #20
  unreachable

bb.l:                                             ; preds = %bb.i
  switch i8 %i.w, label %_ZN4absl13InlinedVectorIPNS_13cord_internal7CordRepELm2ESaIS3_EE9push_backERKS3_.exit64.i [
    i8 5, label %_ZN4absl13cord_internal7CordRep8externalEv.exit.i
    i8 1, label %_ZN4absl13cord_internal7CordRep9substringEv.exit52.i
    i8 2, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  ]

_ZN4absl13cord_internal7CordRep8externalEv.exit.i: ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not49.i = icmp eq ptr %i.ak, null
  br i1 %.not49.i, label %bb.m, label %_ZN4absl13InlinedVectorIPNS_13cord_internal7CordRepELm2ESaIS3_EE9push_backERKS3_.exit64.i, !prof !7

bb.m:                                             ; preds = %_ZN4absl13cord_internal7CordRep8externalEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call fastcc void @_ZN4abslL11ReportErrorB5cxx11EPNS_13cord_internal7CordRepES2_(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.am = load atomic ptr, ptr @_ZN4absl16raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  call void %i.am(i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 1530, ptr noundef nonnull align 8 dereferenceable(32) %14) #21, !inline_history !8
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1530, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_) #20
  unreachable

_ZN4absl13cord_internal7CordRep9substringEv.exit52.i: ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %.not47.i = icmp ult i64 %i.ao, %i.ar
  br i1 %.not47.i, label %_ZN4absl13cord_internal7CordRep9substringEv.exit54.i, label %bb.n, !prof !5

bb.n:                                             ; preds = %_ZN4absl13cord_internal7CordRep9substringEv.exit52.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call fastcc void @_ZN4abslL11ReportErrorB5cxx11EPNS_13cord_internal7CordRepES2_(ptr dead_on_unwind noalias writable align 8 %19, ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  %i.as = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %19) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.at = load atomic ptr, ptr @_ZN4absl16raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  call void %i.at(i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 1534, ptr noundef nonnull align 8 dereferenceable(32) %17) #21, !inline_history !8
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1534, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_) #20
  unreachable

_ZN4absl13cord_internal7CordRep9substringEv.exit54.i: ; preds = %_ZN4absl13cord_internal7CordRep9substringEv.exit52.i
  %i.au = load i64, ptr %i.k, align 8
  %i.av = add i64 %i.au, %i.ao
  %.not48.i = icmp ugt i64 %i.av, %i.ar
  br i1 %.not48.i, label %bb.o, label %_ZN4absl13InlinedVectorIPNS_13cord_internal7CordRepELm2ESaIS3_EE9push_backERKS3_.exit64.i, !prof !7

bb.o:                                             ; preds = %_ZN4absl13cord_internal7CordRep9substringEv.exit54.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call fastcc void @_ZN4abslL11ReportErrorB5cxx11EPNS_13cord_internal7CordRepES2_(ptr dead_on_unwind noalias writable align 8 %22, ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %22) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.ax = load atomic ptr, ptr @_ZN4absl16raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  call void %i.ax(i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 1537, ptr noundef nonnull align 8 dereferenceable(32) %20) #21, !inline_history !8
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1537, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3crcEv.exit.i:     ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.not44.i = icmp eq ptr %i.az, null
  %i.ba = load i64, ptr %i.k, align 8             ; 2 uses
  br i1 %.not44.i, label %_ZN4absl13cord_internal7CordRep3crcEv.exit55.i, label %_ZN4absl13cord_internal7CordRep3crcEv.exit58.i

_ZN4absl13cord_internal7CordRep3crcEv.exit55.i:   ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %.not90.i = icmp eq i64 %i.ba, 0
  br i1 %.not90.i, label %_ZN4absl13InlinedVectorIPNS_13cord_internal7CordRepELm2ESaIS3_EE9push_backERKS3_.exit64.i, label %bb.p, !prof !5

bb.p:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit55.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  call fastcc void @_ZN4abslL11ReportErrorB5cxx11EPNS_13cord_internal7CordRepES2_(ptr dead_on_unwind noalias writable align 8 %25, ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  %i.bb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %25) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %i.bc = load atomic ptr, ptr @_ZN4absl16raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  call void %i.bc(i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 1541, ptr noundef nonnull align 8 dereferenceable(32) %23) #21, !inline_history !8
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1541, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3crcEv.exit58.i:   ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %i.bd = load i64, ptr %i.az, align 8
  %.not46.i = icmp eq i64 %i.ba, %i.bd
  br i1 %.not46.i, label %_ZN4absl13cord_internal7CordRep3crcEv.exit59.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit58.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call fastcc void @_ZN4abslL11ReportErrorB5cxx11EPNS_13cord_internal7CordRepES2_(ptr dead_on_unwind noalias writable align 8 %28, ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %28) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.bf = load atomic ptr, ptr @_ZN4absl16raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  call void %i.bf(i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 1544, ptr noundef nonnull align 8 dereferenceable(32) %26) #21, !inline_history !8
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1544, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3crcEv.exit59.i:   ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit58.i
  %i.bg = load i64, ptr %i.b, align 8, !noalias !9
  %.sink.i.i.i.i60.i = select i1 %i.e, i64 %i.bg, i64 2
  %.sink1.i.i.i.i61.i = lshr i64 %i.l, 1          ; 2 uses
  %.not.i.i.i62.i = icmp eq i64 %.sink1.i.i.i.i61.i, %.sink.i.i.i.i60.i
  br i1 %.not.i.i.i62.i, label %bb.s, label %bb.r, !prof !7

bb.r:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit59.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sink1.i.i.i.i61.i
  store ptr %i.az, ptr %i.bh, align 8
  %i.bi = load i64, ptr %1, align 8
  %i.bj = add i64 %i.bi, 2                        ; 2 uses
  store i64 %i.bj, ptr %1, align 8
  br label %_ZN4absl13InlinedVectorIPNS_13cord_internal7CordRepELm2ESaIS3_EE9push_backERKS3_.exit64.i

bb.s:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit59.i
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl23inlined_vector_internal7StorageIPNS_13cord_internal7CordRepELm2ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 0 uses
  %.pr.pre.i = load i64, ptr %1, align 8
  br label %_ZN4absl13InlinedVectorIPNS_13cord_internal7CordRepELm2ESaIS3_EE9push_backERKS3_.exit64.i

_ZN4absl13InlinedVectorIPNS_13cord_internal7CordRepELm2ESaIS3_EE9push_backERKS3_.exit64.i: ; preds = %bb.s, %bb.r, %_ZN4absl13cord_internal7CordRep3crcEv.exit55.i, %_ZN4absl13cord_internal7CordRep9substringEv.exit54.i, %_ZN4absl13cord_internal7CordRep8externalEv.exit.i, %bb.l, %_ZN4absl13cord_internal7CordRep4flatEv.exit.i
  %i.bl = phi i64 [ %i.bj, %bb.r ], [ %i.l, %bb.l ], [ %i.l, %_ZN4absl13cord_internal7CordRep3crcEv.exit55.i ], [ %i.l, %_ZN4absl13cord_internal7CordRep4flatEv.exit.i ], [ %i.l, %_ZN4absl13cord_internal7CordRep9substringEv.exit54.i ], [ %i.l, %_ZN4absl13cord_internal7CordRep8externalEv.exit.i ], [ %.pr.pre.i, %bb.s ] ; 3 uses
  %.not.i.i = icmp ult i64 %i.bl, 2
  br i1 %.not.i.i, label %bb.t, label %_ZN4absl13InlinedVectorIPNS_13cord_internal7CordRepELm2ESaIS3_EE8pop_backEv.exit.i, !llvm.loop !12

bb.t:                                             ; preds = %_ZN4absl13InlinedVectorIPNS_13cord_internal7CordRepELm2ESaIS3_EE9push_backERKS3_.exit64.i
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.u, label %_ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_.exit

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %i.c, align 8
  %i.bo = load i64, ptr %i.b, align 8
  %i.bp = shl i64 %i.bo, 3
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bp) #23
  br label %_ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_.exit

_ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %.critedge

.critedge:                                        ; preds = %_ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl4Cord9InlineRep19AppendTreeToInlinedEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 4 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 201, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep19AppendTreeToInlinedEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %i.a, 0
  br i1 %i.c, label %_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit, label %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i

_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i: ; preds = %bb.c
  %i.d = sext i8 %i.a to i64
  %i.e = lshr exact i64 %i.d, 1                   ; 3 uses
  %3 = icmp ult i8 %i.a, 40
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 4083)
  %4 = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %3, i64 32, i64 %4        ; 2 uses
  %i.f = icmp samesign ult i64 %.0.i.i.i, 513     ; 2 uses
  %.neg.i.i.i = select i1 %i.f, i64 -8, i64 -64
  %i.g = select i1 %i.f, i64 8, i64 64
  %i.h = add nsw i64 %.0.i.i.i, -1
  %i.i = add nuw nsw i64 %i.h, %i.g
  %i.j = and i64 %i.i, %.neg.i.i.i                ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 2, ptr %i.l, align 4
  %i.m = icmp samesign ult i64 %i.j, 513          ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.m, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.m, i64 2, i64 58
  %i.n = lshr i64 %i.j, %.sink6.i.i.i.i.i
  %i.o = add nuw nsw i64 %i.n, %.sink5.i.i.i.i.i  ; 2 uses
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 %i.p, ptr %i.q, align 4
  store i64 %i.e, ptr %i.k, align 8
  %i.r = load i8, ptr %0, align 8
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit

bb.d:                                             ; preds = %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.68, i32 noundef 652, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData18copy_max_inline_toEPc) #20
  unreachable

_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit: ; preds = %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.t, ptr noundef nonnull align 1 dereferenceable(15) %i.u, i64 15, i1 false)
  %or.cond.i.i = icmp samesign ugt i64 %i.o, 4
  br i1 %or.cond.i.i, label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i

_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i: ; preds = %_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit
  %i.v = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 2, ptr %i.w, align 4
  store i64 %i.e, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 1>, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.k, ptr %i.y, align 8
  br label %_ZN4absl13cord_internal12CordRepBtree6CreateEPNS0_7CordRepE.exit

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i: ; preds = %_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit
  %i.z = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree10CreateSlowEPNS0_7CordRepE(ptr noundef nonnull %i.k) #21
  br label %_ZN4absl13cord_internal12CordRepBtree6CreateEPNS0_7CordRepE.exit

_ZN4absl13cord_internal12CordRepBtree6CreateEPNS0_7CordRepE.exit: ; preds = %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i
  %.0.i = phi ptr [ %i.v, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i ], [ %i.z, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree6CreateEPNS0_7CordRepE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE) #20
  unreachable

bb.f:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree6CreateEPNS0_7CordRepE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load i8, ptr %i.aa, align 4             ; 2 uses
  %or.cond.i.i4 = icmp ugt i8 %i.ab, 4
  br i1 %or.cond.i.i4, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i8 %i.ab, 1
  br i1 %i.ac, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i6, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i, !prof !14

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i6: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %.phi.trans.insert.i.i7 = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %.pre.i.i8 = load i8, ptr %.phi.trans.insert.i.i7, align 4
  %i.af = icmp ugt i8 %.pre.i.i8, 4
  br i1 %i.af, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i, !prof !15

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i6, %bb.f
  %i.ag = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree10AddCordRepILNS1_8EdgeTypeE1EEEPS1_S4_PNS0_7CordRepE(ptr noundef %.0.i, ptr noundef nonnull %1) #21
  br label %_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i6, %bb.g
  %i.ah = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree10AppendSlowEPS1_PNS0_7CordRepE(ptr noundef %.0.i, ptr noundef nonnull %1) #21
  br label %_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit

_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, %bb.c
  %.0 = phi ptr [ %1, %bb.c ], [ %i.ag, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i ], [ %i.ah, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1260, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.i:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0, ptr %i.ai, align 8
  store i64 1, ptr %0, align 8
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i, !prof !5

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %bb.i
  %i.am = add nsw i64 %i.ak, -1
  store i64 %i.am, ptr %i.aj, align 8
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i: ; preds = %bb.i
  %i.an = tail call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.j, label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !6

bb.j:                                             ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i
  tail call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %2, i64 noundef %i.an) #21
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl4Cord9InlineRep16AppendTreeToTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 211, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep16AppendTreeToTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit: ; preds = %bb.c
  %i.e = add nsw i64 %i.c, -1                     ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %.not.i3 = icmp eq i64 %i.e, 0                  ; 2 uses
  br i1 %.not.i3, label %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit, label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !5

_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit
  tail call void @_ZN4absl13cord_internal9CordzInfo4LockENS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.f, i32 noundef %2) #21
  %.pre = load i8, ptr %0, align 8
  %i.g = trunc i8 %.pre to i1
  br i1 %i.g, label %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68, i32 noundef 626, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData7as_treeEv) #20
  unreachable

_ZNK4absl13cord_internal10InlineData7as_treeEv.exit: ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit, %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call fastcc noundef ptr @_ZN4abslL10ForceBtreeEPNS_13cord_internal7CordRepE(ptr noundef %i.i) ; 2 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE) #20
  unreachable

bb.g:                                             ; preds = %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i8, ptr %i.k, align 4               ; 2 uses
  %or.cond.i.i = icmp ugt i8 %i.l, 4
  br i1 %or.cond.i.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i, !prof !14

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i: ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4
  %i.p = icmp ugt i8 %.pre.i.i, 4
  br i1 %i.p, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i, !prof !15

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, %bb.g
  %i.q = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree10AddCordRepILNS1_8EdgeTypeE1EEEPS1_S4_PNS0_7CordRepE(ptr noundef %i.j, ptr noundef nonnull %1) #21
  br label %_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, %bb.h
  %i.r = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree10AppendSlowEPS1_PNS0_7CordRepE(ptr noundef %i.j, ptr noundef nonnull %1) #21
  br label %_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit

_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i
  %.0.i = phi ptr [ %i.q, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i ], [ %i.r, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i ] ; 3 uses
  %.not.i4 = icmp eq ptr %.0.i, null
  br i1 %.not.i4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

bb.j:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_PNS0_7CordRepE.exit
  %i.s = load i8, ptr %0, align 8
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31, i32 noundef 1275, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i: ; preds = %bb.j
  store ptr %.0.i, ptr %i.h, align 8
  br i1 %.not.i3, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.l, !prof !5

bb.l:                                             ; preds = %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  tail call void @_ZNK4absl5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #21
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.0.i, ptr %i.v, align 8
  tail call void @_ZN4absl13cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.f) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4absl13cord_internal10InlineData10cordz_infoEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68, i32 noundef 576, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4abslL10ForceBtreeEPNS_13cord_internal7CordRepE(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  switch i8 %i.b, label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit.thread [
    i8 3, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit
    i8 2, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  ], !prof !16

_ZN4absl13cord_internal7CordRep3crcEv.exit.i:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load atomic i32, ptr %i.e acquire, align 8
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %i.h = load i8, ptr %i.a, align 4
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.81, i32 noundef 90, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3crcEv) #20
  unreachable

bb.d:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.68, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3RefEPS1_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i:  ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 2 monotonic, align 4 ; 0 uses
  tail call void @_ZN4absl13cord_internal7CordRep5UnrefEPS1_(ptr noundef nonnull %0)
  br label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit.thread

_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4absl12crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  %.not.i.i3 = icmp eq ptr %i.d, null
  br i1 %.not.i.i3, label %bb.f, label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit.thread

bb.f:                                             ; preds = %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE) #20
  unreachable

_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit.thread: ; preds = %bb.a, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i, %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit
  %.0.i7 = phi ptr [ %i.d, %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit ], [ %0, %bb.a ], [ %i.d, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i7, i64 12
  %i.n = load i8, ptr %i.m, align 4               ; 2 uses
  %or.cond.i.i = icmp ugt i8 %i.n, 4
  br i1 %or.cond.i.i, label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit.thread
  %i.o = icmp eq i8 %i.n, 1
  br i1 %i.o, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i: ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i7, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4
  %i.r = icmp ugt i8 %.pre.i.i, 4
  br i1 %i.r, label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i

_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit.thread
  %i.s = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 2, ptr %i.t, align 4
  %i.u = load i64, ptr %.0.i7, align 8
  store i64 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 1>, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.0.i7, ptr %i.w, align 8
  br label %_ZN4absl13cord_internal7CordRep5btreeEv.exit

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, %bb.g
  %i.x = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree10CreateSlowEPNS0_7CordRepE(ptr noundef nonnull %.0.i7) #21
  br label %_ZN4absl13cord_internal7CordRep5btreeEv.exit

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %bb.a, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i
  %i.y = phi ptr [ %0, %bb.a ], [ %i.s, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i ], [ %i.x, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i ]
  ret ptr %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl4Cord9InlineRep20PrependTreeToInlinedEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 4 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 231, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep20PrependTreeToInlinedEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %i.a, 0
  br i1 %i.c, label %_ZN4absl13cord_internal12CordRepBtree7PrependEPS1_PNS0_7CordRepE.exit, label %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i

_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i: ; preds = %bb.c
  %i.d = sext i8 %i.a to i64
  %i.e = lshr exact i64 %i.d, 1                   ; 3 uses
  %3 = icmp ult i8 %i.a, 40
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 4083)
  %4 = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %3, i64 32, i64 %4        ; 2 uses
  %i.f = icmp samesign ult i64 %.0.i.i.i, 513     ; 2 uses
  %.neg.i.i.i = select i1 %i.f, i64 -8, i64 -64
  %i.g = select i1 %i.f, i64 8, i64 64
  %i.h = add nsw i64 %.0.i.i.i, -1
  %i.i = add nuw nsw i64 %i.h, %i.g
  %i.j = and i64 %i.i, %.neg.i.i.i                ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 2, ptr %i.l, align 4
  %i.m = icmp samesign ult i64 %i.j, 513          ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.m, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.m, i64 2, i64 58
  %i.n = lshr i64 %i.j, %.sink6.i.i.i.i.i
  %i.o = add nuw nsw i64 %i.n, %.sink5.i.i.i.i.i  ; 2 uses
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 %i.p, ptr %i.q, align 4
  store i64 %i.e, ptr %i.k, align 8
  %i.r = load i8, ptr %0, align 8
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit

bb.d:                                             ; preds = %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.68, i32 noundef 652, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData18copy_max_inline_toEPc) #20
  unreachable

_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit: ; preds = %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.t, ptr noundef nonnull align 1 dereferenceable(15) %i.u, i64 15, i1 false)
  %or.cond.i.i = icmp samesign ugt i64 %i.o, 4
  br i1 %or.cond.i.i, label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i

_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i: ; preds = %_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit
  %i.v = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 2, ptr %i.w, align 4
  store i64 %i.e, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 1>, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.k, ptr %i.y, align 8
  br label %_ZN4absl13cord_internal12CordRepBtree6CreateEPNS0_7CordRepE.exit

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i: ; preds = %_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit
  %i.z = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree10CreateSlowEPNS0_7CordRepE(ptr noundef nonnull %i.k) #21
  br label %_ZN4absl13cord_internal12CordRepBtree6CreateEPNS0_7CordRepE.exit

_ZN4absl13cord_internal12CordRepBtree6CreateEPNS0_7CordRepE.exit: ; preds = %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i
  %.0.i = phi ptr [ %i.v, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit.i ], [ %i.z, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread5.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree6CreateEPNS0_7CordRepE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE) #20
  unreachable

bb.f:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree6CreateEPNS0_7CordRepE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load i8, ptr %i.aa, align 4             ; 2 uses
  %or.cond.i.i4 = icmp ugt i8 %i.ab, 4
  br i1 %or.cond.i.i4, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i8 %i.ab, 1
  br i1 %i.ac, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i6, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i, !prof !14

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i6: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %.phi.trans.insert.i.i7 = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %.pre.i.i8 = load i8, ptr %.phi.trans.insert.i.i7, align 4
  %i.af = icmp ugt i8 %.pre.i.i8, 4
  br i1 %i.af, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i, !prof !15

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i6, %bb.f
  %i.ag = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree10AddCordRepILNS1_8EdgeTypeE0EEEPS1_S4_PNS0_7CordRepE(ptr noundef %.0.i, ptr noundef nonnull %1) #21
  br label %_ZN4absl13cord_internal12CordRepBtree7PrependEPS1_PNS0_7CordRepE.exit

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i6, %bb.g
  %i.ah = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree11PrependSlowEPS1_PNS0_7CordRepE(ptr noundef %.0.i, ptr noundef nonnull %1) #21
  br label %_ZN4absl13cord_internal12CordRepBtree7PrependEPS1_PNS0_7CordRepE.exit

_ZN4absl13cord_internal12CordRepBtree7PrependEPS1_PNS0_7CordRepE.exit: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, %bb.c
  %.0 = phi ptr [ %1, %bb.c ], [ %i.ag, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i ], [ %i.ah, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree7PrependEPS1_PNS0_7CordRepE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1260, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.i:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree7PrependEPS1_PNS0_7CordRepE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0, ptr %i.ai, align 8
  store i64 1, ptr %0, align 8
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i, !prof !5

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %bb.i
  %i.am = add nsw i64 %i.ak, -1
  store i64 %i.am, ptr %i.aj, align 8
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i: ; preds = %bb.i
  %i.an = tail call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.j, label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !6

bb.j:                                             ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i
  tail call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %2, i64 noundef %i.an) #21
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl4Cord9InlineRep17PrependTreeToTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep17PrependTreeToTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit: ; preds = %bb.c
  %i.e = add nsw i64 %i.c, -1                     ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %.not.i3 = icmp eq i64 %i.e, 0                  ; 2 uses
  br i1 %.not.i3, label %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit, label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !5

_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit
  tail call void @_ZN4absl13cord_internal9CordzInfo4LockENS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.f, i32 noundef %2) #21
  %.pre = load i8, ptr %0, align 8
  %i.g = trunc i8 %.pre to i1
  br i1 %i.g, label %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68, i32 noundef 626, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData7as_treeEv) #20
  unreachable

_ZNK4absl13cord_internal10InlineData7as_treeEv.exit: ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit, %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call fastcc noundef ptr @_ZN4abslL10ForceBtreeEPNS_13cord_internal7CordRepE(ptr noundef %i.i) ; 2 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE) #20
  unreachable

bb.g:                                             ; preds = %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i8, ptr %i.k, align 4               ; 2 uses
  %or.cond.i.i = icmp ugt i8 %i.l, 4
  br i1 %or.cond.i.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i, !prof !14

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i: ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4
  %i.p = icmp ugt i8 %.pre.i.i, 4
  br i1 %i.p, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i, !prof !15

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, %bb.g
  %i.q = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree10AddCordRepILNS1_8EdgeTypeE0EEEPS1_S4_PNS0_7CordRepE(ptr noundef %i.j, ptr noundef nonnull %1) #21
  br label %_ZN4absl13cord_internal12CordRepBtree7PrependEPS1_PNS0_7CordRepE.exit

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, %bb.h
  %i.r = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree11PrependSlowEPS1_PNS0_7CordRepE(ptr noundef %i.j, ptr noundef nonnull %1) #21
  br label %_ZN4absl13cord_internal12CordRepBtree7PrependEPS1_PNS0_7CordRepE.exit

_ZN4absl13cord_internal12CordRepBtree7PrependEPS1_PNS0_7CordRepE.exit: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i
  %.0.i = phi ptr [ %i.q, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread.i ], [ %i.r, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread7.i ] ; 3 uses
  %.not.i4 = icmp eq ptr %.0.i, null
  br i1 %.not.i4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4absl13cord_internal12CordRepBtree7PrependEPS1_PNS0_7CordRepE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
end_hunk_0
begin_hunk_1_@_ZN4absl4Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS_13cord_internal18CordzUpdateTracker16MethodIdentifierE:bb.a

bb.f:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.31, i32 noundef 1324, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv) #20
  unreachable

bb.g:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %i.n = tail call noundef ptr @_ZNK4absl4Cord9InlineRep10cordz_infoEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.critedge.thread, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4absl13cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.n) #21
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.h, %bb.g
  tail call void @_ZN4absl13cord_internal7CordRep5UnrefEPS1_(ptr noundef nonnull %i.e)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit

_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit: ; preds = %bb.b, %bb.c
  %i.o = trunc i8 %i.b to i1                      ; 2 uses
  %.not125 = icmp ne ptr %i.e, null
  %.not.not = select i1 %i.o, i1 %.not125, i1 false
  br i1 %.not.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not.i.i33 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i33, label %bb.j, label %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit:      ; preds = %bb.i
  %i.r = add nsw i64 %i.p, -1                     ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  %.not.i34 = icmp eq i64 %i.r, 0                 ; 2 uses
  br i1 %.not.i34, label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.k, !prof !5

bb.k:                                             ; preds = %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit
  tail call void @_ZN4absl13cord_internal9CordzInfo4LockENS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.s, i32 noundef %3) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.k, %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i37, label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit, !prof !7

_ZN4absl13cord_internal7CordRep3crcEv.exit.i37:   ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load atomic i32, ptr %i.y acquire, align 8
  %i.aa = icmp eq i32 %i.z, 2
  br i1 %i.aa, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i37
  %i.ab = load i8, ptr %i.t, align 4
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %_ZN4absl13cord_internal7CordRep3crcEv.exit12.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.81, i32 noundef 90, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3crcEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep3crcEv.exit12.i:   ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  tail call void @_ZN4absl12crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #23
  br label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit

bb.n:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i37
  %.not.i.i38 = icmp eq ptr %i.x, null
  br i1 %.not.i.i38, label %bb.o, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.68, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3RefEPS1_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i:  ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.af = atomicrmw add ptr %i.ae, i32 2 monotonic, align 4 ; 0 uses
  tail call void @_ZN4absl13cord_internal7CordRep5UnrefEPS1_(ptr noundef nonnull %i.e)
  br label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit

_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit: ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, %_ZN4absl13cord_internal7CordRep3crcEv.exit12.i, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i
  %.0.i36 = phi ptr [ %i.x, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i ], [ %i.e, %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit ], [ %i.x, %_ZN4absl13cord_internal7CordRep3crcEv.exit12.i ] ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i36, i64 12 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 4             ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 3
  br i1 %i.ai, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i36, i64 8
  %i.ak = load atomic i32, ptr %i.aj acquire, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.q, label %thread-pre-split.i

bb.q:                                             ; preds = %bb.p
  %i.am = load i8, ptr %i.ag, align 4
  %i.an = icmp eq i8 %i.am, 3
  br i1 %i.an, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i:   ; preds = %bb.q
  %i.ao = tail call { ptr, i64 } @_ZN4absl13cord_internal12CordRepBtree15GetAppendBufferEm(ptr noundef nonnull align 8 dereferenceable(64) %.0.i36, i64 noundef %1) ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 1      ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %thread-pre-split.i, label %bb.s

bb.s:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i
  %i.ar = extractvalue { ptr, i64 } %i.ao, 0
  br label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit

thread-pre-split.i:                               ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, %bb.p
  %.pr.i = load i8, ptr %i.ag, align 4
  br label %bb.t

bb.t:                                             ; preds = %thread-pre-split.i, %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit
  %i.as = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ah, %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit ]
  %i.at = icmp ugt i8 %i.as, 5
  br i1 %i.at, label %bb.u, label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i36, i64 8
  %i.av = load atomic i32, ptr %i.au acquire, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.v, label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ax = load i64, ptr %.0.i36, align 8          ; 4 uses
  %i.ay = load i8, ptr %i.ag, align 4             ; 4 uses
  %.off.i.i = add i8 %i.ay, -6
  %switch.i.i = icmp ult i8 %.off.i.i, -13
  br i1 %switch.i.i, label %_ZN4absl13cord_internal7CordRep4flatEv.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep4flatEv.exit.i:    ; preds = %bb.v
  %i.az = zext i8 %i.ay to i32
  %i.ba = icmp ult i8 %i.ay, 67                   ; 2 uses
  %i.bb = icmp ult i8 %i.ay, -69                  ; 2 uses
  %..i.i.i.i = select i1 %i.bb, i32 6, i32 12
  %.sink6.i.i.i.i = select i1 %i.ba, i32 3, i32 %..i.i.i.i
  %i.bc = shl nuw nsw i32 %i.az, %.sink6.i.i.i.i
  %i.bd = select i1 %i.bb, i32 -3725, i32 -753677
  %i.be = select i1 %i.ba, i32 -29, i32 %i.bd
  %narrow.i.i.i = add nsw i32 %i.bc, %i.be
  %i.bf = sext i32 %narrow.i.i.i to i64           ; 2 uses
  %.not.i39 = icmp eq i64 %i.ax, %i.bf
  br i1 %.not.i39, label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread, label %_ZN4absl13cord_internal7CordRep4flatEv.exit34.i

_ZN4absl13cord_internal7CordRep4flatEv.exit34.i:  ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit.i
  %i.bg = sub i64 %i.bf, %i.ax
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.bg) ; 2 uses
  %i.bh = add i64 %.sroa.speculated.i, %i.ax
  store i64 %i.bh, ptr %.0.i36, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i36, i64 13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ax
  br label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit

_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit: ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit34.i, %bb.s
  %storemerge41.i = phi ptr [ %i.ar, %bb.s ], [ %i.bj, %_ZN4absl13cord_internal7CordRep4flatEv.exit34.i ]
  %storemerge.i = phi i64 [ %i.ap, %bb.s ], [ %.sroa.speculated.i, %_ZN4absl13cord_internal7CordRep4flatEv.exit34.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %storemerge41.i, ptr align 1 %2, i64 %storemerge.i, i1 false)
  br label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread

.critedge:                                        ; preds = %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  br i1 %i.o, label %bb.w, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit, !prof !17

bb.w:                                             ; preds = %.critedge
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit:     ; preds = %.critedge.thread, %.critedge
  %i.bk = phi i8 [ 0, %.critedge.thread ], [ %i.b, %.critedge ]
  %i.bl = sext i8 %i.bk to i64
  %i.bm = lshr exact i64 %i.bl, 1                 ; 7 uses
  %i.bn = sub nsw i64 15, %i.bm
  %.not32 = icmp ugt i64 %1, %i.bn
  %i.bo = add i64 %i.bm, %1                       ; 4 uses
  br i1 %.not32, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit
  %i.bp = icmp ult i64 %i.bo, 16
  br i1 %i.bp, label %bb.aa, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.68, i32 noundef 763, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN4absl13cord_internal10InlineData3Rep15set_inline_sizeEmENKUlvE_clEv) #20
  unreachable

bb.z:                                             ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit
  %4 = icmp ult i64 %i.bo, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 4083)
  %i.bq = add nuw nsw i64 %spec.store.select.i.i, 13
  %.0.i.i = select i1 %4, i64 32, i64 %i.bq       ; 2 uses
  %i.br = icmp samesign ult i64 %.0.i.i, 513      ; 2 uses
  %.neg.i.i = select i1 %i.br, i64 -8, i64 -64
  %i.bs = select i1 %i.br, i64 8, i64 64
  %i.bt = add nsw i64 %.0.i.i, -1
  %i.bu = add nuw nsw i64 %i.bt, %i.bs
  %i.bv = and i64 %i.bu, %.neg.i.i                ; 3 uses
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #24 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 2, ptr %i.bx, align 4
  %i.by = icmp samesign ult i64 %i.bv, 513        ; 2 uses
  %.sink6.i.i.i.i40 = select i1 %i.by, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.by, i64 2, i64 58
  %i.bz = lshr i64 %i.bv, %.sink6.i.i.i.i40
  %i.ca = add nuw nsw i64 %i.bz, %.sink5.i.i.i.i  ; 3 uses
  %i.cb = trunc nuw nsw i64 %i.ca to i8           ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i8 %i.cb, ptr %i.cc, align 4
  %.off.i = add nsw i8 %i.cb, -6
  %switch.i = icmp ult i8 %.off.i, -13
  br i1 %switch.i, label %.thread96, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

bb.aa:                                            ; preds = %bb.x
  %.tr.i.i.i = trunc nuw nsw i64 %i.bo to i8
  %i.cd = shl nuw nsw i8 %.tr.i.i.i, 1
  store i8 %i.cd, ptr %0, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %2, i64 %1, i1 false)
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread: ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit.i, %bb.u, %bb.t, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit
  %.189 = phi i64 [ %storemerge.i, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %_ZN4absl13cord_internal7CordRep4flatEv.exit.i ] ; 2 uses
  %i.cg = sub i64 %1, %.189                       ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.ab, label %bb.ae

.thread96:                                        ; preds = %bb.z
  %i.ci = trunc nuw nsw i64 %i.ca to i32
  %i.cj = icmp samesign ult i64 %i.ca, 67         ; 2 uses
  %.sink6.i.i.i = select i1 %i.cj, i32 3, i32 6
  %i.ck = shl nuw nsw i32 %i.ci, %.sink6.i.i.i
  %i.cl = select i1 %i.cj, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.ck, %i.cl
  %i.cm = sext i32 %narrow.i.i to i64
  %i.cn = sub i64 %i.cm, %i.bm
  %.sroa.speculated62 = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 %1) ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 13 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull align 1 %i.cp, i64 %i.bm, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr align 1 %2, i64 %.sroa.speculated62, i1 false)
  %i.cr = add i64 %.sroa.speculated62, %i.bm
  store i64 %i.cr, ptr %i.bw, align 8
  %i.cs = sub i64 %1, %.sroa.speculated62         ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.thread112, label %bb.ae

bb.ab:                                            ; preds = %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread
  %i.cu = load i8, ptr %0, align 8
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31, i32 noundef 1275, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i: ; preds = %bb.ab
  store ptr %.0.i36, ptr %i.d, align 8
  br i1 %.not.i34, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121.sink.split, !prof !5

.thread112:                                       ; preds = %.thread96
  store ptr %i.bw, ptr %i.d, align 8
  store i64 1, ptr %0, align 8
  %i.cw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8            ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 1
  br i1 %i.cy, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i, !prof !5

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i: ; preds = %.thread112
  %i.cz = add nsw i64 %i.cx, -1
  store i64 %i.cz, ptr %i.cw, align 8
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i: ; preds = %.thread112
  %i.da = tail call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #21 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 0
  br i1 %i.db, label %bb.ad, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, !prof !6

bb.ad:                                            ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i
  tail call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %3, i64 noundef %i.da) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

bb.ae:                                            ; preds = %.thread96, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread
  %.not.not144 = phi i1 [ false, %.thread96 ], [ true, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread ]
  %i.dc = phi i64 [ %i.cs, %.thread96 ], [ %i.cg, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread ] ; 2 uses
  %.sroa.speculated62.pn = phi i64 [ %.sroa.speculated62, %.thread96 ], [ %.189, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread ]
  %.1102 = phi ptr [ %i.bw, %.thread96 ], [ %.0.i36, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread ]
  %.sroa.0.0101 = phi ptr [ null, %.thread96 ], [ %i.s, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread ] ; 4 uses
  %i.dd = tail call fastcc noundef ptr @_ZN4abslL10ForceBtreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull %.1102) ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.df = load i8, ptr %i.de, align 4
  %i.dg = icmp eq i8 %i.df, 3
  br i1 %i.dg, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %bb.ae
  %i.dh = load i64, ptr %i.dd, align 8
  %i.di = udiv i64 %i.dh, 10
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated62.pn
  %i.dk = tail call i64 @llvm.usub.sat.i64(i64 %i.di, i64 %i.dc)
  %i.dl = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull %i.dd, i64 %i.dc, ptr %i.dj, i64 noundef %i.dk) #21 ; 4 uses
  %.not.i5.i52 = icmp eq ptr %i.dl, null          ; 2 uses
  br i1 %.not.not144, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  br i1 %.not.i5.i52, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.dm = load i8, ptr %0, align 8
  %i.dn = trunc i8 %i.dm to i1
  br i1 %i.dn, label %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31, i32 noundef 1275, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53: ; preds = %bb.ai
  store ptr %i.dl, ptr %i.d, align 8
  %.not.i.i.i54 = icmp eq ptr %.sroa.0.0101, null
  br i1 %.not.i.i.i54, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121.sink.split, !prof !5

bb.ak:                                            ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  br i1 %.not.i5.i52, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1260, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.am:                                            ; preds = %bb.ak
  store ptr %i.dl, ptr %i.d, align 8
  store i64 1, ptr %0, align 8
  %i.do = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 1
  br i1 %i.dq, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i56, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i55, !prof !5

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i56: ; preds = %bb.am
  %i.dr = add nsw i64 %i.dp, -1
  store i64 %i.dr, ptr %i.do, align 8
  br label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i55: ; preds = %bb.am
  %i.ds = tail call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #21 ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %bb.an, label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !6

bb.an:                                            ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i55
  tail call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %3, i64 noundef %i.ds) #21
  br label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.an, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i55, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i56
  %.not.i58 = icmp eq ptr %.sroa.0.0101, null
  br i1 %.not.i58, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121, !prof !18

_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121.sink.split: ; preds = %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i
  %.sroa.0.0101.sink152 = phi ptr [ %i.s, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i ], [ %.sroa.0.0101, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53 ] ; 3 uses
  %.sink = phi ptr [ %.0.i36, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i ], [ %i.dl, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53 ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0101.sink152, i64 56
  tail call void @_ZNK4absl5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.du) #21
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0101.sink152, i64 64
  store ptr %.sink, ptr %i.dv, align 8
  br label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121

_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121: ; preds = %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121.sink.split, %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit
  %.sroa.0.1124 = phi ptr [ %.sroa.0.0101, %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit ], [ %.sroa.0.0101.sink152, %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121.sink.split ]
  tail call void @_ZN4absl13cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %.sroa.0.1124) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i, %bb.ad, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i, %bb.aa, %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121, %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef, i64, ptr, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl4Cord23GetAppendBufferSlowPathEmmm(ptr dead_on_unwind noalias writable sret(%"class.absl::CordBuffer") align 8 %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8                 ; 7 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  %.not23 = icmp ne ptr %i.d, null
  %.not.not = select i1 %i.b, i1 %.not23, i1 false
  br i1 %.not.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit:      ; preds = %bb.b
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %.not.i = icmp eq i64 %i.g, 0                   ; 4 uses
  br i1 %.not.i, label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit
  tail call void @_ZN4absl13cord_internal9CordzInfo4LockENS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.h, i32 noundef 12) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4               ; 2 uses
  %cond.i = icmp eq i8 %i.j, 3
  br i1 %cond.i, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, label %bb.e

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i:   ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.k = tail call { ptr, ptr } @_ZN4absl13cord_internal12CordRepBtree19ExtractAppendBufferEPS1_m(ptr noundef nonnull %i.d, i64 noundef %4) #21
  br label %_ZN4abslL19ExtractAppendBufferEPNS_13cord_internal7CordRepEm.exit

bb.e:                                             ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.l = icmp ugt i8 %i.j, 5
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load atomic i32, ptr %i.m acquire, align 4
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %i.i, align 4               ; 4 uses
  %.off.i.i = add i8 %i.p, -6
  %switch.i.i = icmp ult i8 %.off.i.i, -13
  br i1 %switch.i.i, label %_ZN4absl13cord_internal7CordRep4flatEv.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep4flatEv.exit.i:    ; preds = %bb.g
  %i.q = zext i8 %i.p to i32
  %i.r = icmp ult i8 %i.p, 67                     ; 2 uses
  %i.s = icmp ult i8 %i.p, -69                    ; 2 uses
  %..i.i.i.i = select i1 %i.s, i32 6, i32 12
  %.sink6.i.i.i.i = select i1 %i.r, i32 3, i32 %..i.i.i.i
  %i.t = shl nuw nsw i32 %i.q, %.sink6.i.i.i.i
  %i.u = select i1 %i.s, i32 -3725, i32 -753677
  %i.v = select i1 %i.r, i32 -29, i32 %i.u
  %narrow.i.i.i = add nsw i32 %i.t, %i.v
  %i.w = sext i32 %narrow.i.i.i to i64
  %i.x = load i64, ptr %i.d, align 8
  %i.y = sub i64 %i.w, %i.x
  %.not.i14 = icmp ult i64 %i.y, %4
  br i1 %.not.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit.i
  %i.z = insertvalue { ptr, ptr } { ptr null, ptr poison }, ptr %i.d, 1
  br label %_ZN4abslL19ExtractAppendBufferEPNS_13cord_internal7CordRepEm.exit

bb.i:                                             ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit.i, %bb.f, %bb.e
  %i.aa = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.ab = insertvalue { ptr, ptr } %i.aa, ptr null, 1
  br label %_ZN4abslL19ExtractAppendBufferEPNS_13cord_internal7CordRepEm.exit

_ZN4abslL19ExtractAppendBufferEPNS_13cord_internal7CordRepEm.exit: ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, %bb.h, %bb.i
  %.fca.1.insert.merged.i = phi { ptr, ptr } [ %i.k, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ], [ %i.z, %bb.h ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %.fca.1.insert.merged.i, 1 ; 3 uses
  %.not12 = icmp eq ptr %i.ac, null
  br i1 %.not12, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZN4abslL19ExtractAppendBufferEPNS_13cord_internal7CordRepEm.exit
  %i.ad = extractvalue { ptr, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  %i.ae = load i8, ptr %1, align 8
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31, i32 noundef 1282, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep14SetTreeOrEmptyEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not.i15 = icmp eq ptr %i.ad, null
  br i1 %.not.i15, label %.split6.i, label %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i

_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i: ; preds = %bb.l
  store ptr %i.ad, ptr %i.c, align 8
  br i1 %.not.i, label %_ZN4absl4Cord9InlineRep14SetTreeOrEmptyEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE.exit, label %_ZNK4absl13cord_internal16CordzUpdateScope10SetCordRepEPNS0_7CordRepE.exit.sink.split.i, !prof !5

.split6.i:                                        ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %_ZN4absl4Cord9InlineRep14SetTreeOrEmptyEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE.exit, label %_ZNK4absl13cord_internal16CordzUpdateScope10SetCordRepEPNS0_7CordRepE.exit.sink.split.i, !prof !5

_ZNK4absl13cord_internal16CordzUpdateScope10SetCordRepEPNS0_7CordRepE.exit.sink.split.i: ; preds = %.split6.i, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  tail call void @_ZNK4absl5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.ad, ptr %i.ah, align 8
  br label %_ZN4absl4Cord9InlineRep14SetTreeOrEmptyEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE.exit

_ZN4absl4Cord9InlineRep14SetTreeOrEmptyEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE.exit: ; preds = %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i, %.split6.i, %_ZNK4absl13cord_internal16CordzUpdateScope10SetCordRepEPNS0_7CordRepE.exit.sink.split.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aj = load i8, ptr %i.ai, align 4
  %.off.i = add i8 %i.aj, -6
  %switch.i = icmp ult i8 %.off.i, -13
  br i1 %switch.i, label %_ZN4absl10CordBufferC2EPNS_13cord_internal11CordRepFlatE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4absl4Cord9InlineRep14SetTreeOrEmptyEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZN4absl10CordBufferC2EPNS_13cord_internal11CordRepFlatE.exit: ; preds = %_ZN4absl4Cord9InlineRep14SetTreeOrEmptyEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE.exit
  store ptr %i.ac, ptr %0, align 8
  br label %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit

bb.m:                                             ; preds = %_ZN4abslL19ExtractAppendBufferEPNS_13cord_internal7CordRepEm.exit
  %.not13 = icmp eq i64 %2, 0
  br i1 %.not13, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4absl10CordBuffer25CreateWithCustomLimitImplIJEEES0_mmDpT_(ptr dead_on_unwind writable sret(%"class.absl::CordBuffer") align 8 %0, i64 noundef %2, i64 noundef %3)
  br label %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.ak = icmp ugt i64 %3, 15
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %5 = icmp ult i64 %3, 20
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %3, i64 4083)
  %i.al = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %5, i64 32, i64 %i.al     ; 2 uses
  %i.am = icmp samesign ult i64 %.0.i.i.i, 513    ; 2 uses
  %.neg.i.i.i = select i1 %i.am, i64 -8, i64 -64
  %i.an = select i1 %i.am, i64 8, i64 64
  %i.ao = add nsw i64 %.0.i.i.i, -1
  %i.ap = add nuw nsw i64 %i.ao, %i.an
  %i.aq = and i64 %i.ap, %.neg.i.i.i              ; 3 uses
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #24, !noalias !19 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 2, ptr %i.as, align 8, !noalias !19
  %i.at = icmp samesign ult i64 %i.aq, 513        ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.at, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.at, i64 2, i64 58
  %i.au = lshr i64 %i.aq, %.sink6.i.i.i.i.i
  %i.av = add nuw nsw i64 %i.au, %.sink5.i.i.i.i.i
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i8 %i.aw, ptr %i.ax, align 4, !noalias !19
  store i64 0, ptr %i.ar, align 8, !noalias !19
  store ptr %i.ar, ptr %0, align 8, !alias.scope !19
  br label %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit

bb.q:                                             ; preds = %bb.o
  store i8 1, ptr %0, align 8, !alias.scope !19
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ay, i8 0, i64 15, i1 false), !alias.scope !19
  br label %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit

_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit: ; preds = %bb.q, %bb.p, %bb.n, %_ZN4absl10CordBufferC2EPNS_13cord_internal11CordRepFlatE.exit
  br i1 %.not.i, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.r, !prof !5

bb.r:                                             ; preds = %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit
  tail call void @_ZN4absl13cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.h) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

bb.s:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  br i1 %i.b, label %bb.t, label %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i, !prof !7

bb.t:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20, !noalias !22
  unreachable

_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i: ; preds = %bb.s
  %i.az = sext i8 %i.a to i64                     ; 2 uses
  %i.ba = lshr exact i64 %i.az, 1                 ; 9 uses
  %i.bb = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 %i.ba) ; 4 uses
  %.not.i19 = icmp eq i64 %2, 0
  br i1 %.not.i19, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i
  tail call void @_ZN4absl10CordBuffer25CreateWithCustomLimitImplIJEEES0_mmDpT_(ptr dead_on_unwind writable sret(%"class.absl::CordBuffer") align 8 %0, i64 noundef %2, i64 noundef %i.bb)
  %.pre.i = load i8, ptr %0, align 8, !alias.scope !22
  br label %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit.i

bb.v:                                             ; preds = %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %6 = icmp ult i64 %i.bb, 20
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 4083)
  %i.bd = add nuw nsw i64 %spec.store.select.i.i.i.i, 13
  %.0.i.i.i.i = select i1 %6, i64 32, i64 %i.bd   ; 2 uses
  %i.be = icmp samesign ult i64 %.0.i.i.i.i, 513  ; 2 uses
  %.neg.i.i.i.i = select i1 %i.be, i64 -8, i64 -64
  %i.bf = select i1 %i.be, i64 8, i64 64
  %i.bg = add nsw i64 %.0.i.i.i.i, -1
  %i.bh = add nuw nsw i64 %i.bg, %i.bf
  %i.bi = and i64 %i.bh, %.neg.i.i.i.i            ; 3 uses
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #24, !noalias !28 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 2, ptr %i.bk, align 8, !noalias !28
  %i.bl = icmp samesign ult i64 %i.bi, 513        ; 2 uses
  %.sink6.i.i.i.i.i.i = select i1 %i.bl, i64 3, i64 6
  %.sink5.i.i.i.i.i.i = select i1 %i.bl, i64 2, i64 58
  %i.bm = lshr i64 %i.bi, %.sink6.i.i.i.i.i.i
  %i.bn = add nuw nsw i64 %i.bm, %.sink5.i.i.i.i.i.i
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i8 %i.bo, ptr %i.bp, align 4, !noalias !28
  store i64 0, ptr %i.bj, align 8, !noalias !28
  store ptr %i.bj, ptr %0, align 8, !alias.scope !28
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = trunc i64 %i.bq to i8
  br label %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit.i

bb.x:                                             ; preds = %bb.v
  store i8 1, ptr %0, align 8, !alias.scope !28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.bs, i8 0, i64 15, i1 false), !alias.scope !28
  br label %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit.i

_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit.i: ; preds = %bb.x, %bb.w, %bb.u
  %i.bt = phi i8 [ 1, %bb.x ], [ %i.br, %bb.w ], [ %.pre.i, %bb.u ]
  %i.bu = trunc i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bw = load ptr, ptr %0, align 8, !alias.scope !22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 13
  %i.by = select i1 %i.bu, ptr %i.bv, ptr %i.bx   ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 6 uses
  %i.ca = icmp ugt i8 %i.a, 14
  br i1 %i.ca, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit.i
  %i.cb = icmp ult i8 %i.a, 32
  br i1 %i.cb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @__assert_fail(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68, i32 noundef 97, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm) #20
  unreachable

bb.aa:                                            ; preds = %bb.y
  %.0.copyload6.i.i = load i64, ptr %i.bz, align 1, !noalias !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ba
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %.0.copyload4.i.i = load i64, ptr %i.cd, align 1, !noalias !22
  store i64 %.0.copyload6.i.i, ptr %i.by, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ba
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  store i64 %.0.copyload4.i.i, ptr %i.cf, align 1
  br label %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i

bb.ab:                                            ; preds = %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit.i
  %i.cg = icmp samesign ugt i8 %i.a, 6
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.0.copyload2.i.i = load i32, ptr %i.bz, align 1, !noalias !22
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ba
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %.0.copyload.i.i = load i32, ptr %i.ci, align 1, !noalias !22
  store i32 %.0.copyload2.i.i, ptr %i.by, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ba
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -4
  store i32 %.0.copyload.i.i, ptr %i.ck, align 1
  br label %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i20 = icmp eq i8 %i.a, 0
  br i1 %.not.i.i20, label %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = load i8, ptr %i.bz, align 1, !noalias !22
  store i8 %i.cl, ptr %i.by, align 1
  %i.cm = lshr i64 %i.az, 2                       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noalias !22
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1
  %i.cq = getelementptr i8, ptr %1, i64 %i.ba
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !22
  %i.cs = getelementptr i8, ptr %i.by, i64 %i.ba
  %i.ct = getelementptr i8, ptr %i.cs, i64 -1
  store i8 %i.cr, ptr %i.ct, align 1
  br label %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i

_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %i.cu = load i8, ptr %0, align 8, !alias.scope !22
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %_ZNK4absl10CordBuffer8capacityEv.exit.i.i, label %_ZNK4absl10CordBuffer8capacityEv.exit.thread.i.i

_ZNK4absl10CordBuffer8capacityEv.exit.thread.i.i: ; preds = %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i
  %i.cw = load ptr, ptr %0, align 8, !alias.scope !22 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = load i8, ptr %i.cx, align 4             ; 3 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = icmp ult i8 %i.cy, 67                   ; 2 uses
  %i.db = icmp ult i8 %i.cy, -69                  ; 2 uses
  %..i.i.i.i.i.i = select i1 %i.db, i32 6, i32 12
  %.sink6.i.i.i.i.i9.i = select i1 %i.da, i32 3, i32 %..i.i.i.i.i.i
  %i.dc = shl nuw nsw i32 %i.cz, %.sink6.i.i.i.i.i9.i
  %i.dd = select i1 %i.db, i32 -3725, i32 -753677
  %i.de = select i1 %i.da, i32 -29, i32 %i.dd
  %narrow.i.i.i.i.i = add nsw i32 %i.dc, %i.de
  %i.df = sext i32 %narrow.i.i.i.i.i to i64
  %.not3.i.i = icmp ugt i64 %i.ba, %i.df
  br i1 %.not3.i.i, label %bb.af, label %_ZNK4absl10CordBuffer3Rep3repEv.exit.i.i, !prof !7

bb.af:                                            ; preds = %_ZNK4absl10CordBuffer8capacityEv.exit.thread.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.85, i32 noundef 552, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN4absl10CordBuffer9SetLengthEmENKUlvE_clEv) #20
  unreachable

_ZNK4absl10CordBuffer8capacityEv.exit.i.i:        ; preds = %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit.i
  %i.dg = or disjoint i8 %i.a, 1
  store i8 %i.dg, ptr %0, align 8, !alias.scope !22
  br label %_ZN4abslL18CreateAppendBufferERNS_13cord_internal10InlineDataEmm.exit

_ZNK4absl10CordBuffer3Rep3repEv.exit.i.i:         ; preds = %_ZNK4absl10CordBuffer8capacityEv.exit.thread.i.i
  store i64 %i.ba, ptr %i.cw, align 8
  br label %_ZN4abslL18CreateAppendBufferERNS_13cord_internal10InlineDataEmm.exit

_ZN4abslL18CreateAppendBufferERNS_13cord_internal10InlineDataEmm.exit: ; preds = %_ZNK4absl10CordBuffer8capacityEv.exit.i.i, %_ZNK4absl10CordBuffer3Rep3repEv.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !22
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %bb.r, %_ZN4absl10CordBuffer22CreateWithDefaultLimitEm.exit, %_ZN4abslL18CreateAppendBufferERNS_13cord_internal10InlineDataEmm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl4Cord6AppendERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4absl4Cord10AppendImplIRKS0_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl4Cord10AppendImplIRKS0_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.absl::Cord", align 8        ; 6 uses
  %3 = alloca %"class.absl::Cord::ChunkIterator", align 8 ; 13 uses
  %i.a = load i8, ptr %0, align 8                 ; 3 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  %i.e = icmp ne ptr %i.d, null
  %.not7.i = select i1 %i.b, i1 %i.e, i1 false
  br i1 %.not7.i, label %bb.b, label %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.h = load i8, ptr %i.g, align 4
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.31, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep3crcEv.exit.i:     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.31, i32 noundef 1324, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv) #20
  unreachable

bb.f:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %i.m = tail call noundef ptr @_ZNK4absl4Cord9InlineRep10cordz_infoEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl13cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.m) #21
  br label %_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i

_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i: ; preds = %bb.g, %bb.f
  tail call void @_ZN4absl13cord_internal7CordRep5UnrefEPS1_(ptr noundef nonnull %i.d)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit: ; preds = %bb.a, %bb.b, %_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i
  %i.n = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ null, %_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i ]
  %i.o = phi i8 [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ 0, %_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i ] ; 2 uses
  %i.p = load i8, ptr %1, align 8                 ; 3 uses
  %i.q = trunc i8 %i.p to i1                      ; 5 uses
end_hunk_1
begin_hunk_2_@_ZNK4absl4Cord7SubcordEmm:bb.a
  %.pre = load i8, ptr %.phi.trans.insert, align 4
  br label %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit

_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit: ; preds = %bb.an, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %i.dx = phi i8 [ %.pre, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i ], [ %i.dt, %bb.an ] ; 2 uses
  %.0.i66 = phi ptr [ %i.dw, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i ], [ %i.l, %bb.an ] ; 7 uses
  %i.dy = icmp eq i8 %i.dx, 3
  br i1 %i.dy, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit, label %bb.ao

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit
  %i.dz = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree7SubTreeEmm(ptr noundef nonnull align 8 dereferenceable(64) %.0.i66, i64 noundef %spec.select, i64 noundef %.036) #21
  br label %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit

bb.ao:                                            ; preds = %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit
  %i.ea = load i64, ptr %.0.i66, align 8          ; 3 uses
  %i.eb = icmp ult i64 %spec.select, %i.ea
  br i1 %i.eb, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.68, i32 noundef 419, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ec = sub nuw i64 %i.ea, %spec.select
  %.not29.i = icmp ugt i64 %.036, %i.ec
  br i1 %.not29.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.68, i32 noundef 420, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ed = icmp eq i64 %.036, %i.ea
  br i1 %i.ed, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i, label %bb.at

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i:  ; preds = %bb.as
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i66, i64 8
  %i.ef = atomicrmw add ptr %i.ee, i32 2 monotonic, align 4 ; 0 uses
  br label %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit

bb.at:                                            ; preds = %bb.as
  %i.eg = icmp eq i8 %i.dx, 1
  br i1 %i.eg, label %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i, label %bb.au

_ZN4absl13cord_internal7CordRep9substringEv.exit30.i: ; preds = %bb.at
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i66, i64 16
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = add i64 %i.ei, %spec.select
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i66, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  br label %bb.au

bb.au:                                            ; preds = %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i, %bb.at
  %.023.i = phi i64 [ %i.ej, %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i ], [ %spec.select, %bb.at ]
  %.022.i = phi ptr [ %i.el, %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i ], [ %.0.i66, %bb.at ] ; 3 uses
  %i.em = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.em, i8 0, i64 16, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 2, ptr %i.en, align 4
  store i64 %.036, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i8 1, ptr %i.eo, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 %.023.i, ptr %i.ep, align 8
  %.not.i31.i = icmp eq ptr %.022.i, null
  br i1 %.not.i31.i, label %bb.av, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i

bb.av:                                            ; preds = %bb.au
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.68, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3RefEPS1_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i: ; preds = %bb.au
  %i.eq = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.er = atomicrmw add ptr %i.eq, i32 2 monotonic, align 4 ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store ptr %.022.i, ptr %i.es, align 8
  br label %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit

_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit: ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  %.033 = phi ptr [ %i.dz, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ], [ %.0.i66, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i ], [ %i.em, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.033, ptr %i.et, align 8
  store i64 1, ptr %0, align 8
  %i.eu = load i8, ptr %1, align 8
  %i.ev = trunc i8 %i.eu to i1
  br i1 %i.ev, label %_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.68, i32 noundef 567, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_) #20
  unreachable

_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i: ; preds = %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit
  %i.ew = load i64, ptr %1, align 8
  %.not.i69 = icmp ult i64 %i.ew, 2
  br i1 %.not.i69, label %_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit, label %bb.aw, !prof !5

bb.aw:                                            ; preds = %_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i
  tail call void @_ZN4absl13cord_internal9CordzInfo18MaybeTrackCordImplERNS0_10InlineDataERKS2_NS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 24) #21
  br label %_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit

_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit:       ; preds = %bb.aw, %_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i, %bb.i, %bb.h, %bb.f, %_ZNK4absl4Cord4sizeEv.exit, %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit64
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl4Cord15SetCrcCordStateENS_12crc_internal12CrcCordStateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::crc_internal::CrcCordState", align 8 ; 3 uses
  %3 = alloca %"class.absl::crc_internal::CrcCordState", align 8 ; 3 uses
  %4 = alloca %"class.absl::crc_internal::CrcCordState", align 8 ; 3 uses
  %i.a = load i8, ptr %0, align 8                 ; 4 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord5emptyEv.exit, label %_ZNK4absl4Cord5emptyEv.exit.thread

_ZNK4absl4Cord5emptyEv.exit:                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.n

_ZNK4absl4Cord5emptyEv.exit.thread:               ; preds = %bb.a
  %i.g = icmp eq i8 %i.a, 0
  br i1 %i.g, label %.thread16, label %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i

.thread16:                                        ; preds = %_ZNK4absl4Cord5emptyEv.exit.thread
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

bb.b:                                             ; preds = %_ZNK4absl4Cord5emptyEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.j = load i8, ptr %i.i, align 4
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.31, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep3crcEv.exit.i:     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.31, i32 noundef 1324, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv) #20
  unreachable

bb.e:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %i.o = tail call noundef ptr @_ZNK4absl4Cord9InlineRep10cordz_infoEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4absl13cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.o) #21
  br label %_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i

_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i: ; preds = %bb.f, %bb.e
  tail call void @_ZN4absl13cord_internal7CordRep5UnrefEPS1_(ptr noundef nonnull %i.d)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit: ; preds = %.thread16, %_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i
  %i.p = phi ptr [ %i.h, %.thread16 ], [ %i.c, %_ZN4absl13cord_internal9CordzInfo16MaybeUntrackCordEPS1_.exit.i ]
  call void @_ZN4absl12crc_internal12CrcCordStateC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %i.q = call noundef ptr @_ZN4absl13cord_internal10CordRepCrc3NewEPNS0_7CordRepENS_12crc_internal12CrcCordStateE(ptr noundef null, ptr noundef nonnull %2) #21 ; 2 uses
  call void @_ZN4absl12crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  %.not.i5 = icmp eq ptr %i.q, null
  br i1 %.not.i5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1260, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.h:                                             ; preds = %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  store ptr %i.q, ptr %i.p, align 8
  store i64 1, ptr %0, align 8
  %i.r = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i, !prof !5

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %bb.h
  %i.u = add nsw i64 %i.s, -1
  store i64 %i.u, ptr %i.r, align 8
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i: ; preds = %bb.h
  %i.v = call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #21 ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !6

bb.i:                                             ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i
  call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 23, i64 noundef %i.v) #21
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i: ; preds = %_ZNK4absl4Cord5emptyEv.exit.thread
  %i.x = sext i8 %i.a to i64
  %i.y = lshr exact i64 %i.x, 1                   ; 2 uses
  %5 = icmp ult i8 %i.a, 40
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 4083)
  %6 = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i = select i1 %5, i64 32, i64 %6        ; 2 uses
  %i.z = icmp samesign ult i64 %.0.i.i.i, 513     ; 2 uses
  %.neg.i.i.i = select i1 %i.z, i64 -8, i64 -64
  %i.aa = select i1 %i.z, i64 8, i64 64
  %i.ab = add nsw i64 %.0.i.i.i, -1
  %i.ac = add nuw nsw i64 %i.ab, %i.aa
  %i.ad = and i64 %i.ac, %.neg.i.i.i              ; 3 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #24 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 2, ptr %i.af, align 4
  %i.ag = icmp samesign ult i64 %i.ad, 513        ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.ag, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.ag, i64 2, i64 58
  %i.ah = lshr i64 %i.ad, %.sink6.i.i.i.i.i
  %i.ai = add nuw nsw i64 %i.ah, %.sink5.i.i.i.i.i
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i8 %i.aj, ptr %i.ak, align 4
  store i64 %i.y, ptr %i.ae, align 8
  %i.al = load i8, ptr %0, align 8
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit

bb.j:                                             ; preds = %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.68, i32 noundef 652, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData18copy_max_inline_toEPc) #20
  unreachable

_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit: ; preds = %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 13
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.an, ptr noundef nonnull align 1 dereferenceable(15) %i.ao, i64 15, i1 false)
  call void @_ZN4absl12crc_internal12CrcCordStateC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %i.ap = call noundef ptr @_ZN4absl13cord_internal10CordRepCrc3NewEPNS0_7CordRepENS_12crc_internal12CrcCordStateE(ptr noundef nonnull %i.ae, ptr noundef nonnull %3) #21 ; 2 uses
  call void @_ZN4absl12crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  %.not.i6 = icmp eq ptr %i.ap, null
  br i1 %.not.i6, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1260, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.l:                                             ; preds = %_ZN4absl4Cord9InlineRep25MakeFlatWithExtraCapacityEm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  store i64 1, ptr %0, align 8
  %i.ar = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i8, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i7, !prof !5

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i8: ; preds = %bb.l
  %i.au = add nsw i64 %i.as, -1
  store i64 %i.au, ptr %i.ar, align 8
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i7: ; preds = %bb.l
  %i.av = call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #21 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !6

bb.m:                                             ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i7
  call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 23, i64 noundef %i.av) #21
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

bb.n:                                             ; preds = %_ZNK4absl4Cord5emptyEv.exit
  %i.ax = load i64, ptr %0, align 8               ; 2 uses
  %i.ay = and i64 %i.ax, 1
  %.not.i10 = icmp eq i64 %i.ay, 0
  br i1 %.not.i10, label %bb.o, label %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit: ; preds = %bb.n
  %i.az = add nsw i64 %i.ax, -1                   ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr               ; 4 uses
  %.not.i11 = icmp eq i64 %i.az, 0                ; 2 uses
  br i1 %.not.i11, label %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit, label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !5

_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit
  tail call void @_ZN4absl13cord_internal9CordzInfo4LockENS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.ba, i32 noundef 23) #21
  %.pre = load i8, ptr %0, align 8
  %i.bb = trunc i8 %.pre to i1
  br i1 %i.bb, label %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68, i32 noundef 626, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData7as_treeEv) #20
  unreachable

_ZNK4absl13cord_internal10InlineData7as_treeEv.exit: ; preds = %_ZNK4absl13cord_internal10InlineData10cordz_infoEv.exit, %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.bc = load ptr, ptr %i.c, align 8
  call void @_ZN4absl12crc_internal12CrcCordStateC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %i.bd = call noundef ptr @_ZN4absl13cord_internal10CordRepCrc3NewEPNS0_7CordRepENS_12crc_internal12CrcCordStateE(ptr noundef %i.bc, ptr noundef nonnull %4) #21 ; 3 uses
  call void @_ZN4absl12crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  %.not.i12 = icmp eq ptr %i.bd, null
  br i1 %.not.i12, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

bb.r:                                             ; preds = %_ZNK4absl13cord_internal10InlineData7as_treeEv.exit
  %i.be = load i8, ptr %0, align 8
  %i.bf = trunc i8 %i.be to i1
  br i1 %i.bf, label %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31, i32 noundef 1275, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i: ; preds = %bb.r
  store ptr %i.bd, ptr %i.c, align 8
  br i1 %.not.i11, label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.t, !prof !5

bb.t:                                             ; preds = %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  call void @_ZNK4absl5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store ptr %i.bd, ptr %i.bh, align 8
  call void @_ZN4absl13cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.ba) #21
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i, %bb.t, %bb.m, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i7, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i8, %bb.i, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i
  ret void
}

declare noundef ptr @_ZN4absl13cord_internal10CordRepCrc3NewEPNS0_7CordRepENS_12crc_internal12CrcCordStateE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4absl12crc_internal12CrcCordStateC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4absl12crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl4Cord19SetExpectedChecksumEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::crc_internal::CrcCordState", align 8 ; 6 uses
  %3 = alloca %"struct.absl::crc_internal::CrcCordState::PrefixCrc", align 8 ; 6 uses
  %4 = alloca %"class.absl::crc_internal::CrcCordState", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN4absl12crc_internal12CrcCordStateC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %i.a = call noundef ptr @_ZN4absl12crc_internal12CrcCordState11mutable_repEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = load i8, ptr %0, align 8                 ; 2 uses
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i:      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i64, ptr %i.f, align 8
  br label %_ZNK4absl4Cord4sizeEv.exit

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i: ; preds = %bb.a
  %i.h = sext i8 %i.c to i64
  %i.i = lshr exact i64 %i.h, 1
  br label %_ZNK4absl4Cord4sizeEv.exit

_ZNK4absl4Cord4sizeEv.exit:                       ; preds = %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i
  %i.j = phi i64 [ %i.g, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i ], [ %i.i, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i ]
  store i64 %i.j, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  %.not.i.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.l, align 8
  br label %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit
  call void @_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %3)
  br label %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE9push_backEOS3_.exit

_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN4absl12crc_internal12CrcCordStateC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  call void @_ZN4absl4Cord15SetCrcCordStateENS_12crc_internal12CrcCordStateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4)
  call void @_ZN4absl12crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @_ZN4absl12crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

declare void @_ZN4absl12crc_internal12CrcCordStateC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12crc_internal12CrcCordState11mutable_repEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load atomic i32, ptr %i.a acquire, align 4
end_hunk_2
begin_hunk_3_@_ZN4absl13cord_internal12CordRepBtree15GetAppendBufferEm:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load atomic i32, ptr %i.n acquire, align 4
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit, %bb.c
  %.0 = phi ptr [ %0, %bb.c ], [ %i.j, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 15
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr %.0, i64 8
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i8, ptr %i.w, align 4
  %i.y = icmp eq i8 %i.x, 3
  br i1 %i.y, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit41, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit41:   ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit41, %bb.c
  %.138 = phi ptr [ %0, %bb.c ], [ %.0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit41 ]
  %.1 = phi ptr [ %0, %bb.c ], [ %i.v, %_ZN4absl13cord_internal7CordRep5btreeEv.exit41 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 15
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr i8, ptr %.1, i64 8
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = icmp eq i8 %i.aj, 3
  br i1 %i.ak, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit42, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit42:   ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load atomic i32, ptr %i.al acquire, align 4
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit42, %bb.c
  %.239 = phi ptr [ %.138, %_ZN4absl13cord_internal7CordRep5btreeEv.exit42 ], [ %0, %bb.c ] ; 2 uses
  %.133 = phi ptr [ %.1, %_ZN4absl13cord_internal7CordRep5btreeEv.exit42 ], [ %0, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.ah, %_ZN4absl13cord_internal7CordRep5btreeEv.exit42 ], [ %0, %bb.c ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2, i64 15
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr i8, ptr %.2, i64 8
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8            ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load atomic i32, ptr %i.au acquire, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ay = load i8, ptr %i.ax, align 4             ; 5 uses
  %i.az = icmp ult i8 %i.ay, 6
  br i1 %i.az, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp ult i8 %i.ay, -7
  br i1 %i.ba, label %_ZN4absl13cord_internal7CordRep4flatEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep4flatEv.exit:      ; preds = %bb.l
  %i.bb = zext i8 %i.ay to i32
  %i.bc = icmp ult i8 %i.ay, 67                   ; 2 uses
  %i.bd = icmp ult i8 %i.ay, -69                  ; 2 uses
  %..i.i.i = select i1 %i.bd, i32 6, i32 12
  %.sink6.i.i.i = select i1 %i.bc, i32 3, i32 %..i.i.i
  %i.be = shl nuw nsw i32 %i.bb, %.sink6.i.i.i
  %i.bf = select i1 %i.bd, i32 -3725, i32 -753677
  %i.bg = select i1 %i.bc, i32 -29, i32 %i.bf
  %narrow.i.i = add nsw i32 %i.be, %i.bg
  %i.bh = sext i32 %narrow.i.i to i64             ; 2 uses
  %i.bi = load i64, ptr %i.at, align 8            ; 4 uses
  %i.bj = icmp eq i64 %i.bi, %i.bh
  br i1 %i.bj, label %.critedge, label %_ZN4absl13cord_internal7CordRep4flatEv.exit46

_ZN4absl13cord_internal7CordRep4flatEv.exit46:    ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit
  %i.bk = sub i64 %i.bh, %i.bi
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %1) ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi
  %i.bn = add i64 %.sroa.speculated, %i.bi
  store i64 %i.bn, ptr %i.at, align 8
  switch i8 %i.e, label %default.unreachable [
    i8 3, label %bb.m
    i8 2, label %bb.n
    i8 1, label %bb.o
    i8 0, label %bb.p
  ]

bb.m:                                             ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit46
  %i.bo = load i64, ptr %0, align 8
  %i.bp = add i64 %i.bo, %.sroa.speculated
  store i64 %i.bp, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4absl13cord_internal7CordRep4flatEv.exit46
  %i.bq = load i64, ptr %.239, align 8
  %i.br = add i64 %i.bq, %.sroa.speculated
  store i64 %i.br, ptr %.239, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4absl13cord_internal7CordRep4flatEv.exit46
  %i.bs = load i64, ptr %.133, align 8
  %i.bt = add i64 %i.bs, %.sroa.speculated
  store i64 %i.bt, ptr %.133, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4absl13cord_internal7CordRep4flatEv.exit46
  %i.bu = load i64, ptr %.2, align 8
  %i.bv = add i64 %i.bu, %.sroa.speculated
  store i64 %i.bv, ptr %.2, align 8
  br label %.critedge

default.unreachable:                              ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit46
  unreachable

bb.q:                                             ; preds = %bb.c
  %i.bw = tail call { ptr, i64 } @_ZN4absl13cord_internal12CordRepBtree19GetAppendBufferSlowEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) #21 ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0
  %i.by = extractvalue { ptr, i64 } %i.bw, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %_ZN4absl13cord_internal7CordRep4flatEv.exit, %bb.k, %bb.j, %_ZN4absl13cord_internal7CordRep5btreeEv.exit42, %_ZN4absl13cord_internal7CordRep5btreeEv.exit41, %_ZN4absl13cord_internal7CordRep5btreeEv.exit, %bb.q
  %.sroa.9.1 = phi i64 [ %i.by, %bb.q ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit42 ], [ 0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit41 ], [ 0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ], [ %.sroa.speculated, %bb.p ], [ 0, %_ZN4absl13cord_internal7CordRep4flatEv.exit ]
  %.sroa.0.1 = phi ptr [ %i.bx, %bb.q ], [ null, %bb.j ], [ null, %bb.k ], [ null, %_ZN4absl13cord_internal7CordRep5btreeEv.exit42 ], [ null, %_ZN4absl13cord_internal7CordRep5btreeEv.exit41 ], [ null, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ], [ %i.bm, %bb.p ], [ null, %_ZN4absl13cord_internal7CordRep4flatEv.exit ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.9.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZN4absl13cord_internal12CordRepBtree19GetAppendBufferSlowEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #4

declare { ptr, ptr } @_ZN4absl13cord_internal12CordRepBtree19ExtractAppendBufferEPS1_m(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl10CordBuffer25CreateWithCustomLimitImplIJEEES0_mmDpT_(ptr dead_on_unwind noalias writable sret(%"class.absl::CordBuffer") align 8 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef 477, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl10CordBuffer25CreateWithCustomLimitImplIJEEES0_mmDpT_) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 65536) ; 5 uses
  %.sroa.speculated21 = tail call i64 @llvm.umin.i64(i64 %1, i64 65536) ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.speculated, 13    ; 2 uses
  %.not = icmp samesign ult i64 %i.c, %.sroa.speculated21
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i64 %2, 4084
  br i1 %i.d, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call range(i64 1, 18) i64 @llvm.ctpop.i64(i64 %.sroa.speculated)
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = add nsw i64 %.sroa.speculated, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 false)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = shl nuw nsw i64 1, %i.i                  ; 2 uses
  %reass.sub = sub nsw i64 %i.j, %.sroa.speculated
  %i.k = add nsw i64 %reass.sub, -13
  %or.cond = icmp ult i64 %i.k, 129
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.speculated, i1 true)
  %i.m = lshr exact i64 -9223372036854775808, %i.l
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.e
  %.0 = phi i64 [ %.sroa.speculated21, %bb.c ], [ %2, %bb.e ], [ %i.c, %bb.d ], [ %i.m, %bb.g ], [ %i.j, %bb.f ]
  %i.n = add i64 %.0, -13                         ; 2 uses
  %3 = icmp ult i64 %i.n, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 262131)
  %4 = add nuw nsw i64 %spec.store.select.i.i, 13
  %.0.i.i = select i1 %3, i64 32, i64 %4          ; 3 uses
  %i.o = icmp samesign ult i64 %.0.i.i, 513
  %i.p = icmp samesign ult i64 %.0.i.i, 8193
  %i.q = select i1 %i.p, i64 64, i64 4096
  %i.r = select i1 %i.o, i64 8, i64 %i.q          ; 2 uses
  %i.s = add nsw i64 %.0.i.i, -1
  %i.t = add nuw nsw i64 %i.s, %i.r
  %i.u = sub nsw i64 0, %i.r
  %i.v = and i64 %i.t, %i.u                       ; 4 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 2, ptr %i.y, align 8
  %i.z = icmp samesign ult i64 %i.v, 513          ; 2 uses
  %i.aa = icmp samesign ult i64 %i.v, 8193        ; 2 uses
  %..i.i.i.i = select i1 %i.aa, i64 6, i64 12
  %.7.i.i.i.i = select i1 %i.aa, i64 58, i64 184
  %.sink6.i.i.i.i = select i1 %i.z, i64 3, i64 %..i.i.i.i
  %.sink5.i.i.i.i = select i1 %i.z, i64 2, i64 %.7.i.i.i.i
  %i.ab = lshr i64 %i.v, %.sink6.i.i.i.i
  %i.ac = add nuw nsw i64 %i.ab, %.sink5.i.i.i.i
  %i.ad = trunc i64 %i.ac to i8                   ; 2 uses
  %i.ae = icmp ult i8 %i.ad, -7
  br i1 %i.ae, label %_ZN4absl13cord_internal11CordRepFlat3NewENS1_5LargeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.78, i32 noundef 94, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal18AllocatedSizeToTagEm) #20
  unreachable

_ZN4absl13cord_internal11CordRepFlat3NewENS1_5LargeEm.exit: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i8 %i.ad, ptr %i.af, align 4
  store i64 0, ptr %i.w, align 8
  store ptr %i.w, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

declare noundef ptr @_ZN4absl16numbers_internal15FastIntToBufferEmPc(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.81, i32 noundef 72, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i, label %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit, !prof !7

_ZN4absl13cord_internal7CordRep3crcEv.exit.i:     ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.pre = load i8, ptr %.phi.trans.insert, align 4
  br label %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit

_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit: ; preds = %bb.c, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %i.f = phi i8 [ %.pre, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i ], [ %i.b, %bb.c ]
  %.0.i = phi ptr [ %i.e, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i ], [ %1, %bb.c ] ; 8 uses
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = tail call noundef ptr @_ZN4absl13cord_internal21CordRepBtreeNavigator4InitILNS0_12CordRepBtree8EdgeTypeE0EEEPNS0_7CordRepEPS3_(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull %.0.i) ; 6 uses
  %i.k = load i64, ptr %.0.i, align 8
  %i.l = load i64, ptr %i.j, align 8
  %i.m = sub i64 %i.k, %i.l
  store i64 %i.m, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.o = load i8, ptr %i.n, align 4               ; 3 uses
  %or.cond.i.i.i = icmp ugt i8 %i.o, 4
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i.i

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4 ; 2 uses
  %i.s = icmp ugt i8 %.pre.i.i.i, 4
  br i1 %i.s, label %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i.i

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i.i, %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.72, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE) #20
  unreachable

_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.u = load i64, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i.i, %bb.d
  %i.v = phi i8 [ %.pre.i.i.i, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.011.i.i = phi i64 [ %i.u, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i.i ], [ 0, %bb.d ]
  %.0.i.i = phi ptr [ %i.r, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.w = load i64, ptr %i.j, align 8
  %i.x = icmp ugt i8 %i.v, 5
  br i1 %i.x, label %bb.g, label %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.y = icmp ult i8 %i.v, -7
  br i1 %i.y, label %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 187, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZNK4absl13cord_internal7CordRep4flatEv.exit.i.i: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 13
  br label %_ZN4absl13cord_internal18CordRepBtreeReader4InitEPNS0_12CordRepBtreeE.exit

_ZNK4absl13cord_internal7CordRep8externalEv.exit.i.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %_ZN4absl13cord_internal18CordRepBtreeReader4InitEPNS0_12CordRepBtreeE.exit

_ZN4absl13cord_internal18CordRepBtreeReader4InitEPNS0_12CordRepBtreeE.exit: ; preds = %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i.i, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i.i
  %.pn.i.i = phi ptr [ %i.z, %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i.i ], [ %i.ab, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i.i ]
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.011.i.i
  br label %bb.l

bb.h:                                             ; preds = %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i, ptr %i.ad, align 8
  %i.ae = load i8, ptr %i.ac, align 4             ; 3 uses
  %or.cond.i.i = icmp ugt i8 %i.ae, 4
  br i1 %or.cond.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i: ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4 ; 2 uses
  %i.ai = icmp ugt i8 %.pre.i.i, 4
  br i1 %i.ai, label %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.72, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE) #20
  unreachable

_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i, %bb.h
  %i.al = phi i8 [ %.pre.i.i, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ %i.ae, %bb.h ] ; 2 uses
  %.011.i = phi i64 [ %i.ak, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ 0, %bb.h ]
  %.0.i9 = phi ptr [ %i.ah, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ %.0.i, %bb.h ] ; 2 uses
  %i.am = load i64, ptr %.0.i, align 8
  %i.an = icmp ugt i8 %i.al, 5
  br i1 %i.an, label %bb.k, label %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp ult i8 %i.al, -7
  br i1 %i.ao, label %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 187, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZNK4absl13cord_internal7CordRep4flatEv.exit.i:   ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i9, i64 13
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit

_ZNK4absl13cord_internal7CordRep8externalEv.exit.i: ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i9, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit

_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit: ; preds = %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i
  %.pn.i = phi ptr [ %i.ap, %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i ], [ %i.ar, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i ]
  %.sroa.3.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 %.011.i
  br label %bb.l

end_hunk_3
