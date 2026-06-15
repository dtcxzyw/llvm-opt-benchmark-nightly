inline.NumInlined: 6572
inline.NumDeleted: 2480
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE8findNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.Assimp::find_node_by_name_predicate", align 8 ; 13 uses
  %3 = alloca %"struct.Assimp::find_node_by_name_predicate", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %0, align 8
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  store ptr %i.g, ptr %2, align 8
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.c, ptr %i.a, align 8
  %i.i = icmp ugt i64 %i.c, 15
  br i1 %i.i, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %2, align 8
  %i.k = load i64, ptr %i.a, align 8
  store i64 %i.k, ptr %i.g, align 8
  br label %bb.d

._crit_edge.i.i.i:                                ; preds = %bb.b
  %cond = icmp eq i64 %i.c, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.h, align 1
  store i8 %i.l, ptr %i.g, align 8
  br label %_ZN6Assimp27find_node_by_name_predicateC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.m = phi ptr [ %i.j, %._crit_edge.i.i.i.thread ], [ %i.g, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.h, i64 %i.c, i1 false)
  br label %_ZN6Assimp27find_node_by_name_predicateC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6Assimp27find_node_by_name_predicateC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.s, ptr %3, align 8
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZN6Assimp27find_node_by_name_predicateC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.v = load i64, ptr %i.o, align 8              ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.x, i1 false)
  br label %_ZN6Assimp27find_node_by_name_predicateC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp27find_node_by_name_predicateC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.t, ptr %3, align 8
  %i.y = load i64, ptr %i.g, align 8
  store i64 %i.y, ptr %i.s, align 8
  %.pre = load i64, ptr %i.o, align 8
  br label %_ZN6Assimp27find_node_by_name_predicateC2EOS0_.exit

_ZN6Assimp27find_node_by_name_predicateC2EOS0_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.z, ptr %i.aa, align 8
  store ptr %i.g, ptr %2, align 8
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %i.g, align 8
  %i.ab = invoke ptr @_ZNK4pugi8xml_node9find_nodeIN6Assimp27find_node_by_name_predicateEEES0_T_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN6Assimp27find_node_by_name_predicateC2EOS0_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %3, align 8               ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.af = load i64, ptr %i.s, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit

_ZN6Assimp27find_node_by_name_predicateD2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ah = invoke noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit
  %. = select i1 %i.ah, ptr null, ptr %i.ac
  %i.ai = load ptr, ptr %2, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.g
  %i.ak = load i64, ptr %i.g, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #30
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit11

_ZN6Assimp27find_node_by_name_predicateD2Ev.exit11: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.j

bb.h:                                             ; preds = %_ZN6Assimp27find_node_by_name_predicateC2EOS0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %3, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.s
  br i1 %i.ao, label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %bb.h
  %i.ap = load i64, ptr %i.s, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #30
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit14

bb.i:                                             ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit14

_ZN6Assimp27find_node_by_name_predicateD2Ev.exit14: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12 ], [ %i.am, %bb.h ]
  %i.as = load ptr, ptr %2, align 8               ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.g
  br i1 %i.at, label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit14
  %i.au = load i64, ptr %i.g, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #30
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit17

_ZN6Assimp27find_node_by_name_predicateD2Ev.exit17: ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a, %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit11
  %.1 = phi ptr [ %., %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit11 ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef ptr @_ZNK4pugi8xml_nodecvPFvPPPS0_EEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE16getValueAsStringERS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.pugi::xml_text", align 8    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.a, align 8
  %5 = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 0, ptr %6, align 8
  store i8 0, ptr %5, align 1
  %.pre.i = load ptr, ptr %2, align 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %.pre.i, align 1
  %7 = load ptr, ptr %2, align 8                  ; 2 uses
  %.not21.i = icmp eq ptr %7, %i.a
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.d = load i64, ptr %i.a, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %7, i64 noundef %i.e) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.f = call noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  br i1 %i.f, label %bb.g, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.g = call ptr @_ZNK4pugi8xml_node4textEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr %i.g, ptr %3, align 8
  %i.h = call noundef ptr @_ZNK4pugi8xml_text9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.46) ; 2 uses
  %i.i = load i64, ptr %6, align 8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #28
  %i.k = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull %i.h, i64 noundef %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_Z7ai_trimRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = load ptr, ptr %1, align 8                ; 6 uses
  %i.m = icmp eq ptr %i.l, %i.c
  %i.n = load ptr, ptr %4, align 8                ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o                   ; 2 uses
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %bb.a
  br i1 %i.p, label %bb.b, label %.thread.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7: ; preds = %bb.a
  br i1 %i.p, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  switch i64 %i.r, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %i.n, align 1
  store i8 %i.t, ptr %i.l, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11: ; preds = %bb.d, %bb.c, %bb.b
  %i.u = load i64, ptr %i.q, align 8              ; 2 uses
  store i64 %i.u, ptr %6, align 8
  %i.v = load ptr, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1
  %.pre.i12 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15

