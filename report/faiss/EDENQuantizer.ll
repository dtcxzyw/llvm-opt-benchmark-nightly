Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/EDENQuantizer?download=true
inline.NumInlined: 299
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5faiss10eden_utils13compute_codesERKNS_15ScalarQuantizerENS_10MetricTypeENS_13EDENScaleTypeEPKfPhmS7_:bb.a
bb.z:                                             ; preds = %bb.y
  %i.bg = load ptr, ptr %9, align 8, !tbaa !16
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.be)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z, %bb.y
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z, %bb.x
  %i.bk = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils13compute_codesERKNS_15ScalarQuantizerENS_10MetricTypeENS_13EDENScaleTypeEPKfPhmS7_, ptr noundef nonnull @.str.1, i32 noundef 737)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.am unwind label %bb.aa

bb.ad:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bk) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.pn32 = phi { ptr, i32 } [ %i.bj, %bb.aa ], [ %i.bl, %bb.ad ]
  %i.bm = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ba
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ae
  %i.bo = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.al

bb.af:                                            ; preds = %bb.w
  %i.bq = icmp eq i64 %5, 0
  br i1 %i.bq, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !43 ; 3 uses
  store i64 %i.bs, ptr %i.f, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !45
  store i64 %i.bw, ptr %i.g, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.bx = tail call noundef i64 @_ZN5faiss10eden_utils16packed_code_sizeEmm(i64 noundef %i.bs, i64 noundef %i.bu)
  %i.by = add nuw nsw i64 %i.bx, 8
  store i64 %i.by, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.bz = uitofp i64 %i.bs to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.bz)
  store float %sqrt, ptr %i.i, align 4, !tbaa !46
  %i.ca = icmp ugt i64 %5, 1000
  br i1 %i.ca, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 10, ptr nonnull @_ZN5faiss10eden_utils13compute_codesERKNS_15ScalarQuantizerENS_10MetricTypeENS_13EDENScaleTypeEPKfPhmS7_.omp_outlined, ptr nonnull %0, ptr nonnull %i.f, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.i, ptr nonnull %i.a)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @__kmpc_serialized_parallel(ptr nonnull @3, i32 %i.k)
  store i32 %i.k, ptr %i.j, align 4, !tbaa !47
  call void @_ZN5faiss10eden_utils13compute_codesERKNS_15ScalarQuantizerENS_10MetricTypeENS_13EDENScaleTypeEPKfPhmS7_.omp_outlined(ptr nonnull %i.j, ptr nonnull poison, ptr %0, ptr %i.f, ptr %i.d, ptr %i.b, ptr %i.c, ptr %i.h, ptr %i.e, ptr %i.g, ptr %i.i, ptr %i.a) #18
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @3, i32 %i.k)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.af, %bb.aj
  ret void

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn32.pn

bb.am:                                            ; preds = %bb.ac, %bb.t, %bb.k
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #16

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss10eden_utils13compute_codesERKNS_15ScalarQuantizerENS_10MetricTypeENS_13EDENScaleTypeEPKfPhmS7_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = invoke noundef ptr @_ZNK5faiss15ScalarQuantizer16select_quantizerEv(ptr noundef nonnull align 8 dereferenceable(160) %2)
          to label %bb.b unwind label %.loopexit.split-lp ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8, !tbaa !29     ; 5 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.invoke:                                          ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc90 unwind label %.loopexit.split-lp ; 6 uses

.noexc90:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !46
  %i.k = add nsw i64 %i.f, -1                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc90
  %i.m = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !46
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc90
  %.pr = load i64, ptr %3, align 8, !tbaa !29     ; 5 uses
  %i.n = icmp ugt i64 %.pr, 2305843009213693951
  br i1 %i.n, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i91

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i91: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i.i92 = icmp eq i64 %.pr, 0
  br i1 %.not.i.i.i.i92, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i91
  %i.o = shl nuw nsw i64 %.pr, 2
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28
          to label %.noexc98 unwind label %.loopexit.split-lp ; 5 uses

