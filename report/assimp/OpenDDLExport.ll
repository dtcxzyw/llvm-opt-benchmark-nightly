inline.NumInlined: 224
inline.NumDeleted: 93
begin_hunk_0_@_ZN10ODDLParser13OpenDDLExport9writeNodeEPNS_7DDLNodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.j = tail call noundef ptr @_ZNK10ODDLParser7DDLNode16getDataArrayListEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = load i64, ptr %i.j, align 8
  %i.o = tail call noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport14writeValueTypeENS_5Value9ValueTypeEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, i32 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  %i.p = tail call noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport15writeValueArrayEPNS_13DataArrayListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.q = tail call noundef ptr @_ZNK10ODDLParser7DDLNode8getValueEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 3 uses
  %.not30 = icmp eq ptr %i.q, null
  br i1 %.not30, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport14writeValueTypeENS_5Value9ValueTypeEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, i32 noundef %i.r, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  %i.t = load i64, ptr %i.d, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.t, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.v = load i64, ptr %i.d, align 8
  %i.w = icmp eq i64 %i.v, 4611686018427387903
  br i1 %i.w, label %bb.h, label %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit31

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit31: ; preds = %bb.g
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, i64 noundef 1) ; 0 uses
  %i.y = tail call noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport10writeValueEPNS_5ValueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  %i.z = load i64, ptr %i.d, align 8
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.z, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ab = load i64, ptr %i.d, align 8
  %i.ac = icmp eq i64 %i.ab, 4611686018427387903
  br i1 %i.ac, label %bb.i, label %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit32

bb.i:                                             ; preds = %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit31
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit32: ; preds = %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit31
  %i.ad = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, i64 noundef 1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit32, %bb.f
  %i.ae = load i64, ptr %i.d, align 8
  %i.af = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.ae, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = icmp eq i64 %i.ag, 4611686018427387903
  br i1 %i.ah, label %bb.k, label %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit33

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit33: ; preds = %bb.j
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, i64 noundef 1) ; 0 uses
  %i.aj = load ptr, ptr %0, align 8               ; 3 uses
  %i.ak = icmp ne ptr %i.aj, null
  %i.al = load i64, ptr %i.d, align 8
  %i.am = icmp ne i64 %i.al, 0
  %or.cond.not.i = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond.not.i, label %bb.l, label %_ZN10ODDLParser13OpenDDLExport13writeToStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.l:                                             ; preds = %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit33
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !5 ; 0 uses
  br label %_ZN10ODDLParser13OpenDDLExport13writeToStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN10ODDLParser13OpenDDLExport13writeToStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit33, %bb.l
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport13writeToStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %i.d, 0
  %or.cond.not = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport15writeNodeHeaderEPNS_7DDLNodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10ODDLParser7DDLNode7getTypeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = sub i64 4611686018427387903, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.i, i64 noundef %i.d) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10ODDLParser7DDLNode7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.o = load i64, ptr %i.e, align 8
  %i.p = icmp eq i64 %i.o, 4611686018427387903
  br i1 %i.p, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.d
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.r = load i64, ptr %i.e, align 8
  %i.s = icmp eq i64 %i.r, 4611686018427387903
  br i1 %i.s, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit11

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.u = load i64, ptr %i.l, align 8              ; 2 uses
  %i.v = load i64, ptr %i.e, align 8
  %i.w = sub i64 4611686018427387903, %i.v
  %i.x = icmp ult i64 %i.w, %i.u
  br i1 %i.x, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit12

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit11
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit11
  %i.y = load ptr, ptr %i.k, align 8
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.y, i64 noundef %i.u) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit12, %bb.a
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK10ODDLParser7DDLNode13hasPropertiesEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport15writePropertiesEPNS_7DDLNodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK10ODDLParser7DDLNode13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %.pre = load ptr, ptr %i.c, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre51 = load ptr, ptr %.phi.trans.insert, align 8 ; 4 uses
  store ptr %i.i, ptr %3, align 8
  %i.k = icmp eq ptr %.pre51, null
  br i1 %i.k, label %.noexc, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre51) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.l, ptr %i.a, align 8
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.peel, label %._crit_edge.i.i.peel

