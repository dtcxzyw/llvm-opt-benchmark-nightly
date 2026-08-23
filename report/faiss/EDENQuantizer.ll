Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/EDENQuantizer?download=true
inline.NumInlined: 299
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5faiss10eden_utils13compute_codesERKNS_15ScalarQuantizerENS_10MetricTypeENS_13EDENScaleTypeEPKfPhmS7_:bb.a
  store i64 0, ptr %i.bb, align 8, !tbaa !18
  store i8 0, ptr %i.ba, align 8, !tbaa !15
  %i.bc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #18 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.be = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.bf)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bg = load ptr, ptr %9, align 8, !tbaa !9
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !18
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
  %i.bm = load ptr, ptr %9, align 8, !tbaa !9     ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ba
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ae
  %i.bo = load i64, ptr %i.ba, align 8, !tbaa !15
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
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !42 ; 3 uses
  store i64 %i.bs, ptr %i.f, align 8, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !44
  store i64 %i.bw, ptr %i.g, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.bx = tail call noundef i64 @_ZN5faiss10eden_utils16packed_code_sizeEmm(i64 noundef %i.bs, i64 noundef %i.bu)
  %i.by = add nuw nsw i64 %i.bx, 8
  store i64 %i.by, ptr %i.h, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.bz = uitofp i64 %i.bs to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.bz)
  store float %sqrt, ptr %i.i, align 4, !tbaa !45
  %i.ca = icmp ugt i64 %5, 1000
  br i1 %i.ca, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 10, ptr nonnull @_ZN5faiss10eden_utils13compute_codesERKNS_15ScalarQuantizerENS_10MetricTypeENS_13EDENScaleTypeEPKfPhmS7_.omp_outlined, ptr nonnull %0, ptr nonnull %i.f, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.i, ptr nonnull %i.a)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @__kmpc_serialized_parallel(ptr nonnull @3, i32 %i.k)
  store i32 %i.k, ptr %i.j, align 4, !tbaa !46
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
  %i.f = load i64, ptr %3, align 8, !tbaa !28     ; 6 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.c, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc90 unwind label %.loopexit.split-lp ; 5 uses

.noexc90:                                         ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !45
  %i.k = add nsw i64 %i.f, -1                     ; 3 uses
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %bb.e, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc90
  %i.m = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %.noexc90, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc98 unwind label %.loopexit.split-lp ; 5 uses