.noexc98:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.pr ; 2 uses
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !46
  %i.r = add nsw i64 %.pr, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93: ; preds = %.noexc98
  %i.t = getelementptr i8, ptr %i.p, i64 4
  %.idx.i.i.i.i.i.i.i94 = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 0, i64 %.idx.i.i.i.i.i.i.i94, i1 false), !tbaa !46
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99:             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93, %.noexc98, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i91
  %.sroa.9110.0116123 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93 ], [ %i.j, %.noexc98 ], [ %i.j, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i91 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0106.0117121 = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93 ], [ %i.i, %.noexc98 ], [ %i.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i91 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 15 uses
  %.sroa.0102.0 = phi ptr [ %i.p, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93 ], [ %i.p, %.noexc98 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i91 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.9.0 = phi ptr [ %i.q, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93 ], [ %i.q, %.noexc98 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i91 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0106.0117121182 = ptrtoaddr ptr %.sroa.0106.0117121 to i64 ; 3 uses
  %i.u = load i64, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  %.pre157 = load i32, ptr %0, align 4, !tbaa !47 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.r

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99
  %i.w = add nsw i64 %i.u, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.w, ptr %i.b, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 1, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre157, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.x = load i64, ptr %i.b, align 8, !tbaa !29
  %i.y = call i64 @llvm.smin.i64(i64 %i.x, i64 %i.w) ; 2 uses
  store i64 %i.y, ptr %i.b, align 8, !tbaa !29
  %i.z = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not140 = icmp sgt i64 %i.z, %i.y
  br i1 %.not140, label %._crit_edge144, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %bb.e
  %.pre = load i64, ptr %3, align 8, !tbaa !29
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.q
  %i.aa = phi i64 [ %i.je, %bb.q ], [ %.pre, %.lr.ph143.preheader ] ; 3 uses
  %.077141 = phi i64 [ %i.jf, %bb.q ], [ %i.z, %.lr.ph143.preheader ] ; 6 uses
  %i.ab = shl i64 %.077141, 2
  %i.ac = shl i64 %.077141, 2
  %i.ad = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = mul i64 %i.aa, %.077141
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af ; 23 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !28
  %i.ai = load i64, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.aj = mul i64 %i.ai, %.077141
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 0, i64 %i.ai, i1 false)
  %i.al = load i64, ptr %3, align 8, !tbaa !29    ; 19 uses
  %.not145 = icmp eq i64 %i.al, 0
  br i1 %.not145, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph143
  %i.am = load i64, ptr %9, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph143
  %i.ao = load ptr, ptr %8, align 8, !tbaa !27    ; 6 uses
  %.not89 = icmp eq ptr %i.ao, null
  br i1 %.not89, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %i.al, 3                    ; 3 uses
  %i.ap = icmp ult i64 %i.al, 4
  br i1 %i.ap, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.al, -4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter215 = and i64 %i.al, 3                 ; 3 uses
  %i.aq = icmp ult i64 %i.al, 4
  br i1 %i.aq, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter220 = and i64 %i.al, -4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.082126.us = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %i.bg, %.lr.ph.split.us ] ; 5 uses
  %.083125.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader.new ], [ %i.bf, %.lr.ph.split.us ]
  %niter221 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter221.next.3, %.lr.ph.split.us ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.082126.us
  %i.as = load float, ptr %i.ar, align 4, !tbaa !46 ; 2 uses
  %i.at = call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %.083125.us)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.082126.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !46 ; 2 uses
  %i.ax = call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.at)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.082126.us
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !46 ; 2 uses
  %i.bb = call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.ax)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.082126.us
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load float, ptr %i.bd, align 4, !tbaa !46 ; 2 uses
  %i.bf = call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bb) ; 3 uses
  %i.bg = add nuw i64 %.082126.us, 4              ; 2 uses
  %niter221.next.3 = add nuw i64 %niter221, 4     ; 2 uses
  %niter221.ncmp.3 = icmp eq i64 %niter221.next.3, %unroll_iter220
  br i1 %niter221.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !72

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod217.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod217.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.082126.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.bg, %._crit_edge.loopexit.unr-lcssa ]
  %.083125.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod219 = icmp ne i64 %xtraiter215, 0
  call void @llvm.assume(i1 %lcmp.mod219)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %.082126.us.epil = phi i64 [ %i.bk, %.lr.ph.split.us.epil ], [ %.082126.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %.083125.us.epil = phi float [ %i.bj, %.lr.ph.split.us.epil ], [ %.083125.us.epil.init, %.lr.ph.split.us.epil.preheader ]
  %epil.iter216 = phi i64 [ %epil.iter216.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.082126.us.epil
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !46 ; 2 uses
  %i.bj = call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %.083125.us.epil) ; 2 uses
  %i.bk = add nuw i64 %.082126.us.epil, 1
  %epil.iter216.next = add i64 %epil.iter216, 1   ; 2 uses
  %epil.iter216.cmp.not = icmp eq i64 %epil.iter216.next, %xtraiter215
  br i1 %epil.iter216.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !73

._crit_edge.loopexit210.unr-lcssa:                ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit210.unr-lcssa, %.lr.ph.split.preheader
  %.082126.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.cw, %._crit_edge.loopexit210.unr-lcssa ]
  %.083125.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.preheader ], [ %i.cv, %._crit_edge.loopexit210.unr-lcssa ]
  %lcmp.mod214 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod214)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %.082126.epil = phi i64 [ %i.br, %.lr.ph.split.epil ], [ %.082126.epil.init, %.lr.ph.split.epil.preheader ] ; 3 uses
  %.083125.epil = phi float [ %i.bq, %.lr.ph.split.epil ], [ %.083125.epil.init, %.lr.ph.split.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.082126.epil
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !46
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.082126.epil
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !46
  %i.bp = fsub float %i.bo, %i.bm                 ; 2 uses
  %i.bq = call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %.083125.epil) ; 2 uses
  %i.br = add nuw i64 %.082126.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !74

