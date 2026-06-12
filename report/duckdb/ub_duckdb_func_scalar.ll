inline.NumInlined: 4066
inline.NumDeleted: 1630
begin_hunk_0_@_ZN6duckdb14StrpTimeFormat8TryParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RNS0_11ParseResultE:bb.a

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  call void @_ZdlPv(ptr noundef nonnull %i.af) #30, !inline_history !559
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !413 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !399 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ah, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ak) #30, !inline_history !559
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !417

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ag, align 8, !tbaa !413
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ao = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ah, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #30, !inline_history !559
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.p, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !405 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #30, !inline_history !559
  br label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i: ; preds = %bb.q, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN6duckdb13StrTimeFormatD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ar) #30, !inline_history !559
  br label %_ZN6duckdb13StrTimeFormatD2Ev.exit

_ZN6duckdb13StrTimeFormatD2Ev.exit:               ; preds = %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i1 %i.aa

bb.r:                                             ; preds = %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.r
  %.pn14 = phi { ptr, i32 } [ %i.au, %bb.r ], [ %.pn34, %bb.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.av = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.g
  %.pn14.pn = phi { ptr, i32 } [ %i.g, %bb.g ], [ %.pn14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn14, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.f
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.f, %bb.f ]
  call void @_ZN6duckdb13StrTimeFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn14.pn.pn

bb.u:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb13StrTimeFormat5EmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14StrpTimeFormat19FormatStrpTimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12optional_idxE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store i64 %2, ptr %3, align 8
  %.not = icmp eq i64 %2, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !19
  store i8 0, ptr %i.a, align 8, !tbaa !18
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.c = load ptr, ptr %1, align 8, !tbaa !16, !noalias !566
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !566 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !11, !alias.scope !569
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !19, !alias.scope !569
  store i8 0, ptr %i.f, align 8, !tbaa !18, !alias.scope !569
  %i.h = add i64 %i.e, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19, !alias.scope !569
  %i.j = sub i64 4611686018427387903, %i.i
  %i.k = icmp ult i64 %i.j, %i.e
  br i1 %i.k, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.m = load i64, ptr %i.g, align 8, !tbaa !19, !alias.scope !569
  %i.n = icmp eq i64 %i.m, 4611686018427387903
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #31
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.55, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !16, !alias.scope !569 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.f
  br i1 %i.r, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.q) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.s = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.t, ptr %6, align 8, !tbaa !11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.s, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.u = load i64, ptr %i.g, align 8, !tbaa !19, !noalias !572 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19, !noalias !572 ; 4 uses
  %i.x = add i64 %i.w, %i.u                       ; 2 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !16, !noalias !572 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f                   ; 2 uses
  br i1 %i.z, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %i.aa = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %7 = load i64, ptr %i.f, align 8, !noalias !572
  %8 = select i1 %i.z, i64 15, i64 %7
  %i.ab = icmp ugt i64 %i.x, %8
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ac = load ptr, ptr %6, align 8, !tbaa !16, !noalias !572
  %i.ad = icmp eq ptr %i.ac, %i.t                 ; 2 uses
  br i1 %i.ad, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i: ; preds = %bb.i, %bb.h
  %9 = load i64, ptr %i.t, align 8, !noalias !572
  %10 = select i1 %i.ad, i64 15, i64 %9
  %.not.i = icmp ugt i64 %i.x, %10
  br i1 %.not.i, label %bb.k, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.u)
          to label %.noexc unwind label %bb.s     ; 5 uses

.noexc:                                           ; preds = %.critedge.i
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !11, !alias.scope !572
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.a

bb.j:                                             ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.a: ; preds = %.noexc
  store ptr %i.ah, ptr %4, align 8, !tbaa !16, !alias.scope !572
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !18
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !18, !alias.scope !572
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.a, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !19, !alias.scope !572
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !16
  store i64 0, ptr %i.ap, align 8, !tbaa !19
  store i8 0, ptr %i.ai, align 8, !tbaa !18
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.as = sub i64 4611686018427387903, %i.u
  %i.at = icmp ult i64 %i.as, %i.w
  br i1 %i.at, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #31
          to label %.noexc8 unwind label %bb.s

.noexc8:                                          ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.k
  %i.au = load ptr, ptr %6, align 8, !tbaa !16, !noalias !572
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.au, i64 noundef %i.w)
          to label %.noexc9 unwind label %bb.s    ; 5 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !11, !alias.scope !572
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i

bb.m:                                             ; preds = %.noexc9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !19 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i: ; preds = %.noexc9
  store ptr %i.ax, ptr %4, align 8, !tbaa !16, !alias.scope !572
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !18
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !18, !alias.scope !572
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !19, !alias.scope !572
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !16
  store i64 0, ptr %i.bf, align 8, !tbaa !19
  store i8 0, ptr %i.ay, align 8, !tbaa !18
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !19, !noalias !575
  %i.bk = icmp eq i64 %i.bj, 4611686018427387903
  br i1 %i.bk, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #31
          to label %.noexc12 unwind label %bb.t

.noexc12:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.56, i64 noundef 1)
          to label %.noexc13 unwind label %bb.t   ; 6 uses

.noexc13:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !11, !alias.scope !575
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 5 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

bb.o:                                             ; preds = %.noexc13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !19 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %.noexc13
  store ptr %i.bn, ptr %0, align 8, !tbaa !16, !alias.scope !575
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !18
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !18, !alias.scope !575
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.o
  %i.bv = phi i64 [ %i.br, %bb.o ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !19, !alias.scope !575
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !16
  store i64 0, ptr %i.bw, align 8, !tbaa !19
  store i8 0, ptr %i.bo, align 8, !tbaa !18
  %i.by = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.cb = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.t
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.cd = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.f
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @_ZdlPv(ptr noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.u

bb.q:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.r:                                             ; preds = %bb.f
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l, %.critedge.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.cj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
end_hunk_0