.noexc98:                                         ; preds = %bb.e
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.f ; 2 uses
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !45
  br i1 %i.l, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93: ; preds = %.noexc98
  %i.p = getelementptr i8, ptr %i.n, i64 4
  %.idx.i.i.i.i.i.i.i94 = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i94, i1 false), !tbaa !45
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93, %.noexc98, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0106.0118 = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93 ], [ %i.i, %.noexc98 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 15 uses
  %.sroa.9110.0116 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93 ], [ %i.j, %.noexc98 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0102.0 = phi ptr [ %i.n, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93 ], [ %i.n, %.noexc98 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.9.0 = phi ptr [ %i.o, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93 ], [ %i.o, %.noexc98 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0106.0118177 = ptrtoaddr ptr %.sroa.0106.0118 to i64 ; 3 uses
  %i.q = load i64, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  %.pre152 = load i32, ptr %0, align 4, !tbaa !46 ; 3 uses
  br i1 %i.r, label %bb.f, label %bb.s

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99
  %i.s = add nsw i64 %i.q, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.s, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 1, ptr %i.c, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !46
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre152, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.t = load i64, ptr %i.b, align 8, !tbaa !28
  %i.u = call i64 @llvm.smin.i64(i64 %i.t, i64 %i.s) ; 2 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !28
  %i.v = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not135 = icmp sgt i64 %i.v, %i.u
  br i1 %.not135, label %._crit_edge139, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %bb.f
  %.pre = load i64, ptr %3, align 8, !tbaa !28
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %bb.r
  %i.w = phi i64 [ %i.ja, %bb.r ], [ %.pre, %.lr.ph138.preheader ] ; 3 uses
  %.077136 = phi i64 [ %i.jb, %bb.r ], [ %i.v, %.lr.ph138.preheader ] ; 6 uses
  %i.x = shl i64 %.077136, 2
  %i.y = shl i64 %.077136, 2
  %i.z = load ptr, ptr %5, align 8, !tbaa !25     ; 2 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ab = mul i64 %i.w, %.077136
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab ; 23 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !27
  %i.ae = load i64, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.af = mul i64 %i.ae, %.077136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 0, i64 %i.ae, i1 false)
  %i.ah = load i64, ptr %3, align 8, !tbaa !28    ; 19 uses
  %.not140 = icmp eq i64 %i.ah, 0
  br i1 %.not140, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph138
  %i.ai = load i64, ptr %9, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph138
  %i.ak = load ptr, ptr %8, align 8, !tbaa !25    ; 6 uses
  %.not89 = icmp eq ptr %i.ak, null
  br i1 %.not89, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %i.ah, 3                    ; 3 uses
  %i.al = icmp ult i64 %i.ah, 4
  br i1 %i.al, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.ah, -4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter210 = and i64 %i.ah, 3                 ; 3 uses
  %i.am = icmp ult i64 %i.ah, 4
  br i1 %i.am, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter215 = and i64 %i.ah, -4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.082121.us = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %i.bc, %.lr.ph.split.us ] ; 5 uses
  %.083120.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader.new ], [ %i.bb, %.lr.ph.split.us ]
  %niter216 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter216.next.3, %.lr.ph.split.us ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.082121.us
  %i.ao = load float, ptr %i.an, align 4, !tbaa !45 ; 2 uses
  %i.ap = call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %.083120.us)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.082121.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !45 ; 2 uses
  %i.at = call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.ap)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.082121.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !45 ; 2 uses
  %i.ax = call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.at)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.082121.us
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !45 ; 2 uses
  %i.bb = call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.ax) ; 3 uses
  %i.bc = add nuw i64 %.082121.us, 4              ; 2 uses
  %niter216.next.3 = add nuw i64 %niter216, 4     ; 2 uses
  %niter216.ncmp.3 = icmp eq i64 %niter216.next.3, %unroll_iter215
  br i1 %niter216.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !47

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod212.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod212.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.082121.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.bc, %._crit_edge.loopexit.unr-lcssa ]
  %.083120.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bb, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod214 = icmp ne i64 %xtraiter210, 0
  call void @llvm.assume(i1 %lcmp.mod214)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %.082121.us.epil = phi i64 [ %i.bg, %.lr.ph.split.us.epil ], [ %.082121.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %.083120.us.epil = phi float [ %i.bf, %.lr.ph.split.us.epil ], [ %.083120.us.epil.init, %.lr.ph.split.us.epil.preheader ]
  %epil.iter211 = phi i64 [ %epil.iter211.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.082121.us.epil
  %i.be = load float, ptr %i.bd, align 4, !tbaa !45 ; 2 uses
  %i.bf = call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %.083120.us.epil) ; 2 uses
  %i.bg = add nuw i64 %.082121.us.epil, 1
  %epil.iter211.next = add i64 %epil.iter211, 1   ; 2 uses
  %epil.iter211.cmp.not = icmp eq i64 %epil.iter211.next, %xtraiter210
  br i1 %epil.iter211.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !48

._crit_edge.loopexit205.unr-lcssa:                ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit205.unr-lcssa, %.lr.ph.split.preheader
  %.082121.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.cs, %._crit_edge.loopexit205.unr-lcssa ]
  %.083120.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.preheader ], [ %i.cr, %._crit_edge.loopexit205.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod209)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %.082121.epil = phi i64 [ %i.bn, %.lr.ph.split.epil ], [ %.082121.epil.init, %.lr.ph.split.epil.preheader ] ; 3 uses
  %.083120.epil = phi float [ %i.bm, %.lr.ph.split.epil ], [ %.083120.epil.init, %.lr.ph.split.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.082121.epil
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !45
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.082121.epil
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !45
  %i.bl = fsub float %i.bk, %i.bi                 ; 2 uses
  %i.bm = call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %.083120.epil) ; 2 uses
  %i.bn = add nuw i64 %.082121.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !50

