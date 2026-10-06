Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AMFImporter?download=true
inline.NumInlined: 911
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE8findNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
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
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #23
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit

_ZN6Assimp27find_node_by_name_predicateD2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ah = invoke noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit
  %. = select i1 %i.ah, ptr null, ptr %i.ac
  %i.ai = load ptr, ptr %2, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.g
  %i.ak = load i64, ptr %i.g, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #23
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit10

_ZN6Assimp27find_node_by_name_predicateD2Ev.exit10: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.j

bb.h:                                             ; preds = %_ZN6Assimp27find_node_by_name_predicateC2EOS0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %3, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.s
  br i1 %i.ao, label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %bb.h
  %i.ap = load i64, ptr %i.s, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #23
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit13

bb.i:                                             ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit13

_ZN6Assimp27find_node_by_name_predicateD2Ev.exit13: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11 ], [ %i.am, %bb.h ]
  %i.as = load ptr, ptr %2, align 8               ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.g
  br i1 %i.at, label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit13
  %i.au = load i64, ptr %i.g, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #23
  br label %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit16

_ZN6Assimp27find_node_by_name_predicateD2Ev.exit16: ; preds = %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a, %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit10
  %.1 = phi ptr [ %., %_ZN6Assimp27find_node_by_name_predicateD2Ev.exit10 ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11AMFImporter25ParseHelper_Decode_Base64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %i.b = alloca [4 x i8], align 1                 ; 14 uses
  %i.c = alloca [3 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 64, ptr %i.a, align 8
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load i64, ptr %i.a, align 8              ; 3 uses
  store i64 %i.f, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, ptr noundef nonnull align 1 dereferenceable(64) @.str.13, i64 64, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 3
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.a

bb.a:                                             ; preds = %.noexc.i
  %i.l = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.14)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.af unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.l) #22
  br label %bb.ae

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, %bb.f, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.e:                                             ; preds = %.noexc.i
  %i.o = load ptr, ptr %2, align 8                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 18 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i.i = icmp eq ptr %i.q, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.o, ptr %i.p, align 8
  %.pre = load i64, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.e, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi i64 [ %i.j, %bb.e ], [ %.pre, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = mul nuw i64 %i.s, 3                      ; 4 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #24
          to label %.noexc54 unwind label %bb.d

.noexc54:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 16 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.o to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, %i.t
  br i1 %i.aa, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25
          to label %.noexc55 unwind label %bb.d   ; 4 uses

.noexc55:                                         ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.ac = load ptr, ptr %2, align 8               ; 4 uses
  %i.ad = load ptr, ptr %i.p, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.h:                                             ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.ac, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %.noexc55
  %.not.i8.i = icmp eq ptr %i.ac, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ai = load ptr, ptr %i.v, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ak) #23
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.ab, ptr %2, align 8
  store ptr %i.ab, ptr %i.p, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store ptr %i.al, ptr %i.v, align 8
  %.pre100 = load i64, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %bb.g
  %i.am = phi i64 [ %.pre100, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.r, %bb.g ] ; 2 uses
  %.not4984 = icmp eq i64 %i.am, 0
  br i1 %.not4984, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.loopexit73
  %i.as = phi i8 [ undef, %.lr.ph ], [ %i.eu, %.loopexit73 ] ; 3 uses
  %i.at = phi i8 [ undef, %.lr.ph ], [ %i.ev, %.loopexit73 ] ; 3 uses
  %i.au = phi i8 [ undef, %.lr.ph ], [ %i.ew, %.loopexit73 ] ; 3 uses
  %.04187 = phi i64 [ 0, %.lr.ph ], [ %.1, %.loopexit73 ] ; 2 uses
  %.04286 = phi i64 [ %i.am, %.lr.ph ], [ %i.ex, %.loopexit73 ]
  %.04385 = phi i8 [ 0, %.lr.ph ], [ %.3, %.loopexit73 ] ; 4 uses
  %i.av = load ptr, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.04187
  %i.ax = load i8, ptr %i.aw, align 1             ; 4 uses
  %.not50 = icmp eq i8 %i.ax, 61
  br i1 %.not50, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.j, %.loopexit73
  %i.ay = phi i8 [ %i.eu, %.loopexit73 ], [ %i.as, %bb.j ]
  %i.az = phi i8 [ %i.ev, %.loopexit73 ], [ %i.at, %bb.j ]
  %i.ba = phi i8 [ %i.ew, %.loopexit73 ], [ %i.au, %bb.j ]
  %.043.lcssa = phi i8 [ %.3, %.loopexit73 ], [ %.04385, %bb.j ] ; 6 uses
  store i8 %i.ba, ptr %i.c, align 1
  store i8 %i.az, ptr %i.ap, align 1
  store i8 %i.ay, ptr %i.ar, align 1
  %.not51 = icmp eq i8 %.043.lcssa, 0
  br i1 %.not51, label %.loopexit, label %.preheader72