.thread.i14:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  store ptr %i.n, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load <2 x i64>, ptr %i.x, align 8
  store <2 x i64> %i.y, ptr %6, align 8
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7
  %i.z = load i64, ptr %i.c, align 8
  store ptr %i.n, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load <2 x i64>, ptr %i.aa, align 8
  store <2 x i64> %i.ab, ptr %6, align 8
  %.not.i9 = icmp eq ptr %i.l, null
  br i1 %.not.i9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8
  store ptr %i.l, ptr %4, align 8
  store i64 %i.z, ptr %i.o, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8, %.thread.i14
  store ptr %i.o, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11, %bb.e, %bb.f
  %8 = phi ptr [ %.pre.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11 ], [ %i.l, %bb.e ], [ %i.o, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %8, align 1
  %i.ad = load ptr, ptr %4, align 8               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.0 = xor i1 %i.f, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define hidden void @_ZN6Assimp13ColladaParser13UriDecodePathER8aiString(ptr noundef nonnull align 4 dereferenceable(1028) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 13 uses
  %i.c = load i32, ptr %i.b, align 1
  %i.d = xor i32 %i.c, 1701603686
  %i.e = getelementptr i8, ptr %i.b, i64 3
  %i.f = load i32, ptr %i.e, align 1
  %i.g = xor i32 %i.f, 791624293
  %i.h = or i32 %i.d, %i.g
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %0, align 4
  %i.m = add i32 %i.l, -7                         ; 2 uses
  store i32 %i.m, ptr %0, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.o = zext i32 %i.m to i64                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.b, ptr nonnull align 1 %i.n, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  store i8 0, ptr %i.p, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load i8, ptr %i.b, align 4
  %i.r = icmp eq i8 %i.q, 47
  br i1 %i.r, label %bb.d, label %._crit_edge45

._crit_edge45:                                    ; preds = %bb.c
  %.pre = load i32, ptr %0, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = tail call i32 @isalpha(i32 noundef %i.u) #32
  %.not = icmp ne i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = load i8, ptr %i.w, align 2
  %i.y = icmp eq i8 %i.x, 58
  %or.cond = select i1 %.not, i1 %i.y, i1 false
  %.pre46 = load i32, ptr %0, align 4             ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = add i32 %.pre46, -1                      ; 3 uses
  store i32 %i.z, ptr %0, align 4
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.b, ptr nonnull align 1 %i.s, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aa
  store i8 0, ptr %i.ab, align 1
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge45, %bb.e, %bb.d
  %i.ac = phi i32 [ %.pre, %._crit_edge45 ], [ %i.z, %bb.e ], [ %.pre46, %bb.d ] ; 2 uses
  %.not3942 = icmp eq i32 %i.ac, 0
  br i1 %.not3942, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.g

._crit_edge:                                      ; preds = %bb.r, %bb.f
  %.0.lcssa = phi ptr [ %i.b, %bb.f ], [ %.1, %bb.r ] ; 2 uses
  store i8 0, ptr %.0.lcssa, align 1
  %i.ah = ptrtoint ptr %.0.lcssa to i64
  %i.ai = ptrtoint ptr %i.b to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.ak, ptr %0, align 4
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.r
  %i.al = phi ptr [ %i.ae, %.lr.ph ], [ %i.bk, %bb.r ]
  %.044 = phi ptr [ %i.b, %.lr.ph ], [ %.1, %bb.r ] ; 3 uses
  %.03543 = phi ptr [ %i.b, %.lr.ph ], [ %.136, %bb.r ] ; 5 uses
  %i.am = load i8, ptr %.03543, align 1           ; 2 uses
  %i.an = icmp eq i8 %i.am, 37
  br i1 %i.an, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.03543, i64 3 ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.al
  br i1 %i.ap, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %.03543, i64 1
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  store i8 %i.ar, ptr %i.a, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.03543, i64 2
  %i.at = load i8, ptr %i.as, align 1
  store i8 %i.at, ptr %i.af, align 1
  store i8 0, ptr %i.ag, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %bb.i
  %i.au = phi i8 [ %i.ar, %bb.i ], [ %.pre47, %bb.p ] ; 3 uses
  %.016.i = phi ptr [ %i.a, %bb.i ], [ %i.bg, %bb.p ]
  %.0.i = phi i8 [ 0, %bb.i ], [ %.1.i, %bb.p ]   ; 4 uses
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.av, 10
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = shl i8 %.0.i, 4
  %i.ax = or disjoint i8 %i.av, %i.aw
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.ay = add i8 %i.au, -65                       ; 2 uses
  %or.cond23.i = icmp ult i8 %i.ay, 6
  br i1 %or.cond23.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = shl i8 %.0.i, 4
  %i.ba = or disjoint i8 %i.az, 10
  %i.bb = add i8 %i.ba, %i.ay
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bc = add i8 %i.au, -97                       ; 2 uses
  %or.cond24.i = icmp ult i8 %i.bc, 6
  br i1 %or.cond24.i, label %bb.o, label %_ZN6Assimp9strtoul16EPKcPS1_.exit

bb.o:                                             ; preds = %bb.n
  %i.bd = shl i8 %.0.i, 4
  %i.be = or disjoint i8 %i.bd, 10
  %i.bf = add i8 %i.be, %i.bc
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.k
  %.1.i = phi i8 [ %i.ax, %bb.k ], [ %i.bb, %bb.m ], [ %i.bf, %bb.o ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.016.i, i64 1 ; 2 uses
  %.pre47 = load i8, ptr %i.bg, align 1
  br label %bb.j, !llvm.loop !24

_ZN6Assimp9strtoul16EPKcPS1_.exit:                ; preds = %bb.n
  store i8 %.0.i, ptr %.044, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.r

bb.q:                                             ; preds = %bb.h, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.03543, i64 1
  store i8 %i.am, ptr %.044, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6Assimp9strtoul16EPKcPS1_.exit
  %.136 = phi ptr [ %i.ao, %_ZN6Assimp9strtoul16EPKcPS1_.exit ], [ %i.bh, %bb.q ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.044, i64 1 ; 2 uses
  %i.bi = load i32, ptr %0, align 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bj ; 2 uses
  %.not39 = icmp eq ptr %.136, %i.bk
  br i1 %.not39, label %._crit_edge, label %bb.g, !llvm.loop !25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

end_hunk_0
begin_hunk_1_@_ZN6Assimp7Collada10ControlleraSEOS1_:bb.a
  store i64 %i.hn, ptr %i.hl, align 8
  %i.ho = load i64, ptr %i.hb, align 8
  store i64 %i.ho, ptr %i.gy, align 8
  br label %bb.as

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i49
  %i.hp = load i64, ptr %i.gy, align 8
  store ptr %i.ha, ptr %i.gv, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.hr, ptr %i.hs, align 8
  %i.ht = load i64, ptr %i.hb, align 8
  store i64 %i.ht, ptr %i.gy, align 8
  %.not.i51 = icmp eq ptr %i.gx, null
  br i1 %.not.i51, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50
  store ptr %i.gx, ptr %i.gw, align 8
  store i64 %i.hp, ptr %i.hb, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit57

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50, %.thread.i56
  store ptr %i.hb, ptr %i.gw, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit57: ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i53, %bb.ar, %bb.as
  %i.hu = phi ptr [ %.pre.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i53 ], [ %i.gx, %bb.ar ], [ %i.hb, %bb.as ], [ %i.ha, %bb.an ]
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i64 0, ptr %i.hv, align 8
  store i8 0, ptr %i.hu, align 1
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Collada10ControllerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #30
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN6Assimp7Collada12InputChannelD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #30
  br label %_ZN6Assimp7Collada12InputChannelD2Ev.exit

_ZN6Assimp7Collada12InputChannelD2Ev.exit:        ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN6Assimp7Collada12InputChannelD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %_ZN6Assimp7Collada12InputChannelD2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #30
  br label %_ZN6Assimp7Collada12InputChannelD2Ev.exit7

_ZN6Assimp7Collada12InputChannelD2Ev.exit7:       ; preds = %_ZN6Assimp7Collada12InputChannelD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZN6Assimp7Collada12InputChannelD2Ev.exit7
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZN6Assimp7Collada12InputChannelD2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.aw = load i64, ptr %i.au, align 8
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.bc = load i64, ptr %i.ba, align 8
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaParser14ReadControllerERN4pugi8xml_nodeERNS_7Collada10ControllerE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(408) initializes((0, 8)) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.pugi::xml_text", align 8    ; 4 uses
  %6 = alloca %"struct.Assimp::Collada::InputChannel", align 8 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %9 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %11 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %12 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %13 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %15 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %16 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %17 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %19 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %20 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %21 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %22 = alloca %"class.Assimp::XmlNodeIterator", align 8 ; 11 uses
  %23 = alloca %"class.pugi::xml_node", align 8   ; 18 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %28 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.pugi::xml_node", align 8   ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %35 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %36 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  store i32 0, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store ptr %1, ptr %22, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  invoke void @_ZN6Assimp15XmlNodeIterator23collectChildrenPreOrderERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN6Assimp15XmlNodeIteratorC2ERN4pugi8xml_nodeENS0_13IterationModeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.c, %_ZN6Assimp15XmlNodeIteratorD2Ev.exit218
  %common.resume.op = phi { ptr, i32 } [ %.pn64.pn.pn.pn.pn.pn, %_ZN6Assimp15XmlNodeIteratorD2Ev.exit218 ], [ %i.o, %bb.c ], [ %i.o, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN6Assimp15XmlNodeIteratorC2ERN4pugi8xml_nodeENS0_13IterationModeE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  invoke void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %.preheader unwind label %bb.ae

.preheader:                                       ; preds = %_ZN6Assimp15XmlNodeIteratorC2ERN4pugi8xml_nodeENS0_13IterationModeE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.v, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %.not233657 = icmp eq i64 %i.x, %i.ad
  br i1 %.not233657, label %_ZN6Assimp15XmlNodeIterator7getNextERN4pugi8xml_nodeE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %.050.ptr653 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 9 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.cd = phi ptr [ %i.z, %.lr.ph ], [ %i.wk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ]
  %i.ce = phi i64 [ %i.x, %.lr.ph ], [ %i.wi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8
  store i64 %i.cg, ptr %23, align 8
  %i.ch = add i64 %i.ce, 1
  store i64 %i.ch, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %i.ci = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.e unwind label %bb.af      ; 4 uses

bb.e:                                             ; preds = %bb.d
  store ptr %i.ae, ptr %24, align 8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.290) #29
          to label %.noexc unwind label %.loopexit.split-lp247

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ci) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store i64 %i.ck, ptr %i.l, align 8
  %i.cl = icmp ugt i64 %i.ck, 15
  br i1 %i.cl, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.cm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc71 unwind label %.loopexit246 ; 2 uses

.noexc71:                                         ; preds = %.noexc.i
  store ptr %i.cm, ptr %24, align 8
  %i.cn = load i64, ptr %i.l, align 8
  store i64 %i.cn, ptr %i.ae, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc71, %bb.g
  %i.co = phi ptr [ %i.cm, %.noexc71 ], [ %i.ae, %bb.g ] ; 2 uses
  switch i64 %i.ck, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.cp = load i8, ptr %i.ci, align 1
  store i8 %i.cp, ptr %i.co, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr nonnull align 1 %i.ci, i64 %i.ck, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.cq = load i64, ptr %i.l, align 8             ; 2 uses
  store i64 %i.cq, ptr %i.af, align 8
  %i.cr = load ptr, ptr %24, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  store i8 0, ptr %i.cs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %i.ct = load i64, ptr %i.af, align 8            ; 6 uses
  switch i64 %i.ct, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit191.thread231 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94
    i64 17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit154
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit191
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j
  %i.cu = load ptr, ptr %24, align 8              ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = xor i32 %i.cv, 1886547821
  %i.cx = getelementptr i8, ptr %i.cu, i64 4
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i32
  %i.da = xor i32 %i.cz, 104
  %i.db = or i32 %i.cw, %i.da
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit191.thread231

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i32 1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.df = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.47)
          to label %bb.k unwind label %bb.ag

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr %i.df, ptr %26, align 8
  %i.dg = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull @.str.46)
          to label %bb.l unwind label %bb.ag      ; 4 uses

bb.l:                                             ; preds = %bb.k
  store ptr %i.bx, ptr %25, align 8
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.290) #29
          to label %.noexc74 unwind label %.loopexit.split-lp260

.noexc74:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.di = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dg) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  store i64 %i.di, ptr %i.k, align 8
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.noexc.i73, label %._crit_edge.i.i72

