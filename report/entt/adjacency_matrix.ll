Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/adjacency_matrix?download=true
inline.NumInlined: 3282
inline.NumDeleted: 744
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN29AdjacencyMatrix_Vertices_Test8TestBodyEv:bb.a
  br i1 %.not.i.i196, label %_ZN7testing7MessageD2Ev.exit198, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197: ; preds = %bb.cc
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !21
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(128) %i.fs) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit198

_ZN7testing7MessageD2Ev.exit198:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197, %bb.cc, %bb.bz
  %.pn63.pn = phi { ptr, i32 } [ %i.fp, %bb.bz ], [ %.pn63, %bb.cc ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #26
  br label %bb.cf

.critedge82:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit185
  %i.fw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !46 ; 4 uses
  %.not.i.i199 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i199, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.critedge82
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !50 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i200: ; preds = %bb.cd
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !53
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i200
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef 32) #28
  br label %bb.ce

bb.ce:                                            ; preds = %.critedge82, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt13iota_iteratorImEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit207 unwind label %bb.cg

_ZN7testing8internal8EqHelper7CompareIN4entt13iota_iteratorImEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit207: ; preds = %bb.ce
  %.pre253 = load i8, ptr %19, align 8, !tbaa !43, !range !44
  %i.gd = trunc nuw i8 %.pre253 to i1
  br i1 %i.gd, label %bb.cq, label %bb.ch

bb.cf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit198, %bb.bs
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %_ZN7testing7MessageD2Ev.exit198 ], [ %i.fa, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit223

bb.cg:                                            ; preds = %bb.ce
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ch:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt13iota_iteratorImEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit207
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ci unwind label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.gf = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i208 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i208, label %_ZNK7testing15AssertionResult15failure_messageEv.exit209, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit209

_ZNK7testing15AssertionResult15failure_messageEv.exit209: ; preds = %bb.cj, %bb.ci
  %i.gi = phi ptr [ %i.gh, %bb.cj ], [ @.str.108, %bb.ci ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 294, ptr noundef %i.gi)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit209
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.gj = load ptr, ptr %20, align 8, !tbaa !52   ; 3 uses
  %.not.i.i210 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i210, label %_ZN7testing7MessageD2Ev.exit212, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211: ; preds = %bb.cl
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !21
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(128) %i.gj) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit212

_ZN7testing7MessageD2Ev.exit212:                  ; preds = %bb.cl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ch
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit215

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit209
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn67 = phi { ptr, i32 } [ %i.gp, %bb.co ], [ %i.go, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.gq = load ptr, ptr %20, align 8, !tbaa !52   ; 3 uses
  %.not.i.i213 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i213, label %_ZN7testing7MessageD2Ev.exit215, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.cp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !21
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(128) %i.gq) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit215