.preheader72:                                     ; preds = %.critedge
  %i.bb = icmp ult i8 %.043.lcssa, 4
  br i1 %i.bb, label %.lr.ph91.preheader, label %.preheader

.lr.ph91.preheader:                               ; preds = %.preheader72
  %i.bc = zext nneg i8 %.043.lcssa to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.bc
  %narrow = sub nuw nsw i8 4, %.043.lcssa
  %i.bd = zext nneg i8 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.bd, i1 false)
  br label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.be = zext i8 %i.ax to i32
  %i.bf = call i32 @isalnum(i32 noundef %i.be) #26
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = and i8 %i.ax, -5
  %i.bi = icmp eq i8 %i.bh, 43
  %spec.select.i = or i1 %i.bi, %i.bg
  br i1 %spec.select.i, label %bb.l, label %.loopexit73

bb.l:                                             ; preds = %bb.k
  %i.bj = add nuw i8 %.04385, 1                   ; 2 uses
  %i.bk = zext i8 %.04385 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bk
  store i8 %i.ax, ptr %i.bl, align 1
  %i.bm = icmp eq i8 %i.bj, 4
  br i1 %i.bm, label %.preheader79.preheader, label %.loopexit73

.preheader79.preheader:                           ; preds = %bb.l
  %i.bn = load i8, ptr %i.b, align 1
  %i.bo = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.bn, i64 noundef 0) #22
  %i.bp = trunc i64 %i.bo to i8                   ; 2 uses
  store i8 %i.bp, ptr %i.b, align 1
  %i.bq = load i8, ptr %i.an, align 1
  %i.br = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.bq, i64 noundef 0) #22
  %i.bs = trunc i64 %i.br to i8                   ; 3 uses
  store i8 %i.bs, ptr %i.an, align 1
  %i.bt = load i8, ptr %i.ao, align 1
  %i.bu = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.bt, i64 noundef 0) #22
  %i.bv = trunc i64 %i.bu to i8                   ; 3 uses
  store i8 %i.bv, ptr %i.ao, align 1
  %i.bw = load i8, ptr %i.aq, align 1
  %i.bx = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.bw, i64 noundef 0) #22
  %i.by = trunc i64 %i.bx to i8                   ; 2 uses
  store i8 %i.by, ptr %i.aq, align 1
  %i.bz = shl i8 %i.bp, 2
  %i.ca = lshr i8 %i.bs, 4
  %i.cb = and i8 %i.ca, 3
  %i.cc = or disjoint i8 %i.cb, %i.bz             ; 6 uses
  %i.cd = shl i8 %i.bs, 4
  %i.ce = lshr i8 %i.bv, 2
  %i.cf = and i8 %i.ce, 15
  %i.cg = or disjoint i8 %i.cf, %i.cd             ; 6 uses
  %i.ch = shl i8 %i.bv, 6
  %i.ci = add i8 %i.ch, %i.by                     ; 6 uses
  %i.cj = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.ck = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i, label %bb.n, label %bb.m

.loopexit74:                                      ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  store i8 %i.cc, ptr %i.c, align 1
  store i8 %i.cg, ptr %i.ap, align 1
  store i8 %i.ci, ptr %i.ar, align 1
  br label %bb.ae