._crit_edge:                                      ; preds = %._crit_edge.loopexit205.unr-lcssa, %.lr.ph.split.epil, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.epil
  %.083.lcssa = phi float [ %i.bf, %.lr.ph.split.us.epil ], [ %i.bb, %._crit_edge.loopexit.unr-lcssa ], [ %i.cr, %._crit_edge.loopexit205.unr-lcssa ], [ %i.bm, %.lr.ph.split.epil ] ; 4 uses
  %i.bo = load i64, ptr %9, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bo ; 3 uses
  %i.bq = fcmp ugt float %.083.lcssa, f0x34000000
  br i1 %i.bq, label %.lr.ph126, label %bb.g

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.082121 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.cs, %.lr.ph.split ] ; 6 uses
  %.083120 = phi float [ 0.000000e+00, %.lr.ph.split.preheader.new ], [ %i.cr, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.082121
  %i.bs = load float, ptr %i.br, align 4, !tbaa !45
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.082121
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !45
  %i.bv = fsub float %i.bu, %i.bs                 ; 2 uses
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %.083120)
  %i.bx = or disjoint i64 %.082121, 1             ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !45
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bx
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !45
  %i.cc = fsub float %i.cb, %i.bz                 ; 2 uses
  %i.cd = call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.bw)
  %i.ce = or disjoint i64 %.082121, 2             ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !45
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ce
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !45
  %i.cj = fsub float %i.ci, %i.cg                 ; 2 uses
  %i.ck = call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cd)
  %i.cl = or disjoint i64 %.082121, 3             ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !45
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cl
  %i.cp = load float, ptr %i.co, align 4, !tbaa !45
  %i.cq = fsub float %i.cp, %i.cn                 ; 2 uses
  %i.cr = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.ck) ; 3 uses
  %i.cs = add nuw i64 %.082121, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit205.unr-lcssa, label %.lr.ph.split, !llvm.loop !47

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ct = phi ptr [ %i.aj, %._crit_edge.thread ], [ %i.bp, %._crit_edge ]
  store <2 x float> zeroinitializer, ptr %i.ct, align 1, !tbaa !45
  br label %bb.r

.lr.ph126:                                        ; preds = %._crit_edge
  %i.cu = call noundef float @sqrtf(float noundef %.083.lcssa) #18
  %i.cv = fdiv float 1.000000e+00, %i.cu          ; 10 uses
  %i.cw = load ptr, ptr %8, align 8, !tbaa !25    ; 6 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64
  %.not88 = icmp eq ptr %i.cw, null
  %i.cy = load float, ptr %10, align 4, !tbaa !45 ; 10 uses
  %min.iters.check = icmp ult i64 %i.ah, 8        ; 2 uses
  br i1 %.not88, label %.lr.ph126.split.us.preheader, label %.lr.ph126.split.preheader

.lr.ph126.split.preheader:                        ; preds = %.lr.ph126
  br i1 %min.iters.check, label %.lr.ph126.split.preheader203, label %vector.memcheck181

vector.memcheck181:                               ; preds = %.lr.ph126.split.preheader
  %i.cz = sub i64 %i.cx, %.sroa.0106.0118177
  %diff.check182 = icmp ugt i64 %i.cz, -32
  %i.da = mul i64 %i.w, %i.x
  %i.db = add i64 %i.da, %i.aa
  %i.dc = sub i64 %i.db, %.sroa.0106.0118177
  %diff.check183 = icmp ugt i64 %i.dc, -32
  %conflict.rdx = or i1 %diff.check182, %diff.check183
  br i1 %conflict.rdx, label %.lr.ph126.split.preheader203, label %vector.ph186