.noexc.i.peel:                                    ; preds = %bb.f
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %3, align 8
  %i.o = load i64, ptr %i.a, align 8
  store i64 %i.o, ptr %i.i, align 8
  br label %._crit_edge.i.i.peel

._crit_edge.i.i.peel:                             ; preds = %.noexc.i.peel, %bb.f
  %i.p = phi ptr [ %i.n, %.noexc.i.peel ], [ %i.i, %bb.f ] ; 2 uses
  switch i64 %i.l, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.peel
  %i.q = load i8, ptr %.pre51, align 1
  store i8 %i.q, ptr %i.p, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %.pre51, i64 %i.l, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.peel
  %i.r = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.r, ptr %i.j, align 8
  %i.s = load ptr, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.u = load i64, ptr %i.j, align 8              ; 2 uses
  %i.v = load i64, ptr %i.e, align 8
  %i.w = sub i64 4611686018427387903, %i.v
  %i.x = icmp ult i64 %i.w, %i.u
  br i1 %i.x, label %.loopexit45, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.i
  %i.y = load ptr, ptr %3, align 8
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.y, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.aa = load ptr, ptr %3, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.i
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.ac = load i64, ptr %i.i, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ae = load i64, ptr %i.e, align 8
  %i.af = add i64 %i.ae, -4611686018427387901
  %i.ag = icmp ult i64 %i.af, 3
  br i1 %i.ag, label %.loopexit49, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.6, i64 noundef 3) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport10writeValueEPNS_5ValueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.peel = icmp eq ptr %i.am, null
  br i1 %.not.peel, label %.loopexit50, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30
  %.02041 = phi ptr [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30.peel ] ; 3 uses
  %i.an = load i64, ptr %i.e, align 8
  %i.ao = and i64 %i.an, -2
  %i.ap = icmp eq i64 %i.ao, 4611686018427387902
  br i1 %i.ap, label %.loopexit44, label %bb.j

.loopexit44:                                      ; preds = %.peel.next
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

bb.j:                                             ; preds = %.peel.next
  %i.aq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ar = load ptr, ptr %.02041, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 4 uses
  store ptr %i.i, ptr %3, align 8
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.noexc, label %bb.k

.noexc:                                           ; preds = %bb.j, %bb.e
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #18
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.av = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.av, ptr %i.a, align 8
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.ax = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ax, ptr %3, align 8
  %i.ay = load i64, ptr %i.a, align 8
  store i64 %i.ay, ptr %i.i, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.k
  %i.az = phi ptr [ %i.ax, %.noexc.i ], [ %i.i, %bb.k ] ; 2 uses
  switch i64 %i.av, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ba = load i8, ptr %i.at, align 1
  store i8 %i.ba, ptr %i.az, align 1
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr nonnull align 1 %i.at, i64 %i.av, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.bb = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.bb, ptr %i.j, align 8
  %i.bc = load ptr, ptr %3, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 0, ptr %i.bd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.be = load i64, ptr %i.j, align 8             ; 2 uses
  %i.bf = load i64, ptr %i.e, align 8
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.be
  br i1 %i.bh, label %.loopexit45, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit45:                                      ; preds = %bb.n, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %.loopexit45
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.n
  %i.bi = load ptr, ptr %3, align 8
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.bi, i64 noundef %i.be)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.i
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bm = load i64, ptr %i.i, align 8
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.bo = load i64, ptr %i.e, align 8
  %i.bp = add i64 %i.bo, -4611686018427387901
  %i.bq = icmp ult i64 %i.bp, 3
  br i1 %i.bq, label %.loopexit49, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30

.loopexit49:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.6, i64 noundef 3) ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02041, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport10writeValueEPNS_5ValueERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02041, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %.loopexit50, label %.peel.next, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit46 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %lpad.loopexit.split-lp47 = landingpad { ptr, i32 }
          cleanup
end_hunk_0
