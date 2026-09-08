Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/adjacency_matrix?download=true
inline.NumInlined: 3282
inline.NumDeleted: 744
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN29AdjacencyMatrix_Vertices_Test8TestBodyEv:bb.a
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217: ; preds = %bb.cr
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !53
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit220

_ZN7testing15AssertionResultD2Ev.exit220:         ; preds = %bb.cq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit220, %_ZN7testing15AssertionResultD2Ev.exit174, %_ZN7testing15AssertionResultD2Ev.exit195, %_ZN7testing15AssertionResultD2Ev.exit129, %_ZN7testing15AssertionResultD2Ev.exit151, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit105
  ret void

bb.cs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit215, %bb.cg
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %_ZN7testing7MessageD2Ev.exit215 ], [ %i.ge, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit223

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit223: ; preds = %bb.br, %bb.cf, %bb.cs, %bb.bd, %bb.ap, %bb.o, %bb.ab
  %.pn67.pn.pn.pn.pn250 = phi { ptr, i32 } [ %.pn47.pn.pn, %bb.ab ], [ %.pn.pn.pn, %bb.o ], [ %.pn51.pn.pn, %bb.ap ], [ %.pn55.pn.pn, %bb.bd ], [ %.pn67.pn.pn, %bb.cs ], [ %.pn63.pn.pn, %bb.cf ], [ %.pn59.pn.pn, %bb.br ]
  resume { ptr, i32 } %.pn67.pn.pn.pn.pn250
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN34AdjacencyMatrix_EdgesDirected_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %9 = alloca %"struct.std::pair.21", align 8     ; 6 uses
  %10 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"struct.entt::input_iterator_pointer", align 8 ; 6 uses
  %15 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.entt::internal::edge_iterator", align 8 ; 10 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %bb.a
  %.pre = load i8, ptr %1, align 8, !tbaa !43, !range !44
  %i.c = trunc nuw i8 %.pre to i1
  br i1 %i.c, label %.critedge, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i62, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.h = phi ptr [ %i.g, %bb.e ], [ @.str.108, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 301, ptr noundef %i.h)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.i = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !46   ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.m, null
  br i1 %.not.i.i63, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit66

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.v, null
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  br label %bb.n

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %.not.i.i67 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i67, label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #28
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  store i64 1, ptr %i.b, align 8, !tbaa !33, !noalias !248
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %i.ag, align 8, !tbaa !33, !noalias !249
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !250
  %.not1.i.i.i92 = icmp eq i64 %i.ah, 0           ; 4 uses
  %spec.select = zext i1 %.not1.i.i.i92 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit unwind label %bb.o

_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit: ; preds = %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit
  %i.ai = load i8, ptr %4, align 8, !tbaa !43, !range !44, !noundef !45
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge56, label %bb.p

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit66, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit66 ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189

bb.o:                                             ; preds = %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i106, label %_ZNK7testing15AssertionResult15failure_messageEv.exit107, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit107

_ZNK7testing15AssertionResult15failure_messageEv.exit107: ; preds = %bb.r, %bb.q
  %i.ao = phi ptr [ %i.an, %bb.r ], [ @.str.108, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 307, ptr noundef %i.ao)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit107
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ap = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i108, label %_ZN7testing7MessageD2Ev.exit110, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %bb.t
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit110

_ZN7testing7MessageD2Ev.exit110:                  ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !46 ; 4 uses
  %.not.i.i111 = icmp eq ptr %i.at, null
  br i1 %.not.i.i111, label %_ZN7testing15AssertionResultD2Ev.exit115, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit110
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112: ; preds = %bb.u
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !53
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit115

_ZN7testing15AssertionResultD2Ev.exit115:         ; preds = %_ZN7testing7MessageD2Ev.exit110, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit118

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit107
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %i.ba, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bc = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.y
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117, %bb.y, %bb.v
  %.pn36.pn = phi { ptr, i32 } [ %i.az, %bb.v ], [ %.pn36, %bb.y ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.ac

.critedge56:                                      ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46 ; 4 uses
  %.not.i.i119 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i119, label %.lr.ph.i.i.i125.preheader, label %bb.z

bb.z:                                             ; preds = %.critedge56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120: ; preds = %bb.z
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #28
  br label %.lr.ph.i.i.i125.preheader

.lr.ph.i.i.i125.preheader:                        ; preds = %.critedge56, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  %.sroa.8213.0..sroa_idx216 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %.sroa.8213.0..sroa_idx216, align 8, !tbaa !33
  %.sroa.10218.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %.sroa.12223.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 9, ptr %.sroa.12223.0..sroa_idx226, align 8, !tbaa !33
  %.sroa.14.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %.sroa.14.0..sroa_idx230, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bn = select i1 %.not1.i.i.i92, i64 2, i64 1  ; 10 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126273 = icmp eq i64 %i.bp, 0
  br i1 %.not1.i.i.i126273, label %.lr.ph.i.i.i125, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

.lr.ph.i.i.i125:                                  ; preds = %.lr.ph.i.i.i125.preheader
  %i.bq = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126 = icmp eq i64 %i.bs, 0
  br i1 %.not1.i.i.i126, label %.lr.ph.i.i.i125.1, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i125.1:                                ; preds = %.lr.ph.i.i.i125
  %i.bt = add nuw nsw i64 %i.bn, 2                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.1 = icmp eq i64 %i.bv, 0
  br i1 %.not1.i.i.i126.1, label %.lr.ph.i.i.i125.2, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i125.2:                                ; preds = %.lr.ph.i.i.i125.1
  %i.bw = add nuw nsw i64 %i.bn, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.2 = icmp eq i64 %i.by, 0
  br i1 %.not1.i.i.i126.2, label %.lr.ph.i.i.i125.3, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i125.3:                                ; preds = %.lr.ph.i.i.i125.2
  %i.bz = or disjoint i64 %i.bn, 4                ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.3 = icmp eq i64 %i.cb, 0
  br i1 %.not1.i.i.i126.3, label %.lr.ph.3, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.3:                                         ; preds = %.lr.ph.i.i.i125.3
  %22 = add nuw nsw i64 %i.bn, 5                  ; 3 uses
  %.not.i.i.i127.3 = icmp eq i64 %22, 9
  br i1 %.not.i.i.i127.3, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i125.4

.lr.ph.i.i.i125.4:                                ; preds = %.lr.ph.3
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %22
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.4 = icmp eq i64 %i.cd, 0
  br i1 %.not1.i.i.i126.4, label %.lr.ph.4, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.4:                                         ; preds = %.lr.ph.i.i.i125.4
  %23 = add nuw nsw i64 %i.bn, 6                  ; 3 uses
  %.not.i.i.i127.4 = icmp eq i64 %23, 9
  br i1 %.not.i.i.i127.4, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i125.5

.lr.ph.i.i.i125.5:                                ; preds = %.lr.ph.4
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %23
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.5 = icmp eq i64 %i.cf, 0
  br i1 %.not1.i.i.i126.5, label %.lr.ph.5, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.5:                                         ; preds = %.lr.ph.i.i.i125.5
  %24 = add nuw nsw i64 %i.bn, 7                  ; 3 uses
  %.not.i.i.i127.5 = icmp eq i64 %24, 9
  br i1 %.not.i.i.i127.5, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i125.6

.lr.ph.i.i.i125.6:                                ; preds = %.lr.ph.5
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %24
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.6 = icmp eq i64 %i.ch, 0
  br i1 %.not1.i.i.i126.6, label %.lr.ph.6, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.6:                                         ; preds = %.lr.ph.i.i.i125.6
  br i1 %.not1.i.i.i92, label %.lr.ph.i.i.i125.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge

.lr.ph.i.i.i125.7:                                ; preds = %.lr.ph.6
  %i.ci = or disjoint i64 %i.bn, 8                ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.7 = icmp eq i64 %i.ck, 0
  br i1 %.not1.i.i.i126.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i125.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i125, %.lr.ph.i.i.i125.1, %.lr.ph.i.i.i125.2, %.lr.ph.i.i.i125.3, %.lr.ph.i.i.i125.4, %.lr.ph.i.i.i125.5, %.lr.ph.i.i.i125.6, %.lr.ph.i.i.i125.7, %.lr.ph.i.i.i125.preheader, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge
  %i.cl = phi i64 [ 9, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge ], [ %i.bn, %.lr.ph.i.i.i125.preheader ], [ %i.bq, %.lr.ph.i.i.i125 ], [ %i.bt, %.lr.ph.i.i.i125.1 ], [ %i.bw, %.lr.ph.i.i.i125.2 ], [ %i.bz, %.lr.ph.i.i.i125.3 ], [ %22, %.lr.ph.i.i.i125.4 ], [ %23, %.lr.ph.i.i.i125.5 ], [ %24, %.lr.ph.i.i.i125.6 ], [ %i.ci, %.lr.ph.i.i.i125.7 ] ; 5 uses
  store i64 %i.cl, ptr %.sroa.10218.0..sroa_idx221, align 8
  store i64 0, ptr %9, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.cn, align 8
  br i1 %.not1.i.i.i92, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

bb.ab:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.co = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.critedge58, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit118, %bb.o
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit118 ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.as

bb.ae:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.ag, %bb.af
  %i.cu = phi ptr [ %i.ct, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 311, ptr noundef %i.cu)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cv = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.ai
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(128) %i.cv) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cz = load ptr, ptr %i.cr, align 8, !tbaa !46 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i135, label %_ZN7testing15AssertionResultD2Ev.exit139, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit134
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !50 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.aj
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !53
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit139

_ZN7testing15AssertionResultD2Ev.exit139:         ; preds = %_ZN7testing7MessageD2Ev.exit134, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bu

bb.ak:                                            ; preds = %bb.ae
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn40 = phi { ptr, i32 } [ %i.dh, %bb.am ], [ %i.dg, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.di = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.di, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.an
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %bb.an, %bb.ak
  %.pn40.pn = phi { ptr, i32 } [ %i.df, %bb.ak ], [ %.pn40, %bb.an ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.as

.critedge58:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !46 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i143, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge58
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !50 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.ao
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !53
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, %.critedge58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.dt = udiv i64 %i.cl, 3
  %i.du = urem i64 %i.cl, 3                       ; 2 uses
  store i64 %i.dt, ptr %14, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.du, ptr %i.dv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i64 1, ptr %15, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 2, ptr %i.dw, align 8
  %.off = add i64 %i.cl, -3
  %i.dx = icmp ult i64 %.off, 3
  %i.dy = icmp eq i64 %i.du, 2
  %i.dz = and i1 %i.dx, %i.dy
  br i1 %i.dz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152 unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152 unwind label %bb.at

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ea = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %.critedge60, label %bb.au

bb.as:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %bb.ad
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %i.cq, %bb.ad ]
end_hunk_0
begin_hunk_1_@_ZN46AdjacencyMatrix_EdgesBackwardOnlyDirected_Test8TestBodyEv:bb.a
bb.bg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit134, %bb.at
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %_ZN7testing7MessageD2Ev.exit134 ], [ %i.dm, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.as
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.bg ], [ %.pn34.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit141

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit141: ; preds = %bb.bh, %bb.ac, %bb.n
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %bb.bh ], [ %.pn30.pn.pn, %bb.ac ], [ %.pn.pn.pn, %bb.n ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #28
  resume { ptr, i32 } %.pn38.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN36AdjacencyMatrix_EdgesUndirected_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %9 = alloca %"struct.std::pair.21", align 8     ; 6 uses
  %10 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"struct.entt::input_iterator_pointer", align 8 ; 6 uses
  %15 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %19 = alloca %"struct.entt::input_iterator_pointer", align 8 ; 6 uses
  %20 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %24 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %25 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %29 = alloca %"class.entt::internal::edge_iterator", align 8 ; 10 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27 ; 25 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %bb.a
  %.pre = load i8, ptr %1, align 8, !tbaa !43, !range !44
  %i.c = trunc nuw i8 %.pre to i1
  br i1 %i.c, label %.critedge, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i86, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.h = phi ptr [ %i.g, %bb.e ], [ @.str.108, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 337, ptr noundef %i.h)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.i = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !46   ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.m, null
  br i1 %.not.i.i87, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit90

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.v, null
  br i1 %.not.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit90

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  br label %bb.n

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %.not.i.i91 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i91, label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #28
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit

_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.ag, align 8, !tbaa !33, !noalias !269
  store i64 1, ptr %i.b, align 8, !tbaa !33, !noalias !269
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 1, ptr %i.ah, align 8, !tbaa !33, !noalias !270
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %i.ai, align 8, !tbaa !33, !noalias !270
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !271
  %.not1.i.i.i116 = icmp eq i64 %i.aj, 0          ; 4 uses
  %spec.select = zext i1 %.not1.i.i.i116 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit unwind label %bb.o

_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit: ; preds = %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit
  %i.ak = load i8, ptr %4, align 8, !tbaa !43, !range !44, !noundef !45
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.critedge76, label %bb.p

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit90, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit90 ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit273

bb.o:                                             ; preds = %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.r, %bb.q
  %i.aq = phi ptr [ %i.ap, %bb.r ], [ @.str.108, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 343, ptr noundef %i.aq)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ar = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.t
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(128) %i.ar) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !46 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.av, null
  br i1 %.not.i.i135, label %_ZN7testing15AssertionResultD2Ev.exit139, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit134
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.u
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !53
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit139

_ZN7testing15AssertionResultD2Ev.exit139:         ; preds = %_ZN7testing7MessageD2Ev.exit134, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn48 = phi { ptr, i32 } [ %i.bd, %bb.x ], [ %i.bc, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.be = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.be, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.y
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(128) %i.be) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %bb.y, %bb.v
  %.pn48.pn = phi { ptr, i32 } [ %i.bb, %bb.v ], [ %.pn48, %bb.y ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.ac

.critedge76:                                      ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i143, label %.lr.ph.i.i.i149.preheader, label %bb.z

bb.z:                                             ; preds = %.critedge76
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.z
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !53
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 32) #28
  br label %.lr.ph.i.i.i149.preheader

.lr.ph.i.i.i149.preheader:                        ; preds = %.critedge76, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  %.sroa.8301.0..sroa_idx304 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %.sroa.8301.0..sroa_idx304, align 8, !tbaa !33
  %.sroa.10306.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %.sroa.12311.0..sroa_idx314 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 9, ptr %.sroa.12311.0..sroa_idx314, align 8, !tbaa !33
  %.sroa.14.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %.sroa.14.0..sroa_idx318, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bp = select i1 %.not1.i.i.i116, i64 2, i64 1 ; 10 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150361 = icmp eq i64 %i.br, 0
  br i1 %.not1.i.i.i150361, label %.lr.ph.i.i.i149, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

.lr.ph.i.i.i149:                                  ; preds = %.lr.ph.i.i.i149.preheader
  %i.bs = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150 = icmp eq i64 %i.bu, 0
  br i1 %.not1.i.i.i150, label %.lr.ph.i.i.i149.1, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i149.1:                                ; preds = %.lr.ph.i.i.i149
  %i.bv = add nuw nsw i64 %i.bp, 2                ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.1 = icmp eq i64 %i.bx, 0
  br i1 %.not1.i.i.i150.1, label %.lr.ph.i.i.i149.2, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i149.2:                                ; preds = %.lr.ph.i.i.i149.1
  %i.by = add nuw nsw i64 %i.bp, 3                ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.2 = icmp eq i64 %i.ca, 0
  br i1 %.not1.i.i.i150.2, label %.lr.ph.i.i.i149.3, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i149.3:                                ; preds = %.lr.ph.i.i.i149.2
  %i.cb = or disjoint i64 %i.bp, 4                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.3 = icmp eq i64 %i.cd, 0
  br i1 %.not1.i.i.i150.3, label %.lr.ph.3, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.3:                                         ; preds = %.lr.ph.i.i.i149.3
  %32 = add nuw nsw i64 %i.bp, 5                  ; 3 uses
  %.not.i.i.i151.3 = icmp eq i64 %32, 9
  br i1 %.not.i.i.i151.3, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i149.4

.lr.ph.i.i.i149.4:                                ; preds = %.lr.ph.3
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.4 = icmp eq i64 %i.cf, 0
  br i1 %.not1.i.i.i150.4, label %.lr.ph.4, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.4:                                         ; preds = %.lr.ph.i.i.i149.4
  %33 = add nuw nsw i64 %i.bp, 6                  ; 3 uses
  %.not.i.i.i151.4 = icmp eq i64 %33, 9
  br i1 %.not.i.i.i151.4, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i149.5

.lr.ph.i.i.i149.5:                                ; preds = %.lr.ph.4
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %33
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.5 = icmp eq i64 %i.ch, 0
  br i1 %.not1.i.i.i150.5, label %.lr.ph.5, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.5:                                         ; preds = %.lr.ph.i.i.i149.5
  %34 = add nuw nsw i64 %i.bp, 7                  ; 3 uses
  %.not.i.i.i151.5 = icmp eq i64 %34, 9
  br i1 %.not.i.i.i151.5, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i149.6

.lr.ph.i.i.i149.6:                                ; preds = %.lr.ph.5
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %34
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.6 = icmp eq i64 %i.cj, 0
  br i1 %.not1.i.i.i150.6, label %.lr.ph.6, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.6:                                         ; preds = %.lr.ph.i.i.i149.6
  br i1 %.not1.i.i.i116, label %.lr.ph.i.i.i149.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge

.lr.ph.i.i.i149.7:                                ; preds = %.lr.ph.6
  %i.ck = or disjoint i64 %i.bp, 8                ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.7 = icmp eq i64 %i.cm, 0
  br i1 %.not1.i.i.i150.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i149.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i149, %.lr.ph.i.i.i149.1, %.lr.ph.i.i.i149.2, %.lr.ph.i.i.i149.3, %.lr.ph.i.i.i149.4, %.lr.ph.i.i.i149.5, %.lr.ph.i.i.i149.6, %.lr.ph.i.i.i149.7, %.lr.ph.i.i.i149.preheader, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge
  %i.cn = phi i64 [ 9, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge ], [ %i.bp, %.lr.ph.i.i.i149.preheader ], [ %i.bs, %.lr.ph.i.i.i149 ], [ %i.bv, %.lr.ph.i.i.i149.1 ], [ %i.by, %.lr.ph.i.i.i149.2 ], [ %i.cb, %.lr.ph.i.i.i149.3 ], [ %32, %.lr.ph.i.i.i149.4 ], [ %33, %.lr.ph.i.i.i149.5 ], [ %34, %.lr.ph.i.i.i149.6 ], [ %i.ck, %.lr.ph.i.i.i149.7 ] ; 5 uses
  store i64 %i.cn, ptr %.sroa.10306.0..sroa_idx309, align 8
  store i64 0, ptr %9, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.cp, align 8
  br i1 %.not1.i.i.i116, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

bb.ab:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.cq = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %.critedge78, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %bb.o
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %i.am, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit273

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.as

bb.ae:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i154, label %_ZNK7testing15AssertionResult15failure_messageEv.exit155, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit155

_ZNK7testing15AssertionResult15failure_messageEv.exit155: ; preds = %bb.ag, %bb.af
  %i.cw = phi ptr [ %i.cv, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 347, ptr noundef %i.cw)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit155
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cx = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.ai
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !46 ; 4 uses
  %.not.i.i159 = icmp eq ptr %i.db, null
  br i1 %.not.i.i159, label %_ZN7testing15AssertionResultD2Ev.exit163, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit158
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !50 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160: ; preds = %bb.aj
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !53
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit163

_ZN7testing15AssertionResultD2Ev.exit163:         ; preds = %_ZN7testing7MessageD2Ev.exit158, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.dc

bb.ak:                                            ; preds = %bb.ae
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit166

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit155
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn52 = phi { ptr, i32 } [ %i.dj, %bb.am ], [ %i.di, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dk = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %bb.an
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !21
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(128) %i.dk) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165, %bb.an, %bb.ak
  %.pn52.pn = phi { ptr, i32 } [ %i.dh, %bb.ak ], [ %.pn52, %bb.an ], [ %.pn52, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.as

.critedge78:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !46 ; 4 uses
  %.not.i.i167 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i167, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge78
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !50 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168: ; preds = %bb.ao
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !53
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, %.critedge78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.dv = udiv i64 %i.cn, 3
  %i.dw = urem i64 %i.cn, 3                       ; 2 uses
  store i64 %i.dv, ptr %14, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.dw, ptr %i.dx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i64 1, ptr %15, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.dy, align 8
  %.off = add i64 %i.cn, -3
  %i.dz = icmp ult i64 %.off, 3
  %i.ea = icmp eq i64 %i.dw, 0
  %i.eb = and i1 %i.dz, %i.ea
  br i1 %i.eb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176 unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176 unwind label %bb.at

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ec = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.critedge80, label %bb.au

bb.as:                                            ; preds = %_ZN7testing7MessageD2Ev.exit166, %bb.ad
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %_ZN7testing7MessageD2Ev.exit166 ], [ %i.cs, %bb.ad ]
end_hunk_1
begin_hunk_2_@_ZN36AdjacencyMatrix_EdgesUndirected_Test8TestBodyEv:bb.a
  %i.jc = phi i64 [ %i.jd, %bb.co ], [ %i.ix, %.lr.ph.i.i252 ]
  %i.jd = add i64 %i.jc, 1                        ; 5 uses
  %.not.i.i254 = icmp eq i64 %i.jd, 9
  br i1 %.not.i.i254, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread438, label %bb.co, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread438: ; preds = %.lr.ph466
  store i64 %i.jd, ptr %.sroa.10306.0..sroa_idx309, align 8
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread: ; preds = %bb.cn, %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread438
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit258 unwind label %bb.cq

._crit_edge:                                      ; preds = %bb.co, %.lr.ph.i.i252
  %.lcssa = phi i64 [ %.sroa.10306.0..sroa_idx309.promoted446, %.lr.ph.i.i252 ], [ %i.jd, %bb.co ]
  store i64 %.lcssa, ptr %.sroa.10306.0..sroa_idx309, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  store ptr %i.a, ptr %29, align 8, !tbaa !64
  %.sroa.21.40..sroa_idx324 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 3, ptr %.sroa.21.40..sroa_idx324, align 8, !tbaa !33
  %.sroa.23.40..sroa_idx328 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 9, ptr %.sroa.23.40..sroa_idx328, align 8, !tbaa !33
  %.sroa.25.40..sroa_idx332 = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i64 9, ptr %.sroa.25.40..sroa_idx332, align 8, !tbaa !33
  %.sroa.27.40..sroa_idx336 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i64 1, ptr %.sroa.27.40..sroa_idx336, align 8, !tbaa !33
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %29)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit258 unwind label %bb.cq

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit258: ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.je = load i8, ptr %28, align 8, !tbaa !43, !range !44, !noundef !45
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.da, label %bb.cr

