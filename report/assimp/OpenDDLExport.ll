inline.NumInlined: 224
inline.NumDeleted: 93
begin_hunk_0_@_ZN10ODDLParser13OpenDDLExport13exportContextEPNS_7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.d, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.e ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport10handleNodeEPNS_7DDLNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK10ODDLParser7DDLNode16getChildNodeListEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ugt i64 %i.k, 8
  br i1 %i.l, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %i.m = phi ptr [ %i.y, %bb.g ], [ %i.c, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %i.z, %bb.g ], [ %i.e, %bb.c ]
  %i.o = phi i64 [ %i.ae, %bb.g ], [ 1, %bb.c ]   ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.r = invoke noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport9writeNodeEPNS_7DDLNodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.s = invoke noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport10handleNodeEPNS_7DDLNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.q)
          to label %._crit_edge unwind label %bb.f ; 0 uses

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.d, align 8
  %.pre21 = load ptr, ptr %i.b, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.g, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.t

bb.g:                                             ; preds = %._crit_edge, %.lr.ph
  %i.y = phi ptr [ %.pre21, %._crit_edge ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.z = phi ptr [ %.pre, %._crit_edge ], [ %i.n, %.lr.ph ] ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = add nuw i64 %i.o, 1                     ; 2 uses
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph, label %_ZN10ODDLParser15DDLNodeIterator7getNextEPPNS_7DDLNodeE.exit, !llvm.loop !3

_ZN10ODDLParser15DDLNodeIterator7getNextEPPNS_7DDLNodeE.exit: ; preds = %bb.g
  %.pre22 = load ptr, ptr %2, align 8             ; 2 uses
  %i.ag = icmp eq ptr %.pre22, %i.g
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZN10ODDLParser15DDLNodeIterator7getNextEPPNS_7DDLNodeE.exit
  %i.ah = load i64, ptr %i.g, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %.pre22, i64 noundef %i.ai) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZN10ODDLParser15DDLNodeIterator7getNextEPPNS_7DDLNodeE.exit, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.b, %bb.a
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK10ODDLParser7DDLNode16getChildNodeListEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport9writeNodeEPNS_7DDLNodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport15writeNodeHeaderEPNS_7DDLNodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZNK10ODDLParser7DDLNode13hasPropertiesEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport15writePropertiesEPNS_7DDLNodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 4611686018427387903
  br i1 %i.f, label %bb.d, label %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, i64 noundef 1) ; 0 uses
  %i.h = load i64, ptr %i.d, align 8
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
  %.not34 = icmp eq ptr %i.aj, null
  br i1 %.not34, label %_ZN10ODDLParser13OpenDDLExport13writeToStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %3

3:                                                ; preds = %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit33
  %4 = load i64, ptr %i.d, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_ZN10ODDLParser13OpenDDLExport13writeToStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.l

bb.l:                                             ; preds = %3
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !5 ; 0 uses
  br label %_ZN10ODDLParser13OpenDDLExport13writeToStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN10ODDLParser13OpenDDLExport13writeToStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN10ODDLParserL12writeLineEndERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit33, %3, %bb.l
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport13writeToStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
  %3 = load ptr, ptr %0, align 8                  ; 3 uses
  %4 = icmp ne ptr %3, null                       ; 2 uses
  br i1 %4, label %bb.a, label %bb.c

bb.a:                                             ; preds = %2
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %5 = icmp eq i64 %i.b, 0
  br i1 %5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %2
  ret i1 %4
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
  %.pre = load ptr, ptr %i.c, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre51 = load ptr, ptr %.phi.trans.insert, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
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
end_hunk_0
