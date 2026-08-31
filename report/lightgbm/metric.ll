Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/metric?download=true
inline.NumInlined: 3370
inline.NumDeleted: 931
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA4_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #13 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #31
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bl

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #33
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM6CommonL12ParallelSortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNKS_9AUCMetric4EvalEPKdPKNS_17ObjectiveFunctionEEUliiE_iEEvT_SG_T0_PT1_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !105    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.f, ptr %i.b, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !105
  %i.h = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !105
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !105
  %i.k = load i32, ptr %i.a, align 4, !tbaa !105  ; 2 uses
  %.not32 = icmp sgt i32 %i.k, %i.j
  br i1 %.not32, label %._crit_edge33, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %i.l = phi i32 [ %i.ah, %._crit_edge ], [ %i.j, %bb.b ] ; 3 uses
  %i.m = phi i32 [ %i.af, %._crit_edge ], [ %i.k, %bb.b ] ; 3 uses
  %.not2330 = icmp sgt i32 %i.m, %i.l
  br i1 %.not2330, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.n = sext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit
  %i.o = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.ab, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit ]
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit ] ; 3 uses
  %i.p = load i64, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.q = mul i64 %i.p, %indvars.iv                ; 3 uses
  %i.r = add i64 %i.q, %i.p
  %i.s = load i64, ptr %4, align 8, !tbaa !20
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  %i.t = icmp ugt i64 %.sroa.speculated, %i.q
  br i1 %i.t, label %bb.c, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %5, align 8, !tbaa !226    ; 2 uses
  %.idx28 = shl nsw i64 %i.q, 2                   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.idx28 ; 2 uses
  %.idx = shl nsw i64 %.sroa.speculated, 2        ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %.idx ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !65 ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.idx28
  %i.x = ashr exact i64 %gepdiff, 2
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM9AUCMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_T0_T1_(ptr %i.v, ptr nonnull %i.w, i64 noundef %i.aa, ptr %.sroa.0.0.copyload)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM9AUCMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_T0_(ptr %i.v, ptr nonnull %i.w, ptr %.sroa.0.0.copyload)
          to label %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit_crit_edge unwind label %bb.e

.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit_crit_edge: ; preds = %.noexc
  %.pre = load i32, ptr %i.b, align 4, !tbaa !105
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit: ; preds = %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit_crit_edge, %.lr.ph
  %i.ab = phi i32 [ %.pre, %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit_crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ac = sext i32 %i.ab to i64
  %.not23.not = icmp slt i64 %indvars.iv, %i.ac
  br i1 %.not23.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit
  %.pre36 = load i32, ptr %i.a, align 4, !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ad = phi i32 [ %i.m, %.preheader ], [ %.pre36, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.l, %.preheader ], [ %i.ab, %._crit_edge.loopexit ]
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !105 ; 2 uses
  %i.af = add nsw i32 %i.ae, %i.ad                ; 3 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !105
  %i.ag = add nsw i32 %i.ae, %.lcssa
  %i.ah = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.f) ; 3 uses
  store i32 %i.ah, ptr %i.b, align 4, !tbaa !105
  %.not = icmp sgt i32 %i.af, %i.ah
  br i1 %.not, label %._crit_edge33, label %.preheader