bb.cp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit245, %bb.cb
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %_ZN7testing7MessageD2Ev.exit245 ], [ %i.hu, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.de

bb.cq:                                            ; preds = %._crit_edge, %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.dd

bb.cr:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit258
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cs unwind label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  %i.jh = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i259 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i259, label %_ZNK7testing15AssertionResult15failure_messageEv.exit260, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit260

_ZNK7testing15AssertionResult15failure_messageEv.exit260: ; preds = %bb.ct, %bb.cs
  %i.jk = phi ptr [ %i.jj, %bb.ct ], [ @.str.108, %bb.cs ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 352, ptr noundef %i.jk)
          to label %bb.cu unwind label %bb.cx

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit260
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.jl = load ptr, ptr %30, align 8, !tbaa !52   ; 3 uses
  %.not.i.i261 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i261, label %_ZN7testing7MessageD2Ev.exit263, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i262

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i262: ; preds = %bb.cv
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !21
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(128) %i.jl) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit263

_ZN7testing7MessageD2Ev.exit263:                  ; preds = %bb.cv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.da

bb.cw:                                            ; preds = %bb.cr
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit266

bb.cx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit260
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cu
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #26
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn68 = phi { ptr, i32 } [ %i.jr, %bb.cy ], [ %i.jq, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.js = load ptr, ptr %30, align 8, !tbaa !52   ; 3 uses
  %.not.i.i264 = icmp eq ptr %i.js, null
  br i1 %.not.i.i264, label %_ZN7testing7MessageD2Ev.exit266, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265: ; preds = %bb.cz
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !21
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(128) %i.js) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit266