.noexc.i73:                                       ; preds = %bb.n
  %i.dk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc75 unwind label %.loopexit259 ; 2 uses

.noexc75:                                         ; preds = %.noexc.i73
  store ptr %i.dk, ptr %25, align 8
  %i.dl = load i64, ptr %i.k, align 8
  store i64 %i.dl, ptr %i.bx, align 8
  br label %._crit_edge.i.i72

._crit_edge.i.i72:                                ; preds = %.noexc75, %bb.n
  %i.dm = phi ptr [ %i.dk, %.noexc75 ], [ %i.bx, %bb.n ] ; 2 uses
  switch i64 %i.di, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i72
  %i.dn = load i8, ptr %i.dg, align 1
  store i8 %i.dn, ptr %i.dm, align 1
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %i.dg, i64 %i.di, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i72
  %i.do = load i64, ptr %i.k, align 8             ; 2 uses
  store i64 %i.do, ptr %i.by, align 8
  %i.dp = load ptr, ptr %25, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.dr = load i64, ptr %i.by, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.306, i64 noundef 1, i64 noundef 0) #29
          to label %.noexc77 unwind label %.loopexit.split-lp265

.noexc77:                                         ; preds = %bb.r
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.q
  %i.dt = add i64 %i.dr, -1                       ; 4 uses
  store ptr %i.bz, ptr %27, align 8, !alias.scope !79
  %i.du = load ptr, ptr %25, align 8, !noalias !79
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28, !noalias !79
  store i64 %i.dt, ptr %i.j, align 8, !noalias !79
  %i.dw = icmp ugt i64 %i.dt, 15
  br i1 %i.dw, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc78 unwind label %.loopexit264 ; 2 uses