vector.ph186:                                     ; preds = %vector.memcheck181
  %n.vec187 = and i64 %i.ah, -8                   ; 3 uses
  %broadcast.splatinsert188 = insertelement <4 x float> poison, float %i.cy, i64 0
  %broadcast.splat189 = shufflevector <4 x float> %broadcast.splatinsert188, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert190 = insertelement <4 x float> poison, float %i.cv, i64 0
  %broadcast.splat191 = shufflevector <4 x float> %broadcast.splatinsert190, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph186
  %index193 = phi i64 [ 0, %vector.ph186 ], [ %index.next198, %vector.body192 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index193 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load194 = load <4 x float>, ptr %i.dd, align 4, !tbaa !45
  %wide.load195 = load <4 x float>, ptr %i.de, align 4, !tbaa !45
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index193 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5faiss10eden_utils13compute_codesERKNS_15ScalarQuantizerENS_10MetricTypeENS_13EDENScaleTypeEPKfPhmS7_.omp_outlined:bb.a
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !45
  %i.ew = fmul float %i.ev, %i.cy
  %i.ex = fmul float %i.cv, %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0118, i64 %.081124.us
  store float %i.ex, ptr %i.ey, align 4, !tbaa !45
  %i.ez = add nuw i64 %.081124.us, 1              ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !45
  %i.fc = fmul float %i.fb, %i.cy
  %i.fd = fmul float %i.cv, %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0118, i64 %i.ez
  store float %i.fd, ptr %i.fe, align 4, !tbaa !45
  %i.ff = add nuw i64 %.081124.us, 2              ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !45
  %i.fi = fmul float %i.fh, %i.cy
  %i.fj = fmul float %i.cv, %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0118, i64 %i.ff
  store float %i.fj, ptr %i.fk, align 4, !tbaa !45
  %i.fl = add nuw i64 %.081124.us, 3              ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !45
  %i.fo = fmul float %i.fn, %i.cy
  %i.fp = fmul float %i.cv, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0118, i64 %i.fl
  store float %i.fp, ptr %i.fq, align 4, !tbaa !45
  %i.fr = add nuw i64 %.081124.us, 4              ; 2 uses
  %exitcond150.not.3 = icmp eq i64 %i.fr, %i.ah
  br i1 %exitcond150.not.3, label %._crit_edge127, label %.lr.ph126.split.us, !llvm.loop !56

._crit_edge127:                                   ; preds = %.lr.ph126.split.prol.loopexit, %.lr.ph126.split, %.lr.ph126.split.us.prol.loopexit, %.lr.ph126.split.us, %middle.block199, %middle.block
  %i.fs = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.ft = load ptr, ptr %i.fs, align 8
  invoke void %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %.sroa.0106.0118, ptr noundef %i.ag)
          to label %bb.h unwind label %.loopexit

.lr.ph126.split:                                  ; preds = %.lr.ph126.split.prol.loopexit, %.lr.ph126.split
  %.081124 = phi i64 [ %i.gl, %.lr.ph126.split ], [ %.081124.unr, %.lr.ph126.split.prol.loopexit ] ; 5 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.081124
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !45
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.081124
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !45
  %i.fy = fsub float %i.fx, %i.fv
  %i.fz = fmul float %i.fy, %i.cy
  %i.ga = fmul float %i.cv, %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0118, i64 %.081124
  store float %i.ga, ptr %i.gb, align 4, !tbaa !45
  %i.gc = add nuw i64 %.081124, 1                 ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !45
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.gc
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !45
  %i.gh = fsub float %i.gg, %i.ge
  %i.gi = fmul float %i.gh, %i.cy
  %i.gj = fmul float %i.cv, %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0118, i64 %i.gc
  store float %i.gj, ptr %i.gk, align 4, !tbaa !45
  %i.gl = add nuw i64 %.081124, 2                 ; 2 uses
  %exitcond149.not.1 = icmp eq i64 %i.gl, %i.ah
  br i1 %exitcond149.not.1, label %._crit_edge127, label %.lr.ph126.split, !llvm.loop !57

bb.h:                                             ; preds = %._crit_edge127
  %i.gm = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.ag, ptr noundef %.sroa.0102.0)
          to label %.preheader unwind label %.loopexit

.preheader:                                       ; preds = %bb.h
  %i.gp = load i64, ptr %3, align 8, !tbaa !28    ; 6 uses
  %.not142 = icmp eq i64 %i.gp, 0
  br i1 %.not142, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %.preheader
  %i.gq = load ptr, ptr %8, align 8, !tbaa !25    ; 4 uses
  %.not87 = icmp eq ptr %i.gq, null               ; 3 uses
  %xtraiter221 = and i64 %i.gp, 1
  %i.gr = icmp eq i64 %i.gp, 1
  br i1 %i.gr, label %.epil.preheader, label %.lr.ph131.new

