Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/hyper_dijkstra?download=true
inline.NumInlined: 628
inline.NumDeleted: 301
begin_hunk_0_@_ZN3g2o13HyperDijkstra13shortestPathsERSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS0_12CostFunctionEddbd:bb.a
  invoke void @_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef %i.iv)
          to label %_ZNSt14priority_queueIN3g2o13HyperDijkstra17AdjacencyMapEntryESt6vectorIS2_SaIS2_EESt4lessIS2_EE4pushERKS2_.exit93 unwind label %bb.at

bb.at:                                            ; preds = %_ZN3g2o13HyperDijkstra17AdjacencyMapEntryD2Ev.exit.i
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #20
  unreachable

_ZNSt14priority_queueIN3g2o13HyperDijkstra17AdjacencyMapEntryESt6vectorIS2_SaIS2_EESt4lessIS2_EE4pushERKS2_.exit93: ; preds = %_ZN3g2o13HyperDijkstra17AdjacencyMapEntryD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.av

bb.au:                                            ; preds = %bb.ai, %bb.af
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit78, %_ZNSt14priority_queueIN3g2o13HyperDijkstra17AdjacencyMapEntryESt6vectorIS2_SaIS2_EESt4lessIS2_EE4pushERKS2_.exit93, %bb.z, %.lr.ph169
  %i.iz = add nuw i64 %.0168, 1                   ; 2 uses
  %i.ja = load ptr, ptr %i.el, align 8, !tbaa !107
  %i.jb = load ptr, ptr %i.ek, align 8, !tbaa !106 ; 2 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = ashr exact i64 %i.je, 3
  %i.jg = icmp ult i64 %i.iz, %i.jf
  br i1 %i.jg, label %.lr.ph169, label %.loopexit, !llvm.loop !98

.loopexit:                                        ; preds = %bb.av, %.lr.ph172._crit_edge, %bb.w
  %.not139 = icmp eq ptr %i.ef, %i.ec
  br i1 %.not139, label %._crit_edge, label %.lr.ph172

._crit_edge:                                      ; preds = %.loopexit, %bb.v
  %i.jh = load ptr, ptr %i.k, align 8, !tbaa !36
  invoke void @_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef %i.jh)
          to label %_ZN3g2o13HyperDijkstra17AdjacencyMapEntryD2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %._crit_edge
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #20
  unreachable

_ZN3g2o13HyperDijkstra17AdjacencyMapEntryD2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.jk = load ptr, ptr %13, align 8, !tbaa !101  ; 3 uses
  %i.jl = load ptr, ptr %i.h, align 8, !tbaa !101 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exit.i.i, label %bb.j, !llvm.loop !99

.body:                                            ; preds = %bb.x, %bb.au, %bb.aa, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.u ], [ %i.iy, %bb.au ], [ %i.ej, %bb.x ], [ %i.ew, %bb.aa ]
  %i.jn = load ptr, ptr %i.k, align 8, !tbaa !36
  invoke void @_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef %i.jn)
          to label %_ZN3g2o13HyperDijkstra17AdjacencyMapEntryD2Ev.exit94 unwind label %bb.ax

bb.ax:                                            ; preds = %.body
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #20
  unreachable

_ZN3g2o13HyperDijkstra17AdjacencyMapEntryD2Ev.exit94: ; preds = %.body, %bb.t
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.t ], [ %.pn.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.az

_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZN3g2o13HyperDijkstra17AdjacencyMapEntryD2Ev.exit, %.preheader
  %.lcssa143 = phi ptr [ %.pre, %.preheader ], [ %i.jk, %_ZN3g2o13HyperDijkstra17AdjacencyMapEntryD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %.lcssa143, null
  br i1 %.not.i.i1.i.i, label %_ZNSt14priority_queueIN3g2o13HyperDijkstra17AdjacencyMapEntryESt6vectorIS2_SaIS2_EESt4lessIS2_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !53
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %.lcssa143 to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa143, i64 noundef %i.ju) #23
  br label %_ZNSt14priority_queueIN3g2o13HyperDijkstra17AdjacencyMapEntryESt6vectorIS2_SaIS2_EESt4lessIS2_EED2Ev.exit

_ZNSt14priority_queueIN3g2o13HyperDijkstra17AdjacencyMapEntryESt6vectorIS2_SaIS2_EESt4lessIS2_EED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  ret void

bb.az:                                            ; preds = %_ZN3g2o13HyperDijkstra17AdjacencyMapEntryD2Ev.exit94, %bb.i
  %.pn41 = phi { ptr, i32 } [ %i.bv, %bb.i ], [ %.pn.pn.pn.pn.pn, %_ZN3g2o13HyperDijkstra17AdjacencyMapEntryD2Ev.exit94 ]
  %i.jv = load ptr, ptr %13, align 8, !tbaa !56   ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !52 ; 2 uses
  %.not4.i.i.i.i95 = icmp eq ptr %i.jv, %i.jx
  br i1 %.not4.i.i.i.i95, label %_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exit.i.i102, label %.lr.ph.i.i.i.i96

.lr.ph.i.i.i.i96:                                 ; preds = %bb.az, %_ZSt8_DestroyIN3g2o13HyperDijkstra17AdjacencyMapEntryEEvPT_.exit.i.i.i.i98
  %.05.i.i.i.i97 = phi ptr [ %i.kd, %_ZSt8_DestroyIN3g2o13HyperDijkstra17AdjacencyMapEntryEEvPT_.exit.i.i.i.i98 ], [ %i.jv, %bb.az ] ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i97, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i97, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !36
  invoke void @_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.jy, ptr noundef %i.ka)
          to label %_ZSt8_DestroyIN3g2o13HyperDijkstra17AdjacencyMapEntryEEvPT_.exit.i.i.i.i98 unwind label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i96
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #20
  unreachable