_ZN7testing7MessageD2Ev.exit215:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, %bb.cp, %bb.cm
  %.pn67.pn = phi { ptr, i32 } [ %i.gn, %bb.cm ], [ %.pn67, %bb.cp ], [ %.pn67, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #26
  br label %bb.cs

bb.cq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt13iota_iteratorImEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit207, %_ZN7testing7MessageD2Ev.exit212
  %i.gu = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !46 ; 4 uses
  %.not.i.i216 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i216, label %_ZN7testing15AssertionResultD2Ev.exit220, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !50 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
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
  store ptr %i.a, ptr %7, align 8, !tbaa !63
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
  %i.cc = add nuw nsw i64 %i.bn, 5                ; 3 uses
  %.not.i.i.i127.3 = icmp eq i64 %i.cc, 9
  br i1 %.not.i.i.i127.3, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i125.4

.lr.ph.i.i.i125.4:                                ; preds = %.lr.ph.3
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.4 = icmp eq i64 %i.ce, 0
  br i1 %.not1.i.i.i126.4, label %.lr.ph.4, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.4:                                         ; preds = %.lr.ph.i.i.i125.4
  %i.cf = add nuw nsw i64 %i.bn, 6                ; 3 uses
  %.not.i.i.i127.4 = icmp eq i64 %i.cf, 9
  br i1 %.not.i.i.i127.4, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i125.5

.lr.ph.i.i.i125.5:                                ; preds = %.lr.ph.4
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.5 = icmp eq i64 %i.ch, 0
  br i1 %.not1.i.i.i126.5, label %.lr.ph.5, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.5:                                         ; preds = %.lr.ph.i.i.i125.5
  %i.ci = add nuw nsw i64 %i.bn, 7                ; 3 uses
  %.not.i.i.i127.5 = icmp eq i64 %i.ci, 9
  br i1 %.not.i.i.i127.5, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i125.6

.lr.ph.i.i.i125.6:                                ; preds = %.lr.ph.5
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci
  %23 = load i64, ptr %22, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.6 = icmp eq i64 %23, 0
  br i1 %.not1.i.i.i126.6, label %.lr.ph.6, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.6:                                         ; preds = %.lr.ph.i.i.i125.6
  br i1 %.not1.i.i.i92, label %.lr.ph.i.i.i125.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge

.lr.ph.i.i.i125.7:                                ; preds = %.lr.ph.6
  %24 = or disjoint i64 %i.bn, 8                  ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !33, !noalias !251
  %.not1.i.i.i126.7 = icmp eq i64 %i.ck, 0
  br i1 %.not1.i.i.i126.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i125.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i125, %.lr.ph.i.i.i125.1, %.lr.ph.i.i.i125.2, %.lr.ph.i.i.i125.3, %.lr.ph.i.i.i125.4, %.lr.ph.i.i.i125.5, %.lr.ph.i.i.i125.6, %.lr.ph.i.i.i125.7, %.lr.ph.i.i.i125.preheader, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge
  %25 = phi i64 [ 9, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge ], [ %i.bn, %.lr.ph.i.i.i125.preheader ], [ %i.bq, %.lr.ph.i.i.i125 ], [ %i.bt, %.lr.ph.i.i.i125.1 ], [ %i.bw, %.lr.ph.i.i.i125.2 ], [ %i.bz, %.lr.ph.i.i.i125.3 ], [ %i.cc, %.lr.ph.i.i.i125.4 ], [ %i.cf, %.lr.ph.i.i.i125.5 ], [ %i.ci, %.lr.ph.i.i.i125.6 ], [ %24, %.lr.ph.i.i.i125.7 ] ; 5 uses
  store i64 %25, ptr %.sroa.10218.0..sroa_idx221, align 8
  store i64 0, ptr %9, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.cm, align 8
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
  %i.cn = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.critedge58, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit118, %bb.o
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit118 ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cp = landingpad { ptr, i32 }
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
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.ag, %bb.af
  %i.ct = phi ptr [ %i.cs, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 311, ptr noundef %i.ct)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cu = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.ai
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cy = load ptr, ptr %i.cq, align 8, !tbaa !46 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i135, label %_ZN7testing15AssertionResultD2Ev.exit139, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit134
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !50 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.aj
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !53
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit139

_ZN7testing15AssertionResultD2Ev.exit139:         ; preds = %_ZN7testing7MessageD2Ev.exit134, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bu

bb.ak:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn40 = phi { ptr, i32 } [ %i.dg, %bb.am ], [ %i.df, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dh = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.an
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dh) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %bb.an, %bb.ak
  %.pn40.pn = phi { ptr, i32 } [ %i.de, %bb.ak ], [ %.pn40, %bb.an ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.as

.critedge58:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !46 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i143, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge58
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !50 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.ao
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !53
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, %.critedge58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ds = udiv i64 %25, 3
  %i.dt = urem i64 %25, 3                         ; 2 uses
  store i64 %i.ds, ptr %14, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i64 1, ptr %15, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 2, ptr %i.dv, align 8
  %.off = add i64 %25, -3
  %i.dw = icmp ult i64 %.off, 3
  %i.dx = icmp eq i64 %i.dt, 2
  %i.dy = and i1 %i.dw, %i.dx
  br i1 %i.dy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152 unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152 unwind label %bb.at

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.dz = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %.critedge60, label %bb.au

bb.as:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %bb.ad
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %i.cp, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bw

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bh

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i153, label %_ZNK7testing15AssertionResult15failure_messageEv.exit154, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit154

_ZNK7testing15AssertionResult15failure_messageEv.exit154: ; preds = %bb.aw, %bb.av
  %i.ef = phi ptr [ %i.ee, %bb.aw ], [ @.str.108, %bb.av ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 312, ptr noundef %i.ef)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit154
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.eg = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %.not.i.i155 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i155, label %_ZN7testing7MessageD2Ev.exit157, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156: ; preds = %bb.ay
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !21
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(128) %i.eg) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit157

_ZN7testing7MessageD2Ev.exit157:                  ; preds = %bb.ay, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.ek = load ptr, ptr %i.ec, align 8, !tbaa !46 ; 4 uses
  %.not.i.i158 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i158, label %_ZN7testing15AssertionResultD2Ev.exit162, label %bb.az

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit157
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !50 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159: ; preds = %bb.az
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !53
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit162

_ZN7testing15AssertionResultD2Ev.exit162:         ; preds = %_ZN7testing7MessageD2Ev.exit157, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bu

bb.ba:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit165

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit154
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ax
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn44 = phi { ptr, i32 } [ %i.es, %bb.bc ], [ %i.er, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.et = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %.not.i.i163 = icmp eq ptr %i.et, null
  br i1 %.not.i.i163, label %_ZN7testing7MessageD2Ev.exit165, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164: ; preds = %bb.bd
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !21
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit165

_ZN7testing7MessageD2Ev.exit165:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164, %bb.bd, %bb.ba
  %.pn44.pn = phi { ptr, i32 } [ %i.eq, %bb.ba ], [ %.pn44, %bb.bd ], [ %.pn44, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %bb.bh

.critedge60:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit152
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !46 ; 4 uses
  %.not.i.i166 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i166, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.critedge60
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !50 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i167: ; preds = %bb.be
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !53
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i167
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 32) #28
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168, %.critedge60
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.fe = add i64 %25, 1                          ; 4 uses
  store i64 %i.fe, ptr %.sroa.10218.0..sroa_idx221, align 8, !tbaa !70
  %.not2.i.i = icmp eq i64 %i.fe, 9
  br i1 %.not2.i.i, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bf
  %.sroa.10218.0..sroa_idx221.promoted = load i64, ptr %.sroa.10218.0..sroa_idx221, align 8
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !33
  %.not1.i.i337 = icmp eq i64 %i.fg, 0
  br i1 %.not1.i.i337, label %.lr.ph338, label %._crit_edge

bb.bg:                                            ; preds = %.lr.ph338
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fk
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !33
  %.not1.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not1.i.i, label %.lr.ph338, label %._crit_edge, !llvm.loop !1

.lr.ph338:                                        ; preds = %.lr.ph.i.i, %bb.bg
  %i.fj = phi i64 [ %i.fk, %bb.bg ], [ %i.fe, %.lr.ph.i.i ]
  %i.fk = add i64 %i.fj, 1                        ; 5 uses
  %.not.i.i171 = icmp eq i64 %i.fk, 9
  br i1 %.not.i.i171, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.thread326, label %bb.bg, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.thread326: ; preds = %.lr.ph338
  store i64 %i.fk, ptr %.sroa.10218.0..sroa_idx221, align 8
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.thread

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.thread: ; preds = %bb.bf, %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.thread326
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174 unwind label %bb.bi

._crit_edge:                                      ; preds = %bb.bg, %.lr.ph.i.i
  %.lcssa = phi i64 [ %.sroa.10218.0..sroa_idx221.promoted, %.lr.ph.i.i ], [ %i.fk, %bb.bg ]
  store i64 %.lcssa, ptr %.sroa.10218.0..sroa_idx221, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr %i.a, ptr %19, align 8, !tbaa !63
  %.sroa.21.40..sroa_idx236 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 3, ptr %.sroa.21.40..sroa_idx236, align 8, !tbaa !33
  %.sroa.23.40..sroa_idx240 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 9, ptr %.sroa.23.40..sroa_idx240, align 8, !tbaa !33
  %.sroa.25.40..sroa_idx244 = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i64 9, ptr %.sroa.25.40..sroa_idx244, align 8, !tbaa !33
  %.sroa.27.40..sroa_idx248 = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i64 1, ptr %.sroa.27.40..sroa_idx248, align 8, !tbaa !33
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174 unwind label %bb.bi

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174: ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.fl = load i8, ptr %18, align 8, !tbaa !43, !range !44, !noundef !45
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.bs, label %bb.bj

bb.bh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit165, %bb.at
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZN7testing7MessageD2Ev.exit165 ], [ %i.eb, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bw

bb.bi:                                            ; preds = %._crit_edge, %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.thread
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bv

bb.bj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.fo = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i175, label %_ZNK7testing15AssertionResult15failure_messageEv.exit176, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit176

_ZNK7testing15AssertionResult15failure_messageEv.exit176: ; preds = %bb.bl, %bb.bk
  %i.fr = phi ptr [ %i.fq, %bb.bl ], [ @.str.108, %bb.bk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 313, ptr noundef %i.fr)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit176
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.fs = load ptr, ptr %20, align 8, !tbaa !52   ; 3 uses
  %.not.i.i177 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i177, label %_ZN7testing7MessageD2Ev.exit179, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178: ; preds = %bb.bn
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !21
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(128) %i.fs) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit179

_ZN7testing7MessageD2Ev.exit179:                  ; preds = %bb.bn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bj
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit182

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit176
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bm
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn48 = phi { ptr, i32 } [ %i.fy, %bb.bq ], [ %i.fx, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.fz = load ptr, ptr %20, align 8, !tbaa !52   ; 3 uses
  %.not.i.i180 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i180, label %_ZN7testing7MessageD2Ev.exit182, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181: ; preds = %bb.br
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(128) %i.fz) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit182

_ZN7testing7MessageD2Ev.exit182:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181, %bb.br, %bb.bo
  %.pn48.pn = phi { ptr, i32 } [ %i.fw, %bb.bo ], [ %.pn48, %bb.br ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  br label %bb.bv

bb.bs:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit174, %_ZN7testing7MessageD2Ev.exit179
  %i.gd = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !46 ; 4 uses
  %.not.i.i183 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i183, label %_ZN7testing15AssertionResultD2Ev.exit187, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !50 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184: ; preds = %bb.bt
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !53
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit187

_ZN7testing15AssertionResultD2Ev.exit187:         ; preds = %bb.bs, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162, %_ZN7testing15AssertionResultD2Ev.exit139, %_ZN7testing15AssertionResultD2Ev.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit115, %_ZN7testing15AssertionResultD2Ev.exit, %bb.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #28
  ret void

bb.bv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit182, %bb.bi
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit182 ], [ %i.fn, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bh, %bb.as
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %bb.bv ], [ %.pn44.pn.pn, %bb.bh ], [ %.pn40.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit189: ; preds = %bb.bw, %bb.ac, %bb.n
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn, %bb.bw ], [ %.pn36.pn.pn, %bb.ac ], [ %.pn.pn.pn, %bb.n ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #28
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN46AdjacencyMatrix_EdgesBackwardOnlyDirected_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %14 = alloca %"class.entt::internal::edge_iterator", align 8 ; 9 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 10 uses
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
  %.not.i.i.i50 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i50, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.h = phi ptr [ %i.g, %bb.e ], [ @.str.108, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 320, ptr noundef %i.h)
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
  %.not.i.i51 = icmp eq ptr %i.m, null
  br i1 %.not.i.i51, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

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
  br label %_ZN7testing7MessageD2Ev.exit54

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
  %.not.i.i52 = icmp eq ptr %i.v, null
  br i1 %.not.i.i52, label %_ZN7testing7MessageD2Ev.exit54, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53: ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit54

_ZN7testing7MessageD2Ev.exit54:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  br label %bb.n

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %.not.i.i55 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i55, label %.lr.ph.i.i.i66.preheader, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i56: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i56
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #28
  br label %.lr.ph.i.i.i66.preheader

.lr.ph.i.i.i66.preheader:                         ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.ag, align 8, !tbaa !33, !noalias !258
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !259
  %.not1.i.i.i68 = icmp eq i64 %i.ah, 0
  br i1 %.not1.i.i.i68, label %.lr.ph.i.i.i66.1, label %.lr.ph.i.i.i66.2

.lr.ph.i.i.i66.1:                                 ; preds = %.lr.ph.i.i.i66.preheader
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !259
  %.not1.i.i.i68.1 = icmp eq i64 %i.ai, 0
  %spec.select = select i1 %.not1.i.i.i68.1, i64 2, i64 1
  br label %.lr.ph.i.i.i66.2

.lr.ph.i.i.i66.2:                                 ; preds = %.lr.ph.i.i.i66.1, %.lr.ph.i.i.i66.preheader
  %.sroa.311.1.i69 = phi i64 [ %spec.select, %.lr.ph.i.i.i66.1 ], [ 0, %.lr.ph.i.i.i66.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit unwind label %bb.o

_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit: ; preds = %.lr.ph.i.i.i66.2
  %i.aj = load i8, ptr %4, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.critedge46, label %bb.p

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit54, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit54 ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit141

bb.o:                                             ; preds = %.lr.ph.i.i.i66.2
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i82, label %_ZNK7testing15AssertionResult15failure_messageEv.exit83, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit83

_ZNK7testing15AssertionResult15failure_messageEv.exit83: ; preds = %bb.r, %bb.q
  %i.ap = phi ptr [ %i.ao, %bb.r ], [ @.str.108, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 325, ptr noundef %i.ap)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit83
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.aq = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit86, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85: ; preds = %bb.t
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit86

_ZN7testing7MessageD2Ev.exit86:                   ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !46 ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.au, null
  br i1 %.not.i.i87, label %_ZN7testing15AssertionResultD2Ev.exit91, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit86
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !50 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88: ; preds = %bb.u
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !53
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit91

_ZN7testing15AssertionResultD2Ev.exit91:          ; preds = %_ZN7testing7MessageD2Ev.exit86, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit94

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit83
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn30 = phi { ptr, i32 } [ %i.bc, %bb.x ], [ %i.bb, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bd = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit94, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.y
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit94

_ZN7testing7MessageD2Ev.exit94:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %bb.y, %bb.v
  %.pn30.pn = phi { ptr, i32 } [ %i.ba, %bb.v ], [ %.pn30, %bb.y ], [ %.pn30, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.ac

.critedge46:                                      ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46 ; 4 uses
  %.not.i.i95 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i95, label %.lr.ph.i.i.i101.preheader, label %bb.z

bb.z:                                             ; preds = %.critedge46
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96: ; preds = %bb.z
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !53
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 32) #28
  br label %.lr.ph.i.i.i101.preheader

.lr.ph.i.i.i101.preheader:                        ; preds = %.critedge46, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !63
  %.sroa.8156.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %.sroa.8156.0..sroa_idx159, align 8, !tbaa !33
  %.sroa.10161.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.12166.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 4, ptr %.sroa.12166.0..sroa_idx169, align 8, !tbaa !33
  %.sroa.14.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %.sroa.14.0..sroa_idx173, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bo = add nuw nsw i64 %.sroa.311.1.i69, 1     ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !33, !noalias !260
  %.not1.i.i.i102211 = icmp eq i64 %i.bq, 0
  br i1 %.not1.i.i.i102211, label %.lr.ph.preheader, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i101.preheader
  %i.br = add nuw nsw i64 %.sroa.311.1.i69, 2     ; 2 uses
  %.not.i.i.i103251 = icmp eq i64 %i.br, 4
  br i1 %.not.i.i.i103251, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i101.lr.ph, !llvm.loop !1

.lr.ph.i.i.i101.lr.ph:                            ; preds = %.lr.ph.preheader
  br label %.lr.ph.i.i.i101, !llvm.loop !1

.lr.ph.i.i.i101:                                  ; preds = %.lr.ph.i.i.i101.lr.ph, %.lr.ph
  %17 = phi i64 [ %i.br, %.lr.ph.i.i.i101.lr.ph ], [ %i.bu, %.lr.ph ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %17
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !33, !noalias !260
  %.not1.i.i.i102 = icmp eq i64 %i.bt, 0
  br i1 %.not1.i.i.i102, label %.lr.ph, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.i.i101
  %i.bu = add nuw nsw i64 %17, 1                  ; 2 uses
  %.not.i.i.i103 = icmp eq i64 %i.bu, 4
  br i1 %.not.i.i.i103, label %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge, label %.lr.ph.i.i.i101, !llvm.loop !1

.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph
  br label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge: ; preds = %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge, %.lr.ph.preheader
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i101, %.lr.ph.i.i.i101.preheader, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge
  %18 = phi i64 [ 4, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge ], [ %i.bo, %.lr.ph.i.i.i101.preheader ], [ %17, %.lr.ph.i.i.i101 ] ; 2 uses
  store i64 %18, ptr %.sroa.10161.0..sroa_idx164, align 8
  %i.bv = lshr i64 %.sroa.311.1.i69, 1            ; 2 uses
  %i.bw = and i64 %.sroa.311.1.i69, 1             ; 2 uses
  store i64 %i.bv, ptr %9, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bw, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 1, ptr %10, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.by, align 8
  %i.bz = icmp ne i64 %i.bv, 0
  %i.ca = icmp eq i64 %i.bw, 0
  %i.cb = and i1 %i.bz, %i.ca
  br i1 %i.cb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

bb.ab:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.ad

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.cc = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.critedge48, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit94, %bb.o
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZN7testing7MessageD2Ev.exit94 ], [ %i.al, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit141

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.ce = landingpad { ptr, i32 }
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
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i106, label %_ZNK7testing15AssertionResult15failure_messageEv.exit107, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit107

_ZNK7testing15AssertionResult15failure_messageEv.exit107: ; preds = %bb.ag, %bb.af
  %i.ci = phi ptr [ %i.ch, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 329, ptr noundef %i.ci)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit107
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cj = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i108, label %_ZN7testing7MessageD2Ev.exit110, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %bb.ai
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(128) %i.cj) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit110

_ZN7testing7MessageD2Ev.exit110:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !46 ; 4 uses
  %.not.i.i111 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i111, label %_ZN7testing15AssertionResultD2Ev.exit115, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit110
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !50 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112: ; preds = %bb.aj
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !53
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit115

_ZN7testing15AssertionResultD2Ev.exit115:         ; preds = %_ZN7testing7MessageD2Ev.exit110, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bf

bb.ak:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit118

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit107
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn34 = phi { ptr, i32 } [ %i.cv, %bb.am ], [ %i.cu, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cw = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.an
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117, %bb.an, %bb.ak
  %.pn34.pn = phi { ptr, i32 } [ %i.ct, %bb.ak ], [ %.pn34, %bb.an ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.as

.critedge48:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !46 ; 4 uses
  %.not.i.i119 = icmp eq ptr %i.db, null
  br i1 %.not.i.i119, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !50 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120: ; preds = %bb.ao
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !53
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, %.critedge48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %i.a, ptr %14, align 8, !tbaa !63
  %.sroa.21.40..sroa_idx179 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 2, ptr %.sroa.21.40..sroa_idx179, align 8, !tbaa !33
  %.sroa.23.40..sroa_idx183 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 4, ptr %.sroa.23.40..sroa_idx183, align 8, !tbaa !33
  %.sroa.25.40..sroa_idx187 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 4, ptr %.sroa.25.40..sroa_idx187, align 8, !tbaa !33
  %.sroa.27.40..sroa_idx191 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 1, ptr %.sroa.27.40..sroa_idx191, align 8, !tbaa !33
  %i.dh = icmp eq i64 %18, 4
  br i1 %i.dh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit126 unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit126 unwind label %bb.at

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit126: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.di = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.bd, label %bb.au

bb.as:                                            ; preds = %_ZN7testing7MessageD2Ev.exit118, %bb.ad
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit118 ], [ %i.ce, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bh

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bg

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i127, label %_ZNK7testing15AssertionResult15failure_messageEv.exit128, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit128

_ZNK7testing15AssertionResult15failure_messageEv.exit128: ; preds = %bb.aw, %bb.av
  %i.do = phi ptr [ %i.dn, %bb.aw ], [ @.str.108, %bb.av ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 330, ptr noundef %i.do)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit128
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.dp = load ptr, ptr %15, align 8, !tbaa !52   ; 3 uses
  %.not.i.i129 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i129, label %_ZN7testing7MessageD2Ev.exit131, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130: ; preds = %bb.ay
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(128) %i.dp) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit131

_ZN7testing7MessageD2Ev.exit131:                  ; preds = %bb.ay, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bd

bb.az:                                            ; preds = %bb.au
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit134

bb.ba:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit128
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ax
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn38 = phi { ptr, i32 } [ %i.dv, %bb.bb ], [ %i.du, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.dw = load ptr, ptr %15, align 8, !tbaa !52   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.bc
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !21
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(128) %i.dw) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, %bb.bc, %bb.az
  %.pn38.pn = phi { ptr, i32 } [ %i.dt, %bb.az ], [ %.pn38, %bb.bc ], [ %.pn38, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %bb.bg

bb.bd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit126, %_ZN7testing7MessageD2Ev.exit131
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !46 ; 4 uses
  %.not.i.i135 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i135, label %_ZN7testing15AssertionResultD2Ev.exit139, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !50 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.be
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !53
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit139

_ZN7testing15AssertionResultD2Ev.exit139:         ; preds = %bb.bd, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit115, %_ZN7testing15AssertionResultD2Ev.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit91, %_ZN7testing15AssertionResultD2Ev.exit, %bb.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #28
  ret void

bb.bg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit134, %bb.at
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %_ZN7testing7MessageD2Ev.exit134 ], [ %i.dk, %bb.at ]
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
  store ptr %i.a, ptr %7, align 8, !tbaa !63
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
  %i.ce = add nuw nsw i64 %i.bp, 5                ; 3 uses
  %.not.i.i.i151.3 = icmp eq i64 %i.ce, 9
  br i1 %.not.i.i.i151.3, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i149.4

.lr.ph.i.i.i149.4:                                ; preds = %.lr.ph.3
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.4 = icmp eq i64 %i.cg, 0
  br i1 %.not1.i.i.i150.4, label %.lr.ph.4, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.4:                                         ; preds = %.lr.ph.i.i.i149.4
  %i.ch = add nuw nsw i64 %i.bp, 6                ; 3 uses
  %.not.i.i.i151.4 = icmp eq i64 %i.ch, 9
  br i1 %.not.i.i.i151.4, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i149.5

.lr.ph.i.i.i149.5:                                ; preds = %.lr.ph.4
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.5 = icmp eq i64 %i.cj, 0
  br i1 %.not1.i.i.i150.5, label %.lr.ph.5, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.5:                                         ; preds = %.lr.ph.i.i.i149.5
  %i.ck = add nuw nsw i64 %i.bp, 7                ; 3 uses
  %.not.i.i.i151.5 = icmp eq i64 %i.ck, 9
  br i1 %.not.i.i.i151.5, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i149.6

.lr.ph.i.i.i149.6:                                ; preds = %.lr.ph.5
  %32 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ck
  %33 = load i64, ptr %32, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.6 = icmp eq i64 %33, 0
  br i1 %.not1.i.i.i150.6, label %.lr.ph.6, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.6:                                         ; preds = %.lr.ph.i.i.i149.6
  br i1 %.not1.i.i.i116, label %.lr.ph.i.i.i149.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge

.lr.ph.i.i.i149.7:                                ; preds = %.lr.ph.6
  %34 = or disjoint i64 %i.bp, 8                  ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %34
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !33, !noalias !272
  %.not1.i.i.i150.7 = icmp eq i64 %i.cm, 0
  br i1 %.not1.i.i.i150.7, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i149.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i149, %.lr.ph.i.i.i149.1, %.lr.ph.i.i.i149.2, %.lr.ph.i.i.i149.3, %.lr.ph.i.i.i149.4, %.lr.ph.i.i.i149.5, %.lr.ph.i.i.i149.6, %.lr.ph.i.i.i149.7, %.lr.ph.i.i.i149.preheader, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge
  %35 = phi i64 [ 9, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge ], [ %i.bp, %.lr.ph.i.i.i149.preheader ], [ %i.bs, %.lr.ph.i.i.i149 ], [ %i.bv, %.lr.ph.i.i.i149.1 ], [ %i.by, %.lr.ph.i.i.i149.2 ], [ %i.cb, %.lr.ph.i.i.i149.3 ], [ %i.ce, %.lr.ph.i.i.i149.4 ], [ %i.ch, %.lr.ph.i.i.i149.5 ], [ %i.ck, %.lr.ph.i.i.i149.6 ], [ %34, %.lr.ph.i.i.i149.7 ] ; 5 uses
  store i64 %35, ptr %.sroa.10306.0..sroa_idx309, align 8
  store i64 0, ptr %9, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.co, align 8
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
  %i.cp = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %.critedge78, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %bb.o
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %i.am, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit273

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cr = landingpad { ptr, i32 }
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
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i154, label %_ZNK7testing15AssertionResult15failure_messageEv.exit155, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit155

_ZNK7testing15AssertionResult15failure_messageEv.exit155: ; preds = %bb.ag, %bb.af
  %i.cv = phi ptr [ %i.cu, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 347, ptr noundef %i.cv)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit155
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cw = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.ai
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.da = load ptr, ptr %i.cs, align 8, !tbaa !46 ; 4 uses
  %.not.i.i159 = icmp eq ptr %i.da, null
  br i1 %.not.i.i159, label %_ZN7testing15AssertionResultD2Ev.exit163, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit158
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !50 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160: ; preds = %bb.aj
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !53
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit163

_ZN7testing15AssertionResultD2Ev.exit163:         ; preds = %_ZN7testing7MessageD2Ev.exit158, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.dc

bb.ak:                                            ; preds = %bb.ae
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit166

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit155
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn52 = phi { ptr, i32 } [ %i.di, %bb.am ], [ %i.dh, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dj = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %bb.an
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(128) %i.dj) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165, %bb.an, %bb.ak
  %.pn52.pn = phi { ptr, i32 } [ %i.dg, %bb.ak ], [ %.pn52, %bb.an ], [ %.pn52, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.as

.critedge78:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !46 ; 4 uses
  %.not.i.i167 = icmp eq ptr %i.do, null
  br i1 %.not.i.i167, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge78
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !50 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168: ; preds = %bb.ao
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !53
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, %.critedge78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.du = udiv i64 %35, 3
  %i.dv = urem i64 %35, 3                         ; 2 uses
  store i64 %i.du, ptr %14, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.dv, ptr %i.dw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i64 1, ptr %15, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.dx, align 8
  %.off = add i64 %35, -3
  %i.dy = icmp ult i64 %.off, 3
  %i.dz = icmp eq i64 %i.dv, 0
  %i.ea = and i1 %i.dy, %i.dz
  br i1 %i.ea, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176 unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176 unwind label %bb.at

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.eb = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.critedge80, label %bb.au

bb.as:                                            ; preds = %_ZN7testing7MessageD2Ev.exit166, %bb.ad
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %_ZN7testing7MessageD2Ev.exit166 ], [ %i.cr, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.de

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bj

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i177 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i177, label %_ZNK7testing15AssertionResult15failure_messageEv.exit178, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit178

_ZNK7testing15AssertionResult15failure_messageEv.exit178: ; preds = %bb.aw, %bb.av
  %i.eh = phi ptr [ %i.eg, %bb.aw ], [ @.str.108, %bb.av ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 348, ptr noundef %i.eh)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit178
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.ei = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %.not.i.i179 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i179, label %_ZN7testing7MessageD2Ev.exit181, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180: ; preds = %bb.ay
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(128) %i.ei) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit181

_ZN7testing7MessageD2Ev.exit181:                  ; preds = %bb.ay, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.em = load ptr, ptr %i.ee, align 8, !tbaa !46 ; 4 uses
  %.not.i.i182 = icmp eq ptr %i.em, null
  br i1 %.not.i.i182, label %_ZN7testing15AssertionResultD2Ev.exit186, label %bb.az

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit181
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !50 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183: ; preds = %bb.az
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !53
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit186

_ZN7testing15AssertionResultD2Ev.exit186:         ; preds = %_ZN7testing7MessageD2Ev.exit181, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.dc

bb.ba:                                            ; preds = %bb.au
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit189

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit178
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ax
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn56 = phi { ptr, i32 } [ %i.eu, %bb.bc ], [ %i.et, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.ev = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.bd
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !21
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(128) %i.ev) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188, %bb.bd, %bb.ba
  %.pn56.pn = phi { ptr, i32 } [ %i.es, %bb.ba ], [ %.pn56, %bb.bd ], [ %.pn56, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %bb.bj

.critedge80:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit176
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !46 ; 4 uses
  %.not.i.i190 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i190, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.critedge80
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !50 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191: ; preds = %bb.be
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !53
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 32) #28
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192, %.critedge80
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.fg = add i64 %35, 1                          ; 4 uses
  %.not2.i.i = icmp eq i64 %i.fg, 9
  br i1 %.not2.i.i, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bf
  %.sroa.10306.0..sroa_idx309.promoted = load i64, ptr %.sroa.10306.0..sroa_idx309, align 8
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !33
  %.not1.i.i452 = icmp eq i64 %i.fi, 0
  br i1 %.not1.i.i452, label %.lr.ph453, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit

bb.bg:                                            ; preds = %.lr.ph453
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fm
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !33
  %.not1.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not1.i.i, label %.lr.ph453, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit, !llvm.loop !1

.lr.ph453:                                        ; preds = %.lr.ph.i.i, %bb.bg
  %i.fl = phi i64 [ %i.fm, %bb.bg ], [ %i.fg, %.lr.ph.i.i ]
  %i.fm = add i64 %i.fl, 1                        ; 6 uses
  %.not.i.i195 = icmp eq i64 %i.fm, 9
  br i1 %.not.i.i195, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit_crit_edge, label %bb.bg, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit_crit_edge: ; preds = %.lr.ph453
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit: ; preds = %bb.bg, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit_crit_edge, %.lr.ph.i.i
  %i.fn = phi i64 [ %.sroa.10306.0..sroa_idx309.promoted, %.lr.ph.i.i ], [ %i.fm, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit_crit_edge ], [ %i.fm, %bb.bg ]
  %.ph443 = phi i64 [ %i.fg, %.lr.ph.i.i ], [ 9, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit_crit_edge ], [ %i.fm, %bb.bg ]
  store i64 %i.fn, ptr %.sroa.10306.0..sroa_idx309, align 8
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit: ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit, %bb.bf
  %i.fo = phi i64 [ 9, %bb.bf ], [ %.ph443, %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit.loopexit ] ; 4 uses
  %i.fp = udiv i64 %i.fo, 3
  %i.fq = urem i64 %i.fo, 3                       ; 2 uses
  store i64 %i.fp, ptr %19, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.fq, ptr %i.fr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store i64 1, ptr %20, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 2, ptr %i.fs, align 8
  %.off432 = add i64 %i.fo, -3
  %i.ft = icmp ult i64 %.off432, 3
  %i.fu = icmp eq i64 %i.fq, 2
  %i.fv = and i1 %i.ft, %i.fu
  br i1 %i.fv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit202 unwind label %bb.bk

bb.bi:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit202 unwind label %bb.bk

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit202: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.fw = load i8, ptr %18, align 8, !tbaa !43, !range !44, !noundef !45
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %.critedge82, label %bb.bl

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit189, %bb.at
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %_ZN7testing7MessageD2Ev.exit189 ], [ %i.ed, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.de

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ca

bb.bl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bm unwind label %bb.br

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i203, label %_ZNK7testing15AssertionResult15failure_messageEv.exit204, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit204

_ZNK7testing15AssertionResult15failure_messageEv.exit204: ; preds = %bb.bn, %bb.bm
  %i.gc = phi ptr [ %i.gb, %bb.bn ], [ @.str.108, %bb.bm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 349, ptr noundef %i.gc)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit204
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.gd = load ptr, ptr %21, align 8, !tbaa !52   ; 3 uses
  %.not.i.i205 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i205, label %_ZN7testing7MessageD2Ev.exit207, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206: ; preds = %bb.bp
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(128) %i.gd) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit207

_ZN7testing7MessageD2Ev.exit207:                  ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.gh = load ptr, ptr %i.fz, align 8, !tbaa !46 ; 4 uses
  %.not.i.i208 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i208, label %_ZN7testing15AssertionResultD2Ev.exit212, label %bb.bq

bb.bq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit207
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !50 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i209: ; preds = %bb.bq
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !53
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i209
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit212

_ZN7testing15AssertionResultD2Ev.exit212:         ; preds = %_ZN7testing7MessageD2Ev.exit207, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.dc

bb.br:                                            ; preds = %bb.bl
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit215

bb.bs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit204
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bo
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #26
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn60 = phi { ptr, i32 } [ %i.gp, %bb.bt ], [ %i.go, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.gq = load ptr, ptr %21, align 8, !tbaa !52   ; 3 uses
  %.not.i.i213 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i213, label %_ZN7testing7MessageD2Ev.exit215, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.bu
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !21
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(128) %i.gq) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit215

_ZN7testing7MessageD2Ev.exit215:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, %bb.bu, %bb.br
  %.pn60.pn = phi { ptr, i32 } [ %i.gn, %bb.br ], [ %.pn60, %bb.bu ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  br label %bb.ca

.critedge82:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit202
  %i.gu = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !46 ; 4 uses
  %.not.i.i216 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i216, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.critedge82
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !50 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217: ; preds = %bb.bv
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !53
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef 32) #28
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218, %.critedge82
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
end_hunk_0
begin_hunk_1_@_ZN36AdjacencyMatrix_EdgesUndirected_Test8TestBodyEv:bb.a
  %i.jb = phi i64 [ %i.jc, %bb.co ], [ %i.iw, %.lr.ph.i.i252 ]
  %i.jc = add i64 %i.jb, 1                        ; 5 uses
  %.not.i.i254 = icmp eq i64 %i.jc, 9
  br i1 %.not.i.i254, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread438, label %bb.co, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread438: ; preds = %.lr.ph466
  store i64 %i.jc, ptr %.sroa.10306.0..sroa_idx309, align 8
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread: ; preds = %bb.cn, %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread438
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit258 unwind label %bb.cq

._crit_edge:                                      ; preds = %bb.co, %.lr.ph.i.i252
  %.lcssa = phi i64 [ %.sroa.10306.0..sroa_idx309.promoted446, %.lr.ph.i.i252 ], [ %i.jc, %bb.co ]
  store i64 %.lcssa, ptr %.sroa.10306.0..sroa_idx309, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  store ptr %i.a, ptr %29, align 8, !tbaa !63
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
  %i.jd = load i8, ptr %28, align 8, !tbaa !43, !range !44, !noundef !45
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.da, label %bb.cr

bb.cp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit245, %bb.cb
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %_ZN7testing7MessageD2Ev.exit245 ], [ %i.ht, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.de

bb.cq:                                            ; preds = %._crit_edge, %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEv.exit255.thread
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.dd

bb.cr:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit258
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cs unwind label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  %i.jg = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i259 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i259, label %_ZNK7testing15AssertionResult15failure_messageEv.exit260, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit260

_ZNK7testing15AssertionResult15failure_messageEv.exit260: ; preds = %bb.ct, %bb.cs
  %i.jj = phi ptr [ %i.ji, %bb.ct ], [ @.str.108, %bb.cs ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 352, ptr noundef %i.jj)
          to label %bb.cu unwind label %bb.cx

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit260
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.jk = load ptr, ptr %30, align 8, !tbaa !52   ; 3 uses
  %.not.i.i261 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i261, label %_ZN7testing7MessageD2Ev.exit263, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i262

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i262: ; preds = %bb.cv
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !21
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(128) %i.jk) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit263

_ZN7testing7MessageD2Ev.exit263:                  ; preds = %bb.cv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.da

bb.cw:                                            ; preds = %bb.cr
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit266

bb.cx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit260
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cu
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #26
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn68 = phi { ptr, i32 } [ %i.jq, %bb.cy ], [ %i.jp, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.jr = load ptr, ptr %30, align 8, !tbaa !52   ; 3 uses
  %.not.i.i264 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i264, label %_ZN7testing7MessageD2Ev.exit266, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265: ; preds = %bb.cz
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !21
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(128) %i.jr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit266

_ZN7testing7MessageD2Ev.exit266:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265, %bb.cz, %bb.cw
  %.pn68.pn = phi { ptr, i32 } [ %i.jo, %bb.cw ], [ %.pn68, %bb.cz ], [ %.pn68, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #26
  br label %bb.dd

bb.da:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit258, %_ZN7testing7MessageD2Ev.exit263
  %i.jv = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !46 ; 4 uses
  %.not.i.i267 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i267, label %_ZN7testing15AssertionResultD2Ev.exit271, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !50 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268: ; preds = %bb.db
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !53
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef 32) #28
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
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %_ZN7testing7MessageD2Ev.exit266 ], [ %i.jf, %bb.cq ]
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
  store ptr %i.a, ptr %7, align 8, !tbaa !63
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
  br i1 %.not.i.i.i115315, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, label %.lr.ph.i.i.i113.lr.ph, !llvm.loop !1

.lr.ph.i.i.i113.lr.ph:                            ; preds = %.lr.ph.preheader
  %23 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !33, !noalias !283
  %.not1.i.i.i114 = icmp eq i64 %24, 0
  br i1 %.not1.i.i.i114, label %.lr.ph.a, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.a:                                         ; preds = %.lr.ph.i.i.i113.lr.ph
  %i.bq = add nuw nsw i64 %i.bn, 2                ; 3 uses
  %.not.i.i.i115.a = icmp eq i64 %i.bq, 4
  br i1 %.not.i.i.i115.a, label %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge, label %.lr.ph.i.i.i113.1.a

.lr.ph.i.i.i113.1.a:                              ; preds = %.lr.ph.a
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !33, !noalias !283
  %.not1.i.i.i114.1.a = icmp eq i64 %i.bs, 0
  br i1 %.not1.i.i.i114.1.a, label %.lr.ph.1, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.1:                                         ; preds = %.lr.ph.i.i.i113.1.a
  %i.bt = add nuw nsw i64 %i.bn, 3                ; 3 uses
  %.not.i.i.i115.1 = icmp eq i64 %i.bt, 4
  br i1 %.not.i.i.i115.1, label %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge, label %.lr.ph.i.i.i113.2

.lr.ph.i.i.i113.2:                                ; preds = %.lr.ph.1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !33, !noalias !283
  %.not1.i.i.i114.2 = icmp eq i64 %i.bv, 0
  br i1 %.not1.i.i.i114.2, label %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph.i.i.i113.2, %.lr.ph.1, %.lr.ph.a
  br label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge: ; preds = %.lr.ph.._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge_crit_edge, %.lr.ph.preheader
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit: ; preds = %.lr.ph.i.i.i113.lr.ph, %.lr.ph.i.i.i113.1.a, %.lr.ph.i.i.i113.2, %.lr.ph.i.i.i113.preheader, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge
  %25 = phi i64 [ 4, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit.loopexit_crit_edge ], [ %i.bn, %.lr.ph.i.i.i113.preheader ], [ %22, %.lr.ph.i.i.i113.lr.ph ], [ %i.bq, %.lr.ph.i.i.i113.1.a ], [ %i.bt, %.lr.ph.i.i.i113.2 ] ; 3 uses
  store i64 0, ptr %9, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i64 0, ptr %10, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.bx, align 8
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
  %i.by = load i8, ptr %8, align 8, !tbaa !43, !range !44, !noundef !45
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.critedge58, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit106, %bb.o
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit106 ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4entt16adjacency_matrixINS_14undirected_tagESaImEED2Ev.exit183

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.ca = landingpad { ptr, i32 }
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
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i118, label %_ZNK7testing15AssertionResult15failure_messageEv.exit119, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit119

_ZNK7testing15AssertionResult15failure_messageEv.exit119: ; preds = %bb.ag, %bb.af
  %i.ce = phi ptr [ %i.cd, %bb.ag ], [ @.str.108, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 368, ptr noundef %i.ce)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cf = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.ai
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(128) %i.cf) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cj = load ptr, ptr %i.cb, align 8, !tbaa !46 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i123, label %_ZN7testing15AssertionResultD2Ev.exit127, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit122
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !50 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124: ; preds = %bb.aj
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !53
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit127

_ZN7testing15AssertionResultD2Ev.exit127:         ; preds = %_ZN7testing7MessageD2Ev.exit122, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bw

bb.ak:                                            ; preds = %bb.ae
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit130

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn40 = phi { ptr, i32 } [ %i.cr, %bb.am ], [ %i.cq, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cs = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.an
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, %bb.an, %bb.ak
  %.pn40.pn = phi { ptr, i32 } [ %i.cp, %bb.ak ], [ %.pn40, %bb.an ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.at

.critedge58:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !46 ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i131, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge58
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !50 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132: ; preds = %bb.ao
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !53
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 32) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, %.critedge58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.dd = add nsw i64 %25, 1                      ; 4 uses
  store i64 %i.dd, ptr %.sroa.10209.0..sroa_idx212, align 8, !tbaa !70, !noalias !284
  %.not2.i.i.i136 = icmp eq i64 %i.dd, 4
  br i1 %.not2.i.i.i136, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140, label %.lr.ph.i.i.i137

.lr.ph.i.i.i137:                                  ; preds = %bb.ap
  %.sroa.10209.0..sroa_idx212.promoted = load i64, ptr %.sroa.10209.0..sroa_idx212, align 8
  %i.de = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !33, !noalias !284
  %.not1.i.i.i138316 = icmp eq i64 %i.df, 0
  br i1 %.not1.i.i.i138316, label %.lr.ph317, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit

bb.aq:                                            ; preds = %.lr.ph317
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dj
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !33, !noalias !284
  %.not1.i.i.i138 = icmp eq i64 %i.dh, 0
  br i1 %.not1.i.i.i138, label %.lr.ph317, label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit, !llvm.loop !1

.lr.ph317:                                        ; preds = %.lr.ph.i.i.i137, %bb.aq
  %i.di = phi i64 [ %i.dj, %bb.aq ], [ %i.dd, %.lr.ph.i.i.i137 ]
  %i.dj = add i64 %i.di, 1                        ; 5 uses
  %.not.i.i.i139 = icmp eq i64 %i.dj, 4
  br i1 %.not.i.i.i139, label %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit_crit_edge, label %bb.aq, !llvm.loop !1

._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit_crit_edge: ; preds = %.lr.ph317
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit, !llvm.loop !1

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit: ; preds = %bb.aq, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit_crit_edge, %.lr.ph.i.i.i137
  %i.dk = phi i64 [ %i.dj, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit_crit_edge ], [ %.sroa.10209.0..sroa_idx212.promoted, %.lr.ph.i.i.i137 ], [ %i.dj, %bb.aq ]
  %i.dl = phi i1 [ true, %._ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit_crit_edge ], [ false, %.lr.ph.i.i.i137 ], [ false, %bb.aq ]
  store i64 %i.dk, ptr %.sroa.10209.0..sroa_idx212, align 8
  br label %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140

_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140: ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit, %bb.ap
  %i.dm = phi i1 [ %i.dl, %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140.loopexit ], [ true, %bb.ap ]
  %i.dn = lshr i64 %25, 1                         ; 2 uses
  %i.do = and i64 %25, 1                          ; 2 uses
  store i64 %i.dn, ptr %14, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.do, ptr %i.dp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i64 1, ptr %15, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.dq, align 8
  %i.dr = icmp eq i64 %i.dn, 1
  %i.ds = icmp eq i64 %i.do, 0
  %i.dt = and i1 %i.dr, %i.ds
  br i1 %i.dt, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit147 unwind label %bb.au

bb.as:                                            ; preds = %_ZN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEppEi.exit140
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairImmES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit147 unwind label %bb.au

_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit147: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.du = load i8, ptr %13, align 8, !tbaa !43, !range !44, !noundef !45
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %.critedge60, label %bb.av

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit130, %bb.ad
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit130 ], [ %i.ca, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.by

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.dw = landingpad { ptr, i32 }
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
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i148, label %_ZNK7testing15AssertionResult15failure_messageEv.exit149, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit149

_ZNK7testing15AssertionResult15failure_messageEv.exit149: ; preds = %bb.ax, %bb.aw
  %i.ea = phi ptr [ %i.dz, %bb.ax ], [ @.str.108, %bb.aw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 369, ptr noundef %i.ea)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit149
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.eb = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i150, label %_ZN7testing7MessageD2Ev.exit152, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151: ; preds = %bb.az
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(128) %i.eb) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit152

_ZN7testing7MessageD2Ev.exit152:                  ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.ef = load ptr, ptr %i.dx, align 8, !tbaa !46 ; 4 uses
  %.not.i.i153 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i153, label %_ZN7testing15AssertionResultD2Ev.exit157, label %bb.ba

bb.ba:                                            ; preds = %_ZN7testing7MessageD2Ev.exit152
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !50 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154: ; preds = %bb.ba
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !53
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit157

_ZN7testing15AssertionResultD2Ev.exit157:         ; preds = %_ZN7testing7MessageD2Ev.exit152, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bw

bb.bb:                                            ; preds = %bb.av
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit160

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit149
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.ay
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn44 = phi { ptr, i32 } [ %i.en, %bb.bd ], [ %i.em, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.eo = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %.not.i.i158 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i158, label %_ZN7testing7MessageD2Ev.exit160, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159: ; preds = %bb.be
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !21
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit160

_ZN7testing7MessageD2Ev.exit160:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159, %bb.be, %bb.bb
  %.pn44.pn = phi { ptr, i32 } [ %i.el, %bb.bb ], [ %.pn44, %bb.be ], [ %.pn44, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %bb.bj

.critedge60:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairImmES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit147
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !46 ; 4 uses
  %.not.i.i161 = icmp eq ptr %i.et, null
  br i1 %.not.i.i161, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.critedge60
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !50 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i162: ; preds = %bb.bf
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !53
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i162
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef 32) #28
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163, %.critedge60
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr %i.a, ptr %19, align 8, !tbaa !63
  %.sroa.21.40..sroa_idx227 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 2, ptr %.sroa.21.40..sroa_idx227, align 8, !tbaa !33
  %.sroa.23.40..sroa_idx231 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 4, ptr %.sroa.23.40..sroa_idx231, align 8, !tbaa !33
  %.sroa.25.40..sroa_idx235 = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i64 4, ptr %.sroa.25.40..sroa_idx235, align 8, !tbaa !33
  %.sroa.27.40..sroa_idx239 = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i64 1, ptr %.sroa.27.40..sroa_idx239, align 8, !tbaa !33
  br i1 %i.dm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit168 unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit168 unwind label %bb.bk

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13edge_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit168: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.ez = load i8, ptr %18, align 8, !tbaa !43, !range !44, !noundef !45
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.bu, label %bb.bl

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit160, %bb.au
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZN7testing7MessageD2Ev.exit160 ], [ %i.dw, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.by

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
end_hunk_1