._crit_edge:                                      ; preds = %._crit_edge.loopexit210.unr-lcssa, %.lr.ph.split.epil, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.epil
  %.083.lcssa = phi float [ %i.bj, %.lr.ph.split.us.epil ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ], [ %i.cv, %._crit_edge.loopexit210.unr-lcssa ], [ %i.bq, %.lr.ph.split.epil ] ; 4 uses
  %i.bs = load i64, ptr %9, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bs ; 3 uses
  %i.bu = fcmp ugt float %.083.lcssa, f0x34000000
  br i1 %i.bu, label %.lr.ph131, label %bb.f

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.082126 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.cw, %.lr.ph.split ] ; 6 uses
  %.083125 = phi float [ 0.000000e+00, %.lr.ph.split.preheader.new ], [ %i.cv, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.082126
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !46
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.082126
  %i.by = load float, ptr %i.bx, align 4, !tbaa !46
  %i.bz = fsub float %i.by, %i.bw                 ; 2 uses
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %.083125)
  %i.cb = or disjoint i64 %.082126, 1             ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !46
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cb
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !46
  %i.cg = fsub float %i.cf, %i.cd                 ; 2 uses
  %i.ch = call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.ca)
  %i.ci = or disjoint i64 %.082126, 2             ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !46
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ci
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !46
  %i.cn = fsub float %i.cm, %i.ck                 ; 2 uses
  %i.co = call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.ch)
  %i.cp = or disjoint i64 %.082126, 3             ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !46
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cp
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !46
  %i.cu = fsub float %i.ct, %i.cr                 ; 2 uses
  %i.cv = call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.co) ; 3 uses
  %i.cw = add nuw i64 %.082126, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit210.unr-lcssa, label %.lr.ph.split, !llvm.loop !72

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.cx = phi ptr [ %i.an, %._crit_edge.thread ], [ %i.bt, %._crit_edge ]
  store <2 x float> zeroinitializer, ptr %i.cx, align 1, !tbaa !46
  br label %bb.q

.lr.ph131:                                        ; preds = %._crit_edge
  %i.cy = call noundef float @sqrtf(float noundef %.083.lcssa) #18
  %i.cz = fdiv float 1.000000e+00, %i.cy          ; 10 uses
  %i.da = load ptr, ptr %8, align 8, !tbaa !27    ; 6 uses
  %i.db = ptrtoaddr ptr %i.da to i64
  %.not88 = icmp eq ptr %i.da, null
  %i.dc = load float, ptr %10, align 4, !tbaa !46 ; 10 uses
  %min.iters.check = icmp ult i64 %i.al, 8        ; 2 uses
  br i1 %.not88, label %.lr.ph131.split.us.preheader, label %.lr.ph131.split.preheader

.lr.ph131.split.preheader:                        ; preds = %.lr.ph131
  br i1 %min.iters.check, label %.lr.ph131.split.preheader208, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph131.split.preheader
  %i.dd = sub i64 %i.db, %.sroa.0106.0117121182
  %diff.check187 = icmp ugt i64 %i.dd, -32
  %i.de = mul i64 %i.aa, %i.ab
  %i.df = add i64 %i.de, %i.ae
  %i.dg = sub i64 %i.df, %.sroa.0106.0117121182
  %diff.check188 = icmp ugt i64 %i.dg, -32
  %conflict.rdx = or i1 %diff.check187, %diff.check188
  br i1 %conflict.rdx, label %.lr.ph131.split.preheader208, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck186
  %n.vec192 = and i64 %i.al, -8                   ; 3 uses
  %broadcast.splatinsert193 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat194 = shufflevector <4 x float> %broadcast.splatinsert193, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert195 = insertelement <4 x float> poison, float %i.cz, i64 0
  %broadcast.splat196 = shufflevector <4 x float> %broadcast.splatinsert195, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph191
  %index198 = phi i64 [ 0, %vector.ph191 ], [ %index.next203, %vector.body197 ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index198 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load199 = load <4 x float>, ptr %i.dh, align 4, !tbaa !46
  %wide.load200 = load <4 x float>, ptr %i.di, align 4, !tbaa !46
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index198 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5faiss10eden_utils13compute_codesERKNS_15ScalarQuantizerENS_10MetricTypeENS_13EDENScaleTypeEPKfPhmS7_.omp_outlined:bb.a
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !46
  %i.fa = fmul float %i.ez, %i.dc
  %i.fb = fmul float %i.cz, %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0117121, i64 %.081129.us
  store float %i.fb, ptr %i.fc, align 4, !tbaa !46
  %i.fd = add nuw i64 %.081129.us, 1              ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !46
  %i.fg = fmul float %i.ff, %i.dc
  %i.fh = fmul float %i.cz, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0117121, i64 %i.fd
  store float %i.fh, ptr %i.fi, align 4, !tbaa !46
  %i.fj = add nuw i64 %.081129.us, 2              ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !46
  %i.fm = fmul float %i.fl, %i.dc
  %i.fn = fmul float %i.cz, %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0117121, i64 %i.fj
  store float %i.fn, ptr %i.fo, align 4, !tbaa !46
  %i.fp = add nuw i64 %.081129.us, 3              ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !46
  %i.fs = fmul float %i.fr, %i.dc
  %i.ft = fmul float %i.cz, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0117121, i64 %i.fp
  store float %i.ft, ptr %i.fu, align 4, !tbaa !46
  %i.fv = add nuw i64 %.081129.us, 4              ; 2 uses
  %exitcond155.not.3 = icmp eq i64 %i.fv, %i.al
  br i1 %exitcond155.not.3, label %._crit_edge132, label %.lr.ph131.split.us, !llvm.loop !78

._crit_edge132:                                   ; preds = %.lr.ph131.split.prol.loopexit, %.lr.ph131.split, %.lr.ph131.split.us.prol.loopexit, %.lr.ph131.split.us, %middle.block204, %middle.block
  %i.fw = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %.sroa.0106.0117121, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit

.lr.ph131.split:                                  ; preds = %.lr.ph131.split.prol.loopexit, %.lr.ph131.split
  %.081129 = phi i64 [ %i.gp, %.lr.ph131.split ], [ %.081129.unr, %.lr.ph131.split.prol.loopexit ] ; 5 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.081129
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !46
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.081129
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !46
  %i.gc = fsub float %i.gb, %i.fz
  %i.gd = fmul float %i.gc, %i.dc
  %i.ge = fmul float %i.cz, %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0117121, i64 %.081129
  store float %i.ge, ptr %i.gf, align 4, !tbaa !46
  %i.gg = add nuw i64 %.081129, 1                 ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !46
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.gg
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !46
  %i.gl = fsub float %i.gk, %i.gi
  %i.gm = fmul float %i.gl, %i.dc
  %i.gn = fmul float %i.cz, %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0117121, i64 %i.gg
  store float %i.gn, ptr %i.go, align 4, !tbaa !46
  %i.gp = add nuw i64 %.081129, 2                 ; 2 uses
  %exitcond154.not.1 = icmp eq i64 %i.gp, %i.al
  br i1 %exitcond154.not.1, label %._crit_edge132, label %.lr.ph131.split, !llvm.loop !79

bb.g:                                             ; preds = %._crit_edge132
  %i.gq = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.ak, ptr noundef %.sroa.0102.0)
          to label %.preheader unwind label %.loopexit