.noexc78:                                         ; preds = %.noexc10.i.i
  store ptr %i.dx, ptr %27, align 8, !alias.scope !79
  %i.dy = load i64, ptr %i.j, align 8, !noalias !79
  store i64 %i.dy, ptr %i.bz, align 8, !alias.scope !79
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dz = phi ptr [ %i.dx, %.noexc78 ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.dt, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.ea = load i8, ptr %i.dv, align 1
  store i8 %i.ea, ptr %i.dz, align 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr nonnull align 1 %i.dv, i64 %i.dt, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i
  %i.eb = load i64, ptr %i.j, align 8, !noalias !79 ; 2 uses
  store i64 %i.eb, ptr %i.ca, align 8, !alias.scope !79
  %i.ec = load ptr, ptr %27, align 8, !alias.scope !79
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb
  store i8 0, ptr %i.ed, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28, !noalias !79
  %i.ee = load ptr, ptr %i.bu, align 8            ; 6 uses
  %i.ef = icmp eq ptr %i.ee, %i.bv
  %i.eg = load ptr, ptr %27, align 8              ; 5 uses
  %i.eh = icmp eq ptr %i.eg, %i.bz                ; 2 uses
  br i1 %i.ef, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.u
  br i1 %i.eh, label %bb.v, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.u
  br i1 %i.eh, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ei = load i64, ptr %i.ca, align 8            ; 3 uses
  %i.ej = icmp ult i64 %i.ei, 16
  call void @llvm.assume(i1 %i.ej)
  switch i64 %i.ei, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.ek = load i8, ptr %i.eg, align 1
  store i8 %i.ek, ptr %i.ee, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.eg, i64 %i.ei, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.el = load i64, ptr %i.ca, align 8            ; 2 uses
  store i64 %i.el, ptr %i.bw, align 8
  %i.em = load ptr, ptr %i.bu, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  store i8 0, ptr %i.en, align 1
  %.pre.i = load ptr, ptr %27, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.eg, ptr %i.bu, align 8
  %i.eo = load <2 x i64>, ptr %i.ca, align 8
  store <2 x i64> %i.eo, ptr %i.bw, align 8
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ep = load i64, ptr %i.bv, align 8
  store ptr %i.eg, ptr %i.bu, align 8
  %i.eq = load <2 x i64>, ptr %i.ca, align 8
  store <2 x i64> %i.eq, ptr %i.bw, align 8
  %.not.i = icmp eq ptr %i.ee, null
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ee, ptr %27, align 8
  store i64 %i.ep, ptr %i.bz, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bz, ptr %27, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.y, %bb.z
  %37 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ee, %bb.y ], [ %i.bz, %bb.z ]
  store i64 0, ptr %i.ca, align 8
  store i8 0, ptr %37, align 1
  %i.er = load ptr, ptr %27, align 8              ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.bz
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.et = load i64, ptr %i.bz, align 8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.ev = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.53)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ev, ptr %28, align 8
  %i.ew = invoke noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 0)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  store ptr %i.cb, ptr %29, align 8
  store i64 0, ptr %i.cc, align 8
  store i8 0, ptr %i.cb, align 8
  %i.ey = invoke noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE16getValueAsStringERS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.ad unwind label %bb.ak     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ez = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 8
  %.pre683 = load ptr, ptr %29, align 8           ; 3 uses
  br i1 %i.fa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread224

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80: ; preds = %bb.ad
  %i.fb = load i64, ptr %.pre683, align 1
  %i.fc = icmp ne i64 %i.fb, 4996261462835742034
  %i.fd = zext i1 %i.fc to i32
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread224

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80
  store i32 1, ptr %i.m, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread224