._crit_edge33:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge33, %bb.a
  ret void

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #33
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM6CommonL12ParallelSortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNKS_9AUCMetric4EvalEPKdPKNS_17ObjectiveFunctionEEUliiE_iEEvT_SG_T0_PT1_.omp_outlined.54(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !105    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.f, ptr %i.b, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !105
  %i.h = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !105
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !105
  %i.k = load i32, ptr %i.a, align 4, !tbaa !105  ; 2 uses
  %.not48 = icmp sgt i32 %i.k, %i.j
  br i1 %.not48, label %._crit_edge49, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %i.l = phi i32 [ %i.bx, %._crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi i32 [ %i.bv, %._crit_edge ], [ %i.k, %bb.b ] ; 3 uses
  %.not3946 = icmp sgt i32 %i.m, %i.l
  br i1 %.not3946, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.n = sext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit ] ; 3 uses
  %i.o = shl nsw i64 %indvars.iv, 1
  %i.p = load i64, ptr %3, align 8, !tbaa !20     ; 7 uses
  %i.q = mul i64 %i.p, %i.o                       ; 7 uses
  %i.r = add i64 %i.q, %i.p                       ; 6 uses
  %i.s = add i64 %i.r, %i.p
  %i.t = load i64, ptr %4, align 8, !tbaa !20
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.t) ; 3 uses
  %.not40 = icmp ult i64 %i.r, %.sroa.speculated
  br i1 %.not40, label %bb.c, label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %5, align 8, !tbaa !226    ; 5 uses
  %.idx44 = shl nsw i64 %i.q, 2
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.idx44 ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !226    ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.q ; 2 uses
  %i.y = icmp sgt i64 %i.p, 1
  br i1 %i.y, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  %gepdiff = shl nsw i64 %i.p, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.v, i64 %gepdiff, i1 false)
  %.pre = load ptr, ptr %6, align 8, !tbaa !226
  %.pre53 = load ptr, ptr %5, align 8, !tbaa !226
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.p, 1
  br i1 %i.z, label %bb.f, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !105
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !105
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread: ; preds = %bb.f, %bb.d
  %.ph = phi ptr [ %.pre53, %bb.d ], [ %i.u, %bb.f ] ; 3 uses
  %.ph67 = phi ptr [ %.pre, %bb.d ], [ %i.w, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %.ph67, i64 %i.q
  %i.ac = getelementptr inbounds [4 x i8], ptr %.ph67, i64 %i.r
  %i.ad = getelementptr inbounds [4 x i8], ptr %.ph, i64 %i.r
  %i.ae = getelementptr inbounds [4 x i8], ptr %.ph, i64 %.sroa.speculated
  %i.af = getelementptr inbounds [4 x i8], ptr %.ph, i64 %i.q
  br label %.lr.ph.i.i.preheader

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.e
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.q ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.r ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.speculated ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.q ; 2 uses
  %.not50 = icmp eq i64 %i.p, 0
  br i1 %.not50, label %.critedge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %i.al = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ]
  %i.am = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.aj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.an = phi ptr [ %i.ad, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ai, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ]
  %i.ao = phi ptr [ %i.ac, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ah, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.ap = phi ptr [ %i.ab, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ag, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ]
  %.sroa.01.0.copyload70 = load ptr, ptr %7, align 8, !tbaa !65 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.018.024.i.i = phi ptr [ %.sroa.018.1.i.i, %.lr.ph.i.i ], [ %i.ap, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.023.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.al, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.014.022.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i ], [ %i.an, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.aq = load i32, ptr %.sroa.014.022.i.i, align 4, !tbaa !105 ; 2 uses
  %i.ar = load i32, ptr %.sroa.018.024.i.i, align 4, !tbaa !105 ; 2 uses
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.sroa.01.0.copyload70, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !67
  %i.av = sext i32 %i.ar to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %.sroa.01.0.copyload70, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !67
  %i.ay = fcmp ogt double %i.au, %i.ax            ; 3 uses
  %.sink.i.i = select i1 %i.ay, i32 %i.aq, i32 %i.ar
  %.sroa.014.1.idx.i.i = select i1 %i.ay, i64 4, i64 0
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.022.i.i, i64 %.sroa.014.1.idx.i.i ; 3 uses
  %.sroa.018.1.idx.i.i = select i1 %i.ay, i64 0, i64 4
  %.sroa.018.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.024.i.i, i64 %.sroa.018.1.idx.i.i ; 3 uses
  store i32 %.sink.i.i, ptr %.sroa.010.023.i.i, align 4, !tbaa !105
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i.i, i64 4 ; 2 uses
  %i.ba = icmp ne ptr %.sroa.018.1.i.i, %i.ao
  %i.bb = icmp ne ptr %.sroa.014.1.i.i, %i.am
  %or.cond.i.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !228

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %i.bc = phi ptr [ %i.aj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.am, %.lr.ph.i.i ]
  %i.bd = phi ptr [ %i.ah, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.ao, %.lr.ph.i.i ]
  %.sroa.014.0.lcssa.i.i = phi ptr [ %i.ai, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %.sroa.014.1.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.010.0.lcssa.i.i = phi ptr [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.az, %.lr.ph.i.i ] ; 3 uses
  %.sroa.018.0.lcssa.i.i = phi ptr [ %i.ag, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %.sroa.018.1.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %.sroa.018.0.lcssa.i.i to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, 4
  br i1 %i.bh, label %bb.g, label %bb.h, !prof !66

bb.g:                                             ; preds = %.critedge.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.010.0.lcssa.i.i, ptr align 4 %.sroa.018.0.lcssa.i.i, i64 %i.bg, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

bb.h:                                             ; preds = %.critedge.i.i
  %i.bi = icmp eq i64 %i.bg, 4
  br i1 %i.bi, label %bb.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %.sroa.018.0.lcssa.i.i, align 4, !tbaa !105
  store i32 %i.bj, ptr %.sroa.010.0.lcssa.i.i, align 4, !tbaa !105
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bk = getelementptr inbounds i8, ptr %.sroa.010.0.lcssa.i.i, i64 %i.bg ; 2 uses
  %i.bl = ptrtoint ptr %i.bc to i64
  %i.bm = ptrtoint ptr %.sroa.014.0.lcssa.i.i to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, 4
  br i1 %i.bo, label %bb.j, label %bb.k, !prof !66

bb.j:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %.sroa.014.0.lcssa.i.i, i64 %i.bn, i1 false)
  br label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit

bb.k:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i
  %i.bp = icmp eq i64 %i.bn, 4
  br i1 %i.bp, label %bb.l, label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %.sroa.014.0.lcssa.i.i, align 4, !tbaa !105
  store i32 %i.bq, ptr %i.bk, align 4, !tbaa !105
  br label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit

_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit: ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.br = load i32, ptr %i.b, align 4, !tbaa !105 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %.not39.not = icmp slt i64 %indvars.iv, %i.bs
  br i1 %.not39.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM9AUCMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit
  %.pre54 = load i32, ptr %i.a, align 4, !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bt = phi i32 [ %i.m, %.preheader ], [ %.pre54, %._crit_edge.loopexit ]
  %.lcssa45 = phi i32 [ %i.l, %.preheader ], [ %i.br, %._crit_edge.loopexit ]
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !105 ; 2 uses
  %i.bv = add nsw i32 %i.bu, %i.bt                ; 3 uses
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !105
  %i.bw = add nsw i32 %i.bu, %.lcssa45
  %i.bx = call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.f) ; 3 uses
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !105
  %.not = icmp sgt i32 %i.bv, %i.bx
  br i1 %.not, label %._crit_edge49, label %.preheader

._crit_edge49:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge49, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM9AUCMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM9AUCMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_SI_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM9AUCMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEET_SI_SI_T0_.exit
  %i.h = icmp eq i64 %i.bg, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44, !llvm.loop !229

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM9AUCMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %storemerge21.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM9AUCMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_SI_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM9AUCMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_SI_RT0_.exit.i.i ], [ %storemerge21.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !105  ; 2 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !105
  store i32 %i.k, ptr %i.i, align 4, !tbaa !105
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !105
  %i.x = load i32, ptr %i.v, align 4, !tbaa !105
  %i.y = sext i32 %i.w to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA18_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #13 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #31
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bl

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #33
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM6CommonL12ParallelSortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNKS_22AveragePrecisionMetric4EvalEPKdPKNS_17ObjectiveFunctionEEUliiE_iEEvT_SG_T0_PT1_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !105    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.f, ptr %i.b, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !105
  %i.h = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !105
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !105
  %i.k = load i32, ptr %i.a, align 4, !tbaa !105  ; 2 uses
  %.not32 = icmp sgt i32 %i.k, %i.j
  br i1 %.not32, label %._crit_edge33, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %i.l = phi i32 [ %i.ah, %._crit_edge ], [ %i.j, %bb.b ] ; 3 uses
  %i.m = phi i32 [ %i.af, %._crit_edge ], [ %i.k, %bb.b ] ; 3 uses
  %.not2330 = icmp sgt i32 %i.m, %i.l
  br i1 %.not2330, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.n = sext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit
  %i.o = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.ab, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit ]
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit ] ; 3 uses
  %i.p = load i64, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.q = mul i64 %i.p, %indvars.iv                ; 3 uses
  %i.r = add i64 %i.q, %i.p
  %i.s = load i64, ptr %4, align 8, !tbaa !20
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  %i.t = icmp ugt i64 %.sroa.speculated, %i.q
  br i1 %i.t, label %bb.c, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %5, align 8, !tbaa !226    ; 2 uses
  %.idx28 = shl nsw i64 %i.q, 2                   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.idx28 ; 2 uses
  %.idx = shl nsw i64 %.sroa.speculated, 2        ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %.idx ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !65 ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.idx28
  %i.x = ashr exact i64 %gepdiff, 2
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_T0_T1_(ptr %i.v, ptr nonnull %i.w, i64 noundef %i.aa, ptr %.sroa.0.0.copyload)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_T0_(ptr %i.v, ptr nonnull %i.w, ptr %.sroa.0.0.copyload)
          to label %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit_crit_edge unwind label %bb.e

.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit_crit_edge: ; preds = %.noexc
  %.pre = load i32, ptr %i.b, align 4, !tbaa !105
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit: ; preds = %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit_crit_edge, %.lr.ph
  %i.ab = phi i32 [ %.pre, %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit_crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ac = sext i32 %i.ab to i64
  %.not23.not = icmp slt i64 %indvars.iv, %i.ac
  br i1 %.not23.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_EvT_SF_T0_.exit
  %.pre36 = load i32, ptr %i.a, align 4, !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ad = phi i32 [ %i.m, %.preheader ], [ %.pre36, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.l, %.preheader ], [ %i.ab, %._crit_edge.loopexit ]
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !105 ; 2 uses
  %i.af = add nsw i32 %i.ae, %i.ad                ; 3 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !105
  %i.ag = add nsw i32 %i.ae, %.lcssa
  %i.ah = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.f) ; 3 uses
  store i32 %i.ah, ptr %i.b, align 4, !tbaa !105
  %.not = icmp sgt i32 %i.af, %i.ah
  br i1 %.not, label %._crit_edge33, label %.preheader