.loopexit.split-lp75:                             ; preds = %bb.o
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %.preheader79.preheader
  store i8 %i.cc, ptr %i.cj, align 1
  %i.cl = load ptr, ptr %i.p, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  store ptr %i.cm, ptr %i.p, align 8
  %.pre101 = load ptr, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.n:                                             ; preds = %.preheader79.preheader
  %i.cn = load ptr, ptr %2, align 8               ; 4 uses
  %i.co = ptrtoint ptr %i.cj to i64
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 7 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775807
  br i1 %i.cr, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.w, %bb.s, %bb.n
  store i8 %i.cc, ptr %i.c, align 1
  store i8 %i.cg, ptr %i.ap, align 1
  store i8 %i.ci, ptr %i.ar, align 1
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #24
          to label %.noexc56 unwind label %.loopexit.split-lp75

.noexc56:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cs = add i64 %.sroa.speculated.i.i.i, %i.cq  ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cq
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 9223372036854775807)
  %i.cv = select i1 %i.ct, i64 9223372036854775807, i64 %i.cu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #25
          to label %.noexc57 unwind label %.loopexit74 ; 4 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cq ; 2 uses
  store i8 %i.cc, ptr %i.cx, align 1
  %i.cy = icmp sgt i64 %i.cq, 0
  br i1 %i.cy, label %bb.p, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %.noexc57
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr align 1 %i.cn, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %.noexc57
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.da = load ptr, ptr %i.v, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.dc) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.cw, ptr %2, align 8
  store ptr %i.cz, ptr %i.p, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv ; 2 uses
  store ptr %i.dd, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.m
  %i.de = phi ptr [ %i.dd, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.pre101, %bb.m ] ; 2 uses
  %i.df = phi ptr [ %i.cz, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.cm, %bb.m ] ; 2 uses
  %.not.i.1 = icmp eq ptr %i.df, %i.de
  br i1 %.not.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  store i8 %i.cg, ptr %i.df, align 1
  %i.dg = load ptr, ptr %i.p, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  store ptr %i.dh, ptr %i.p, align 8
  %.pre102 = load ptr, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.di = load ptr, ptr %2, align 8               ; 4 uses
  %i.dj = ptrtoint ptr %i.de to i64
  %i.dk = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 7 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775807
  br i1 %i.dm, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.s
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dn = add i64 %.sroa.speculated.i.i.i.1, %i.dl ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dl
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 9223372036854775807)
  %i.dq = select i1 %i.do, i64 9223372036854775807, i64 %i.dp ; 3 uses
  %.not.i.i.i.1 = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i.1)
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #25
          to label %.noexc57.1 unwind label %.loopexit74 ; 4 uses

.noexc57.1:                                       ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dl ; 2 uses
  store i8 %i.cg, ptr %i.ds, align 1
  %i.dt = icmp sgt i64 %i.dl, 0
  br i1 %i.dt, label %bb.t, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1

bb.t:                                             ; preds = %.noexc57.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr align 1 %i.di, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1: ; preds = %bb.t, %.noexc57.1
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  %.not.i17.i.i.1 = icmp eq ptr %i.di, null
  br i1 %.not.i17.i.i.1, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1
  %i.dv = load ptr, ptr %i.v, align 8
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dx) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1: ; preds = %bb.u, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1
  store ptr %i.dr, ptr %2, align 8
  store ptr %i.du, ptr %i.p, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq ; 2 uses
  store ptr %i.dy, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1:        ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1, %bb.r
  %i.dz = phi ptr [ %i.dy, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1 ], [ %.pre102, %bb.r ] ; 2 uses
  %i.ea = phi ptr [ %i.du, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1 ], [ %i.dh, %bb.r ] ; 2 uses
  %.not.i.2 = icmp eq ptr %i.ea, %i.dz
  br i1 %.not.i.2, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1
  store i8 %i.ci, ptr %i.ea, align 1
  %i.eb = load ptr, ptr %i.p, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store ptr %i.ec, ptr %i.p, align 8
  br label %.loopexit73

bb.w:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1
  %i.ed = load ptr, ptr %2, align 8               ; 4 uses
  %i.ee = ptrtoint ptr %i.dz to i64
  %i.ef = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 7 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775807
  br i1 %i.eh, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.w
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.ei = add i64 %.sroa.speculated.i.i.i.2, %i.eg ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eg
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 9223372036854775807)
  %i.el = select i1 %i.ej, i64 9223372036854775807, i64 %i.ek ; 3 uses
  %.not.i.i.i.2 = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i.2)
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #25
          to label %.noexc57.2 unwind label %.loopexit74 ; 4 uses