bb.ae:                                            ; preds = %_ZN6Assimp15XmlNodeIteratorC2ERN4pugi8xml_nodeENS0_13IterationModeE.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.af:                                            ; preds = %bb.d
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

.loopexit246:                                     ; preds = %.noexc.i
  %lpad.loopexit248 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

.loopexit.split-lp247:                            ; preds = %bb.f
  %lpad.loopexit.split-lp249 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc147.a, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, %.noexc151.a
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc188.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, %.noexc.i.i174, %.noexc182.a, %bb.co
  %lpad.loopexit234 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread, %.noexc145.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit154.thread, %.noexc176.a, %bb.ck, %bb.cl, %_ZNSt6vectorImSaImEE6resizeEm.exit.i, %.noexc180.a
  %lpad.loopexit251 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i144.invoke
  %lpad.loopexit.split-lp252 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit259:                                     ; preds = %.noexc.i73
  %lpad.loopexit261 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp260:                            ; preds = %bb.m
  %lpad.loopexit.split-lp262 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit259, %.loopexit.split-lp260, %bb.ag
  %.pn62 = phi { ptr, i32 } [ %i.fh, %bb.ag ], [ %lpad.loopexit261, %.loopexit259 ], [ %lpad.loopexit.split-lp262, %.loopexit.split-lp260 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

.loopexit264:                                     ; preds = %.noexc10.i.i
  %lpad.loopexit266 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp265:                            ; preds = %bb.r
  %lpad.loopexit.split-lp267 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp265, %.loopexit264
  %lpad.phi268 = phi { ptr, i32 } [ %lpad.loopexit266, %.loopexit264 ], [ %lpad.loopexit.split-lp267, %.loopexit.split-lp265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.am

bb.aj:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.am

bb.ak:                                            ; preds = %bb.ac
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %29, align 8              ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.cb
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.ak
  %i.fm = load i64, ptr %i.cb, align 8
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.am

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread224: ; preds = %bb.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80
  %i.fo = icmp eq ptr %.pre683, %i.cb
  br i1 %i.fo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i85: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread224
  %i.fp = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fp)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread224
  %i.fq = load i64, ptr %i.cb, align 8
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %.pre683, i64 noundef %i.fr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.ab
  %i.fs = load ptr, ptr %25, align 8              ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.bx
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.al
  %i.fu = load i64, ptr %i.bx, align 8
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit191.thread231

bb.am:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.ai
  %.pn64.pn = phi { ptr, i32 } [ %lpad.phi268, %bb.ai ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.fi, %bb.aj ] ; 2 uses
  %i.fw = load ptr, ptr %25, align 8              ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.bx
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.am
  %i.fy = load i64, ptr %i.bx, align 8
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.ah
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn62, %bb.ah ], [ %.pn64.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.pn64.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94: ; preds = %bb.j
  %.pre = load ptr, ptr %24, align 8
  %bcmp.i93 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.55, i64 %i.ct)
  %i.ga = icmp eq i32 %bcmp.i93, 0
  br i1 %i.ga, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit191.thread231

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  store ptr %i.bq, ptr %30, align 8
  store i64 0, ptr %i.br, align 8
  store i8 0, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.gb = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.47)
          to label %.noexc95 unwind label %bb.az