.preheader:                                       ; preds = %bb.g
  %i.gt = load i64, ptr %3, align 8, !tbaa !29    ; 6 uses
  %.not147 = icmp eq i64 %i.gt, 0
  br i1 %.not147, label %._crit_edge137, label %.lr.ph136

.lr.ph136:                                        ; preds = %.preheader
  %i.gu = load ptr, ptr %8, align 8, !tbaa !27    ; 4 uses
  %.not87 = icmp eq ptr %i.gu, null               ; 3 uses
  %xtraiter226 = and i64 %i.gt, 1
  %i.gv = icmp eq i64 %i.gt, 1
  br i1 %i.gv, label %.epil.preheader, label %.lr.ph136.new

.lr.ph136.new:                                    ; preds = %.lr.ph136
  %unroll_iter231 = and i64 %i.gt, -2
  br label %bb.i

._crit_edge137.loopexit.unr-lcssa:                ; preds = %bb.m
  %lcmp.mod228.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod228.not, label %._crit_edge137, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge137.loopexit.unr-lcssa, %.lr.ph136
  %.078135.epil.init = phi i64 [ 0, %.lr.ph136 ], [ %i.io, %._crit_edge137.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph136 ], [ %i.in, %._crit_edge137.loopexit.unr-lcssa ]
  %lcmp.mod230 = trunc i64 %i.gt to i1
  call void @llvm.assume(i1 %lcmp.mod230)
  br i1 %.not87, label %._crit_edge137.loopexit.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.078135.epil.init
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !46
  br label %._crit_edge137.loopexit.epilog-lcssa

._crit_edge137.loopexit.epilog-lcssa:             ; preds = %bb.h, %.epil.preheader
  %i.gy = phi float [ %i.gx, %bb.h ], [ 0.000000e+00, %.epil.preheader ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.078135.epil.init
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !46
  %i.hb = fsub float %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0102.0, i64 %.078135.epil.init
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !46
  %i.he = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %i.hb, i64 1
  %i.hg = fpext <2 x float> %i.hf to <2 x double> ; 2 uses
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.hg, <2 x double> %.epil.init)
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit.epilog-lcssa, %._crit_edge137.loopexit.unr-lcssa, %.preheader
  %i.hj = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.in, %._crit_edge137.loopexit.unr-lcssa ], [ %i.hi, %._crit_edge137.loopexit.epilog-lcssa ] ; 3 uses
  %i.hk = load i32, ptr %11, align 4, !tbaa !25
  %i.hl = icmp eq i32 %i.hk, 2
  br i1 %i.hl, label %bb.n, label %bb.o