._crit_edge33:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge33, %bb.a
  ret void

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #33
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM6CommonL12ParallelSortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNKS_22AveragePrecisionMetric4EvalEPKdPKNS_17ObjectiveFunctionEEUliiE_iEEvT_SG_T0_PT1_.omp_outlined.55(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !105    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.f, ptr %i.b, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !105
  %i.h = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !105
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !105
  %i.k = load i32, ptr %i.a, align 4, !tbaa !105  ; 2 uses
  %.not48 = icmp sgt i32 %i.k, %i.j
  br i1 %.not48, label %._crit_edge49, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %i.l = phi i32 [ %i.bx, %._crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi i32 [ %i.bv, %._crit_edge ], [ %i.k, %bb.b ] ; 3 uses
  %.not3946 = icmp sgt i32 %i.m, %i.l
  br i1 %.not3946, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.n = sext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit ] ; 3 uses
  %i.o = shl nsw i64 %indvars.iv, 1
  %i.p = load i64, ptr %3, align 8, !tbaa !20     ; 7 uses
  %i.q = mul i64 %i.p, %i.o                       ; 7 uses
  %i.r = add i64 %i.q, %i.p                       ; 6 uses
  %i.s = add i64 %i.r, %i.p
  %i.t = load i64, ptr %4, align 8, !tbaa !20
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.t) ; 3 uses
  %.not40 = icmp ult i64 %i.r, %.sroa.speculated
  br i1 %.not40, label %bb.c, label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %5, align 8, !tbaa !226    ; 5 uses
  %.idx44 = shl nsw i64 %i.q, 2
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.idx44 ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !226    ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.q ; 2 uses
  %i.y = icmp sgt i64 %i.p, 1
  br i1 %i.y, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  %gepdiff = shl nsw i64 %i.p, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.v, i64 %gepdiff, i1 false)
  %.pre = load ptr, ptr %6, align 8, !tbaa !226
  %.pre53 = load ptr, ptr %5, align 8, !tbaa !226
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.p, 1
  br i1 %i.z, label %bb.f, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !105
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !105
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread: ; preds = %bb.f, %bb.d
  %.ph = phi ptr [ %.pre53, %bb.d ], [ %i.u, %bb.f ] ; 3 uses
  %.ph67 = phi ptr [ %.pre, %bb.d ], [ %i.w, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %.ph67, i64 %i.q
  %i.ac = getelementptr inbounds [4 x i8], ptr %.ph67, i64 %i.r
  %i.ad = getelementptr inbounds [4 x i8], ptr %.ph, i64 %i.r
  %i.ae = getelementptr inbounds [4 x i8], ptr %.ph, i64 %.sroa.speculated
  %i.af = getelementptr inbounds [4 x i8], ptr %.ph, i64 %i.q
  br label %.lr.ph.i.i.preheader

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.e
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.q ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.r ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.speculated ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.q ; 2 uses
  %.not50 = icmp eq i64 %i.p, 0
  br i1 %.not50, label %.critedge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %i.al = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ]
  %i.am = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.aj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.an = phi ptr [ %i.ad, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ai, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ]
  %i.ao = phi ptr [ %i.ac, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ah, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.ap = phi ptr [ %i.ab, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ag, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ]
  %.sroa.01.0.copyload70 = load ptr, ptr %7, align 8, !tbaa !65 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.018.024.i.i = phi ptr [ %.sroa.018.1.i.i, %.lr.ph.i.i ], [ %i.ap, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.023.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.al, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.014.022.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i ], [ %i.an, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.aq = load i32, ptr %.sroa.014.022.i.i, align 4, !tbaa !105 ; 2 uses
  %i.ar = load i32, ptr %.sroa.018.024.i.i, align 4, !tbaa !105 ; 2 uses
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.sroa.01.0.copyload70, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !67
  %i.av = sext i32 %i.ar to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %.sroa.01.0.copyload70, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !67
  %i.ay = fcmp ogt double %i.au, %i.ax            ; 3 uses
  %.sink.i.i = select i1 %i.ay, i32 %i.aq, i32 %i.ar
  %.sroa.014.1.idx.i.i = select i1 %i.ay, i64 4, i64 0
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.022.i.i, i64 %.sroa.014.1.idx.i.i ; 3 uses
  %.sroa.018.1.idx.i.i = select i1 %i.ay, i64 0, i64 4
  %.sroa.018.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.024.i.i, i64 %.sroa.018.1.idx.i.i ; 3 uses
  store i32 %.sink.i.i, ptr %.sroa.010.023.i.i, align 4, !tbaa !105
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i.i, i64 4 ; 2 uses
  %i.ba = icmp ne ptr %.sroa.018.1.i.i, %i.ao
  %i.bb = icmp ne ptr %.sroa.014.1.i.i, %i.am
  %or.cond.i.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !264

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %i.bc = phi ptr [ %i.aj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.am, %.lr.ph.i.i ]
  %i.bd = phi ptr [ %i.ah, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.ao, %.lr.ph.i.i ]
  %.sroa.014.0.lcssa.i.i = phi ptr [ %i.ai, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %.sroa.014.1.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.010.0.lcssa.i.i = phi ptr [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.az, %.lr.ph.i.i ] ; 3 uses
  %.sroa.018.0.lcssa.i.i = phi ptr [ %i.ag, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %.sroa.018.1.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %.sroa.018.0.lcssa.i.i to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, 4
  br i1 %i.bh, label %bb.g, label %bb.h, !prof !66

bb.g:                                             ; preds = %.critedge.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.010.0.lcssa.i.i, ptr align 4 %.sroa.018.0.lcssa.i.i, i64 %i.bg, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

bb.h:                                             ; preds = %.critedge.i.i
  %i.bi = icmp eq i64 %i.bg, 4
  br i1 %i.bi, label %bb.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %.sroa.018.0.lcssa.i.i, align 4, !tbaa !105
  store i32 %i.bj, ptr %.sroa.010.0.lcssa.i.i, align 4, !tbaa !105
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bk = getelementptr inbounds i8, ptr %.sroa.010.0.lcssa.i.i, i64 %i.bg ; 2 uses
  %i.bl = ptrtoint ptr %i.bc to i64
  %i.bm = ptrtoint ptr %.sroa.014.0.lcssa.i.i to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, 4
  br i1 %i.bo, label %bb.j, label %bb.k, !prof !66

bb.j:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %.sroa.014.0.lcssa.i.i, i64 %i.bn, i1 false)
  br label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit

bb.k:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i
  %i.bp = icmp eq i64 %i.bn, 4
  br i1 %i.bp, label %bb.l, label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %.sroa.014.0.lcssa.i.i, align 4, !tbaa !105
  store i32 %i.bq, ptr %i.bk, align 4, !tbaa !105
  br label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit

_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit: ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.br = load i32, ptr %i.b, align 4, !tbaa !105 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %.not39.not = icmp slt i64 %indvars.iv, %i.bs
  br i1 %.not39.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS7_17ObjectiveFunctionEEUliiE_ET1_T_SG_T0_SH_SF_T2_.exit
  %.pre54 = load i32, ptr %i.a, align 4, !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bt = phi i32 [ %i.m, %.preheader ], [ %.pre54, %._crit_edge.loopexit ]
  %.lcssa45 = phi i32 [ %i.l, %.preheader ], [ %i.br, %._crit_edge.loopexit ]
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !105 ; 2 uses
  %i.bv = add nsw i32 %i.bu, %i.bt                ; 3 uses
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !105
  %i.bw = add nsw i32 %i.bu, %.lcssa45
  %i.bx = call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.f) ; 3 uses
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !105
  %.not = icmp sgt i32 %i.bv, %i.bx
  br i1 %.not, label %._crit_edge49, label %.preheader

._crit_edge49:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge49, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.55", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_SI_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEET_SI_SI_T0_.exit
  %i.h = icmp eq i64 %i.bg, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44, !llvm.loop !265

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %storemerge21.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_SI_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS9_17ObjectiveFunctionEEUliiE_EEEvT_SI_SI_RT0_.exit.i.i ], [ %storemerge21.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !105  ; 2 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !105
  store i32 %i.k, ptr %i.i, align 4, !tbaa !105
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !105
  %i.x = load i32, ptr %i.v, align 4, !tbaa !105
  %i.y = sext i32 %i.w to i64
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA7_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #13 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #31
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bl

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #33
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM6CommonL12ParallelSortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNS_11AucMuMetric4InitERKNS_8MetadataEiEUliiE_iEEvT_SE_T0_PT1_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !105    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.f, ptr %i.b, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !105
  %i.h = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !105
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !105
  %i.k = load i32, ptr %i.a, align 4, !tbaa !105  ; 2 uses
  %.not32 = icmp sgt i32 %i.k, %i.j
  br i1 %.not32, label %._crit_edge33, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %i.l = phi i32 [ %i.ah, %._crit_edge ], [ %i.j, %bb.b ] ; 3 uses
  %i.m = phi i32 [ %i.af, %._crit_edge ], [ %i.k, %bb.b ] ; 3 uses
  %.not2330 = icmp sgt i32 %i.m, %i.l
  br i1 %.not2330, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.n = sext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit
  %i.o = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.ab, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit ]
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit ] ; 3 uses
  %i.p = load i64, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.q = mul i64 %i.p, %indvars.iv                ; 3 uses
  %i.r = add i64 %i.q, %i.p
  %i.s = load i64, ptr %4, align 8, !tbaa !20
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  %i.t = icmp ugt i64 %.sroa.speculated, %i.q
  br i1 %i.t, label %bb.c, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %5, align 8, !tbaa !226    ; 2 uses
  %.idx28 = shl nsw i64 %i.q, 2                   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.idx28 ; 2 uses
  %.idx = shl nsw i64 %.sroa.speculated, 2        ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %.idx ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !324 ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.idx28
  %i.x = ashr exact i64 %gepdiff, 2
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8LightGBM11AucMuMetric4InitERKNS9_8MetadataEiEUliiE_EEEvT_SG_T0_T1_(ptr %i.v, ptr nonnull %i.w, i64 noundef %i.aa, ptr %.sroa.0.0.copyload)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM11AucMuMetric4InitERKNS9_8MetadataEiEUliiE_EEEvT_SG_T0_(ptr %i.v, ptr nonnull %i.w, ptr %.sroa.0.0.copyload)
          to label %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit_crit_edge unwind label %bb.e