.noexc95:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94.thread
  store ptr %i.gb, ptr %21, align 8
  %i.gc = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %.noexc96 unwind label %bb.az

.noexc96:                                         ; preds = %.noexc95
  br i1 %i.gc, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc96
  %i.gd = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.46)
          to label %.noexc97 unwind label %bb.az  ; 2 uses

.noexc97:                                         ; preds = %bb.an
  %i.ge = load i64, ptr %i.br, align 8
  %i.gf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gd) #28
  %i.gg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef 0, i64 noundef %i.ge, ptr noundef nonnull %i.gd, i64 noundef %i.gf)
          to label %bb.ap unwind label %bb.az     ; 0 uses

bb.ao:                                            ; preds = %.noexc96
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.bb

bb.ap:                                            ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  %i.gh = load i64, ptr %i.br, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i99

bb.aq:                                            ; preds = %bb.ap
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.306, i64 noundef 1, i64 noundef 0) #29
          to label %.noexc103 unwind label %.loopexit.split-lp255

.noexc103:                                        ; preds = %bb.aq
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i99: ; preds = %bb.ap
  %i.gj = add i64 %i.gh, -1                       ; 4 uses
  store ptr %i.bs, ptr %31, align 8, !alias.scope !82
  %i.gk = load ptr, ptr %30, align 8, !noalias !82
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28, !noalias !82
  store i64 %i.gj, ptr %i.i, align 8, !noalias !82
  %i.gm = icmp ugt i64 %i.gj, 15
  br i1 %i.gm, label %.noexc10.i.i102, label %._crit_edge.i.i.i101