_ZSt8_DestroyIN3g2o13HyperDijkstra17AdjacencyMapEntryEEvPT_.exit.i.i.i.i98: ; preds = %.lr.ph.i.i.i.i96
  %i.kd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i97, i64 80 ; 2 uses
  %.not.i.i.i.i99 = icmp eq ptr %i.kd, %i.jx
  br i1 %.not.i.i.i.i99, label %_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i100, label %.lr.ph.i.i.i.i96, !llvm.loop !100

_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i100: ; preds = %_ZSt8_DestroyIN3g2o13HyperDijkstra17AdjacencyMapEntryEEvPT_.exit.i.i.i.i98
  %.pr.i.i101 = load ptr, ptr %13, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exit.i.i102

_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exit.i.i102: ; preds = %_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i100, %bb.az
  %i.ke = phi ptr [ %.pr.i.i101, %_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i100 ], [ %i.jv, %bb.az ] ; 3 uses
  %.not.i.i1.i.i103 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i1.i.i103, label %_ZNSt14priority_queueIN3g2o13HyperDijkstra17AdjacencyMapEntryESt6vectorIS2_SaIS2_EESt4lessIS2_EED2Ev.exit104, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exit.i.i102
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !53
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.ke to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kj) #23
  br label %_ZNSt14priority_queueIN3g2o13HyperDijkstra17AdjacencyMapEntryESt6vectorIS2_SaIS2_EESt4lessIS2_EED2Ev.exit104

_ZNSt14priority_queueIN3g2o13HyperDijkstra17AdjacencyMapEntryESt6vectorIS2_SaIS2_EESt4lessIS2_EED2Ev.exit104: ; preds = %_ZSt8_DestroyIPN3g2o13HyperDijkstra17AdjacencyMapEntryES2_EvT_S4_RSaIT0_E.exit.i.i102, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  resume { ptr, i32 } %.pn41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13HyperDijkstra13shortestPathsEPNS_10HyperGraph6VertexEPNS0_12CostFunctionEddbd(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4, i1 noundef zeroext %5, double noundef %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.thread.i.i.i:
  %7 = alloca %"class.std::set", align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !39
  %i.f = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %._crit_edge.thread.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %1, ptr %i.g, align 8, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext true, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #19
  %i.h = load i64, ptr %i.e, align 8, !tbaa !39
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.e, align 8, !tbaa !39
  invoke void @_ZN3g2o13HyperDijkstra13shortestPathsERSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS0_12CostFunctionEddbd(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %2, double noundef %3, double noundef %4, i1 noundef zeroext %5, double noundef %6)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !36
  invoke void @_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.j)
          to label %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #20
  unreachable

_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