bb.i:                                             ; preds = %bb.m, %.lr.ph136.new
  %.078135 = phi i64 [ 0, %.lr.ph136.new ], [ %i.io, %bb.m ] ; 5 uses
  %i.hm = phi <2 x double> [ zeroinitializer, %.lr.ph136.new ], [ %i.in, %bb.m ]
  %niter232 = phi i64 [ 0, %.lr.ph136.new ], [ %niter232.next.1, %bb.m ]
  br i1 %.not87, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.078135
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.hp = phi float [ %i.ho, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.078135
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !46
  %i.hs = fsub float %i.hr, %i.hp
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0102.0, i64 %.078135
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !46
  %i.hv = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.hw = insertelement <2 x float> %i.hv, float %i.hs, i64 1
  %i.hx = fpext <2 x float> %i.hw to <2 x double> ; 2 uses
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.hx, <2 x double> %i.hm)
  %i.ia = or disjoint i64 %.078135, 1             ; 3 uses
  br i1 %.not87, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.id = phi float [ %i.ic, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ia
  %i.if = load float, ptr %i.ie, align 4, !tbaa !46
  %i.ig = fsub float %i.if, %i.id
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0102.0, i64 %i.ia
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !46
  %i.ij = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.ik = insertelement <2 x float> %i.ij, float %i.ig, i64 1
  %i.il = fpext <2 x float> %i.ik to <2 x double> ; 2 uses
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> %i.il, <2 x double> %i.hz) ; 3 uses
  %i.io = add nuw i64 %.078135, 2                 ; 2 uses
  %niter232.next.1 = add nuw i64 %niter232, 2     ; 2 uses
  %niter232.ncmp.1 = icmp eq i64 %niter232.next.1, %unroll_iter231
  br i1 %niter232.ncmp.1, label %._crit_edge137.loopexit.unr-lcssa, label %bb.i, !llvm.loop !80

bb.n:                                             ; preds = %._crit_edge137
  %i.ip = extractelement <2 x double> %i.hj, i64 0 ; 2 uses
  %i.iq = extractelement <2 x double> %i.hj, i64 1
  %i.ir = fdiv double %i.iq, %i.ip
  %i.is = fptrunc double %i.ir to float           ; 2 uses
  %i.it = fpext float %i.is to double             ; 2 uses
  %i.iu = fmul double %i.it, %i.it
  %i.iv = fmul double %i.ip, %i.iu
  %i.iw = fptrunc double %i.iv to float
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge137
  %i.ix = fpext float %.083.lcssa to double
  %i.iy = extractelement <2 x double> %i.hj, i64 1
  %i.iz = fdiv double %i.ix, %i.iy
  %i.ja = fptrunc double %i.iz to float
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.075 = phi float [ %i.is, %bb.n ], [ %i.ja, %bb.o ] ; 2 uses
  %.0 = phi float [ %i.iw, %bb.n ], [ %.083.lcssa, %bb.o ]
  %i.jb = call float @llvm.fabs.f32(float %.075)
  %i.jc = fcmp one float %i.jb, +inf              ; 2 uses
  %.176 = select i1 %i.jc, float %.075, float 0.000000e+00
  %.1 = select i1 %i.jc, float %.0, float 0.000000e+00
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store float %.176, ptr %i.jd, align 1, !tbaa !52
  store float %.1, ptr %i.bt, align 1, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.f
  %i.je = phi i64 [ %i.gt, %bb.p ], [ %i.al, %bb.f ]
  %i.jf = add i64 %.077141, 1
  %i.jg = load i64, ptr %i.b, align 8, !tbaa !29
  %.not.not = icmp slt i64 %.077141, %i.jg
  br i1 %.not.not, label %.lr.ph143, label %._crit_edge144

._crit_edge144:                                   ; preds = %bb.q, %bb.e
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre157)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge144, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99
  call void @__kmpc_barrier(ptr nonnull @2, i32 %.pre157)
  %.not.i.i.i = icmp eq ptr %.sroa.0102.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jh = ptrtoint ptr %.sroa.9.0 to i64
  %i.ji = ptrtoint ptr %.sroa.0102.0 to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0, i64 noundef %i.jj) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.r, %bb.s
  %.not.i.i.i100 = icmp eq ptr %.sroa.0106.0117121, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIfSaIfEED2Ev.exit101, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.jk = ptrtoint ptr %.sroa.9110.0116123 to i64
  %i.jl = ptrtoint ptr %.sroa.0106.0117121 to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0117121, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit101

_ZNSt6vectorIfSaIfEED2Ev.exit101:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.t
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit101
  %i.jn = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #18, !inline_history !1
  br label %_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit101, %_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i
  ret void

.loopexit:                                        ; preds = %._crit_edge132, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

.loopexit.split-lp:                               ; preds = %.invoke, %bb.a, %bb.c, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.jq = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.jq) #29
  unreachable
}