.lr.ph131.new:                                    ; preds = %.lr.ph131
  %unroll_iter226 = and i64 %i.gp, -2
  br label %bb.j

._crit_edge132.loopexit.unr-lcssa:                ; preds = %bb.n
  %lcmp.mod223.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod223.not, label %._crit_edge132, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge132.loopexit.unr-lcssa, %.lr.ph131
  %.078130.epil.init = phi i64 [ 0, %.lr.ph131 ], [ %i.ik, %._crit_edge132.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph131 ], [ %i.ij, %._crit_edge132.loopexit.unr-lcssa ]
  %lcmp.mod225 = trunc i64 %i.gp to i1
  call void @llvm.assume(i1 %lcmp.mod225)
  br i1 %.not87, label %._crit_edge132.loopexit.epilog-lcssa, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.078130.epil.init
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !45
  br label %._crit_edge132.loopexit.epilog-lcssa

._crit_edge132.loopexit.epilog-lcssa:             ; preds = %bb.i, %.epil.preheader
  %i.gu = phi float [ %i.gt, %bb.i ], [ 0.000000e+00, %.epil.preheader ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.078130.epil.init
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !45
  %i.gx = fsub float %i.gw, %i.gu
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0102.0, i64 %.078130.epil.init
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !45
  %i.ha = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hb = insertelement <2 x float> %i.ha, float %i.gx, i64 1
  %i.hc = fpext <2 x float> %i.hb to <2 x double> ; 2 uses
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.hc, <2 x double> %.epil.init)
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %._crit_edge132.loopexit.epilog-lcssa, %._crit_edge132.loopexit.unr-lcssa, %.preheader
  %i.hf = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.ij, %._crit_edge132.loopexit.unr-lcssa ], [ %i.he, %._crit_edge132.loopexit.epilog-lcssa ] ; 3 uses
  %i.hg = load i32, ptr %11, align 4, !tbaa !23
  %i.hh = icmp eq i32 %i.hg, 2
  br i1 %i.hh, label %bb.o, label %bb.p

bb.j:                                             ; preds = %bb.n, %.lr.ph131.new
  %.078130 = phi i64 [ 0, %.lr.ph131.new ], [ %i.ik, %bb.n ] ; 5 uses
  %i.hi = phi <2 x double> [ zeroinitializer, %.lr.ph131.new ], [ %i.ij, %bb.n ]
  %niter227 = phi i64 [ 0, %.lr.ph131.new ], [ %niter227.next.1, %bb.n ]
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.078130
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !45
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.hl = phi float [ %i.hk, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.078130
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !45
  %i.ho = fsub float %i.hn, %i.hl
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0102.0, i64 %.078130
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !45
  %i.hr = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.hs = insertelement <2 x float> %i.hr, float %i.ho, i64 1
  %i.ht = fpext <2 x float> %i.hs to <2 x double> ; 2 uses
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.ht, <2 x double> %i.hi)
  %i.hw = or disjoint i64 %.078130, 1             ; 3 uses
  br i1 %.not87, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.hz = phi float [ %i.hy, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.hw
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !45
  %i.ic = fsub float %i.ib, %i.hz
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0102.0, i64 %i.hw
  %i.ie = load float, ptr %i.id, align 4, !tbaa !45
  %i.if = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ic, i64 1
  %i.ih = fpext <2 x float> %i.ig to <2 x double> ; 2 uses
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.ih, <2 x double> %i.hv) ; 3 uses
  %i.ik = add nuw i64 %.078130, 2                 ; 2 uses
  %niter227.next.1 = add nuw i64 %niter227, 2     ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %._crit_edge132.loopexit.unr-lcssa, label %bb.j, !llvm.loop !58