.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit_crit_edge: ; preds = %.noexc
  %.pre = load i32, ptr %i.b, align 4, !tbaa !105
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit: ; preds = %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit_crit_edge, %.lr.ph
  %i.ab = phi i32 [ %.pre, %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit_crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ac = sext i32 %i.ab to i64
  %.not23.not = icmp slt i64 %indvars.iv, %i.ac
  br i1 %.not23.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_EvT_SD_T0_.exit
  %.pre36 = load i32, ptr %i.a, align 4, !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ad = phi i32 [ %i.m, %.preheader ], [ %.pre36, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.l, %.preheader ], [ %i.ab, %._crit_edge.loopexit ]
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !105 ; 2 uses
  %i.af = add nsw i32 %i.ae, %i.ad                ; 3 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !105
  %i.ag = add nsw i32 %i.ae, %.lcssa
  %i.ah = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.f) ; 3 uses
  store i32 %i.ah, ptr %i.b, align 4, !tbaa !105
  %.not = icmp sgt i32 %i.af, %i.ah
  br i1 %.not, label %._crit_edge33, label %.preheader

._crit_edge33:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge33, %bb.a
  ret void

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #33
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM6CommonL12ParallelSortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNS_11AucMuMetric4InitERKNS_8MetadataEiEUliiE_iEEvT_SE_T0_PT1_.omp_outlined.56(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !105    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.f, ptr %i.b, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !105
  %i.h = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !105
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !105
  %i.k = load i32, ptr %i.a, align 4, !tbaa !105  ; 2 uses
  %.not48 = icmp sgt i32 %i.k, %i.j
  br i1 %.not48, label %._crit_edge49, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %i.l = phi i32 [ %i.bz, %._crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi i32 [ %i.bx, %._crit_edge ], [ %i.k, %bb.b ] ; 3 uses
  %.not3946 = icmp sgt i32 %i.m, %i.l
  br i1 %.not3946, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.n = sext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_ET1_T_SE_T0_SF_SD_T2_.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_ET1_T_SE_T0_SF_SD_T2_.exit ] ; 3 uses
  %i.o = shl nsw i64 %indvars.iv, 1
  %i.p = load i64, ptr %3, align 8, !tbaa !20     ; 7 uses
  %i.q = mul i64 %i.p, %i.o                       ; 7 uses
  %i.r = add i64 %i.q, %i.p                       ; 6 uses
  %i.s = add i64 %i.r, %i.p
  %i.t = load i64, ptr %4, align 8, !tbaa !20
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.t) ; 3 uses
  %.not40 = icmp ult i64 %i.r, %.sroa.speculated
  br i1 %.not40, label %bb.c, label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_ET1_T_SE_T0_SF_SD_T2_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %5, align 8, !tbaa !226    ; 5 uses
  %.idx44 = shl nsw i64 %i.q, 2
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.idx44 ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !226    ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.q ; 2 uses
  %i.y = icmp sgt i64 %i.p, 1
  br i1 %i.y, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  %gepdiff = shl nsw i64 %i.p, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.v, i64 %gepdiff, i1 false)
  %.pre = load ptr, ptr %6, align 8, !tbaa !226
  %.pre53 = load ptr, ptr %5, align 8, !tbaa !226
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.p, 1
  br i1 %i.z, label %bb.f, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !105
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !105
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread: ; preds = %bb.f, %bb.d
  %.ph = phi ptr [ %.pre53, %bb.d ], [ %i.u, %bb.f ] ; 3 uses
  %.ph67 = phi ptr [ %.pre, %bb.d ], [ %i.w, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %.ph67, i64 %i.q
  %i.ac = getelementptr inbounds [4 x i8], ptr %.ph67, i64 %i.r
  %i.ad = getelementptr inbounds [4 x i8], ptr %.ph, i64 %i.r
  %i.ae = getelementptr inbounds [4 x i8], ptr %.ph, i64 %.sroa.speculated
  %i.af = getelementptr inbounds [4 x i8], ptr %.ph, i64 %i.q
  br label %.lr.ph.i.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.e
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.q ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.r ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.speculated ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.q ; 2 uses
  %.not50 = icmp eq i64 %i.p, 0
  br i1 %.not50, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %i.al = phi ptr [ %i.af, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ]
  %i.am = phi ptr [ %i.ae, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.aj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.an = phi ptr [ %i.ad, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ai, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ]
  %i.ao = phi ptr [ %i.ac, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ah, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.ap = phi ptr [ %i.ab, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.thread ], [ %i.ag, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ]
  %.sroa.01.0.copyload = load ptr, ptr %7, align 8, !tbaa !324
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !280 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.018.024.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.sroa.018.1.i.i, %bb.g ] ; 2 uses
  %.sroa.010.023.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.bb, %bb.g ] ; 2 uses
  %.sroa.014.022.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.sroa.014.1.i.i, %bb.g ] ; 2 uses
  %i.as = load i32, ptr %.sroa.014.022.i.i, align 4, !tbaa !105 ; 2 uses
  %i.at = load i32, ptr %.sroa.018.024.i.i, align 4, !tbaa !105 ; 2 uses
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !87
  %i.ax = sext i32 %i.at to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4, !tbaa !87
  %i.ba = fcmp olt float %i.aw, %i.az             ; 3 uses
  %.sink.i.i = select i1 %i.ba, i32 %i.as, i32 %i.at
  %.sroa.014.1.idx.i.i = select i1 %i.ba, i64 4, i64 0
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.022.i.i, i64 %.sroa.014.1.idx.i.i ; 3 uses
  %.sroa.018.1.idx.i.i = select i1 %i.ba, i64 0, i64 4
  %.sroa.018.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.024.i.i, i64 %.sroa.018.1.idx.i.i ; 3 uses
  store i32 %.sink.i.i, ptr %.sroa.010.023.i.i, align 4, !tbaa !105
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i.i, i64 4 ; 2 uses
  %i.bc = icmp ne ptr %.sroa.018.1.i.i, %i.ao
  %i.bd = icmp ne ptr %.sroa.014.1.i.i, %i.am
  %or.cond.i.i = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %.critedge.i.i, !llvm.loop !326

