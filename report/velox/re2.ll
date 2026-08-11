inline.NumInlined: 980
inline.NumDeleted: 393
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK3re23RE218PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i:bb.a
  %i.dw = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.dw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i53
  %i.dx = load i64, ptr %i.bc, align 8, !tbaa !25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i59
  %i.dy = phi i64 [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i54 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i59 ]
  %.not.i.i.i56 = icmp ugt i64 %i.dt, %i.dy
  br i1 %.not.i.i.i56, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i55
  %.not8.i.i.i57 = icmp eq i64 %i.do, 0
  br i1 %.not8.i.i.i57, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit62, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dq ; 2 uses
  %cond.i.i.i58 = icmp eq i64 %i.do, 1
  br i1 %cond.i.i.i58, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ea = load i8, ptr %i.dn, align 1, !tbaa !25
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit62

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr align 1 %i.dn, i64 %i.do, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit62

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i55
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.dq, i64 noundef 0, ptr noundef %i.dn, i64 noundef %i.do)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit62 unwind label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit62: ; preds = %bb.an, %bb.aj, %bb.al, %bb.am
  store i64 %i.dt, ptr %i.dp, align 8, !tbaa !23
  %i.eb = load ptr, ptr %2, align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt
  store i8 0, ptr %i.ec, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit71

bb.ao:                                            ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.ar, %bb.an, %bb.ah, %bb.aq, %bb.aa
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.cr
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.ao
  %i.eg = load i64, ptr %i.cr, align 8, !tbaa !25
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ei = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.cp
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.ek = load i64, ptr %i.cp, align 8, !tbaa !25
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %i.ed

bb.ap:                                            ; preds = %bb.ab, %.loopexit
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !23
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN3re215PrefixSuccessorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit71 unwind label %bb.ao

bb.ar:                                            ; preds = %bb.ap
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !23
  %i.er = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.eq, ptr noundef nonnull @.str.8, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ao ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.ar
  %i.es = load i64, ptr %i.em, align 8, !tbaa !23
  %i.et = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.es, ptr noundef nonnull @.str.8, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit71 unwind label %bb.ao ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit62, %bb.aq
  %.0 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit62 ], [ true, %bb.aq ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.eu = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.cr
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit71
  %i.ew = load i64, ptr %i.cr, align 8, !tbaa !25
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ey = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.cp
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.fa = load i64, ptr %i.cp, align 8, !tbaa !25
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.as

bb.as:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.1 = phi i1 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN3re24Prog18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @_ZN3re215PrefixSuccessorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

; Function Attrs: cold
declare void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re23RE26AnchorETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !167
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %0

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.f
}