bb.o:                                             ; preds = %._crit_edge132
  %i.il = extractelement <2 x double> %i.hf, i64 0 ; 2 uses
  %i.im = extractelement <2 x double> %i.hf, i64 1
  %i.in = fdiv double %i.im, %i.il
  %i.io = fptrunc double %i.in to float           ; 2 uses
  %i.ip = fpext float %i.io to double             ; 2 uses
  %i.iq = fmul double %i.ip, %i.ip
  %i.ir = fmul double %i.il, %i.iq
  %i.is = fptrunc double %i.ir to float
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge132
  %i.it = fpext float %.083.lcssa to double
  %i.iu = extractelement <2 x double> %i.hf, i64 1
  %i.iv = fdiv double %i.it, %i.iu
  %i.iw = fptrunc double %i.iv to float
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.075 = phi float [ %i.io, %bb.o ], [ %i.iw, %bb.p ] ; 2 uses
  %.0 = phi float [ %i.is, %bb.o ], [ %.083.lcssa, %bb.p ]
  %i.ix = call float @llvm.fabs.f32(float %.075)
  %i.iy = fcmp one float %i.ix, +inf              ; 2 uses
  %.176 = select i1 %i.iy, float %.075, float 0.000000e+00
  %.1 = select i1 %i.iy, float %.0, float 0.000000e+00
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store float %.176, ptr %i.iz, align 1, !tbaa !59
  store float %.1, ptr %i.bp, align 1, !tbaa !61
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.g
  %i.ja = phi i64 [ %i.gp, %bb.q ], [ %i.ah, %bb.g ]
  %i.jb = add i64 %.077136, 1
  %i.jc = load i64, ptr %i.b, align 8, !tbaa !28
  %.not.not = icmp slt i64 %.077136, %i.jc
  br i1 %.not.not, label %.lr.ph138, label %._crit_edge139

._crit_edge139:                                   ; preds = %bb.r, %bb.f
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre152)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge139, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit99
  call void @__kmpc_barrier(ptr nonnull @2, i32 %.pre152)
  %.not.i.i.i = icmp eq ptr %.sroa.0102.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jd = ptrtoint ptr %.sroa.9.0 to i64
  %i.je = ptrtoint ptr %.sroa.0102.0 to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0, i64 noundef %i.jf) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.s, %bb.t
  %.not.i.i.i100 = icmp eq ptr %.sroa.0106.0118, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIfSaIfEED2Ev.exit101, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.jg = ptrtoint ptr %.sroa.9110.0116 to i64
  %i.jh = ptrtoint ptr %.sroa.0106.0118 to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0118, i64 noundef %i.ji) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit101

_ZNSt6vectorIfSaIfEED2Ev.exit101:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.u
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit101
  %i.jj = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #18, !inline_history !62
  br label %_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss15ScalarQuantizer10SQuantizerESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit101, %_ZNKSt14default_deleteIN5faiss15ScalarQuantizer10SQuantizerEEclEPS2_.exit.i
  ret void