.critedge.i.i:                                    ; preds = %bb.g, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %i.be = phi ptr [ %i.aj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.am, %bb.g ]
  %i.bf = phi ptr [ %i.ah, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.ao, %bb.g ]
  %.sroa.014.0.lcssa.i.i = phi ptr [ %i.ai, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %.sroa.014.1.i.i, %bb.g ] ; 3 uses
  %.sroa.010.0.lcssa.i.i = phi ptr [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.bb, %bb.g ] ; 3 uses
  %.sroa.018.0.lcssa.i.i = phi ptr [ %i.ag, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %.sroa.018.1.i.i, %bb.g ] ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %.sroa.018.0.lcssa.i.i to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 4 uses
  %i.bj = icmp sgt i64 %i.bi, 4
  br i1 %i.bj, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %.critedge.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.010.0.lcssa.i.i, ptr align 4 %.sroa.018.0.lcssa.i.i, i64 %i.bi, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

bb.i:                                             ; preds = %.critedge.i.i
  %i.bk = icmp eq i64 %i.bi, 4
  br i1 %i.bk, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bl = load i32, ptr %.sroa.018.0.lcssa.i.i, align 4, !tbaa !105
  store i32 %i.bl, ptr %.sroa.010.0.lcssa.i.i, align 4, !tbaa !105
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bm = getelementptr inbounds i8, ptr %.sroa.010.0.lcssa.i.i, i64 %i.bi ; 2 uses
  %i.bn = ptrtoint ptr %i.be to i64
  %i.bo = ptrtoint ptr %.sroa.014.0.lcssa.i.i to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, 4
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !66

bb.k:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %.sroa.014.0.lcssa.i.i, i64 %i.bp, i1 false)
  br label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_ET1_T_SE_T0_SF_SD_T2_.exit

bb.l:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i
  %i.br = icmp eq i64 %i.bp, 4
  br i1 %i.br, label %bb.m, label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_ET1_T_SE_T0_SF_SD_T2_.exit

bb.m:                                             ; preds = %bb.l
  %i.bs = load i32, ptr %.sroa.014.0.lcssa.i.i, align 4, !tbaa !105
  store i32 %i.bs, ptr %i.bm, align 4, !tbaa !105
  br label %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_ET1_T_SE_T0_SF_SD_T2_.exit

_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_ET1_T_SE_T0_SF_SD_T2_.exit: ; preds = %bb.m, %bb.l, %bb.k, %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !105 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %.not39.not = icmp slt i64 %indvars.iv, %i.bu
  br i1 %.not39.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZSt5mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_S6_ZN8LightGBM11AucMuMetric4InitERKNS7_8MetadataEiEUliiE_ET1_T_SE_T0_SF_SD_T2_.exit
  %.pre54 = load i32, ptr %i.a, align 4, !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bv = phi i32 [ %i.m, %.preheader ], [ %.pre54, %._crit_edge.loopexit ]
  %.lcssa45 = phi i32 [ %i.l, %.preheader ], [ %i.bt, %._crit_edge.loopexit ]
  %i.bw = load i32, ptr %i.c, align 4, !tbaa !105 ; 2 uses
  %i.bx = add nsw i32 %i.bw, %i.bv                ; 3 uses
  store i32 %i.bx, ptr %i.a, align 4, !tbaa !105
  %i.by = add nsw i32 %i.bw, %.lcssa45
  %i.bz = call i32 @llvm.smin.i32(i32 %i.by, i32 %i.f) ; 3 uses
  store i32 %i.bz, ptr %i.b, align 4, !tbaa !105
  %.not = icmp sgt i32 %i.bx, %i.bz
  br i1 %.not, label %._crit_edge49, label %.preheader

._crit_edge49:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge49, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8LightGBM11AucMuMetric4InitERKNS9_8MetadataEiEUliiE_EEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.61", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM11AucMuMetric4InitERKNS9_8MetadataEiEUliiE_EEEvT_SG_SG_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %.lr.ph.i.i, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM11AucMuMetric4InitERKNS9_8MetadataEiEUliiE_EEET_SG_SG_T0_.exit
  %i.i = icmp eq i64 %i.bj, 0
  br i1 %i.i, label %.lr.ph.i.i, label %.lr.ph44, !llvm.loop !327

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM11AucMuMetric4InitERKNS9_8MetadataEiEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %storemerge21.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM11AucMuMetric4InitERKNS9_8MetadataEiEUliiE_EEEvT_SG_SG_RT0_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %storemerge21.lcssa, %.lr.ph.i.i ], [ %i.j, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM11AucMuMetric4InitERKNS9_8MetadataEiEUliiE_EEEvT_SG_SG_RT0_.exit.i.i ]
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !105  ; 2 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !105
  store i32 %i.l, ptr %i.j, align 4, !tbaa !105
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.m, %i.a                       ; 3 uses
  %i.o = ashr exact i64 %i.n, 2                   ; 3 uses
  %i.p = add nsw i64 %i.o, -1
  %i.q = lshr i64 %i.p, 1
  %i.r = icmp sgt i64 %i.o, 2
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !280  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.d ] ; 2 uses
  %i.t = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !13, !alias.scope !402, !noalias !405
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !17, !alias.scope !405, !noalias !402
  store i64 0, ptr %i.bc, align 8, !tbaa !13, !alias.scope !405, !noalias !402
  store i8 0, ptr %i.au, align 8, !tbaa !16, !alias.scope !405, !noalias !402
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !127

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !76
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !72
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !76
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #20

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #21

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #22

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !109    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !108
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #32
  unreachable

_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !65, !alias.scope !411, !noalias !408
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !65, !alias.scope !408, !noalias !411
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62, !alias.scope !411, !noalias !408
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !62, !alias.scope !408, !noalias !411
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !411, !noalias !408
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !413