bb.c:                                             ; preds = %._crit_edge.thread.i.i.i, %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13HyperDijkstra11computeTreeERSt3mapIPNS_10HyperGraph6VertexENS0_17AdjacencyMapEntryESt4lessIS4_ESaISt4pairIKS4_S5_EEE(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %.not2126 = icmp eq ptr %i.b, %i.c
  br i1 %.not2126, label %._crit_edge32, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5clearEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %.not2228 = icmp eq ptr %.pre, %i.c
  br i1 %.not2228, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %._crit_edge
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a, %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5clearEv.exit
  %.sroa.018.027 = phi ptr [ %i.n, %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5clearEv.exit ], [ %i.b, %bb.a ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  invoke void @_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #20
  unreachable

_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5clearEv.exit: ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 80 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 96
  store ptr %i.j, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 104
  store ptr %i.j, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 112
  store i64 0, ptr %i.m, align 8, !tbaa !39
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.018.027) #21 ; 2 uses
  %.not21 = icmp eq ptr %i.n, %i.c
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !llvm.loop !109

._crit_edge32:                                    ; preds = %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE6insertERKS3_.exit, %bb.a, %._crit_edge
  ret void

bb.c:                                             ; preds = %.lr.ph31, %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
  %.sroa.014.029 = phi ptr [ %.pre, %.lr.ph31 ], [ %i.av, %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE6insertERKS3_.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.029, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE6insertERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.014.029, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 4 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = icmp ult ptr %i.u, %i.p                  ; 2 uses
  %.19.i.i.i = select i1 %i.v, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexESt4pairIKS3_NS0_13HyperDijkstra17AdjacencyMapEntryEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexESt4pairIKS3_NS0_13HyperDijkstra17AdjacencyMapEntryEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.w = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.w, label %_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexESt4pairIKS3_NS0_13HyperDijkstra17AdjacencyMapEntryEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.z = icmp ult ptr %i.p, %i.y
  %spec.select.i.i = select i1 %i.z, ptr %i.c, ptr %.19.i.i.i
  br label %_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit

_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit: ; preds = %bb.d, %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexESt4pairIKS3_NS0_13HyperDijkstra17AdjacencyMapEntryEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.c, %bb.d ], [ %i.c, %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexESt4pairIKS3_NS0_13HyperDijkstra17AdjacencyMapEntryEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ %spec.select.i.i, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 80 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit, %.lr.ph.i.i.i8
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i8 ], [ %.02022.i.i.i, %_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46 ; 2 uses
  %i.ae = icmp ult ptr %i.r, %i.ad                ; 2 uses
  %.in.v.i.i.i = select i1 %i.ae, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i9, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i8, !llvm.loop !3

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i8
  br i1 %i.ae, label %._crit_edge.thread.i.i.i, label %bb.g

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.ab, %_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = icmp eq ptr %.019.lcssa29.i.i.i, %i.ag
  br i1 %i.ah, label %select.unfold.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ai = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #21
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %i.aj = phi ptr [ %.pre.i.i, %bb.f ], [ %i.ad, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.f ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ak = icmp ult ptr %i.aj, %i.r
  br i1 %i.ak, label %select.unfold.i.i, label %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE6insertERKS3_.exit

select.unfold.i.i:                                ; preds = %bb.g, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.g ] ; 3 uses
  %i.al = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.ab
  br i1 %i.al, label %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %select.unfold.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46
  %i.ao = icmp ult ptr %i.r, %i.an
  br label %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i: ; preds = %bb.h, %select.unfold.i.i
  %i.ap = phi i1 [ %i.ao, %bb.h ], [ true, %select.unfold.i.i ]
  %i.aq = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.r, ptr %i.ar, align 8, !tbaa !46
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #19
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 112 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !39
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !39
  br label %_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE6insertERKS3_.exit

_ZNSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE6insertERKS3_.exit: ; preds = %_ZNSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, %bb.g, %bb.c
  %i.av = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.014.029) #21 ; 2 uses
  %.not22 = icmp eq ptr %i.av, %i.c
  br i1 %.not22, label %._crit_edge32, label %bb.c, !llvm.loop !110
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13HyperDijkstra17visitAdjacencyMapERSt3mapIPNS_10HyperGraph6VertexENS0_17AdjacencyMapEntryESt4lessIS4_ESaISt4pairIKS4_S5_EEEPNS0_10TreeActionEb(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::deque", align 8        ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIPN3g2o10HyperGraph6VertexESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %.not6872 = icmp eq ptr %i.b, %i.c
  br i1 %.not6872, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt5dequeIPN3g2o10HyperGraph6VertexESaIS3_EE9push_backERKS3_.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %._crit_edge, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5dequeIPN3g2o10HyperGraph6VertexESaIS3_EE9push_backERKS3_.exit
  %.sroa.062.073 = phi ptr [ %i.b, %.lr.ph ], [ %i.af, %_ZNSt5dequeIPN3g2o10HyperGraph6VertexESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.062.073, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.062.073, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %_ZNSt5dequeIPN3g2o10HyperGraph6VertexESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.w = load ptr, ptr %1, align 8, !tbaa !15
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef double %i.x(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.v, ptr noundef null, ptr noundef null)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !46
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !62
  br label %_ZNSt5dequeIPN3g2o10HyperGraph6VertexESaIS3_EE9push_backERKS3_.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt5dequeIPN3g2o10HyperGraph6VertexESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_ZNSt5dequeIPN3g2o10HyperGraph6VertexESaIS3_EE9push_backERKS3_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt5dequeIPN3g2o10HyperGraph6VertexESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.e, %bb.f, %bb.b
  %i.af = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.062.073) #21 ; 2 uses
  %.not68 = icmp eq ptr %i.af, %i.c
  br i1 %.not68, label %.preheader, label %bb.b, !llvm.loop !111

bb.h:                                             ; preds = %.lr.ph77, %_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit.thread
  %i.ag = phi ptr [ %i.i, %.lr.ph77 ], [ %i.fj, %_ZNSt3mapIPN3g2o10HyperGraph6VertexENS0_13HyperDijkstra17AdjacencyMapEntryESt4lessIS3_ESaISt4pairIKS3_S5_EEE4findERS9_.exit.thread ] ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46 ; 4 uses
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !115
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.not.i22 = icmp eq ptr %i.ag, %i.aj
  br i1 %.not.i22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %_ZNSt5dequeIPN3g2o10HyperGraph6VertexESaIS3_EE9pop_frontEv.exit

bb.j:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !116
end_hunk_0