.loopexit:                                        ; preds = %._crit_edge127, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.jm = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.jm) #29
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
declare !callback !63 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #18

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
  store ptr %1, ptr %i.a, align 8, !tbaa !27
  store ptr %2, ptr %i.b, align 8, !tbaa !25
  store i64 %3, ptr %i.c, align 8, !tbaa !28
  store ptr %4, ptr %i.d, align 8, !tbaa !25
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf, ptr noundef nonnull @.str.1, i32 noundef 826) #30 ; 0 uses
  tail call void @abort() #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf, ptr noundef nonnull @.str.1, i32 noundef 827) #30 ; 0 uses
  tail call void @abort() #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31
  %i.p = add i32 %i.o, -19
  %i.q = icmp ult i32 %i.p, 8
  br i1 %i.q, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !18
  store i8 0, ptr %i.r, align 8, !tbaa !15
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.t to i64                ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.w)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %5, align 8, !tbaa !9
  %i.y = load i64, ptr %i.s, align 8, !tbaa !18
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
  %i.ad = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.af = load i64, ptr %i.r, align 8, !tbaa !15
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !42 ; 2 uses
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !44
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !43
  %i.an = tail call noundef i64 @_ZN5faiss10eden_utils16packed_code_sizeEmm(i64 noundef %i.ai, i64 noundef %i.am)
  %i.ao = add nuw nsw i64 %i.an, 8
  store i64 %i.ao, ptr %i.g, align 8, !tbaa !28
  %i.ap = icmp ugt i64 %3, 1000
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 8, ptr nonnull @_ZN5faiss10eden_utils6decodeERKNS_15ScalarQuantizerEPKhPfmPKf.omp_outlined, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.d)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @__kmpc_serialized_parallel(ptr nonnull @3, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !46
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
  %i.f = load i64, ptr %3, align 8, !tbaa !28     ; 5 uses
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
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !45
  %i.k = add nsw i64 %i.f, -1                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc34
  %i.m = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !45
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc34, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.035.0 = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.i, %.noexc34 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  %.sroa.9.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc34 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.n = load i64, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  %.pre49 = load i32, ptr %0, align 4, !tbaa !46  ; 3 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.p = add nsw i64 %i.n, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.p, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 1, ptr %i.c, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !46
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre49, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.q = load i64, ptr %i.b, align 8, !tbaa !28
  %i.r = call i64 @llvm.smin.i64(i64 %i.q, i64 %i.p) ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !28
  %i.s = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not41 = icmp sgt i64 %i.s, %i.r
  br i1 %.not41, label %._crit_edge45, label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %bb.e
  %.pre = load i64, ptr %3, align 8, !tbaa !28
  br label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %._crit_edge
  %i.t = phi i64 [ %i.ai, %._crit_edge ], [ %.pre, %.lr.ph44.preheader ] ; 3 uses
  %.03142 = phi i64 [ %i.cn, %._crit_edge ], [ %i.s, %.lr.ph44.preheader ] ; 6 uses
  %i.u = shl i64 %.03142, 2
  %i.v = shl i64 %.03142, 2
  %i.w = load ptr, ptr %5, align 8, !tbaa !27     ; 3 uses
  %i.x = load i64, ptr %6, align 8, !tbaa !28
  %i.y = mul i64 %i.x, %.03142                    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %7, align 8, !tbaa !28    ; 3 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %8, align 8, !tbaa !25    ; 3 uses
  %i.ad = mul i64 %i.t, %.03142
  %i.ae = getelementptr [4 x i8], ptr %i.ac, i64 %i.ad ; 13 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.z, ptr noundef %.sroa.035.0)
          to label %.preheader unwind label %.loopexit