_ZN7testing7MessageD2Ev.exit266:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265, %bb.cz, %bb.cw
  %.pn68.pn = phi { ptr, i32 } [ %i.jp, %bb.cw ], [ %.pn68, %bb.cz ], [ %.pn68, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #26
  br label %bb.dd

bb.da:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit258, %_ZN7testing7MessageD2Ev.exit263
  %i.jw = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !46 ; 4 uses
  %.not.i.i267 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i267, label %_ZN7testing15AssertionResultD2Ev.exit271, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !50 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268: ; preds = %bb.db
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !53
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit271

_ZN7testing15AssertionResultD2Ev.exit271:         ; preds = %bb.da, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit242, %_ZN7testing15AssertionResultD2Ev.exit212, %_ZN7testing15AssertionResultD2Ev.exit186, %_ZN7testing15AssertionResultD2Ev.exit163, %_ZN7testing15AssertionResultD2Ev.exit271
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit139, %_ZN7testing15AssertionResultD2Ev.exit, %bb.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #28
  ret void

bb.dd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit266, %bb.cq
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %_ZN7testing7MessageD2Ev.exit266 ], [ %i.jg, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.cp, %bb.ca, %bb.bj, %bb.as
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn, %bb.dd ], [ %.pn64.pn.pn, %bb.cp ], [ %.pn60.pn.pn, %bb.ca ], [ %.pn56.pn.pn, %bb.bj ], [ %.pn52.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit273

_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit273: ; preds = %bb.de, %bb.ac, %bb.n
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn, %bb.de ], [ %.pn48.pn.pn, %bb.ac ], [ %.pn.pn.pn, %bb.n ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #28
  resume { ptr, i32 } %.pn68.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN48AdjacencyMatrix_EdgesBackwardOnlyUndirected_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %9 = alloca %"struct.std::pair.21", align 8     ; 6 uses
  %10 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %15 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %bb.a
  %.pre = load i8, ptr %1, align 8, !tbaa !43, !range !44
  %i.c = trunc nuw i8 %.pre to i1
  br i1 %i.c, label %.critedge, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i62, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.h = phi ptr [ %i.g, %bb.e ], [ @.str.108, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 359, ptr noundef %i.h)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.i = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !46   ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.m, null
  br i1 %.not.i.i63, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit66

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.v, null
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  br label %bb.n

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %.not.i.i67 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i67, label %.lr.ph.i.i.i78.preheader, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #28
  br label %.lr.ph.i.i.i78.preheader

.lr.ph.i.i.i78.preheader:                         ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  store i64 1, ptr %i.b, align 8, !tbaa !33, !noalias !281
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.ag, align 8, !tbaa !33, !noalias !281
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !282
  %.not1.i.i.i80 = icmp eq i64 %i.ah, 0           ; 3 uses
  %spec.select = zext i1 %.not1.i.i.i80 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit unwind label %bb.o

_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit: ; preds = %.lr.ph.i.i.i78.preheader
  %i.ai = load i8, ptr %4, align 8, !tbaa !43, !range !44, !noundef !45
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge56, label %bb.p

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit66, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit66 ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit183

bb.o:                                             ; preds = %.lr.ph.i.i.i78.preheader
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i94, label %_ZNK7testing15AssertionResult15failure_messageEv.exit95, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit95

_ZNK7testing15AssertionResult15failure_messageEv.exit95: ; preds = %bb.r, %bb.q
  %i.ao = phi ptr [ %i.an, %bb.r ], [ @.str.108, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 364, ptr noundef %i.ao)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ap = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.t
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !46 ; 4 uses
  %.not.i.i99 = icmp eq ptr %i.at, null
  br i1 %.not.i.i99, label %_ZN7testing15AssertionResultD2Ev.exit103, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit98
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100: ; preds = %bb.u
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !53
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit103

_ZN7testing15AssertionResultD2Ev.exit103:         ; preds = %_ZN7testing7MessageD2Ev.exit98, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit106

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %i.ba, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bc = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.y
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, %bb.y, %bb.v
  %.pn36.pn = phi { ptr, i32 } [ %i.az, %bb.v ], [ %.pn36, %bb.y ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.ac

.critedge56:                                      ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46 ; 4 uses
  %.not.i.i107 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i107, label %.lr.ph.i.i.i113.preheader, label %bb.z

bb.z:                                             ; preds = %.critedge56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i108: ; preds = %bb.z
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i108
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #28
  br label %.lr.ph.i.i.i113.preheader

.lr.ph.i.i.i113.preheader:                        ; preds = %.critedge56, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  %.sroa.8204.0..sroa_idx207 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %.sroa.8204.0..sroa_idx207, align 8, !tbaa !33
  %.sroa.10209.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %.sroa.12214.0..sroa_idx217 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 4, ptr %.sroa.12214.0..sroa_idx217, align 8, !tbaa !33
  %.sroa.14.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %.sroa.14.0..sroa_idx221, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bn = select i1 %.not1.i.i.i80, i64 2, i64 1  ; 6 uses
  store i64 %i.bn, ptr %.sroa.10209.0..sroa_idx212, align 8, !tbaa !70, !noalias !283
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33, !noalias !283
  %.not1.i.i.i114263 = icmp eq i64 %i.bp, 0
  br i1 %.not1.i.i.i114263, label %.lr.ph.preheader, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i113.preheader
  %22 = add nuw nsw i64 %i.bn, 1                  ; 3 uses
  %.not.i.i.i115315 = icmp eq i64 %22, 4
  br i1 %.not.i.i.i115315, label %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge.a, label %.lr.ph.i.i.i113.lr.ph, !llvm.loop !1

.lr.ph.i.i.i113.lr.ph:                            ; preds = %.lr.ph.preheader
  %23 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !33, !noalias !283
  %.not1.i.i.i114 = icmp eq i64 %24, 0
  br i1 %.not1.i.i.i114, label %.lr.ph.i.i.i113.lr.ph.a, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.i.i.i113.lr.ph.a:                          ; preds = %.lr.ph.i.i.i113.lr.ph
  %i.bq = add nuw nsw i64 %i.bn, 2                ; 3 uses
  %.not.i.i.i115 = icmp eq i64 %i.bq, 4
  br i1 %.not.i.i.i115, label %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge, label %.lr.ph.i.i.i113

.lr.ph.i.i.i113:                                  ; preds = %.lr.ph.i.i.i113.lr.ph.a
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !33, !noalias !283
  %.not1.i.i.i114.a = icmp eq i64 %i.bs, 0
  br i1 %.not1.i.i.i114.a, label %.lr.ph, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.i.i113
  %i.bt = add nuw nsw i64 %i.bn, 3                ; 3 uses
  %.not.i.i.i115.a = icmp eq i64 %i.bt, 4
  br i1 %.not.i.i.i115.a, label %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge, label %.lr.ph.i.i.i113.2

.lr.ph.i.i.i113.2:                                ; preds = %.lr.ph
  %25 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bt
  %26 = load i64, ptr %25, align 8, !tbaa !33, !noalias !283
  %.not1.i.i.i114.2 = icmp eq i64 %26, 0
  br i1 %.not1.i.i.i114.2, label %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph.i.i.i113.2, %.lr.ph, %.lr.ph.i.i.i113.lr.ph.a
  br label %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge.a, !llvm.loop !1

.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge.a: ; preds = %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge, %.lr.ph.preheader
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i113.lr.ph, %.lr.ph.i.i.i113, %.lr.ph.i.i.i113.2, %.lr.ph.i.i.i113.preheader, %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge.a
  %27 = phi i64 [ 4, %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge.a ], [ %i.bn, %.lr.ph.i.i.i113.preheader ], [ %22, %.lr.ph.i.i.i113.lr.ph ], [ %i.bq, %.lr.ph.i.i.i113 ], [ %i.bt, %.lr.ph.i.i.i113.2 ] ; 3 uses
  store i64 0, ptr %9, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.bv, align 8
  br i1 %.not1.i.i.i80, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

bb.ab:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bw = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %.critedge58, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit106, %bb.o
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit106 ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit183

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.at

bb.ae:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i118, label %_ZNK7testing15AssertionResult15failure_messageEv.exit119, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit119

_ZNK7testing15AssertionResult15failure_messageEv.exit119: ; preds = %bb.ag, %bb.af
  %i.cc = phi ptr [ %i.cb, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 368, ptr noundef %i.cc)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cd = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.ai
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !46 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i123, label %_ZN7testing15AssertionResultD2Ev.exit127, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit122
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !50 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124: ; preds = %bb.aj
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !53
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit127

_ZN7testing15AssertionResultD2Ev.exit127:         ; preds = %_ZN7testing7MessageD2Ev.exit122, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bw

bb.ak:                                            ; preds = %bb.ae
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit130

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn40 = phi { ptr, i32 } [ %i.cp, %bb.am ], [ %i.co, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cq = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.an
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(128) %i.cq) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, %bb.an, %bb.ak
  %.pn40.pn = phi { ptr, i32 } [ %i.cn, %bb.ak ], [ %.pn40, %bb.an ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.at

.critedge58:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !46 ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i131, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge58
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !50 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132: ; preds = %bb.ao
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !53
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, %.critedge58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.db = add nsw i64 %27, 1                      ; 4 uses
  store i64 %i.db, ptr %.sroa.10209.0..sroa_idx212, align 8, !tbaa !70, !noalias !284
  %.not2.i.i.i136 = icmp eq i64 %i.db, 4
  br i1 %.not2.i.i.i136, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140, label %.lr.ph.i.i.i137

.lr.ph.i.i.i137:                                  ; preds = %bb.ap
  %.sroa.10209.0..sroa_idx212.promoted = load i64, ptr %.sroa.10209.0..sroa_idx212, align 8
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !33, !noalias !284
  %.not1.i.i.i138316 = icmp eq i64 %i.dd, 0
  br i1 %.not1.i.i.i138316, label %.lr.ph317, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit

bb.aq:                                            ; preds = %.lr.ph317
  %i.de = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dh
  %i.df = load i64, ptr %i.de, align 8, !tbaa !33, !noalias !284
  %.not1.i.i.i138 = icmp eq i64 %i.df, 0
  br i1 %.not1.i.i.i138, label %.lr.ph317, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit, !llvm.loop !1

.lr.ph317:                                        ; preds = %.lr.ph.i.i.i137, %bb.aq
  %i.dg = phi i64 [ %i.dh, %bb.aq ], [ %i.db, %.lr.ph.i.i.i137 ]
  %i.dh = add i64 %i.dg, 1                        ; 5 uses
  %.not.i.i.i139 = icmp eq i64 %i.dh, 4
  br i1 %.not.i.i.i139, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit_crit_edge, label %bb.aq, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit_crit_edge: ; preds = %.lr.ph317
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit: ; preds = %bb.aq, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit_crit_edge, %.lr.ph.i.i.i137
  %i.di = phi i64 [ %i.dh, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit_crit_edge ], [ %.sroa.10209.0..sroa_idx212.promoted, %.lr.ph.i.i.i137 ], [ %i.dh, %bb.aq ]
  %i.dj = phi i1 [ true, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit_crit_edge ], [ false, %.lr.ph.i.i.i137 ], [ false, %bb.aq ]
  store i64 %i.di, ptr %.sroa.10209.0..sroa_idx212, align 8
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140: ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit, %bb.ap
  %i.dk = phi i1 [ %i.dj, %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit ], [ true, %bb.ap ]
  %i.dl = lshr i64 %27, 1                         ; 2 uses
  %i.dm = and i64 %27, 1                          ; 2 uses
  store i64 %i.dl, ptr %14, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.dm, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i64 1, ptr %15, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.do, align 8
  %i.dp = icmp eq i64 %i.dl, 1
  %i.dq = icmp eq i64 %i.dm, 0
  %i.dr = and i1 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit147 unwind label %bb.au

bb.as:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit147 unwind label %bb.au

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit147: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ds = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %.critedge60, label %bb.av

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit130, %bb.ad
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit130 ], [ %i.by, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.by

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bj

bb.av:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit147
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i148, label %_ZNK7testing15AssertionResult15failure_messageEv.exit149, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit149

_ZNK7testing15AssertionResult15failure_messageEv.exit149: ; preds = %bb.ax, %bb.aw
  %i.dy = phi ptr [ %i.dx, %bb.ax ], [ @.str.108, %bb.aw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 369, ptr noundef %i.dy)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit149
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.dz = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i150, label %_ZN7testing7MessageD2Ev.exit152, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151: ; preds = %bb.az
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !21
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit152

_ZN7testing7MessageD2Ev.exit152:                  ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.ed = load ptr, ptr %i.dv, align 8, !tbaa !46 ; 4 uses
  %.not.i.i153 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i153, label %_ZN7testing15AssertionResultD2Ev.exit157, label %bb.ba

bb.ba:                                            ; preds = %_ZN7testing7MessageD2Ev.exit152
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !50 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154: ; preds = %bb.ba
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !53
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit157

_ZN7testing15AssertionResultD2Ev.exit157:         ; preds = %_ZN7testing7MessageD2Ev.exit152, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bw

bb.bb:                                            ; preds = %bb.av
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit160

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit149
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.ay
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn44 = phi { ptr, i32 } [ %i.el, %bb.bd ], [ %i.ek, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.em = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %.not.i.i158 = icmp eq ptr %i.em, null
  br i1 %.not.i.i158, label %_ZN7testing7MessageD2Ev.exit160, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159: ; preds = %bb.be
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(128) %i.em) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit160

_ZN7testing7MessageD2Ev.exit160:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159, %bb.be, %bb.bb
  %.pn44.pn = phi { ptr, i32 } [ %i.ej, %bb.bb ], [ %.pn44, %bb.be ], [ %.pn44, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %bb.bj

.critedge60:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit147
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !46 ; 4 uses
  %.not.i.i161 = icmp eq ptr %i.er, null
  br i1 %.not.i.i161, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.critedge60
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !50 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i162: ; preds = %bb.bf
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !53
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i162
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef 32) #28
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163, %.critedge60
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr %i.a, ptr %19, align 8, !tbaa !64
  %.sroa.21.40..sroa_idx227 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 2, ptr %.sroa.21.40..sroa_idx227, align 8, !tbaa !33
  %.sroa.23.40..sroa_idx231 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 4, ptr %.sroa.23.40..sroa_idx231, align 8, !tbaa !33
  %.sroa.25.40..sroa_idx235 = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i64 4, ptr %.sroa.25.40..sroa_idx235, align 8, !tbaa !33
  %.sroa.27.40..sroa_idx239 = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i64 1, ptr %.sroa.27.40..sroa_idx239, align 8, !tbaa !33
  br i1 %i.dk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit168 unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit168 unwind label %bb.bk

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit168: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.ex = load i8, ptr %18, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.bu, label %bb.bl

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit160, %bb.au
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZN7testing7MessageD2Ev.exit160 ], [ %i.du, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.by

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bx

bb.bl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit168
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i169 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i169, label %_ZNK7testing15AssertionResult15failure_messageEv.exit170, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit170

_ZNK7testing15AssertionResult15failure_messageEv.exit170: ; preds = %bb.bn, %bb.bm
  %i.fd = phi ptr [ %i.fc, %bb.bn ], [ @.str.108, %bb.bm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 370, ptr noundef %i.fd)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.fe = load ptr, ptr %20, align 8, !tbaa !52   ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.bp
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(128) %i.fe) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bl
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit176

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bo
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn48 = phi { ptr, i32 } [ %i.fk, %bb.bs ], [ %i.fj, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.fl = load ptr, ptr %20, align 8, !tbaa !52   ; 3 uses
  %.not.i.i174 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i174, label %_ZN7testing7MessageD2Ev.exit176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.bt
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !21
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(128) %i.fl) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit176

_ZN7testing7MessageD2Ev.exit176:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175, %bb.bt, %bb.bq
  %.pn48.pn = phi { ptr, i32 } [ %i.fi, %bb.bq ], [ %.pn48, %bb.bt ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  br label %bb.bx

bb.bu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit168, %_ZN7testing7MessageD2Ev.exit173
  %i.fp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !46 ; 4 uses
  %.not.i.i177 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i177, label %_ZN7testing15AssertionResultD2Ev.exit181, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !50 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178: ; preds = %bb.bv
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !53
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit181

_ZN7testing15AssertionResultD2Ev.exit181:         ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157, %_ZN7testing15AssertionResultD2Ev.exit127, %_ZN7testing15AssertionResultD2Ev.exit181
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit103, %_ZN7testing15AssertionResultD2Ev.exit, %bb.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #28
  ret void

bb.bx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit176, %bb.bk
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit176 ], [ %i.ez, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bj, %bb.at
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %bb.bx ], [ %.pn44.pn.pn, %bb.bj ], [ %.pn40.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit183

_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit183: ; preds = %bb.by, %bb.ac, %bb.n
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn, %bb.by ], [ %.pn36.pn.pn, %bb.ac ], [ %.pn.pn.pn, %bb.n ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #28
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN37AdjacencyMatrix_OutEdgesDirected_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.entt::internal::edge_iterator", align 8 ; 11 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %9 = alloca %"struct.std::pair.21", align 8     ; 6 uses
  %10 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %18 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %bb.a
  %.pre = load i8, ptr %1, align 8, !tbaa !43, !range !44
  %i.c = trunc nuw i8 %.pre to i1
  br i1 %i.c, label %.critedge, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i62, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.h = phi ptr [ %i.g, %bb.e ], [ @.str.108, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 377, ptr noundef %i.h)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.i = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !46   ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.m, null
  br i1 %.not.i.i63, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit66

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.v, null
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  br label %bb.n

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %.not.i.i67 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i67, label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #28
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  store i64 1, ptr %i.b, align 8, !tbaa !33, !noalias !300
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %i.ag, align 8, !tbaa !33, !noalias !301
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !302
  %.not1.i.i.i92 = icmp eq i64 %i.ah, 0           ; 3 uses
  %spec.select = zext i1 %.not1.i.i.i92 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit unwind label %bb.o

_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit: ; preds = %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit
  %i.ai = load i8, ptr %4, align 8, !tbaa !43, !range !44, !noundef !45
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge56, label %bb.p

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit66, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit66 ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit201

bb.o:                                             ; preds = %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i106, label %_ZNK7testing15AssertionResult15failure_messageEv.exit107, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit107

_ZNK7testing15AssertionResult15failure_messageEv.exit107: ; preds = %bb.r, %bb.q
  %i.ao = phi ptr [ %i.an, %bb.r ], [ @.str.108, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 383, ptr noundef %i.ao)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit107
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ap = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i108, label %_ZN7testing7MessageD2Ev.exit110, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %bb.t
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit110

_ZN7testing7MessageD2Ev.exit110:                  ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !46 ; 4 uses
  %.not.i.i111 = icmp eq ptr %i.at, null
  br i1 %.not.i.i111, label %_ZN7testing15AssertionResultD2Ev.exit115, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit110
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112: ; preds = %bb.u
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !53
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit115

_ZN7testing15AssertionResultD2Ev.exit115:         ; preds = %_ZN7testing7MessageD2Ev.exit110, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit118

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit107
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %i.ba, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bc = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.y
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117, %bb.y, %bb.v
  %.pn36.pn = phi { ptr, i32 } [ %i.az, %bb.v ], [ %.pn36, %bb.y ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.ae

.critedge56:                                      ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46 ; 4 uses
  %.not.i.i119 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i119, label %.lr.ph.i.i.i125.preheader, label %bb.z

bb.z:                                             ; preds = %.critedge56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120: ; preds = %bb.z
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #28
  br label %.lr.ph.i.i.i125.preheader

.lr.ph.i.i.i125.preheader:                        ; preds = %.critedge56, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  %.sroa.10234.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 3, ptr %.sroa.10234.0..sroa_idx237, align 8, !tbaa !33
  %.sroa.13.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %.sroa.16.0..sroa_idx249 = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i64 3, ptr %.sroa.16.0..sroa_idx249, align 8, !tbaa !33
  %.sroa.19.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i64 1, ptr %.sroa.19.0..sroa_idx255, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bn = select i1 %.not1.i.i.i92, i64 2, i64 1  ; 3 uses
  store i64 %i.bn, ptr %.sroa.13.0..sroa_idx243, align 8, !tbaa !70, !noalias !303
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33, !noalias !303
  %.not1.i.i.i126.peel = icmp eq i64 %i.bp, 0
  br i1 %.not1.i.i.i126.peel, label %bb.aa, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

bb.aa:                                            ; preds = %.lr.ph.i.i.i125.preheader
  %i.bq = add nuw nsw i64 %i.bn, 1                ; 2 uses
  store i64 %i.bq, ptr %.sroa.13.0..sroa_idx243, align 8, !tbaa !70, !noalias !303
  %.not.i.i.i127.peel = icmp eq i64 %i.bq, 3
  br i1 %.not.i.i.i127.peel, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, label %.lr.ph.i.i.i125.preheader.peel.newph

.lr.ph.i.i.i125.preheader.peel.newph:             ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !33, !noalias !303
  %.not1.i.i.i126 = icmp eq i64 %i.bs, 0
  br i1 %.not1.i.i.i126, label %bb.ab, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

bb.ab:                                            ; preds = %.lr.ph.i.i.i125.preheader.peel.newph
  store i64 3, ptr %.sroa.13.0..sroa_idx243, align 8, !tbaa !70, !noalias !303
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !293

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i125.preheader.peel.newph, %bb.ab, %bb.aa, %.lr.ph.i.i.i125.preheader
  store i64 0, ptr %9, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.bu, align 8
  br i1 %.not1.i.i.i92, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.af

bb.ad:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.af

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bv = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.critedge58, label %bb.ag

bb.ae:                                            ; preds = %_ZN7testing7MessageD2Ev.exit118, %bb.o
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit118 ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit201

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.au

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.ai, %bb.ah
  %i.cb = phi ptr [ %i.ca, %bb.ai ], [ @.str.108, %bb.ah ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 387, ptr noundef %i.cb)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cc = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.ak
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.ak, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !46 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i135, label %_ZN7testing15AssertionResultD2Ev.exit139, label %bb.al

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit134
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !50 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.al
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !53
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit139

_ZN7testing15AssertionResultD2Ev.exit139:         ; preds = %_ZN7testing7MessageD2Ev.exit134, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bw

bb.am:                                            ; preds = %bb.ag
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn40 = phi { ptr, i32 } [ %i.co, %bb.ao ], [ %i.cn, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cp = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.ap
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %bb.ap, %bb.am
  %.pn40.pn = phi { ptr, i32 } [ %i.cm, %bb.am ], [ %.pn40, %bb.ap ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.au

.critedge58:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !46 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i143, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge58
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.aq
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !53
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 32) #28
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, %.critedge58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %i.a, ptr %14, align 8, !tbaa !64
  %.sroa.29.40..sroa_idx264 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 3, ptr %.sroa.29.40..sroa_idx264, align 8, !tbaa !33
  %.sroa.32.40..sroa_idx270 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 3, ptr %.sroa.32.40..sroa_idx270, align 8, !tbaa !33
  %.sroa.35.40..sroa_idx276 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 3, ptr %.sroa.35.40..sroa_idx276, align 8, !tbaa !33
  %.sroa.38.40..sroa_idx282 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 1, ptr %.sroa.38.40..sroa_idx282, align 8, !tbaa !33
  %i.da = load i64, ptr %.sroa.13.0..sroa_idx243, align 8, !tbaa !70, !noalias !304
  %i.db = icmp eq i64 %i.da, 3
  br i1 %i.db, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit150 unwind label %bb.av

bb.at:                                            ; preds = %bb.ar
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit150 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit150: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.dc = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %.critedge60, label %bb.aw

bb.au:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %bb.af
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %i.bx, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.by

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bj

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit150
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !46 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN49AdjacencyMatrix_OutEdgesBackwardOnlyDirected_Test8TestBodyEv:bb.a
  br label %.lr.ph.i.i.i158

.lr.ph.i.i.i158:                                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154, %.critedge60
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !319
  %.not1.i.i.i160 = icmp eq i64 %i.dy, 0
  br i1 %.not1.i.i.i160, label %.lr.ph.i.i.i158.1, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE9out_edgesEm.exit171

.lr.ph.i.i.i158.1:                                ; preds = %.lr.ph.i.i.i158
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !319
  %.not1.i.i.i160.1 = icmp eq i64 %i.dz, 0        ; 2 uses
  %spec.select338 = select i1 %.not1.i.i.i160.1, i64 2, i64 1
  br label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE9out_edgesEm.exit171

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE9out_edgesEm.exit171: ; preds = %.lr.ph.i.i.i158.1, %.lr.ph.i.i.i158
  %i.ea = phi i1 [ %.not1.i.i.i160.1, %.lr.ph.i.i.i158.1 ], [ false, %.lr.ph.i.i.i158 ]
  %.sroa.314.1.i161 = phi i64 [ %spec.select338, %.lr.ph.i.i.i158.1 ], [ 0, %.lr.ph.i.i.i158 ]
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  store i64 2, ptr %.sroa.10215.0..sroa_idx218, align 8, !tbaa !33
  store i64 %.sroa.314.1.i161, ptr %.sroa.13.0..sroa_idx224, align 8, !tbaa !33
  store i64 2, ptr %.sroa.16.0..sroa_idx230, align 8, !tbaa !33
  store i64 1, ptr %.sroa.19.0..sroa_idx236, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr %i.a, ptr %16, align 8, !tbaa !64
  %.sroa.29.40..sroa_idx247 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 2, ptr %.sroa.29.40..sroa_idx247, align 8, !tbaa !33
  %.sroa.32.40..sroa_idx253 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 2, ptr %.sroa.32.40..sroa_idx253, align 8, !tbaa !33
  %.sroa.35.40..sroa_idx259 = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 2, ptr %.sroa.35.40..sroa_idx259, align 8, !tbaa !33
  %.sroa.38.40..sroa_idx265 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i64 1, ptr %.sroa.38.40..sroa_idx265, align 8, !tbaa !33
  br i1 %i.ea, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE9out_edgesEm.exit171
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174 unwind label %bb.bh

bb.bf:                                            ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE9out_edgesEm.exit171
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.84, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174 unwind label %bb.bh

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.eb = load i8, ptr %15, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.br, label %bb.bi

bb.bg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit151, %bb.as
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZN7testing7MessageD2Ev.exit151 ], [ %i.cv, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bv

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.bu

bb.bi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i175, label %_ZNK7testing15AssertionResult15failure_messageEv.exit176, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit176

_ZNK7testing15AssertionResult15failure_messageEv.exit176: ; preds = %bb.bk, %bb.bj
  %i.eh = phi ptr [ %i.eg, %bb.bk ], [ @.str.108, %bb.bj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 415, ptr noundef %i.eh)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit176
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.ei = load ptr, ptr %17, align 8, !tbaa !52   ; 3 uses
  %.not.i.i177 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i177, label %_ZN7testing7MessageD2Ev.exit179, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178: ; preds = %bb.bm
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(128) %i.ei) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit179

_ZN7testing7MessageD2Ev.exit179:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.br

bb.bn:                                            ; preds = %bb.bi
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit182

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit176
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn48 = phi { ptr, i32 } [ %i.eo, %bb.bp ], [ %i.en, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.ep = load ptr, ptr %17, align 8, !tbaa !52   ; 3 uses
  %.not.i.i180 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i180, label %_ZN7testing7MessageD2Ev.exit182, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181: ; preds = %bb.bq
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(128) %i.ep) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit182

_ZN7testing7MessageD2Ev.exit182:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181, %bb.bq, %bb.bn
  %.pn48.pn = phi { ptr, i32 } [ %i.em, %bb.bn ], [ %.pn48, %bb.bq ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #26
  br label %bb.bu

bb.br:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174, %_ZN7testing7MessageD2Ev.exit179
  %i.et = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !46 ; 4 uses
  %.not.i.i183 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i183, label %_ZN7testing15AssertionResultD2Ev.exit187, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !50 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184: ; preds = %bb.bs
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !53
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit187

_ZN7testing15AssertionResultD2Ev.exit187:         ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit148, %_ZN7testing15AssertionResultD2Ev.exit127, %_ZN7testing15AssertionResultD2Ev.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit103, %_ZN7testing15AssertionResultD2Ev.exit, %bb.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #28
  ret void

bb.bu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit182, %bb.bh
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit182 ], [ %i.ed, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bg, %bb.ar
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %bb.bu ], [ %.pn44.pn.pn, %bb.bg ], [ %.pn40.pn.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189: ; preds = %bb.bv, %bb.ab, %bb.o
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn, %bb.bv ], [ %.pn36.pn.pn, %bb.ab ], [ %.pn.pn.pn, %bb.o ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #28
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN39AdjacencyMatrix_OutEdgesUndirected_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.entt::internal::edge_iterator", align 8 ; 13 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %9 = alloca %"struct.std::pair.21", align 8     ; 6 uses
  %10 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %18 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %22 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %23 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %27 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %bb.a
  %.pre = load i8, ptr %1, align 8, !tbaa !43, !range !44
  %i.c = trunc nuw i8 %.pre to i1
  br i1 %i.c, label %.critedge, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i86, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.h = phi ptr [ %i.g, %bb.e ], [ @.str.108, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 422, ptr noundef %i.h)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.i = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !46   ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.m, null
  br i1 %.not.i.i87, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit90

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.v, null
  br i1 %.not.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit90

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  br label %bb.n

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %.not.i.i91 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i91, label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #28
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit

_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.ag, align 8, !tbaa !33, !noalias !341
  store i64 1, ptr %i.b, align 8, !tbaa !33, !noalias !341
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store i64 1, ptr %i.ah, align 8, !tbaa !33, !noalias !342
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %i.ai, align 8, !tbaa !33, !noalias !342
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !343
  %.not1.i.i.i116 = icmp eq i64 %i.aj, 0          ; 3 uses
  %spec.select = zext i1 %.not1.i.i.i116 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit unwind label %bb.o

_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit: ; preds = %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit
  %i.ak = load i8, ptr %4, align 8, !tbaa !43, !range !44, !noundef !45
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.critedge76, label %bb.p

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit90, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit90 ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit276

bb.o:                                             ; preds = %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEE6insertEmm.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.r, %bb.q
  %i.aq = phi ptr [ %i.ap, %bb.r ], [ @.str.108, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 428, ptr noundef %i.aq)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ar = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.t
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(128) %i.ar) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !46 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.av, null
  br i1 %.not.i.i135, label %_ZN7testing15AssertionResultD2Ev.exit139, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit134
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.u
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !53
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit139

_ZN7testing15AssertionResultD2Ev.exit139:         ; preds = %_ZN7testing7MessageD2Ev.exit134, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn48 = phi { ptr, i32 } [ %i.bd, %bb.x ], [ %i.bc, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.be = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.be, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.y
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(128) %i.be) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %bb.y, %bb.v
  %.pn48.pn = phi { ptr, i32 } [ %i.bb, %bb.v ], [ %.pn48, %bb.y ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.ae

.critedge76:                                      ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i143, label %.lr.ph.i.i.i149.preheader, label %bb.z

bb.z:                                             ; preds = %.critedge76
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.z
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !53
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 32) #28
  br label %.lr.ph.i.i.i149.preheader

.lr.ph.i.i.i149.preheader:                        ; preds = %.critedge76, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  %.sroa.10315.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.10315.0..sroa_idx318, align 8, !tbaa !33
  %.sroa.13.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %.sroa.16.0..sroa_idx330 = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i64 3, ptr %.sroa.16.0..sroa_idx330, align 8, !tbaa !33
  %.sroa.19.0..sroa_idx336 = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store i64 1, ptr %.sroa.19.0..sroa_idx336, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bp = select i1 %.not1.i.i.i116, i64 2, i64 1 ; 3 uses
  store i64 %i.bp, ptr %.sroa.13.0..sroa_idx324, align 8, !tbaa !70, !noalias !344
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !33, !noalias !344
  %.not1.i.i.i150.peel = icmp eq i64 %i.br, 0
  br i1 %.not1.i.i.i150.peel, label %bb.aa, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

bb.aa:                                            ; preds = %.lr.ph.i.i.i149.preheader
  %i.bs = add nuw nsw i64 %i.bp, 1                ; 2 uses
  store i64 %i.bs, ptr %.sroa.13.0..sroa_idx324, align 8, !tbaa !70, !noalias !344
  %.not.i.i.i151.peel = icmp eq i64 %i.bs, 3
  br i1 %.not.i.i.i151.peel, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, label %.lr.ph.i.i.i149.preheader.peel.newph

.lr.ph.i.i.i149.preheader.peel.newph:             ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !33, !noalias !344
  %.not1.i.i.i150 = icmp eq i64 %i.bu, 0
  br i1 %.not1.i.i.i150, label %bb.ab, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

bb.ab:                                            ; preds = %.lr.ph.i.i.i149.preheader.peel.newph
  store i64 3, ptr %.sroa.13.0..sroa_idx324, align 8, !tbaa !70, !noalias !344
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !328

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i149.preheader.peel.newph, %bb.ab, %bb.aa, %.lr.ph.i.i.i149.preheader
  store i64 0, ptr %9, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.bw, align 8
  br i1 %.not1.i.i.i116, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.af

bb.ad:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.af

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bx = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %.critedge78, label %bb.ag

bb.ae:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %bb.o
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %i.am, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit276

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.au

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i154, label %_ZNK7testing15AssertionResult15failure_messageEv.exit155, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit155

_ZNK7testing15AssertionResult15failure_messageEv.exit155: ; preds = %bb.ai, %bb.ah
  %i.cd = phi ptr [ %i.cc, %bb.ai ], [ @.str.108, %bb.ah ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 432, ptr noundef %i.cd)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit155
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ce = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.ak
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(128) %i.ce) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %bb.ak, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !46 ; 4 uses
  %.not.i.i159 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i159, label %_ZN7testing15AssertionResultD2Ev.exit163, label %bb.al

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit158
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !50 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160: ; preds = %bb.al
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !53
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit163

_ZN7testing15AssertionResultD2Ev.exit163:         ; preds = %_ZN7testing7MessageD2Ev.exit158, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.de

bb.am:                                            ; preds = %bb.ag
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit166

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit155
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn52 = phi { ptr, i32 } [ %i.cq, %bb.ao ], [ %i.cp, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cr = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %bb.ap
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(128) %i.cr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165, %bb.ap, %bb.am
  %.pn52.pn = phi { ptr, i32 } [ %i.co, %bb.am ], [ %.pn52, %bb.ap ], [ %.pn52, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.au

.critedge78:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 4 uses
  %.not.i.i167 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i167, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge78
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !50 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168: ; preds = %bb.aq
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !53
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 32) #28
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, %.critedge78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %i.a, ptr %14, align 8, !tbaa !64
  %.sroa.30.40..sroa_idx346 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 3, ptr %.sroa.30.40..sroa_idx346, align 8, !tbaa !33
  %.sroa.33.40..sroa_idx354 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 3, ptr %.sroa.33.40..sroa_idx354, align 8, !tbaa !33
  %.sroa.36.40..sroa_idx362 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 3, ptr %.sroa.36.40..sroa_idx362, align 8, !tbaa !33
  %.sroa.39.40..sroa_idx370 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 1, ptr %.sroa.39.40..sroa_idx370, align 8, !tbaa !33
  %i.dc = load i64, ptr %.sroa.13.0..sroa_idx324, align 8, !tbaa !70, !noalias !345
  %i.dd = icmp eq i64 %i.dc, 3
  br i1 %i.dd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174 unwind label %bb.av

bb.at:                                            ; preds = %bb.ar
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.de = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %.critedge80, label %bb.aw

bb.au:                                            ; preds = %_ZN7testing7MessageD2Ev.exit166, %bb.af
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %_ZN7testing7MessageD2Ev.exit166 ], [ %i.bz, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.dg

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bj

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !46 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN36AdjacencyMatrix_InEdgesDirected_Test8TestBodyEv:bb.a

.lr.ph.i.i.i170.1:                                ; preds = %.lr.ph.i.i.i170
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !33, !noalias !387
  %.not1.i.i.i172.1 = icmp eq i64 %i.ec, 0
  br i1 %.not1.i.i.i172.1, label %.lr.ph.i.i.i170.2, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8in_edgesEm.exit183

.lr.ph.i.i.i170.2:                                ; preds = %.lr.ph.i.i.i170.1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !33, !noalias !387
  %.not1.i.i.i172.2 = icmp eq i64 %i.ee, 0        ; 2 uses
  %spec.select360 = select i1 %.not1.i.i.i172.2, i64 9, i64 6
  br label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8in_edgesEm.exit183

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8in_edgesEm.exit183: ; preds = %.lr.ph.i.i.i170.2, %.lr.ph.i.i.i170.1, %.lr.ph.i.i.i170
  %i.ef = phi i1 [ %.not1.i.i.i172.2, %.lr.ph.i.i.i170.2 ], [ false, %.lr.ph.i.i.i170 ], [ false, %.lr.ph.i.i.i170.1 ]
  %.sroa.314.1.i173 = phi i64 [ %spec.select360, %.lr.ph.i.i.i170.2 ], [ 0, %.lr.ph.i.i.i170 ], [ 3, %.lr.ph.i.i.i170.1 ]
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  store i64 3, ptr %.sroa.10234.0..sroa_idx237, align 8, !tbaa !33
  store i64 %.sroa.314.1.i173, ptr %.sroa.13.0..sroa_idx243, align 8, !tbaa !33
  store i64 9, ptr %.sroa.16.0..sroa_idx249, align 8, !tbaa !33
  store i64 3, ptr %.sroa.19.0..sroa_idx255, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr %i.a, ptr %16, align 8, !tbaa !64
  %.sroa.29.40..sroa_idx266 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 3, ptr %.sroa.29.40..sroa_idx266, align 8, !tbaa !33
  %.sroa.32.40..sroa_idx272 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 9, ptr %.sroa.32.40..sroa_idx272, align 8, !tbaa !33
  %.sroa.35.40..sroa_idx278 = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 9, ptr %.sroa.35.40..sroa_idx278, align 8, !tbaa !33
  %.sroa.38.40..sroa_idx284 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i64 3, ptr %.sroa.38.40..sroa_idx284, align 8, !tbaa !33
  br i1 %i.ef, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8in_edgesEm.exit183
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit186 unwind label %bb.bh

bb.bf:                                            ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8in_edgesEm.exit183
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.84, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit186 unwind label %bb.bh

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit186: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.eg = load i8, ptr %15, align 8, !tbaa !43, !range !44, !noundef !45
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.br, label %bb.bi

bb.bg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit163, %bb.as
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZN7testing7MessageD2Ev.exit163 ], [ %i.cx, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bv

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.bu

bb.bi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit186
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i187, label %_ZNK7testing15AssertionResult15failure_messageEv.exit188, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit188

_ZNK7testing15AssertionResult15failure_messageEv.exit188: ; preds = %bb.bk, %bb.bj
  %i.em = phi ptr [ %i.el, %bb.bk ], [ @.str.108, %bb.bj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 487, ptr noundef %i.em)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit188
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.en = load ptr, ptr %17, align 8, !tbaa !52   ; 3 uses
  %.not.i.i189 = icmp eq ptr %i.en, null
  br i1 %.not.i.i189, label %_ZN7testing7MessageD2Ev.exit191, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i190

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i190: ; preds = %bb.bm
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !21
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(128) %i.en) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit191

_ZN7testing7MessageD2Ev.exit191:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.br

bb.bn:                                            ; preds = %bb.bi
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit194

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit188
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn48 = phi { ptr, i32 } [ %i.et, %bb.bp ], [ %i.es, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.eu = load ptr, ptr %17, align 8, !tbaa !52   ; 3 uses
  %.not.i.i192 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i192, label %_ZN7testing7MessageD2Ev.exit194, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193: ; preds = %bb.bq
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(128) %i.eu) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit194

_ZN7testing7MessageD2Ev.exit194:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193, %bb.bq, %bb.bn
  %.pn48.pn = phi { ptr, i32 } [ %i.er, %bb.bn ], [ %.pn48, %bb.bq ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #26
  br label %bb.bu

bb.br:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit186, %_ZN7testing7MessageD2Ev.exit191
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46 ; 4 uses
  %.not.i.i195 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i195, label %_ZN7testing15AssertionResultD2Ev.exit199, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i196: ; preds = %bb.bs
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !53
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i196
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit199

_ZN7testing15AssertionResultD2Ev.exit199:         ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit160, %_ZN7testing15AssertionResultD2Ev.exit139, %_ZN7testing15AssertionResultD2Ev.exit199
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit115, %_ZN7testing15AssertionResultD2Ev.exit, %bb.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #28
  ret void

bb.bu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit194, %bb.bh
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit194 ], [ %i.ei, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bg, %bb.ar
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %bb.bu ], [ %.pn44.pn.pn, %bb.bg ], [ %.pn40.pn.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit201

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit201: ; preds = %bb.bv, %bb.ab, %bb.o
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn, %bb.bv ], [ %.pn36.pn.pn, %bb.ab ], [ %.pn.pn.pn, %bb.o ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #28
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN48AdjacencyMatrix_InEdgesBackwardOnlyDirected_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.entt::internal::edge_iterator", align 8 ; 11 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %9 = alloca %"struct.std::pair.21", align 8     ; 6 uses
  %10 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %18 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %bb.a
  %.pre = load i8, ptr %1, align 8, !tbaa !43, !range !44
  %i.c = trunc nuw i8 %.pre to i1
  br i1 %i.c, label %.critedge, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i62, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.h = phi ptr [ %i.g, %bb.e ], [ @.str.108, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 494, ptr noundef %i.h)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.i = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !46   ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.m, null
  br i1 %.not.i.i63, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit66

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.v, null
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  br label %bb.n

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %.not.i.i67 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i67, label %.lr.ph.i.i.i78.preheader, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #28
  br label %.lr.ph.i.i.i78.preheader

.lr.ph.i.i.i78.preheader:                         ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.ag, align 8, !tbaa !33, !noalias !400
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !401
  %.not1.i.i.i80 = icmp eq i64 %i.ah, 0           ; 2 uses
  %spec.select = select i1 %.not1.i.i.i80, i64 2, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit unwind label %bb.o

_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit: ; preds = %.lr.ph.i.i.i78.preheader
  %i.ai = load i8, ptr %4, align 8, !tbaa !43, !range !44, !noundef !45
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge56, label %bb.p

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit66, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit66 ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189

bb.o:                                             ; preds = %.lr.ph.i.i.i78.preheader
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i94, label %_ZNK7testing15AssertionResult15failure_messageEv.exit95, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit95

_ZNK7testing15AssertionResult15failure_messageEv.exit95: ; preds = %bb.r, %bb.q
  %i.ao = phi ptr [ %i.an, %bb.r ], [ @.str.108, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 499, ptr noundef %i.ao)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ap = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.t
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !46 ; 4 uses
  %.not.i.i99 = icmp eq ptr %i.at, null
  br i1 %.not.i.i99, label %_ZN7testing15AssertionResultD2Ev.exit103, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit98
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100: ; preds = %bb.u
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !53
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit103

_ZN7testing15AssertionResultD2Ev.exit103:         ; preds = %_ZN7testing7MessageD2Ev.exit98, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit106

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %i.ba, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bc = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.y
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, %bb.y, %bb.v
  %.pn36.pn = phi { ptr, i32 } [ %i.az, %bb.v ], [ %.pn36, %bb.y ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.ac

.critedge56:                                      ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46 ; 4 uses
  %.not.i.i107 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i107, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i108: ; preds = %bb.z
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i108
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #28
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109, %.critedge56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  %.sroa.10215.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 2, ptr %.sroa.10215.0..sroa_idx218, align 8, !tbaa !33
  %.sroa.13.0..sroa_idx224 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %.sroa.16.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i64 4, ptr %.sroa.16.0..sroa_idx230, align 8, !tbaa !33
  %.sroa.19.0..sroa_idx236 = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i64 2, ptr %.sroa.19.0..sroa_idx236, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bn = add nuw nsw i64 %spec.select, 2         ; 3 uses
  store i64 %i.bn, ptr %.sroa.13.0..sroa_idx224, align 8, !tbaa !70, !noalias !402
  %.not2.i.i.i112 = icmp eq i64 %i.bn, 4
  br i1 %.not2.i.i.i112, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, label %.lr.ph.i.i.i113

.lr.ph.i.i.i113:                                  ; preds = %bb.aa, %bb.ab
  %i.bo = phi i64 [ %i.br, %bb.ab ], [ %i.bn, %bb.aa ] ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !33, !noalias !402
  %.not1.i.i.i114 = icmp eq i64 %i.bq, 0
  br i1 %.not1.i.i.i114, label %bb.ab, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

bb.ab:                                            ; preds = %.lr.ph.i.i.i113
  %i.br = add i64 %i.bo, 2                        ; 3 uses
  store i64 %i.br, ptr %.sroa.13.0..sroa_idx224, align 8, !tbaa !70, !noalias !402
  %.not.i.i.i115 = icmp eq i64 %i.br, 4
  br i1 %.not.i.i.i115, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, label %.lr.ph.i.i.i113, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i113, %bb.ab, %bb.aa
  %i.bs = lshr exact i64 %spec.select, 1
  store i64 %i.bs, ptr %9, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 1, ptr %10, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bu, align 8
  br i1 %.not1.i.i.i80, label %.critedge337, label %21

.critedge337:                                     ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

21:                                               ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %.critedge337, %21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bv = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.critedge58, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit106, %bb.o
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit106 ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189

bb.ad:                                            ; preds = %21, %.critedge337
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.as

bb.ae:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i118, label %_ZNK7testing15AssertionResult15failure_messageEv.exit119, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit119

_ZNK7testing15AssertionResult15failure_messageEv.exit119: ; preds = %bb.ag, %bb.af
  %i.cb = phi ptr [ %i.ca, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 503, ptr noundef %i.cb)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cc = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.ai
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !46 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i123, label %_ZN7testing15AssertionResultD2Ev.exit127, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit122
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !50 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124: ; preds = %bb.aj
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !53
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit127

_ZN7testing15AssertionResultD2Ev.exit127:         ; preds = %_ZN7testing7MessageD2Ev.exit122, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bu

bb.ak:                                            ; preds = %bb.ae
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit130

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn40 = phi { ptr, i32 } [ %i.co, %bb.am ], [ %i.cn, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cp = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.an
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, %bb.an, %bb.ak
  %.pn40.pn = phi { ptr, i32 } [ %i.cm, %bb.ak ], [ %.pn40, %bb.an ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.as

.critedge58:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !46 ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i131, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge58
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132: ; preds = %bb.ao
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !53
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, %.critedge58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %i.a, ptr %14, align 8, !tbaa !64
  %.sroa.29.40..sroa_idx245 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 2, ptr %.sroa.29.40..sroa_idx245, align 8, !tbaa !33
  %.sroa.32.40..sroa_idx251 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 4, ptr %.sroa.32.40..sroa_idx251, align 8, !tbaa !33
  %.sroa.35.40..sroa_idx257 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 4, ptr %.sroa.35.40..sroa_idx257, align 8, !tbaa !33
  %.sroa.38.40..sroa_idx263 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 2, ptr %.sroa.38.40..sroa_idx263, align 8, !tbaa !33
  %i.da = load i64, ptr %.sroa.13.0..sroa_idx224, align 8, !tbaa !70, !noalias !403
  %i.db = icmp eq i64 %i.da, 4
  br i1 %i.db, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit138 unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit138 unwind label %bb.at

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit138: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.dc = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %.critedge60, label %bb.au

bb.as:                                            ; preds = %_ZN7testing7MessageD2Ev.exit130, %bb.ad
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit130 ], [ %i.bx, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bw

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bh

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit138
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i139, label %_ZNK7testing15AssertionResult15failure_messageEv.exit140, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit140

_ZNK7testing15AssertionResult15failure_messageEv.exit140: ; preds = %bb.aw, %bb.av
  %i.di = phi ptr [ %i.dh, %bb.aw ], [ @.str.108, %bb.av ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 504, ptr noundef %i.di)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit140
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.dj = load ptr, ptr %15, align 8, !tbaa !52   ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN38AdjacencyMatrix_InEdgesUndirected_Test8TestBodyEv:bb.a
  br i1 %.not.i.i296, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.critedge96
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !50 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i297: ; preds = %bb.dc
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !53
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i297
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef 32) #28
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298, %.critedge96
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  store ptr %i.a, ptr %30, align 8, !tbaa !64
  %.sroa.30.40..sroa_idx398 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 3, ptr %.sroa.30.40..sroa_idx398, align 8, !tbaa !33
  %.sroa.33.40..sroa_idx406 = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 9, ptr %.sroa.33.40..sroa_idx406, align 8, !tbaa !33
  %.sroa.36.40..sroa_idx414 = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i64 9, ptr %.sroa.36.40..sroa_idx414, align 8, !tbaa !33
  %.sroa.39.40..sroa_idx422 = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i64 3, ptr %.sroa.39.40..sroa_idx422, align 8, !tbaa !33
  %i.ja = load i64, ptr %.sroa.13.0..sroa_idx372, align 8, !tbaa !70, !noalias !432
  %i.jb = icmp eq i64 %i.ja, 9
  br i1 %i.jb, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %29)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit303 unwind label %bb.dh

bb.df:                                            ; preds = %bb.dd
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %29, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.84, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %30)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit303 unwind label %bb.dh

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit303: ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.jc = load i8, ptr %29, align 8, !tbaa !43, !range !44, !noundef !45
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.dr, label %bb.di

bb.dg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit295, %bb.cr
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %_ZN7testing7MessageD2Ev.exit295 ], [ %i.hx, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.dv

bb.dh:                                            ; preds = %bb.df, %bb.de
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.du

bb.di:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit303
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dj unwind label %bb.dn

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %i.jf = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i304 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i304, label %_ZNK7testing15AssertionResult15failure_messageEv.exit305, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit305

_ZNK7testing15AssertionResult15failure_messageEv.exit305: ; preds = %bb.dk, %bb.dj
  %i.ji = phi ptr [ %i.jh, %bb.dk ], [ @.str.108, %bb.dj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 535, ptr noundef %i.ji)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit305
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dm unwind label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.jj = load ptr, ptr %31, align 8, !tbaa !52   ; 3 uses
  %.not.i.i306 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i306, label %_ZN7testing7MessageD2Ev.exit308, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i307

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i307: ; preds = %bb.dm
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !21
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(128) %i.jj) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit308

_ZN7testing7MessageD2Ev.exit308:                  ; preds = %bb.dm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %bb.dr

bb.dn:                                            ; preds = %bb.di
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit311

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit305
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dl
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #26
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.pn78 = phi { ptr, i32 } [ %i.jp, %bb.dp ], [ %i.jo, %bb.do ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.jq = load ptr, ptr %31, align 8, !tbaa !52   ; 3 uses
  %.not.i.i309 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i309, label %_ZN7testing7MessageD2Ev.exit311, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i310

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i310: ; preds = %bb.dq
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !21
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(128) %i.jq) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit311

_ZN7testing7MessageD2Ev.exit311:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i310, %bb.dq, %bb.dn
  %.pn78.pn = phi { ptr, i32 } [ %i.jn, %bb.dn ], [ %.pn78, %bb.dq ], [ %.pn78, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i310 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #26
  br label %bb.du

bb.dr:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit303, %_ZN7testing7MessageD2Ev.exit308
  %i.ju = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !46 ; 4 uses
  %.not.i.i312 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i312, label %_ZN7testing15AssertionResultD2Ev.exit316, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !50 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i313: ; preds = %bb.ds
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !53
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i314

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i314: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i313
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit316

_ZN7testing15AssertionResultD2Ev.exit316:         ; preds = %bb.dr, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.dt

bb.dt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit292, %_ZN7testing15AssertionResultD2Ev.exit262, %_ZN7testing15AssertionResultD2Ev.exit226, %_ZN7testing15AssertionResultD2Ev.exit205, %_ZN7testing15AssertionResultD2Ev.exit175, %_ZN7testing15AssertionResultD2Ev.exit316
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit151, %_ZN7testing15AssertionResultD2Ev.exit, %bb.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #28
  ret void

bb.du:                                            ; preds = %_ZN7testing7MessageD2Ev.exit311, %bb.dh
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %_ZN7testing7MessageD2Ev.exit311 ], [ %i.je, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dg, %bb.cq, %bb.by, %bb.bj, %bb.at
  %.pn78.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn, %bb.du ], [ %.pn74.pn.pn, %bb.dg ], [ %.pn70.pn.pn, %bb.cq ], [ %.pn66.pn.pn, %bb.by ], [ %.pn62.pn.pn, %bb.bj ], [ %.pn58.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit318

_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit318: ; preds = %bb.dv, %bb.ab, %bb.o
  %.pn78.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn.pn, %bb.dv ], [ %.pn54.pn.pn, %bb.ab ], [ %.pn.pn.pn, %bb.o ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #28
  resume { ptr, i32 } %.pn78.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN50AdjacencyMatrix_InEdgesBackwardOnlyUndirected_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.entt::internal::edge_iterator", align 8 ; 13 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %9 = alloca %"struct.std::pair.21", align 8     ; 6 uses
  %10 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %18 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %22 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %23 = alloca %"struct.std::pair.21", align 8    ; 6 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %27 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %bb.a
  %.pre = load i8, ptr %1, align 8, !tbaa !43, !range !44
  %i.c = trunc nuw i8 %.pre to i1
  br i1 %i.c, label %.critedge, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i86, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.h = phi ptr [ %i.g, %bb.e ], [ @.str.108, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 542, ptr noundef %i.h)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.i = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !46   ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.m, null
  br i1 %.not.i.i87, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit90

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.v = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.v, null
  br i1 %.not.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit90

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  br label %bb.n

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %.not.i.i91 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i91, label %.lr.ph.i.i.i102.preheader, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #28
  br label %.lr.ph.i.i.i102.preheader

.lr.ph.i.i.i102.preheader:                        ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  store i64 1, ptr %i.b, align 8, !tbaa !33, !noalias !451
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.ag, align 8, !tbaa !33, !noalias !451
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !452
  %.not1.i.i.i104 = icmp eq i64 %i.ah, 0          ; 2 uses
  %spec.select = select i1 %.not1.i.i.i104, i64 2, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit unwind label %bb.o

_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit: ; preds = %.lr.ph.i.i.i102.preheader
  %i.ai = load i8, ptr %4, align 8, !tbaa !43, !range !44, !noundef !45
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge76, label %bb.p

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit90, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit90 ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit264

bb.o:                                             ; preds = %.lr.ph.i.i.i102.preheader
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i118, label %_ZNK7testing15AssertionResult15failure_messageEv.exit119, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit119

_ZNK7testing15AssertionResult15failure_messageEv.exit119: ; preds = %bb.r, %bb.q
  %i.ao = phi ptr [ %i.an, %bb.r ], [ @.str.108, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 547, ptr noundef %i.ao)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ap = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.t
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !46 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.at, null
  br i1 %.not.i.i123, label %_ZN7testing15AssertionResultD2Ev.exit127, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit122
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124: ; preds = %bb.u
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !53
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit127

_ZN7testing15AssertionResultD2Ev.exit127:         ; preds = %_ZN7testing7MessageD2Ev.exit122, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit130

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn48 = phi { ptr, i32 } [ %i.bb, %bb.x ], [ %i.ba, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bc = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.y
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, %bb.y, %bb.v
  %.pn48.pn = phi { ptr, i32 } [ %i.az, %bb.v ], [ %.pn48, %bb.y ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.ac

.critedge76:                                      ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46 ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i131, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge76
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132: ; preds = %bb.z
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #28
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, %.critedge76
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !64
  %.sroa.10296.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 2, ptr %.sroa.10296.0..sroa_idx299, align 8, !tbaa !33
  %.sroa.13.0..sroa_idx305 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %.sroa.16.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i64 4, ptr %.sroa.16.0..sroa_idx311, align 8, !tbaa !33
  %.sroa.19.0..sroa_idx317 = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store i64 2, ptr %.sroa.19.0..sroa_idx317, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bn = add nuw nsw i64 %spec.select, 2         ; 3 uses
  store i64 %i.bn, ptr %.sroa.13.0..sroa_idx305, align 8, !tbaa !70, !noalias !453
  %.not2.i.i.i136 = icmp eq i64 %i.bn, 4
  br i1 %.not2.i.i.i136, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, label %.lr.ph.i.i.i137

.lr.ph.i.i.i137:                                  ; preds = %bb.aa, %bb.ab
  %i.bo = phi i64 [ %i.br, %bb.ab ], [ %i.bn, %bb.aa ] ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !33, !noalias !453
  %.not1.i.i.i138 = icmp eq i64 %i.bq, 0
  br i1 %.not1.i.i.i138, label %bb.ab, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

bb.ab:                                            ; preds = %.lr.ph.i.i.i137
  %i.br = add i64 %i.bo, 2                        ; 3 uses
  store i64 %i.br, ptr %.sroa.13.0..sroa_idx305, align 8, !tbaa !70, !noalias !453
  %.not.i.i.i139 = icmp eq i64 %i.br, 4
  br i1 %.not.i.i.i139, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, label %.lr.ph.i.i.i137, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i137, %bb.ab, %bb.aa
  %i.bs = lshr exact i64 %spec.select, 1
  store i64 %i.bs, ptr %9, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 1, ptr %10, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bu, align 8
  br i1 %.not1.i.i.i104, label %.critedge452, label %30

.critedge452:                                     ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

30:                                               ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %.critedge452, %30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bv = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.critedge78, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit130, %bb.o
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit130 ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit264

bb.ad:                                            ; preds = %30, %.critedge452
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.as

bb.ae:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i142, label %_ZNK7testing15AssertionResult15failure_messageEv.exit143, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit143

_ZNK7testing15AssertionResult15failure_messageEv.exit143: ; preds = %bb.ag, %bb.af
  %i.cb = phi ptr [ %i.ca, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 551, ptr noundef %i.cb)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit143
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cc = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i144 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i144, label %_ZN7testing7MessageD2Ev.exit146, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.ai
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit146

_ZN7testing7MessageD2Ev.exit146:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !46 ; 4 uses
  %.not.i.i147 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i147, label %_ZN7testing15AssertionResultD2Ev.exit151, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit146
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !50 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i148: ; preds = %bb.aj
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !53
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i148
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit151

_ZN7testing15AssertionResultD2Ev.exit151:         ; preds = %_ZN7testing7MessageD2Ev.exit146, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.dc

bb.ak:                                            ; preds = %bb.ae
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit154

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit143
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn52 = phi { ptr, i32 } [ %i.co, %bb.am ], [ %i.cn, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cp = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i152 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i152, label %_ZN7testing7MessageD2Ev.exit154, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %bb.an
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit154

_ZN7testing7MessageD2Ev.exit154:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153, %bb.an, %bb.ak
  %.pn52.pn = phi { ptr, i32 } [ %i.cm, %bb.ak ], [ %.pn52, %bb.an ], [ %.pn52, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.as

.critedge78:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !46 ; 4 uses
  %.not.i.i155 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i155, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge78
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156: ; preds = %bb.ao
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !53
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157, %.critedge78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %i.a, ptr %14, align 8, !tbaa !64
  %.sroa.30.40..sroa_idx327 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 2, ptr %.sroa.30.40..sroa_idx327, align 8, !tbaa !33
  %.sroa.33.40..sroa_idx335 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 4, ptr %.sroa.33.40..sroa_idx335, align 8, !tbaa !33
  %.sroa.36.40..sroa_idx343 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 4, ptr %.sroa.36.40..sroa_idx343, align 8, !tbaa !33
  %.sroa.39.40..sroa_idx351 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 2, ptr %.sroa.39.40..sroa_idx351, align 8, !tbaa !33
  %i.da = load i64, ptr %.sroa.13.0..sroa_idx305, align 8, !tbaa !70, !noalias !454
  %i.db = icmp eq i64 %i.da, 4
  br i1 %i.db, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit162 unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit162 unwind label %bb.at

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit162: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.dc = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %.critedge80, label %bb.au

bb.as:                                            ; preds = %_ZN7testing7MessageD2Ev.exit154, %bb.ad
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %_ZN7testing7MessageD2Ev.exit154 ], [ %i.bx, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.de

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bh

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i163 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i163, label %_ZNK7testing15AssertionResult15failure_messageEv.exit164, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit164

_ZNK7testing15AssertionResult15failure_messageEv.exit164: ; preds = %bb.aw, %bb.av
  %i.di = phi ptr [ %i.dh, %bb.aw ], [ @.str.108, %bb.av ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 552, ptr noundef %i.di)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit164
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.dj = load ptr, ptr %15, align 8, !tbaa !52   ; 3 uses
end_hunk_5