.noexc10.i.i102:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i99
  %i.gn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc104 unwind label %.loopexit254 ; 2 uses

.noexc104:                                        ; preds = %.noexc10.i.i102
  store ptr %i.gn, ptr %31, align 8, !alias.scope !82
  %i.go = load i64, ptr %i.i, align 8, !noalias !82
  store i64 %i.go, ptr %i.bs, align 8, !alias.scope !82
  br label %._crit_edge.i.i.i101

._crit_edge.i.i.i101:                             ; preds = %.noexc104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i99
  %i.gp = phi ptr [ %i.gn, %.noexc104 ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i99 ] ; 2 uses
  switch i64 %i.gj, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i101
  %i.gq = load i8, ptr %i.gl, align 1
  store i8 %i.gq, ptr %i.gp, align 1
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gp, ptr nonnull align 1 %i.gl, i64 %i.gj, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i.i101
  %i.gr = load i64, ptr %i.i, align 8, !noalias !82 ; 2 uses
  store i64 %i.gr, ptr %i.bt, align 8, !alias.scope !82
  %i.gs = load ptr, ptr %31, align 8, !alias.scope !82
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gr
  store i8 0, ptr %i.gt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28, !noalias !82
  %i.gu = load ptr, ptr %i.bu, align 8            ; 6 uses
  %i.gv = icmp eq ptr %i.gu, %i.bv
  %i.gw = load ptr, ptr %31, align 8              ; 5 uses
  %i.gx = icmp eq ptr %i.gw, %i.bs                ; 2 uses
  br i1 %i.gv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i112: ; preds = %bb.at
  br i1 %i.gx, label %bb.au, label %.thread.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i106: ; preds = %bb.at
  br i1 %i.gx, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i107

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i112
  %i.gy = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.gz = icmp ult i64 %i.gy, 16
  call void @llvm.assume(i1 %i.gz)
  switch i64 %i.gy, label %bb.aw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i110
    i64 1, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.ha = load i8, ptr %i.gw, align 1
  store i8 %i.ha, ptr %i.gu, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i110

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr align 1 %i.gw, i64 %i.gy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i110: ; preds = %bb.aw, %bb.av, %bb.au
  %i.hb = load i64, ptr %i.bt, align 8            ; 2 uses
  store i64 %i.hb, ptr %i.bw, align 8
  %i.hc = load ptr, ptr %i.bu, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hb
  store i8 0, ptr %i.hd, align 1
  %.pre.i111 = load ptr, ptr %31, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit114

.thread.i113:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i112
  store ptr %i.gw, ptr %i.bu, align 8
  %i.he = load <2 x i64>, ptr %i.bt, align 8
  store <2 x i64> %i.he, ptr %i.bw, align 8
  br label %bb.ay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i107: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i106
  %i.hf = load i64, ptr %i.bv, align 8
  store ptr %i.gw, ptr %i.bu, align 8
  %i.hg = load <2 x i64>, ptr %i.bt, align 8
  store <2 x i64> %i.hg, ptr %i.bw, align 8
  %.not.i108 = icmp eq ptr %i.gu, null
  br i1 %.not.i108, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i107
  store ptr %i.gu, ptr %31, align 8
  store i64 %i.hf, ptr %i.bs, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit114

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i107, %.thread.i113
  store ptr %i.bs, ptr %31, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i110, %bb.ax, %bb.ay
  %38 = phi ptr [ %.pre.i111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i110 ], [ %i.gu, %bb.ax ], [ %i.bs, %bb.ay ]
  store i64 0, ptr %i.bt, align 8
  store i8 0, ptr %38, align 1
  %i.hh = load ptr, ptr %31, align 8              ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.bs
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit114
  %i.hj = load i64, ptr %i.bs, align 8
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %bb.bb