.preheader:                                       ; preds = %.lr.ph44
  %i.ai = load i64, ptr %3, align 8, !tbaa !28    ; 15 uses
  %.not46 = icmp eq i64 %i.ai, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aj = load ptr, ptr %9, align 8, !tbaa !25    ; 7 uses
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
  %i.ap = load float, ptr %i.ak, align 1, !tbaa !59, !alias.scope !65
  %broadcast.splatinsert92 = insertelement <4 x float> poison, float %i.ap, i64 0
  %broadcast.splat93 = shufflevector <4 x float> %broadcast.splatinsert92, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next94, %vector.body86 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index87 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load88 = load <4 x float>, ptr %i.aq, align 4, !tbaa !45, !alias.scope !68
  %wide.load89 = load <4 x float>, ptr %i.ar, align 4, !tbaa !45, !alias.scope !68
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %index87 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load90 = load <4 x float>, ptr %i.as, align 4, !tbaa !45, !alias.scope !70
  %wide.load91 = load <4 x float>, ptr %i.at, align 4, !tbaa !45, !alias.scope !70
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat93, <4 x float> %wide.load90, <4 x float> %wide.load88)
  %i.av = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat93, <4 x float> %wide.load91, <4 x float> %wide.load89)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index87 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !45, !alias.scope !72, !noalias !74
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !45, !alias.scope !72, !noalias !74
  %index.next94 = add nuw i64 %index87, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.ay, label %middle.block95, label %vector.body86, !llvm.loop !75

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
  %i.ba = load float, ptr %i.az, align 4, !tbaa !45
  %i.bb = load float, ptr %i.ak, align 1, !tbaa !59
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040.ph
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !45
  %i.be = call float @llvm.fmuladd.f32(float %i.bb, float %i.bd, float %i.ba)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.040.ph
  store float %i.be, ptr %i.bf, align 4, !tbaa !45
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
  %i.bm = load float, ptr %i.ak, align 1, !tbaa !59, !alias.scope !76
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bm, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <4 x float>, ptr %i.bn, align 4, !tbaa !45, !alias.scope !79
  %wide.load64 = load <4 x float>, ptr %i.bo, align 4, !tbaa !45, !alias.scope !79
  %i.bp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> zeroinitializer)
  %i.bq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load64, <4 x float> zeroinitializer)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <4 x float> %i.bp, ptr %i.br, align 4, !tbaa !45, !alias.scope !81, !noalias !83
  store <4 x float> %i.bq, ptr %i.bs, align 4, !tbaa !45, !alias.scope !81, !noalias !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !84

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
  %i.bu = load float, ptr %i.ak, align 1, !tbaa !59
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040.us.ph
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !45
  %i.bx = call float @llvm.fmuladd.f32(float %i.bu, float %i.bw, float 0.000000e+00)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.040.us.ph
  store float %i.bx, ptr %i.by, align 4, !tbaa !45
  %i.bz = or disjoint i64 %.040.us.ph, 1
  br label %.lr.ph.split.us.prol.loopexit

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader98
  %.040.us.unr = phi i64 [ %.040.us.ph, %.lr.ph.split.us.preheader98 ], [ %i.bz, %.lr.ph.split.us.prol ]
  %i.ca = icmp eq i64 %i.ai, %.neg103
  br i1 %i.ca, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.040.us = phi i64 [ %i.cm, %.lr.ph.split.us ], [ %.040.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 4 uses
  %i.cb = load float, ptr %i.ak, align 1, !tbaa !59
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040.us
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !45
  %i.ce = call float @llvm.fmuladd.f32(float %i.cb, float %i.cd, float 0.000000e+00)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.040.us
  store float %i.ce, ptr %i.cf, align 4, !tbaa !45
  %i.cg = add nuw i64 %.040.us, 1                 ; 2 uses
  %i.ch = load float, ptr %i.ak, align 1, !tbaa !59
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %i.cg
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !45
  %i.ck = call float @llvm.fmuladd.f32(float %i.ch, float %i.cj, float 0.000000e+00)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cg
  store float %i.ck, ptr %i.cl, align 4, !tbaa !45
  %i.cm = add nuw i64 %.040.us, 2                 ; 2 uses
  %exitcond48.not.1 = icmp eq i64 %i.cm, %i.ai
  br i1 %exitcond48.not.1, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block95, %middle.block, %.preheader
  %i.cn = add nsw i64 %.03142, 1
  %i.co = load i64, ptr %i.b, align 8, !tbaa !28
  %.not.not = icmp slt i64 %.03142, %i.co
  br i1 %.not.not, label %.lr.ph44, label %._crit_edge45

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.040 = phi i64 [ %i.de, %.lr.ph.split ], [ %.040.unr, %.lr.ph.split.prol.loopexit ] ; 5 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.040
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !45
  %i.cr = load float, ptr %i.ak, align 1, !tbaa !59
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %.040
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !45
  %i.cu = call float @llvm.fmuladd.f32(float %i.cr, float %i.ct, float %i.cq)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.040
  store float %i.cu, ptr %i.cv, align 4, !tbaa !45
  %i.cw = add nuw i64 %.040, 1                    ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !45
  %i.cz = load float, ptr %i.ak, align 1, !tbaa !59
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.0, i64 %i.cw
  %i.db = load float, ptr %i.da, align 4, !tbaa !45
  %i.dc = call float @llvm.fmuladd.f32(float %i.cz, float %i.db, float %i.cy)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cw
  store float %i.dc, ptr %i.dd, align 4, !tbaa !45
  %i.de = add nuw i64 %.040, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.de, %i.ai
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !86

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
  %i.di = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #18, !inline_history !62
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = add i32 %i.b, -19
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !18
  store i8 0, ptr %i.e, align 8, !tbaa !15
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !9
  %i.l = load i64, ptr %i.f, align 8, !tbaa !18
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
  %i.q = load ptr, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.s = load i64, ptr %i.e, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !43   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !87
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !88   ; 2 uses
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
  store ptr %i.ae, ptr %4, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.af, align 8, !tbaa !18
  store i8 0, ptr %i.ae, align 8, !tbaa !15
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #18 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ai = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.aj)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %4, align 8, !tbaa !9
  %i.al = load i64, ptr %i.af, align 8, !tbaa !18
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