_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !110
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load double, ptr %3, align 8, !tbaa !67  ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !66

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !63
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load double, ptr %i.o, align 8, !tbaa !67
  store double %i.s, ptr %i.d, align 8, !tbaa !67
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !63
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load double, ptr %1, align 8, !tbaa !67
  store double %i.ac, ptr %i.ab, align 8, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x double> %broadcast.splatinsert129, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x double> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !67
  store <2 x double> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !67
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !414

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !415

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !67
  store <2 x double> %broadcast.splat, ptr %i.ay, align 8, !tbaa !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i.i.i.i.i, align 8, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !417

_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !63
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !66

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !63
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load double, ptr %1, align 8, !tbaa !67
  store double %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !67
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !63
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec115, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x double> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !67
  store <2 x double> %broadcast.splat117, ptr %i.bn, align 8, !tbaa !67
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !418

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i72, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !419

end_hunk_3
begin_hunk_4_@_ZNK8LightGBM9MapMetric4EvalEPKdPKNS_17ObjectiveFunctionE:bb.a
  store double %i.dh, ptr %i.df, align 8, !tbaa !67
  %i.di = add nuw i64 %.01551, 1                  ; 2 uses
  %exitcond54.not = icmp eq i64 %i.di, %i.cd
  br i1 %exitcond54.not, label %._crit_edge52, label %.preheader, !llvm.loop !479

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

._crit_edge52:                                    ; preds = %.preheader, %._crit_edge50.us, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i30
  %i.dk = load ptr, ptr %5, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge52
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !62
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge52, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.dq = load ptr, ptr %4, align 8, !tbaa !109   ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !108 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dq, %i.ds
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dz, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i ], [ %i.dq, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 3 uses
  %i.dt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !62
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #31
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.q, %.lr.ph.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.dz, %i.ds
  br i1 %.not.i.i.i40, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !116

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ea = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.dq, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !110
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #31
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.s:                                             ; preds = %bb.o, %bb.j
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.o ], [ %i.bi, %bb.j ] ; 2 uses
  %i.eg = load ptr, ptr %5, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIdSaIdEED2Ev.exit42, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !62
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit42

_ZNSt6vectorIdSaIdEED2Ev.exit42:                  ; preds = %bb.t, %bb.s, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.i ], [ %.pn, %bb.s ], [ %.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit42, %bb.g
  %.pn24 = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit42 ]
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef %0, ...) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN8LightGBM3Log8GetLevelEvE5level)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !480
  %.not = icmp sgt i32 %0, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN8LightGBM3Log14GetLogCallBackEvE8callback) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !482
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, ptr noundef %1) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !392, !noalias !483
  %i.i = tail call i32 @vfprintf(ptr noundef %i.h, ptr noundef %2, ptr noundef %3) #13, !inline_history !486 ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !392
  %i.k = tail call i32 @fflush(ptr noundef %i.j)  ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.72, ptr noundef %1) #13 ; 0 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !482
  call void %i.m(ptr noundef nonnull %i.a)
  %i.n = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef %2, ptr noundef %3) #13 ; 0 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !482
  call void %i.o(ptr noundef nonnull %i.a)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !482
  call void %i.p(ptr noundef nonnull @.str.73)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !105    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !66

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !103
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !105
  store i32 %i.s, ptr %i.d, align 4, !tbaa !105
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !103
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !105
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !105
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !105
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !105
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !487

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !105
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !488

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !105
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !105
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !489

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !105
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !490

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !103
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !66

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !103
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !105
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !105
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !103
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !105
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !105
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !491

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !105
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !492