bb.az:                                            ; preds = %.noexc97, %bb.an, %.noexc95, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94.thread
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit254:                                     ; preds = %.noexc10.i.i102
  %lpad.loopexit256 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp255:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp257 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp255, %.loopexit254
  %lpad.phi258 = phi { ptr, i32 } [ %lpad.loopexit256, %.loopexit254 ], [ %lpad.loopexit.split-lp257, %.loopexit.split-lp255 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.hm = load ptr, ptr %30, align 8              ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.bq
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.bb
  %i.ho = load i64, ptr %i.bq, align 8
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit191.thread231

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %.pn60 = phi { ptr, i32 } [ %lpad.phi258, %bb.ba ], [ %i.hl, %bb.az ]
  %i.hq = load ptr, ptr %30, align 8              ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.bq
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.bc
  %i.hs = load i64, ptr %i.bq, align 8
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125: ; preds = %bb.j
  %.pre679.a = load ptr, ptr %24, align 8
  %bcmp.i124 = call i32 @bcmp(ptr %.pre679.a, ptr nonnull @.str.56, i64 %i.ct)
  %i.hu = icmp eq i32 %bcmp.i124, 0
  br i1 %i.hu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit191.thread231

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  store ptr %i.bo, ptr %32, align 8
  store i64 0, ptr %i.bp, align 8
  store i8 0, ptr %i.bo, align 8
  %i.hv = invoke noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE16getValueAsStringERS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.bd unwind label %bb.bf     ; 0 uses

bb.bd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread
  %i.hw = load ptr, ptr %32, align 8              ; 2 uses
  %i.hx = load i64, ptr %i.bp, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hx ; 3 uses
  %i.hz = ptrtoint ptr %i.hy to i64               ; 2 uses
  br label %bb.bg

bb.be:                                            ; preds = %bb.bp
  %i.ia = load ptr, ptr %32, align 8              ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.bo
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.be
  %i.ic = load i64, ptr %i.bo, align 8
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit191.thread231

bb.bf:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bg:                                            ; preds = %bb.bd, %bb.bp
  %.050.ptr656 = phi ptr [ %.050.ptr653, %bb.bd ], [ %.050.ptr, %bb.bp ]
  %.050.idx655 = phi i64 [ 72, %bb.bd ], [ %.050.add, %bb.bp ]
  %.0654 = phi ptr [ %i.hw, %bb.bd ], [ %.0.lcssa.i.i132, %bb.bp ] ; 3 uses
  %i.if = ptrtoint ptr %.0654 to i64
  %i.ig = sub i64 %i.hz, %i.if
  %scevgep.i.i = getelementptr i8, ptr %.0654, i64 %i.ig
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %bb.bg
  %.0.i.i = phi ptr [ %.0654, %bb.bg ], [ %i.ii, %bb.bj ] ; 4 uses
  %i.ih = load i8, ptr %.0.i.i, align 1
  switch i8 %i.ih, label %bb.bk [
    i8 32, label %bb.bi
    i8 9, label %bb.bi
    i8 13, label %bb.bi
    i8 10, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %.not.i.i = icmp eq ptr %.0.i.i, %i.hy
  br i1 %.not.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.bh, !llvm.loop !41

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.bh ], [ %scevgep.i.i, %bb.bi ]
  %i.ij = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %.050.ptr656, i1 noundef zeroext true)
          to label %bb.bl unwind label %bb.bq     ; 3 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = sub i64 %i.hz, %i.ik
  %scevgep.i.i129 = getelementptr i8, ptr %i.ij, i64 %i.il
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %bb.bl
  %.0.i.i130 = phi ptr [ %i.ij, %bb.bl ], [ %i.in, %bb.bo ] ; 4 uses
  %i.im = load i8, ptr %.0.i.i130, align 1
  switch i8 %i.im, label %bb.bp [
    i8 32, label %bb.bn
    i8 9, label %bb.bn
    i8 13, label %bb.bn
    i8 10, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %.not.i.i131 = icmp eq ptr %.0.i.i130, %i.hy
  br i1 %.not.i.i131, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i.i130, i64 1
  br label %bb.bm, !llvm.loop !41

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %.0.lcssa.i.i132 = phi ptr [ %.0.i.i130, %bb.bm ], [ %scevgep.i.i129, %bb.bn ]
  %.050.add = add nuw nsw i64 %.050.idx655, 4     ; 3 uses
  %.050.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.050.add
  %.not56 = icmp eq i64 %.050.add, 136
  br i1 %.not56, label %bb.be, label %bb.bg

bb.bq:                                            ; preds = %bb.bk
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bf
  %.pn58 = phi { ptr, i32 } [ %i.io, %bb.bq ], [ %i.ie, %bb.bf ]
  %i.ip = load ptr, ptr %32, align 8              ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.bo
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.br
  %i.ir = load i64, ptr %i.bo, align 8
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138: ; preds = %bb.j
  %.pre680.a = load ptr, ptr %24, align 8         ; 3 uses
  %bcmp.i137 = call i32 @bcmp(ptr %.pre680.a, ptr nonnull @.str.47, i64 %i.ct)
  %i.it = icmp eq i32 %bcmp.i137, 0
  br i1 %i.it, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138
  invoke void @_ZN6Assimp13ColladaParser10ReadSourceERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit191.thread231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

end_hunk_1