declare noundef ptr @_ZNK5faiss15ScalarQuantizer16select_quantizerEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #18

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare !callback !55 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @3) ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !28
  store ptr %2, ptr %i.b, align 8, !tbaa !27
  store i64 %3, ptr %i.c, align 8, !tbaa !29
  store ptr %4, ptr %i.d, align 8, !tbaa !27
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf, ptr noundef nonnull @.str.1, i32 noundef 826) #30 ; 0 uses
  tail call void @abort() #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf, ptr noundef nonnull @.str.1, i32 noundef 827) #30 ; 0 uses
  tail call void @abort() #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %i.p = add i32 %i.o, -19
  %i.q = icmp ult i32 %i.p, 8
  br i1 %i.q, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !20
  store i8 0, ptr %i.r, align 8, !tbaa !17
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.t to i64                ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.w)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %5, align 8, !tbaa !16
  %i.y = load i64, ptr %i.s, align 8, !tbaa !20
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.v)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.ab = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf, ptr noundef nonnull @.str.1, i32 noundef 830)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.r unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ab) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.ac, %bb.l ]
  %i.ad = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.af = load i64, ptr %i.r, align 8, !tbaa !17
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !45
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44
  %i.an = tail call noundef i64 @_ZN5faiss10eden_utils16packed_code_sizeEmm(i64 noundef %i.ai, i64 noundef %i.am)
  %i.ao = add nuw nsw i64 %i.an, 8
  store i64 %i.ao, ptr %i.g, align 8, !tbaa !29
  %i.ap = icmp ugt i64 %3, 1000
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 8, ptr nonnull @_ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf.omp_outlined, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.d)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @__kmpc_serialized_parallel(ptr nonnull @3, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !47
  call void @_ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf.omp_outlined(ptr nonnull %i.h, ptr nonnull poison, ptr %0, ptr %i.e, ptr %i.c, ptr %i.a, ptr %i.g, ptr %i.f, ptr %i.b, ptr %i.d) #18
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @3, i32 %i.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  ret void

bb.r:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = invoke noundef ptr @_ZNK5faiss15ScalarQuantizer16select_quantizerEv(ptr noundef nonnull align 8 dereferenceable(160) %2)
          to label %bb.b unwind label %.loopexit.split-lp ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8, !tbaa !29     ; 5 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.c, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc34 unwind label %.loopexit.split-lp ; 5 uses

.noexc34:                                         ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !46
  %i.k = add nsw i64 %i.f, -1                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc34
  %i.m = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !46
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc34, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.035.0 = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.i, %.noexc34 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  %.sroa.9.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc34 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.n = load i64, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  %.pre49 = load i32, ptr %0, align 4, !tbaa !47  ; 3 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.p = add nsw i64 %i.n, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.p, ptr %i.b, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 1, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !47
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre49, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.q = load i64, ptr %i.b, align 8, !tbaa !29
  %i.r = call i64 @llvm.smin.i64(i64 %i.q, i64 %i.p) ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !29
  %i.s = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not41 = icmp sgt i64 %i.s, %i.r
  br i1 %.not41, label %._crit_edge45, label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %bb.e
  %.pre = load i64, ptr %3, align 8, !tbaa !29
  br label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %._crit_edge
  %i.t = phi i64 [ %i.ai, %._crit_edge ], [ %.pre, %.lr.ph44.preheader ] ; 3 uses
  %.03142 = phi i64 [ %i.cn, %._crit_edge ], [ %i.s, %.lr.ph44.preheader ] ; 6 uses
  %i.u = shl i64 %.03142, 2
  %i.v = shl i64 %.03142, 2
  %i.w = load ptr, ptr %5, align 8, !tbaa !28     ; 3 uses
  %i.x = load i64, ptr %6, align 8, !tbaa !29
  %i.y = mul i64 %i.x, %.03142                    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %7, align 8, !tbaa !29    ; 3 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %8, align 8, !tbaa !27    ; 3 uses
  %i.ad = mul i64 %i.t, %.03142
  %i.ae = getelementptr [4 x i8], ptr %i.ac, i64 %i.ad ; 13 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.z, ptr noundef %.sroa.035.0)
          to label %.preheader unwind label %.loopexit

.preheader:                                       ; preds = %.lr.ph44
  %i.ai = load i64, ptr %3, align 8, !tbaa !29    ; 15 uses
  %.not46 = icmp eq i64 %i.ai, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aj = load ptr, ptr %9, align 8, !tbaa !27    ; 7 uses
  %.not33 = icmp eq ptr %i.aj, null
  %i.ak = getelementptr i8, ptr %i.ab, i64 4      ; 10 uses
  %min.iters.check = icmp ult i64 %i.ai, 8        ; 2 uses
  br i1 %.not33, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check, label %.lr.ph.split.preheader99, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph.split.preheader
  %i.al = mul i64 %i.t, %i.u
  %i.am = shl i64 %i.ai, 2                        ; 3 uses
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.al
  %scevgep66 = getelementptr i8, ptr %i.an, i64 %i.am ; 3 uses
  %scevgep67 = getelementptr i8, ptr %i.aj, i64 %i.am
  %scevgep68 = getelementptr i8, ptr %i.w, i64 8
  %i.ao = getelementptr i8, ptr %scevgep68, i64 %i.aa
  %scevgep69 = getelementptr i8, ptr %i.ao, i64 %i.y
  %scevgep70 = getelementptr i8, ptr %.sroa.035.0, i64 %i.am
  %bound071 = icmp ult ptr %i.ae, %scevgep67
  %bound172 = icmp ult ptr %i.aj, %scevgep66
  %found.conflict73 = and i1 %bound071, %bound172
  %bound074 = icmp ult ptr %i.ae, %scevgep69
  %bound175 = icmp ult ptr %i.ak, %scevgep66
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %found.conflict73, %found.conflict76
  %bound078 = icmp ult ptr %i.ae, %scevgep70
  %bound179 = icmp ult ptr %.sroa.035.0, %scevgep66
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx77, %found.conflict80
  br i1 %conflict.rdx81, label %.lr.ph.split.preheader99, label %vector.ph84