end_hunk_4
begin_hunk_5_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEEvT_SK_SK_T0_SL_T1_:bb.a
  %.017.i = phi i64 [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr7988, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.z = lshr i64 %.017.i, 1                      ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.012.016.i, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !105
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !67
  %i.af = fcmp ogt double %i.ae, %i.y             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ah = xor i64 %i.z, -1
  %i.ai = add nsw i64 %.017.i, %i.ah
  %.sroa.012.1.i = select i1 %i.af, ptr %i.ag, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.af, i64 %i.ai, i64 %i.z    ; 2 uses
  %i.aj = icmp sgt i64 %.1.i, 0
  br i1 %i.aj, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit, !llvm.loop !533

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %.tr7988, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ak = sub i64 %.pre-phi, %i.p
  %i.al = ashr exact i64 %i.ak, 2
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.am = sdiv i64 %.tr8291, 2                    ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.tr7988, i64 %i.am ; 2 uses
  %i.ao = ptrtoint ptr %.tr87 to i64              ; 3 uses
  %i.ap = sub i64 %i.p, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %i.as = load i32, ptr %i.an, align 4, !tbaa !105
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %5, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !67
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57
  %.017.i59 = phi i64 [ %i.aq, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57 ], [ %.1.i64, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58 ] ; 2 uses
  %.sroa.012.016.i60 = phi ptr [ %.tr87, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57 ], [ %.sroa.012.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58 ] ; 2 uses
  %i.aw = lshr i64 %.017.i59, 1                   ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.012.016.i60, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !105
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %5, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !67
  %i.bc = fcmp ogt double %i.av, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.be = xor i64 %i.aw, -1
  %i.bf = add nsw i64 %.017.i59, %i.be
  %.sroa.012.1.i63 = select i1 %i.bc, ptr %.sroa.012.016.i60, ptr %i.bd ; 3 uses
  %.1.i64 = select i1 %i.bc, i64 %i.aw, i64 %i.bf ; 2 uses
  %i.bg = icmp sgt i64 %.1.i64, 0
  br i1 %i.bg, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit, !llvm.loop !534

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58
  %.pre94 = ptrtoint ptr %.sroa.012.1.i63 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi95 = phi i64 [ %.pre94, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %i.ao, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.012.0.lcssa.i56 = phi ptr [ %.sroa.012.1.i63, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %.tr87, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %i.bh = sub i64 %.pre-phi95, %i.ao
  %i.bi = ashr exact i64 %i.bh, 2
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit
  %.sroa.067.0 = phi ptr [ %i.r, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit ], [ %.sroa.012.0.lcssa.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit ], [ %i.an, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.al, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit ], [ %i.am, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.q, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit ], [ %i.bi, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %i.bj = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.067.0, ptr %.tr7988, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEEvT_SK_SK_T0_SL_T1_(ptr %.tr87, ptr %.sroa.067.0, ptr %i.bj, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.bk = sub nsw i64 %.tr8190, %.0               ; 2 uses
  %i.bl = sub nsw i64 %.tr8291, %.049             ; 2 uses
  %i.bm = icmp eq i64 %i.bk, 0
  %i.bn = icmp eq i64 %i.bl, 0
  %or.cond = or i1 %i.bm, %i.bn
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 2                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -4
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.m, 60
  br i1 %min.iters.check165, label %.lr.ph.i.preheader181, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -4
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4                          ; 2 uses
  %scevgep159 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.s
  %bound0161 = icmp ult ptr %0, %scevgep160
  %bound1162 = icmp ult ptr %1, %scevgep159
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i.preheader181, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck158
  %n.vec167 = and i64 %i.o, 9223372036854775800   ; 3 uses
  %i.t = shl i64 %n.vec167, 2                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next176, %vector.body168 ] ; 2 uses
  %i.w = shl i64 %index169, 2                     ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep171 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep171, i64 16 ; 2 uses
  %wide.load172 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !105, !alias.scope !535, !noalias !538
  %wide.load173 = load <4 x i32>, ptr %i.x, align 4, !tbaa !105, !alias.scope !535, !noalias !538
  %i.y = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load174 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !105, !alias.scope !538
  %wide.load175 = load <4 x i32>, ptr %i.y, align 4, !tbaa !105, !alias.scope !538
  store <4 x i32> %wide.load174, ptr %next.gep171, align 4, !tbaa !105, !alias.scope !535, !noalias !538
  store <4 x i32> %wide.load175, ptr %i.x, align 4, !tbaa !105, !alias.scope !535, !noalias !538
  store <4 x i32> %wide.load172, ptr %next.gep170, align 4, !tbaa !105, !alias.scope !538
  store <4 x i32> %wide.load173, ptr %i.y, align 4, !tbaa !105, !alias.scope !538
  %index.next176 = add nuw i64 %index169, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next176, %n.vec167
  br i1 %i.z, label %middle.block177, label %vector.body168, !llvm.loop !540

middle.block177:                                  ; preds = %vector.body168
  %cmp.n178 = icmp eq i64 %i.o, %n.vec167
  br i1 %cmp.n178, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader181

.lr.ph.i.preheader181:                            ; preds = %vector.memcheck158, %.lr.ph.i.preheader, %middle.block177
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck158 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block177 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck158 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block177 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader181, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %i.aa = load i32, ptr %.sroa.04.07.i, align 4, !tbaa !105
  %i.ab = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !105
  store i32 %i.ab, ptr %.sroa.04.07.i, align 4, !tbaa !105
  store i32 %i.aa, ptr %.sroa.0.08.i, align 4, !tbaa !105
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !541

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.042.0 = phi ptr [ %0, %bb.d ], [ %.sroa.042.0.be, %.backedge ] ; 22 uses
  %.085 = phi i64 [ %i.i, %bb.d ], [ %.085.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ag = sub nsw i64 %.0, %.085                  ; 10 uses
  %i.ah = icmp slt i64 %.085, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.085, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.f
  %i.aj = load i32, ptr %.sroa.042.0, align 4, !tbaa !105
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 4
  %.idx87 = shl nsw i64 %.0, 2                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.042.0, i64 %.idx87
  %gepdiff = add nsw i64 %.idx87, -4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %.sroa.042.0, ptr nonnull align 4 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !105
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [4 x i8], ptr %.sroa.042.0, i64 %.085 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph100.preheader182, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.ap = shl i64 %.0, 2
  %i.aq = sub i64 %.0, %.085
  %i.ar = shl i64 %i.aq, 2
  %scevgep = getelementptr i8, ptr %.sroa.042.0, i64 %i.ar
  %scevgep128 = getelementptr i8, ptr %.sroa.042.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.042.0, %scevgep128
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader182, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 4 uses
  %i.as = shl i64 %n.vec, 2                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.sroa.042.0, i64 %i.as ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep129 = getelementptr i8, ptr %.sroa.042.0, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep129, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep129, align 4, !tbaa !105, !alias.scope !542, !noalias !545
  %wide.load130 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !105, !alias.scope !542, !noalias !545
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load131 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !105, !alias.scope !545
  %wide.load132 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !105, !alias.scope !545
  store <4 x i32> %wide.load131, ptr %next.gep129, align 4, !tbaa !105, !alias.scope !542, !noalias !545
  store <4 x i32> %wide.load132, ptr %i.aw, align 4, !tbaa !105, !alias.scope !542, !noalias !545
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !105, !alias.scope !545
  store <4 x i32> %wide.load130, ptr %i.ax, align 4, !tbaa !105, !alias.scope !545
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !547

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge101, label %.lr.ph100.preheader182

.lr.ph100.preheader182:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.02998.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph100.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.039.097.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph100.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.042.196.ph = phi ptr [ %.sroa.042.0, %vector.memcheck ], [ %.sroa.042.0, %.lr.ph100.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.085
  %xtraiter190 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader182, %.lr.ph100.prol
  %.02998.prol = phi i64 [ %i.be, %.lr.ph100.prol ], [ %.02998.ph, %.lr.ph100.preheader182 ]
  %.sroa.039.097.prol = phi ptr [ %i.bd, %.lr.ph100.prol ], [ %.sroa.039.097.ph, %.lr.ph100.preheader182 ] ; 3 uses
  %.sroa.042.196.prol = phi ptr [ %i.bc, %.lr.ph100.prol ], [ %.sroa.042.196.ph, %.lr.ph100.preheader182 ] ; 3 uses
  %prol.iter192 = phi i64 [ %prol.iter192.next, %.lr.ph100.prol ], [ 0, %.lr.ph100.preheader182 ]
  %i.ba = load i32, ptr %.sroa.042.196.prol, align 4, !tbaa !105
  %i.bb = load i32, ptr %.sroa.039.097.prol, align 4, !tbaa !105
  store i32 %i.bb, ptr %.sroa.042.196.prol, align 4, !tbaa !105
  store i32 %i.ba, ptr %.sroa.039.097.prol, align 4, !tbaa !105
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.042.196.prol, i64 4 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.039.097.prol, i64 4 ; 2 uses
  %i.be = add nuw nsw i64 %.02998.prol, 1         ; 2 uses
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !548

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader182
  %.lcssa.unr = phi ptr [ poison, %.lr.ph100.preheader182 ], [ %i.bc, %.lr.ph100.prol ]
  %.02998.unr = phi i64 [ %.02998.ph, %.lr.ph100.preheader182 ], [ %i.be, %.lr.ph100.prol ]
  %.sroa.039.097.unr = phi ptr [ %.sroa.039.097.ph, %.lr.ph100.preheader182 ], [ %i.bd, %.lr.ph100.prol ]
  %.sroa.042.196.unr = phi ptr [ %.sroa.042.196.ph, %.lr.ph100.preheader182 ], [ %i.bc, %.lr.ph100.prol ]
  %i.bf = sub i64 %.02998.ph, %.0
  %i.bg = add i64 %i.bf, %.085
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge101, label %.lr.ph100

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %middle.block, %bb.g
  %.sroa.042.1.lcssa = phi ptr [ %.sroa.042.0, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph100.prol.loopexit ], [ %i.bx, %.lr.ph100 ]
  %i.bi = srem i64 %.0, %.085                     ; 2 uses
  %.not32 = icmp eq i64 %i.bi, 0
  br i1 %.not32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.h

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %.02998 = phi i64 [ %i.bz, %.lr.ph100 ], [ %.02998.unr, %.lr.ph100.prol.loopexit ]
  %.sroa.039.097 = phi ptr [ %i.by, %.lr.ph100 ], [ %.sroa.039.097.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.sroa.042.196 = phi ptr [ %i.bx, %.lr.ph100 ], [ %.sroa.042.196.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %i.bj = load i32, ptr %.sroa.042.196, align 4, !tbaa !105
  %i.bk = load i32, ptr %.sroa.039.097, align 4, !tbaa !105
  store i32 %i.bk, ptr %.sroa.042.196, align 4, !tbaa !105
  store i32 %i.bj, ptr %.sroa.039.097, align 4, !tbaa !105
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !105
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !105
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !105
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !105
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !105
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !105
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !105
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !105
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 12 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !105
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !105
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !105
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !105
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 16
  %i.bz = add nuw nsw i64 %.02998, 4              ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond109.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !549

bb.h:                                             ; preds = %._crit_edge101
  %i.ca = sub nsw i64 %.085, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [4 x i8], ptr %.sroa.042.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !105
  %.idx = shl nsw i64 %.0, 2
  %i.cf = add nsw i64 %.idx, -4                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 2                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !66

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cj, ptr nonnull align 4 %.sroa.042.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 4
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %.sroa.042.0, align 4, !tbaa !105
  store i32 %i.cl, ptr %i.cd, align 4, !tbaa !105
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i32 %i.ce, ptr %.sroa.042.0, align 4, !tbaa !105
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [4 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.085, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check141 = icmp ult i64 %.085, 8
  br i1 %min.iters.check141, label %.lr.ph.preheader183, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.0, %.085
  %i.cq = shl i64 %i.cp, 2
  %scevgep136 = getelementptr i8, ptr %.sroa.042.0, i64 %i.cq
  %bound0137 = icmp ult ptr %.sroa.042.0, %i.cc
  %bound1138 = icmp ult ptr %scevgep136, %i.cn
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph.preheader183, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck135
  %n.vec143 = and i64 %.085, 9223372036854775800  ; 4 uses
  %i.cr = mul i64 %n.vec143, -4                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next152, %vector.body144 ] ; 2 uses
  %i.cu = mul i64 %index145, -4                   ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep147, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep147, i64 -32 ; 2 uses
  %wide.load148 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !105, !alias.scope !550, !noalias !553
  %wide.load149 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !105, !alias.scope !550, !noalias !553
  %i.cx = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load150 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !105, !alias.scope !553
  %wide.load151 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !105, !alias.scope !553
  store <4 x i32> %wide.load150, ptr %i.cv, align 4, !tbaa !105, !alias.scope !550, !noalias !553
  store <4 x i32> %wide.load151, ptr %i.cw, align 4, !tbaa !105, !alias.scope !550, !noalias !553
  store <4 x i32> %wide.load148, ptr %i.cx, align 4, !tbaa !105, !alias.scope !553
  store <4 x i32> %wide.load149, ptr %i.cy, align 4, !tbaa !105, !alias.scope !553
  %index.next152 = add nuw i64 %index145, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next152, %n.vec143
  br i1 %i.cz, label %middle.block153, label %vector.body144, !llvm.loop !555

middle.block153:                                  ; preds = %vector.body144
  %cmp.n154 = icmp eq i64 %.085, %n.vec143
  br i1 %cmp.n154, label %._crit_edge, label %.lr.ph.preheader183

.lr.ph.preheader183:                              ; preds = %vector.memcheck135, %.lr.ph.preheader, %middle.block153
  %.02895.ph = phi i64 [ 0, %vector.memcheck135 ], [ 0, %.lr.ph.preheader ], [ %n.vec143, %middle.block153 ] ; 3 uses
  %.sroa.0.094.ph = phi ptr [ %i.cc, %vector.memcheck135 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block153 ] ; 2 uses
  %.sroa.042.293.ph = phi ptr [ %i.cn, %vector.memcheck135 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block153 ] ; 2 uses
  %xtraiter = and i64 %.085, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader183, %.lr.ph.prol
  %.02895.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.02895.ph, %.lr.ph.preheader183 ]
  %.sroa.0.094.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.sroa.0.094.ph, %.lr.ph.preheader183 ]
  %.sroa.042.293.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.sroa.042.293.ph, %.lr.ph.preheader183 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader183 ]
  %i.da = getelementptr inbounds i8, ptr %.sroa.042.293.prol, i64 -4 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.094.prol, i64 -4 ; 4 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !105
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !105
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !105
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !105
  %i.de = add nuw nsw i64 %.02895.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !556

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader183
  %.02895.unr = phi i64 [ %.02895.ph, %.lr.ph.preheader183 ], [ %i.de, %.lr.ph.prol ]
  %.sroa.0.094.unr = phi ptr [ %.sroa.0.094.ph, %.lr.ph.preheader183 ], [ %i.db, %.lr.ph.prol ]
  %.sroa.042.293.unr = phi ptr [ %.sroa.042.293.ph, %.lr.ph.preheader183 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.02895.ph, %.085
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block153, %bb.n
  %.sroa.042.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.042.0, %middle.block153 ], [ %.sroa.042.0, %.lr.ph ], [ %.sroa.042.0, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.042.0.be = phi ptr [ %.sroa.042.1.lcssa, %bb.h ], [ %.sroa.042.2.lcssa, %._crit_edge ]
  %.085.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.085, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !557

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02895 = phi i64 [ %i.dy, %.lr.ph ], [ %.02895.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.094 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.094.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.042.293 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.042.293.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -4 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !105
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !105
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !105
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !105
  %i.dm = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -8 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -8 ; 2 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !105
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !105
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !105
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !105
  %i.dq = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -12 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -12 ; 2 uses
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !105
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !105
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !105
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !105
  %i.du = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -16 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -16 ; 3 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !105
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !105
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !105
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !105
  %i.dy = add nuw nsw i64 %.02895, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.085
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !558

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %._crit_edge, %._crit_edge101, %.lr.ph.i, %middle.block177, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %bb.b, %bb.a
  %.sroa.025.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ], [ %1, %middle.block177 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge101 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.025.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEEvT_SK_SK_T0_SL_T1_SL_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 %7) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %7 to ptr                   ; 4 uses
  %.not98 = icmp sgt i64 %3, %6
  %.not6499 = icmp sgt i64 %4, %6
  %or.cond100 = and i1 %.not98, %.not6499
  br i1 %or.cond100, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ay, %tailrecurse ]
  %.tr91.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr93.lcssa = phi i64 [ %3, %bb.a ], [ %i.ax, %tailrecurse ]
  %.tr94.lcssa = phi i64 [ %4, %bb.a ], [ %i.az, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEEvT_SK_SK_T0_SL_T1_T2_(ptr %.tr.lcssa, ptr %.tr91.lcssa, ptr %2, i64 noundef %.tr93.lcssa, i64 noundef %.tr94.lcssa, ptr noundef %5, i64 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr94104 = phi i64 [ %4, %.lr.ph ], [ %i.az, %tailrecurse ] ; 3 uses
  %.tr93103 = phi i64 [ %3, %.lr.ph ], [ %i.ax, %tailrecurse ] ; 3 uses
  %.tr91102 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr101 = phi ptr [ %0, %.lr.ph ], [ %i.ay, %tailrecurse ] ; 5 uses
  %i.c = icmp sgt i64 %.tr93103, %.tr94104
  %i.d = ptrtoint ptr %.tr91102 to i64            ; 4 uses
  br i1 %i.c, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit68

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.e = sdiv i64 %.tr93103, 2                    ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %.tr101, i64 %i.e ; 2 uses
  %i.g = sub i64 %i.b, %i.d
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM9MapMetric9CalMapAtKES5_iPKfPKdiPS3_IdSaIdEEEUliiE_EEET_SK_SK_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.j = load i32, ptr %i.f, align 4, !tbaa !105
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !67
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
end_hunk_5