.noexc57.2:                                       ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eg ; 2 uses
  store i8 %i.ci, ptr %i.en, align 1
  %i.eo = icmp sgt i64 %i.eg, 0
  br i1 %i.eo, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2

bb.x:                                             ; preds = %.noexc57.2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %i.ed, i64 %i.eg, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2: ; preds = %bb.x, %.noexc57.2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %.not.i17.i.i.2 = icmp eq ptr %i.ed, null
  br i1 %.not.i17.i.i.2, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2
  %i.eq = load ptr, ptr %i.v, align 8
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = sub i64 %i.er, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.es) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2
  store ptr %i.em, ptr %2, align 8
  store ptr %i.ep, ptr %i.p, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  store ptr %i.et, ptr %i.v, align 8
  br label %.loopexit73

.loopexit73:                                      ; preds = %bb.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2, %bb.k, %bb.l
  %i.eu = phi i8 [ %i.as, %bb.k ], [ %i.as, %bb.l ], [ %i.ci, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.ci, %bb.v ] ; 2 uses
  %i.ev = phi i8 [ %i.at, %bb.k ], [ %i.at, %bb.l ], [ %i.cg, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.cg, %bb.v ] ; 2 uses
  %i.ew = phi i8 [ %i.au, %bb.k ], [ %i.au, %bb.l ], [ %i.cc, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.cc, %bb.v ] ; 2 uses
  %.3 = phi i8 [ %.04385, %bb.k ], [ %i.bj, %bb.l ], [ 0, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ 0, %bb.v ] ; 2 uses
  %.1 = add nuw i64 %.04187, 1
  %i.ex = add i64 %.04286, -1                     ; 2 uses
  %.not49 = icmp eq i64 %i.ex, 0
  br i1 %.not49, label %.critedge, label %bb.j, !llvm.loop !64

.preheader:                                       ; preds = %.lr.ph91.preheader, %.preheader72
  %i.ey = load i8, ptr %i.b, align 1
  %i.ez = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.ey, i64 noundef 0) #22
  %i.fa = trunc i64 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.fc, i64 noundef 0) #22
  %i.fe = trunc i64 %i.fd to i8                   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.fg, i64 noundef 0) #22
  %i.fi = trunc i64 %i.fh to i8                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.fk, i64 noundef 0) #22
  %i.fm = trunc i64 %i.fl to i8
  %i.fn = shl i8 %i.fa, 2
  %i.fo = lshr i8 %i.fe, 4
  %i.fp = and i8 %i.fo, 3
  %i.fq = or disjoint i8 %i.fp, %i.fn
  store i8 %i.fq, ptr %i.c, align 1
  %i.fr = shl i8 %i.fe, 4
  %i.fs = lshr i8 %i.fi, 2
  %i.ft = and i8 %i.fs, 15
  %i.fu = or disjoint i8 %i.ft, %i.fr
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.fu, ptr %i.fv, align 1
  %i.fw = shl i8 %i.fi, 6
  %i.fx = add i8 %i.fw, %i.fm
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.fx, ptr %i.fy, align 1
  %i.fz = zext i8 %.043.lcssa to i32
  %i.ga = add nsw i32 %i.fz, -1
  %.not95 = icmp eq i8 %.043.lcssa, 1
  br i1 %.not95, label %.loopexit, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.preheader
  %.pre103 = load ptr, ptr %i.p, align 8
  %.pre105 = load ptr, ptr %i.v, align 8
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67
  %4 = phi ptr [ %5, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67 ], [ %.pre105, %.lr.ph94.preheader ] ; 2 uses
  %i.gb = phi ptr [ %i.gz, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67 ], [ %.pre103, %.lr.ph94.preheader ] ; 2 uses
  %.093 = phi i8 [ %i.ha, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67 ], [ 0, %.lr.ph94.preheader ] ; 2 uses
  %i.gc = zext i8 %.093 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gc ; 2 uses
  %.not.i58 = icmp eq ptr %i.gb, %4
  br i1 %.not.i58, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph94
  %i.ge = load i8, ptr %i.gd, align 1
  store i8 %i.ge, ptr %i.gb, align 1
  %i.gf = load ptr, ptr %i.p, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  store ptr %i.gg, ptr %i.p, align 8
  %.pre104 = load ptr, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67