vector.ph84:                                      ; preds = %vector.memcheck65
  %n.vec85 = and i64 %i.ai, -8                    ; 3 uses
  %i.ap = load float, ptr %i.ak, align 1, !tbaa !52, !alias.scope !94
  %broadcast.splatinsert92 = insertelement <4 x float> poison, float %i.ap, i64 0
  %broadcast.splat93 = shufflevector <4 x float> %broadcast.splatinsert92, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next94, %vector.body86 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index87 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load88 = load <4 x float>, ptr %i.aq, align 4, !tbaa !46, !alias.scope !95
  %wide.load89 = load <4 x float>, ptr %i.ar, align 4, !tbaa !46, !alias.scope !95
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %index87 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load90 = load <4 x float>, ptr %i.as, align 4, !tbaa !46, !alias.scope !96
  %wide.load91 = load <4 x float>, ptr %i.at, align 4, !tbaa !46, !alias.scope !96
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat93, <4 x float> %wide.load90, <4 x float> %wide.load88)
  %i.av = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat93, <4 x float> %wide.load91, <4 x float> %wide.load89)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index87 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !46, !alias.scope !97, !noalias !98
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !46, !alias.scope !97, !noalias !98
  %index.next94 = add nuw i64 %index87, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.ay, label %middle.block95, label %vector.body86, !llvm.loop !86

middle.block95:                                   ; preds = %vector.body86
  %cmp.n96 = icmp eq i64 %i.ai, %n.vec85
  br i1 %cmp.n96, label %._crit_edge, label %.lr.ph.split.preheader99

.lr.ph.split.preheader99:                         ; preds = %vector.memcheck65, %.lr.ph.split.preheader, %middle.block95
  %.040.ph = phi i64 [ 0, %vector.memcheck65 ], [ 0, %.lr.ph.split.preheader ], [ %n.vec85, %middle.block95 ] ; 6 uses
  %.neg = or disjoint i64 %.040.ph, 1
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader99
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.040.ph
  %i.ba = load float, ptr %i.az, align 4, !tbaa !46
  %i.bb = load float, ptr %i.ak, align 1, !tbaa !52
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040.ph
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !46
  %i.be = call float @llvm.fmuladd.f32(float %i.bb, float %i.bd, float %i.ba)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.040.ph
  store float %i.be, ptr %i.bf, align 4, !tbaa !46
  %i.bg = or disjoint i64 %.040.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader99
  %.040.unr = phi i64 [ %.040.ph, %.lr.ph.split.preheader99 ], [ %i.bg, %.lr.ph.split.prol ]
  %i.bh = icmp eq i64 %i.ai, %.neg
  br i1 %i.bh, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader98, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.bi = mul i64 %i.t, %i.v
  %i.bj = shl i64 %i.ai, 2                        ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ac, i64 %i.bi
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bj ; 2 uses
  %scevgep58 = getelementptr i8, ptr %i.w, i64 8
  %i.bl = getelementptr i8, ptr %scevgep58, i64 %i.aa
  %scevgep59 = getelementptr i8, ptr %i.bl, i64 %i.y
  %scevgep60 = getelementptr i8, ptr %.sroa.035.0, i64 %i.bj
  %bound0 = icmp ult ptr %i.ae, %scevgep59
  %bound1 = icmp ult ptr %i.ak, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %i.ae, %scevgep60
  %bound162 = icmp ult ptr %.sroa.035.0, %scevgep
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx = or i1 %found.conflict, %found.conflict63
  br i1 %conflict.rdx, label %.lr.ph.split.us.preheader98, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, -8                      ; 3 uses
  %i.bm = load float, ptr %i.ak, align 1, !tbaa !52, !alias.scope !99
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bm, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <4 x float>, ptr %i.bn, align 4, !tbaa !46, !alias.scope !100
  %wide.load64 = load <4 x float>, ptr %i.bo, align 4, !tbaa !46, !alias.scope !100
  %i.bp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> zeroinitializer)
  %i.bq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load64, <4 x float> zeroinitializer)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <4 x float> %i.bp, ptr %i.br, align 4, !tbaa !46, !alias.scope !101, !noalias !102
  store <4 x float> %i.bq, ptr %i.bs, align 4, !tbaa !46, !alias.scope !101, !noalias !102
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader98