declare noundef zeroext i1 @_ZN3re24Prog9SearchDFAESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_6AnchorENS0_9MatchKindEPS4_PbPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(432), i64, ptr, i64, ptr, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN3re24Prog13SearchOnePassESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_6AnchorENS0_9MatchKindEPS4_i(ptr noundef nonnull align 8 dereferenceable(432), i64, ptr, i64, ptr, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN3re24Prog14SearchBitStateESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_6AnchorENS0_9MatchKindEPS4_i(ptr noundef nonnull align 8 dereferenceable(432), i64, ptr, i64, ptr, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN3re24Prog9SearchNFAESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_6AnchorENS0_9MatchKindEPS4_i(ptr noundef nonnull align 8 dereferenceable(432), i64, ptr, i64, ptr, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3re23RE218CheckRewriteStringESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0, i64 %1, ptr nofree readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [2 x %"class.absl::lts_20240116::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  %.not2941.not = icmp eq i64 %1, 0
  br i1 %.not2941.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.02243 = phi ptr [ %i.o, %bb.h ], [ %2, %bb.a ] ; 3 uses
  %.042 = phi i32 [ %.1.ph, %bb.h ], [ -1, %bb.a ] ; 3 uses
  %i.b = load i8, ptr %.02243, align 1, !tbaa !25
  %.not = icmp eq i8 %i.b, 92
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.02243, i64 1 ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.f, ptr noundef nonnull @.str.26, i64 noundef 45) ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.c, align 1, !tbaa !25    ; 3 uses
  %6 = zext nneg i8 %i.h to i32
  %i.i = icmp eq i8 %i.h, 92
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.h, -48
  %i.k = icmp ult i8 %i.j, 10
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull @.str.27, i64 noundef 61) ; 0 uses
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %7 = add nsw i32 %6, -48
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.042, i32 %7)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph, %bb.d
  %.1.ph = phi i32 [ %.042, %.lr.ph ], [ %spec.select, %bb.g ], [ %.042, %bb.d ] ; 2 uses
  %.123.ph = phi ptr [ %.02243, %.lr.ph ], [ %i.c, %bb.g ], [ %i.c, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %.123.ph, i64 1 ; 2 uses
  %.not29 = icmp ult ptr %i.o, %i.a
  br i1 %.not29, label %.lr.ph, label %.critedge, !llvm.loop !190

.critedge:                                        ; preds = %bb.h, %bb.a
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1.ph, %bb.h ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %i.r = icmp sgt i32 %.0.lcssa, %i.q
  br i1 %i.r, label %bb.i, label %bb.p

bb.i:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !191
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %.0.lcssa to i64
  %i.s = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.s, ptr %4, align 8, !tbaa !25, !noalias !191
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.t, align 8, !tbaa !194, !noalias !191
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.insert.ext.i.i.i6.i = zext i32 %i.q to i64
  %i.v = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i6.i to ptr
  store ptr %i.v, ptr %i.u, align 8, !tbaa !25, !noalias !191
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2024011619str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.w, align 8, !tbaa !194, !noalias !191
  call void @_ZN4absl12lts_2024011619str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.28, i64 92, ptr nonnull %4, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !191
  %i.x = load ptr, ptr %3, align 8, !tbaa !28     ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = load ptr, ptr %5, align 8, !tbaa !28    ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab                ; 2 uses
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.ac, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.ac, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !23 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %.not21.i = icmp eq ptr %5, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.k, !prof !30

bb.k:                                             ; preds = %bb.j
  switch i64 %i.ae, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !25
  store i8 %i.ag, ptr %i.x, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !23
  %i.aj = load ptr, ptr %3, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aa, ptr %3, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !25
  store <2 x i64> %i.an, ptr %i.al, align 8, !tbaa !25
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !25
  store ptr %i.aa, ptr %3, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !tbaa !25
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.x, ptr %5, align 8, !tbaa !28
  store i64 %i.ao, ptr %i.ab, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ab, ptr %5, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.as = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.x, %bb.n ], [ %i.ab, %bb.o ], [ %i.aa, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !23
  store i8 0, ptr %i.as, align 1, !tbaa !25
  %i.au = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !25
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.c, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %.critedge ], [ false, %bb.c ], [ false, %bb.f ]
  ret i1 %.3
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseIvEEbPKcmPT_(ptr nofree noundef readnone captures(none) %0, i64 noundef %1, ptr nofree noundef readnone captures(address_is_null) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %2, null
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcmPT_(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.c, ptr noundef %0, i64 noundef %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseISt17basic_string_viewIcSt11char_traitsIcEEEEbPKcmPT_(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %2, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseIcEEbPKcmPT_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq i64 %1, 1                       ; 2 uses
  %i.a = icmp ne ptr %2, null
  %or.cond.not = and i1 %.not, %i.a
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !25
  store i8 %i.b, ptr %2, align 1, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseIaEEbPKcmPT_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq i64 %1, 1                       ; 2 uses
  %i.a = icmp ne ptr %2, null
  %or.cond.not = and i1 %.not, %i.a
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !25
  store i8 %i.b, ptr %2, align 1, !tbaa !25
end_hunk_0
begin_hunk_1_@_ZN3re212re2_internal5ParseImEEbPKcmPT_i:bb.a

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.244.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %.preheader.preheader.i, label %.critedge2.i

.preheader.preheader.i:                           ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 %.2.i
  %i.r = getelementptr i8, ptr %i.q, i64 %.244.idx.i
  %scevgep.i = getelementptr i8, ptr %i.r, i64 -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.preheader.i
  %.345.i = phi ptr [ %i.w, %bb.e ], [ %.244.i, %.preheader.preheader.i ] ; 3 uses
  %.3.i = phi i64 [ %i.v, %bb.e ], [ %.2.i, %.preheader.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.345.i, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25
  %i.u = icmp eq i8 %i.t, 48
  br i1 %i.u, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.preheader.i
  %i.v = add i64 %.3.i, -1                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.345.i, i64 1
  %.old3.i = icmp ugt i64 %i.v, 2
  br i1 %.old3.i, label %.preheader.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.e, %.preheader.i, %bb.d, %bb.c, %.critedge.i
  %.446.i = phi ptr [ %.244.i, %bb.c ], [ %.244.i, %.critedge.i ], [ %.244.i, %bb.d ], [ %scevgep.i, %bb.e ], [ %.345.i, %.preheader.i ]
  %.4.i = phi i64 [ %.2.i, %bb.c ], [ %.2.i, %.critedge.i ], [ %.2.i, %bb.d ], [ 2, %bb.e ], [ %.3.i, %.preheader.i ]
  %i.x = add i64 %.4.i, %.244.idx.i               ; 4 uses
  %i.y = icmp ugt i64 %i.x, 32
  br i1 %i.y, label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit, label %bb.f

bb.f:                                             ; preds = %.critedge2.i
  %i.z = getelementptr inbounds i8, ptr %.446.i, i64 %i.j
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.z, i64 %i.x, i1 false)
  br i1 %i.i, label %bb.g, label %.thread74.i

bb.g:                                             ; preds = %bb.f
  store i8 45, ptr %i.a, align 16, !tbaa !25
  br label %.thread74.i

.thread74.i:                                      ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !25
  br label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit

_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit: ; preds = %bb.b, %.critedge2.i, %.thread74.i
  %.011 = phi i64 [ %i.x, %.thread74.i ], [ %1, %.critedge2.i ], [ %1, %bb.b ]
  %.141.i = phi ptr [ %i.a, %.thread74.i ], [ @.str.8, %.critedge2.i ], [ @.str.8, %bb.b ] ; 3 uses
  %i.ab = load i8, ptr %.141.i, align 1, !tbaa !25
  %i.ac = icmp eq i8 %i.ab, 45
  br i1 %i.ac, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ad = tail call ptr @__errno_location() #38   ; 2 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !8
  %i.ae = call i64 @__isoc23_strtoul(ptr noundef nonnull %.141.i, ptr noundef nonnull %i.b, i32 noundef %3) #31
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %.141.i, i64 %.011
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !8
  %.not9 = icmp eq i32 %i.ah, 0
  br i1 %.not9, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq ptr %2, null
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.ae, ptr %2, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.k
  %.0 = phi i1 [ true, %bb.k ], [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.m

bb.m:                                             ; preds = %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit, %bb.l
  %.1 = phi i1 [ %.0, %bb.l ], [ false, %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.2 = phi i1 [ %.1, %bb.m ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseIsEEbPKcmPT_i(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.d = load i8, ptr %0, align 1, !tbaa !25      ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011614ascii_internal13kPropertyBitsE, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !25
  %i.h = and i8 %i.g, 8
  %.not76.i.i = icmp eq i8 %i.h, 0
  br i1 %.not76.i.i, label %.critedge.i.i, label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i

.critedge.i.i:                                    ; preds = %bb.b
  %i.i = icmp eq i8 %i.d, 45                      ; 3 uses
  %.244.idx.i.i = zext i1 %i.i to i64             ; 3 uses
  %.244.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.244.idx.i.i ; 6 uses
  %i.j = sext i1 %i.i to i64                      ; 2 uses
  %.2.i.i = add i64 %1, %i.j                      ; 6 uses
  %i.k = icmp ugt i64 %.2.i.i, 2
  br i1 %i.k, label %bb.c, label %.critedge2.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %i.l = load i8, ptr %.244.i.i, align 1, !tbaa !25
  %i.m = icmp eq i8 %i.l, 48
  br i1 %i.m, label %bb.d, label %.critedge2.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.244.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %.preheader.preheader.i.i, label %.critedge2.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 %.2.i.i
  %i.r = getelementptr i8, ptr %i.q, i64 %.244.idx.i.i
  %scevgep.i.i = getelementptr i8, ptr %i.r, i64 -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.preheader.i.i
  %.345.i.i = phi ptr [ %i.w, %bb.e ], [ %.244.i.i, %.preheader.preheader.i.i ] ; 3 uses
  %.3.i.i = phi i64 [ %i.v, %bb.e ], [ %.2.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.345.i.i, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25
  %i.u = icmp eq i8 %i.t, 48
  br i1 %i.u, label %bb.e, label %.critedge2.i.i

bb.e:                                             ; preds = %.preheader.i.i
  %i.v = add i64 %.3.i.i, -1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.345.i.i, i64 1
  %.old3.i.i = icmp ugt i64 %i.v, 2
  br i1 %.old3.i.i, label %.preheader.i.i, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.e, %.preheader.i.i, %bb.d, %bb.c, %.critedge.i.i
  %.446.i.i = phi ptr [ %.244.i.i, %bb.c ], [ %.244.i.i, %.critedge.i.i ], [ %.244.i.i, %bb.d ], [ %.345.i.i, %.preheader.i.i ], [ %scevgep.i.i, %bb.e ]
  %.4.i.i = phi i64 [ %.2.i.i, %bb.c ], [ %.2.i.i, %.critedge.i.i ], [ %.2.i.i, %bb.d ], [ %.3.i.i, %.preheader.i.i ], [ 2, %bb.e ]
  %i.x = add i64 %.4.i.i, %.244.idx.i.i           ; 4 uses
  %i.y = icmp ugt i64 %i.x, 32
  br i1 %i.y, label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge2.i.i
  %i.z = getelementptr inbounds i8, ptr %.446.i.i, i64 %i.j
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.z, i64 %i.x, i1 false)
  br i1 %i.i, label %bb.g, label %.thread74.i.i

bb.g:                                             ; preds = %bb.f
  store i8 45, ptr %i.a, align 16, !tbaa !25
  br label %.thread74.i.i

.thread74.i.i:                                    ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !25
  br label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i

_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i: ; preds = %.thread74.i.i, %.critedge2.i.i, %bb.b
  %.010.i = phi i64 [ %i.x, %.thread74.i.i ], [ %1, %.critedge2.i.i ], [ %1, %bb.b ]
  %.141.i.i = phi ptr [ %i.a, %.thread74.i.i ], [ @.str.8, %.critedge2.i.i ], [ @.str.8, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ab = tail call ptr @__errno_location() #38   ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !8
  %i.ac = call i64 @__isoc23_strtol(ptr noundef nonnull %.141.i.i, ptr noundef nonnull %i.b, i32 noundef %3) #31 ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %.141.i.i, i64 %.010.i
  %.not.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i, label %bb.h, label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread9

bb.h:                                             ; preds = %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !8
  %.not8.i = icmp eq i32 %i.af, 0
  br i1 %.not8.i, label %bb.i, label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread9

_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread9: ; preds = %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ag = trunc nsw i64 %i.ac to i16
  %i.ah = add i64 %i.ac, 32768
  %.not = icmp ult i64 %i.ah, 65536
  br i1 %.not, label %bb.j, label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq ptr %2, null
  br i1 %i.ai, label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i16 %i.ag, ptr %2, align 2, !tbaa !201
  br label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread

_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread: ; preds = %bb.a, %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread9, %bb.j, %bb.i, %bb.k
  %.0 = phi i1 [ false, %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread9 ], [ false, %bb.i ], [ true, %bb.k ], [ true, %bb.j ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseItEEbPKcmPT_i(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = call noundef zeroext i1 @_ZN3re212re2_internal5ParseImEEbPKcmPT_i(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef %3)
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.d = trunc nuw i64 %i.c to i16
  %.not = icmp ult i64 %i.c, 65536
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 %i.d, ptr %2, align 2, !tbaa !201
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseIiEEbPKcmPT_i(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.d = load i8, ptr %0, align 1, !tbaa !25      ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011614ascii_internal13kPropertyBitsE, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !25
  %i.h = and i8 %i.g, 8
  %.not76.i.i = icmp eq i8 %i.h, 0
  br i1 %.not76.i.i, label %.critedge.i.i, label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i

.critedge.i.i:                                    ; preds = %bb.b
  %i.i = icmp eq i8 %i.d, 45                      ; 3 uses
  %.244.idx.i.i = zext i1 %i.i to i64             ; 3 uses
  %.244.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.244.idx.i.i ; 6 uses
  %i.j = sext i1 %i.i to i64                      ; 2 uses
  %.2.i.i = add i64 %1, %i.j                      ; 6 uses
  %i.k = icmp ugt i64 %.2.i.i, 2
  br i1 %i.k, label %bb.c, label %.critedge2.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %i.l = load i8, ptr %.244.i.i, align 1, !tbaa !25
  %i.m = icmp eq i8 %i.l, 48
  br i1 %i.m, label %bb.d, label %.critedge2.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.244.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %.preheader.preheader.i.i, label %.critedge2.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 %.2.i.i
  %i.r = getelementptr i8, ptr %i.q, i64 %.244.idx.i.i
  %scevgep.i.i = getelementptr i8, ptr %i.r, i64 -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.preheader.i.i
  %.345.i.i = phi ptr [ %i.w, %bb.e ], [ %.244.i.i, %.preheader.preheader.i.i ] ; 3 uses
  %.3.i.i = phi i64 [ %i.v, %bb.e ], [ %.2.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.345.i.i, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25
  %i.u = icmp eq i8 %i.t, 48
  br i1 %i.u, label %bb.e, label %.critedge2.i.i

bb.e:                                             ; preds = %.preheader.i.i
  %i.v = add i64 %.3.i.i, -1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.345.i.i, i64 1
  %.old3.i.i = icmp ugt i64 %i.v, 2
  br i1 %.old3.i.i, label %.preheader.i.i, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.e, %.preheader.i.i, %bb.d, %bb.c, %.critedge.i.i
  %.446.i.i = phi ptr [ %.244.i.i, %bb.c ], [ %.244.i.i, %.critedge.i.i ], [ %.244.i.i, %bb.d ], [ %.345.i.i, %.preheader.i.i ], [ %scevgep.i.i, %bb.e ]
  %.4.i.i = phi i64 [ %.2.i.i, %bb.c ], [ %.2.i.i, %.critedge.i.i ], [ %.2.i.i, %bb.d ], [ %.3.i.i, %.preheader.i.i ], [ 2, %bb.e ]
  %i.x = add i64 %.4.i.i, %.244.idx.i.i           ; 4 uses
  %i.y = icmp ugt i64 %i.x, 32
  br i1 %i.y, label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge2.i.i
  %i.z = getelementptr inbounds i8, ptr %.446.i.i, i64 %i.j
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.z, i64 %i.x, i1 false)
  br i1 %i.i, label %bb.g, label %.thread74.i.i

bb.g:                                             ; preds = %bb.f
  store i8 45, ptr %i.a, align 16, !tbaa !25
  br label %.thread74.i.i

.thread74.i.i:                                    ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !25
  br label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i

_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i: ; preds = %.thread74.i.i, %.critedge2.i.i, %bb.b
  %.010.i = phi i64 [ %i.x, %.thread74.i.i ], [ %1, %.critedge2.i.i ], [ %1, %bb.b ]
  %.141.i.i = phi ptr [ %i.a, %.thread74.i.i ], [ @.str.8, %.critedge2.i.i ], [ @.str.8, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ab = tail call ptr @__errno_location() #38   ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !8
  %i.ac = call i64 @__isoc23_strtol(ptr noundef nonnull %.141.i.i, ptr noundef nonnull %i.b, i32 noundef %3) #31 ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %.141.i.i, i64 %.010.i
  %.not.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i, label %bb.h, label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread9

bb.h:                                             ; preds = %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !8
  %.not8.i = icmp eq i32 %i.af, 0
  br i1 %.not8.i, label %bb.i, label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread9

_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread9: ; preds = %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ag = trunc nsw i64 %i.ac to i32
  %i.ah = add i64 %i.ac, 2147483648
  %.not = icmp ult i64 %i.ah, 4294967296
  br i1 %.not, label %bb.j, label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq ptr %2, null
  br i1 %i.ai, label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ag, ptr %2, align 4, !tbaa !8
  br label %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread

_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread: ; preds = %bb.a, %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread9, %bb.j, %bb.i, %bb.k
  %.0 = phi i1 [ false, %_ZN3re212re2_internal5ParseIlEEbPKcmPT_i.exit.thread9 ], [ false, %bb.i ], [ true, %bb.k ], [ true, %bb.j ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseIjEEbPKcmPT_i(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = call noundef zeroext i1 @_ZN3re212re2_internal5ParseImEEbPKcmPT_i(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef %3)
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.d = trunc nuw i64 %i.c to i32
  %.not = icmp ult i64 %i.c, 4294967296
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %2, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseIxEEbPKcmPT_i(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.d = load i8, ptr %0, align 1, !tbaa !25      ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011614ascii_internal13kPropertyBitsE, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !25
  %i.h = and i8 %i.g, 8
  %.not76.i = icmp eq i8 %i.h, 0
  br i1 %.not76.i, label %.critedge.i, label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit

.critedge.i:                                      ; preds = %bb.b
  %i.i = icmp eq i8 %i.d, 45                      ; 3 uses
  %.244.idx.i = zext i1 %i.i to i64               ; 3 uses
  %.244.i = getelementptr inbounds nuw i8, ptr %0, i64 %.244.idx.i ; 6 uses
  %i.j = sext i1 %i.i to i64                      ; 2 uses
  %.2.i = add i64 %1, %i.j                        ; 6 uses
  %i.k = icmp ugt i64 %.2.i, 2
  br i1 %i.k, label %bb.c, label %.critedge2.i

bb.c:                                             ; preds = %.critedge.i
  %i.l = load i8, ptr %.244.i, align 1, !tbaa !25
  %i.m = icmp eq i8 %i.l, 48
  br i1 %i.m, label %bb.d, label %.critedge2.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.244.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %.preheader.preheader.i, label %.critedge2.i

.preheader.preheader.i:                           ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 %.2.i
  %i.r = getelementptr i8, ptr %i.q, i64 %.244.idx.i
  %scevgep.i = getelementptr i8, ptr %i.r, i64 -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.preheader.i
  %.345.i = phi ptr [ %i.w, %bb.e ], [ %.244.i, %.preheader.preheader.i ] ; 3 uses
  %.3.i = phi i64 [ %i.v, %bb.e ], [ %.2.i, %.preheader.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.345.i, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25
  %i.u = icmp eq i8 %i.t, 48
  br i1 %i.u, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.preheader.i
  %i.v = add i64 %.3.i, -1                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.345.i, i64 1
  %.old3.i = icmp ugt i64 %i.v, 2
  br i1 %.old3.i, label %.preheader.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.e, %.preheader.i, %bb.d, %bb.c, %.critedge.i
  %.446.i = phi ptr [ %.244.i, %bb.c ], [ %.244.i, %.critedge.i ], [ %.244.i, %bb.d ], [ %scevgep.i, %bb.e ], [ %.345.i, %.preheader.i ]
  %.4.i = phi i64 [ %.2.i, %bb.c ], [ %.2.i, %.critedge.i ], [ %.2.i, %bb.d ], [ 2, %bb.e ], [ %.3.i, %.preheader.i ]
  %i.x = add i64 %.4.i, %.244.idx.i               ; 4 uses
  %i.y = icmp ugt i64 %i.x, 32
  br i1 %i.y, label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit, label %bb.f

bb.f:                                             ; preds = %.critedge2.i
  %i.z = getelementptr inbounds i8, ptr %.446.i, i64 %i.j
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.z, i64 %i.x, i1 false)
  br i1 %i.i, label %bb.g, label %.thread74.i

bb.g:                                             ; preds = %bb.f
  store i8 45, ptr %i.a, align 16, !tbaa !25
  br label %.thread74.i

.thread74.i:                                      ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !25
  br label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit

_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit: ; preds = %bb.b, %.critedge2.i, %.thread74.i
  %.010 = phi i64 [ %i.x, %.thread74.i ], [ %1, %.critedge2.i ], [ %1, %bb.b ]
  %.141.i = phi ptr [ %i.a, %.thread74.i ], [ @.str.8, %.critedge2.i ], [ @.str.8, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ab = tail call ptr @__errno_location() #38   ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !8
  %i.ac = call i64 @__isoc23_strtoll(ptr noundef nonnull %.141.i, ptr noundef nonnull %i.b, i32 noundef %3) #31
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %.141.i, i64 %.010
  %.not = icmp eq ptr %i.ad, %i.ae
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !8
  %.not8 = icmp eq i32 %i.af, 0
  br i1 %.not8, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp eq ptr %2, null
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.ac, ptr %2, align 8, !tbaa !203
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit, %bb.j
  %.0 = phi i1 [ true, %bb.j ], [ false, %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit ], [ false, %bb.h ], [ true, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.1 = phi i1 [ %.0, %bb.k ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN3re212re2_internal5ParseIyEEbPKcmPT_i(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.d = load i8, ptr %0, align 1, !tbaa !25      ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011614ascii_internal13kPropertyBitsE, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !25
  %i.h = and i8 %i.g, 8
  %.not76.i = icmp eq i8 %i.h, 0
  br i1 %.not76.i, label %.critedge.i, label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit

.critedge.i:                                      ; preds = %bb.b
  %i.i = icmp eq i8 %i.d, 45                      ; 3 uses
  %.244.idx.i = zext i1 %i.i to i64               ; 3 uses
  %.244.i = getelementptr inbounds nuw i8, ptr %0, i64 %.244.idx.i ; 6 uses
  %i.j = sext i1 %i.i to i64                      ; 2 uses
  %.2.i = add i64 %1, %i.j                        ; 6 uses
  %i.k = icmp ugt i64 %.2.i, 2
  br i1 %i.k, label %bb.c, label %.critedge2.i

bb.c:                                             ; preds = %.critedge.i
  %i.l = load i8, ptr %.244.i, align 1, !tbaa !25
  %i.m = icmp eq i8 %i.l, 48
  br i1 %i.m, label %bb.d, label %.critedge2.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.244.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %.preheader.preheader.i, label %.critedge2.i

.preheader.preheader.i:                           ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 %.2.i
  %i.r = getelementptr i8, ptr %i.q, i64 %.244.idx.i
  %scevgep.i = getelementptr i8, ptr %i.r, i64 -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.preheader.i
  %.345.i = phi ptr [ %i.w, %bb.e ], [ %.244.i, %.preheader.preheader.i ] ; 3 uses
  %.3.i = phi i64 [ %i.v, %bb.e ], [ %.2.i, %.preheader.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.345.i, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25
  %i.u = icmp eq i8 %i.t, 48
  br i1 %i.u, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.preheader.i
  %i.v = add i64 %.3.i, -1                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.345.i, i64 1
  %.old3.i = icmp ugt i64 %i.v, 2
  br i1 %.old3.i, label %.preheader.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.e, %.preheader.i, %bb.d, %bb.c, %.critedge.i
  %.446.i = phi ptr [ %.244.i, %bb.c ], [ %.244.i, %.critedge.i ], [ %.244.i, %bb.d ], [ %scevgep.i, %bb.e ], [ %.345.i, %.preheader.i ]
  %.4.i = phi i64 [ %.2.i, %bb.c ], [ %.2.i, %.critedge.i ], [ %.2.i, %bb.d ], [ 2, %bb.e ], [ %.3.i, %.preheader.i ]
  %i.x = add i64 %.4.i, %.244.idx.i               ; 4 uses
  %i.y = icmp ugt i64 %i.x, 32
  br i1 %i.y, label %_ZN3re212re2_internalL15TerminateNumberEPcmPKcPmb.exit, label %bb.f

end_hunk_1