bb.aa:                                            ; preds = %.lr.ph94
  %i.gh = load ptr, ptr %2, align 8               ; 4 uses
  %i.gi = ptrtoint ptr %4 to i64
  %i.gj = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 7 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775807
  br i1 %i.gl, label %bb.ab, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #24
          to label %.noexc65 unwind label %.loopexit.split-lp

.noexc65:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59: ; preds = %bb.aa
  %.sroa.speculated.i.i.i60 = call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gm = add i64 %.sroa.speculated.i.i.i60, %i.gk ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gk
  %i.go = call i64 @llvm.umin.i64(i64 %i.gm, i64 9223372036854775807)
  %i.gp = select i1 %i.gn, i64 9223372036854775807, i64 %i.go ; 3 uses
  %.not.i.i.i61 = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %.not.i.i.i61)
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #25
          to label %.noexc66 unwind label %.loopexit71 ; 4 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gk ; 2 uses
  %i.gs = load i8, ptr %i.gd, align 1
  store i8 %i.gs, ptr %i.gr, align 1
  %i.gt = icmp sgt i64 %i.gk, 0
  br i1 %i.gt, label %bb.ac, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62

bb.ac:                                            ; preds = %.noexc66
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr align 1 %i.gh, i64 %i.gk, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62: ; preds = %bb.ac, %.noexc66
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 1 ; 2 uses
  %.not.i17.i.i63 = icmp eq ptr %i.gh, null
  br i1 %.not.i17.i.i63, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62
  %i.gv = load ptr, ptr %i.v, align 8
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gx) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64: ; preds = %bb.ad, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62
  store ptr %i.gq, ptr %2, align 8
  store ptr %i.gu, ptr %i.p, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gp ; 2 uses
  store ptr %i.gy, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67

_ZNSt6vectorIhSaIhEE9push_backERKh.exit67:        ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64, %bb.z
  %5 = phi ptr [ %i.gy, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64 ], [ %.pre104, %bb.z ]
  %i.gz = phi ptr [ %i.gu, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64 ], [ %i.gg, %bb.z ]
  %i.ha = add nuw i8 %.093, 1                     ; 2 uses
  %i.hb = zext i8 %i.ha to i32
  %i.hc = icmp samesign ugt i32 %i.ga, %i.hb
  br i1 %i.hc, label %.lr.ph94, label %.loopexit, !llvm.loop !65

.loopexit71:                                      ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67, %_ZNSt6vectorIhSaIhEE7reserveEm.exit, %.preheader, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.hd = load ptr, ptr %3, align 8               ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.d
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.hf = load i64, ptr %i.d, align 8
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.ae:                                            ; preds = %.loopexit71, %.loopexit.split-lp, %.loopexit74, %.loopexit.split-lp75, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.m, %bb.c ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ], [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit, %.loopexit71 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.hh = load ptr, ptr %3, align 8               ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.d
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.ae
  %i.hj = load i64, ptr %i.d, align 8
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn

bb.af:                                            ; preds = %bb.b
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #22
  resume { ptr, i32 } %i.p
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11AMFImporter9ParseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8
  store i16 25202, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.c, align 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.d, ptr noundef nonnull %i.a)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.c, !inline_history !66 ; 6 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %3, align 8                ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.k = load i64, ptr %i.a, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(25) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.17)
          to label %bb.b unwind label %.thread45

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
  unreachable

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %3, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.c
  %i.q = load i64, ptr %i.a, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit36

.thread45:                                        ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #22
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit36

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %bb.e unwind label %.thread48  ; 6 uses

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  invoke void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.t, ptr %i.w, align 8
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5parseEPNS_8IOStreamE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull %i.h)
          to label %bb.g unwind label %.thread48

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.w, align 8              ; 4 uses
  br i1 %i.x, label %._crit_edge.i.i22, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %bb.i

end_hunk_0