.lr.ph.split.us.preheader98:                      ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.040.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg103 = or disjoint i64 %.040.us.ph, 1
  %xtraiter101 = and i64 %i.ai, 1
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader98
  %i.bu = load float, ptr %i.ak, align 1, !tbaa !52
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040.us.ph
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !46
  %i.bx = call float @llvm.fmuladd.f32(float %i.bu, float %i.bw, float 0.000000e+00)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.040.us.ph
  store float %i.bx, ptr %i.by, align 4, !tbaa !46
  %i.bz = or disjoint i64 %.040.us.ph, 1
  br label %.lr.ph.split.us.prol.loopexit

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader98
  %.040.us.unr = phi i64 [ %.040.us.ph, %.lr.ph.split.us.preheader98 ], [ %i.bz, %.lr.ph.split.us.prol ]
  %i.ca = icmp eq i64 %i.ai, %.neg103
  br i1 %i.ca, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.040.us = phi i64 [ %i.cm, %.lr.ph.split.us ], [ %.040.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 4 uses
  %i.cb = load float, ptr %i.ak, align 1, !tbaa !52
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040.us
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !46
  %i.ce = call float @llvm.fmuladd.f32(float %i.cb, float %i.cd, float 0.000000e+00)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.040.us
  store float %i.ce, ptr %i.cf, align 4, !tbaa !46
  %i.cg = add nuw i64 %.040.us, 1                 ; 2 uses
  %i.ch = load float, ptr %i.ak, align 1, !tbaa !52
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %i.cg
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !46
  %i.ck = call float @llvm.fmuladd.f32(float %i.ch, float %i.cj, float 0.000000e+00)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cg
  store float %i.ck, ptr %i.cl, align 4, !tbaa !46
  %i.cm = add nuw i64 %.040.us, 2                 ; 2 uses
  %exitcond48.not.1 = icmp eq i64 %i.cm, %i.ai
  br i1 %exitcond48.not.1, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block95, %middle.block, %.preheader
  %i.cn = add nsw i64 %.03142, 1
  %i.co = load i64, ptr %i.b, align 8, !tbaa !29
  %.not.not = icmp slt i64 %.03142, %i.co
  br i1 %.not.not, label %.lr.ph44, label %._crit_edge45

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.040 = phi i64 [ %i.de, %.lr.ph.split ], [ %.040.unr, %.lr.ph.split.prol.loopexit ] ; 5 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.040
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !46
  %i.cr = load float, ptr %i.ak, align 1, !tbaa !52
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !46
  %i.cu = call float @llvm.fmuladd.f32(float %i.cr, float %i.ct, float %i.cq)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.040
  store float %i.cu, ptr %i.cv, align 4, !tbaa !46
  %i.cw = add nuw i64 %.040, 1                    ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !46
  %i.cz = load float, ptr %i.ak, align 1, !tbaa !52
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %i.cw
  %i.db = load float, ptr %i.da, align 4, !tbaa !46
  %i.dc = call float @llvm.fmuladd.f32(float %i.cz, float %i.db, float %i.cy)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cw
  store float %i.dc, ptr %i.dd, align 4, !tbaa !46
  %i.de = add nuw i64 %.040, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.de, %i.ai
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !93

._crit_edge45:                                    ; preds = %._crit_edge, %bb.e
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge45, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @__kmpc_barrier(ptr nonnull @2, i32 %.pre49)
  %.not.i.i.i = icmp eq ptr %.sroa.035.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.df = ptrtoint ptr %.sroa.9.0 to i64
  %i.dg = ptrtoint ptr %.sroa.035.0 to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.035.0, i64 noundef %i.dh) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.di = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #18, !inline_history !1
  br label %_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i
  ret void

.loopexit:                                        ; preds = %.lr.ph44
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.a, %bb.c, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dl = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.dl) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5faiss10eden_utils21get_distance_computerERKNS_15ScalarQuantizerENS_10MetricTypeEPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = add i32 %i.b, -19
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !20
  store i8 0, ptr %i.e, align 8, !tbaa !17
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !16
  %i.l = load i64, ptr %i.f, align 8, !tbaa !20
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.i)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils21get_distance_computerERKNS_15ScalarQuantizerENS_10MetricTypeEPKf, ptr noundef nonnull @.str.1, i32 noundef 869)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.t unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.p, %bb.h ]
  %i.q = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.s = load i64, ptr %i.e, align 8, !tbaa !17
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !57   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  %.highbits = lshr i64 %i.ad, %i.v
  %.not = icmp eq i64 %.highbits, 0
  br i1 %.not, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.af, align 8, !tbaa !20
  store i8 0, ptr %i.ae, align 8, !tbaa !17
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #18 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ai = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.aj)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %4, align 8, !tbaa !16
  %i.al = load i64, ptr %i.af, align 8, !tbaa !20
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ai)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.ao = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils21get_distance_computerERKNS_15ScalarQuantizerENS_10MetricTypeEPKf, ptr noundef nonnull @.str.1, i32 noundef 871)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.t unwind label %bb.n

end_hunk_1
