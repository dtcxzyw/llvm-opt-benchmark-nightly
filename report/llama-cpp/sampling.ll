Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/sampling?download=true
inline.NumInlined: 2328
inline.NumDeleted: 1054
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z21common_sampler_sampleP14common_samplerP13llama_contextib:bb.a

bb.v:                                             ; preds = %bb.u
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !130 ; 2 uses
  %.not7.i69 = icmp eq ptr %i.ao, null
  br i1 %.not7.i69, label %_ZL20grammar_should_applyP14common_sampler.exit72.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !153, !range !88, !noundef !89
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.x, label %_ZL20grammar_should_applyP14common_sampler.exit72.thread

bb.x:                                             ; preds = %bb.w
  %i.as = invoke noundef i32 @_Z33common_reasoning_budget_get_statePK13llama_sampler(ptr noundef nonnull %i.ao)
          to label %_ZL20grammar_should_applyP14common_sampler.exit72 unwind label %bb.h

_ZL20grammar_should_applyP14common_sampler.exit72: ; preds = %bb.x
  %i.at = and i32 %i.as, -5
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZL20grammar_should_applyP14common_sampler.exit72._ZL20grammar_should_applyP14common_sampler.exit72.thread_crit_edge, label %_ZL20grammar_should_applyP14common_sampler.exit72.thread82

_ZL20grammar_should_applyP14common_sampler.exit72._ZL20grammar_should_applyP14common_sampler.exit72.thread_crit_edge: ; preds = %_ZL20grammar_should_applyP14common_sampler.exit72
  %.pre91 = load ptr, ptr %i.e, align 8, !tbaa !117
  br label %_ZL20grammar_should_applyP14common_sampler.exit72.thread

_ZL20grammar_should_applyP14common_sampler.exit72.thread: ; preds = %_ZL20grammar_should_applyP14common_sampler.exit72._ZL20grammar_should_applyP14common_sampler.exit72.thread_crit_edge, %bb.w, %bb.v
  %i.av = phi ptr [ %.pre91, %_ZL20grammar_should_applyP14common_sampler.exit72._ZL20grammar_should_applyP14common_sampler.exit72.thread_crit_edge ], [ %i.an, %bb.w ], [ %i.an, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 %i.am, ptr %5, align 4, !tbaa !165
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.aw, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %5, ptr %6, align 8, !tbaa !163
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.ax, align 8, !tbaa !162
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 -1, ptr %i.ay, align 8, !tbaa !166
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.az, align 8, !tbaa !167
  invoke void @llama_sampler_apply(ptr noundef %i.av, ptr noundef nonnull %6)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %_ZL20grammar_should_applyP14common_sampler.exit72.thread
  %i.ba = load ptr, ptr %6, align 8, !tbaa !163
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !251
  %i.bd = fcmp oeq float %i.bc, -inf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.bd, label %bb.aa, label %_ZL20grammar_should_applyP14common_sampler.exit72.thread82

bb.z:                                             ; preds = %_ZL20grammar_should_applyP14common_sampler.exit72.thread
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ai

bb.aa:                                            ; preds = %bb.y
  invoke void @_ZN14common_sampler10set_logitsEP13llama_contexti(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1, i32 noundef %2)
          to label %bb.ab unwind label %bb.h

bb.ab:                                            ; preds = %bb.aa
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !117
  invoke void @llama_sampler_apply(ptr noundef %i.bf, ptr noundef nonnull %i.h)
          to label %bb.ac unwind label %bb.h

bb.ac:                                            ; preds = %bb.ab
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !129 ; 3 uses
  %.not.i73 = icmp eq ptr %i.bg, null
  br i1 %.not.i73, label %_ZL20grammar_should_applyP14common_sampler.exit77.thread85, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !130 ; 2 uses
  %.not7.i74 = icmp eq ptr %i.bh, null
  br i1 %.not7.i74, label %_ZL20grammar_should_applyP14common_sampler.exit77.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !153, !range !88, !noundef !89
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.af, label %_ZL20grammar_should_applyP14common_sampler.exit77.thread

bb.af:                                            ; preds = %bb.ae
  %i.bl = invoke noundef i32 @_Z33common_reasoning_budget_get_statePK13llama_sampler(ptr noundef nonnull %i.bh)
          to label %_ZL20grammar_should_applyP14common_sampler.exit77 unwind label %bb.h

_ZL20grammar_should_applyP14common_sampler.exit77: ; preds = %bb.af
  %i.bm = and i32 %i.bl, -5
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZL20grammar_should_applyP14common_sampler.exit77._ZL20grammar_should_applyP14common_sampler.exit77.thread_crit_edge, label %_ZL20grammar_should_applyP14common_sampler.exit77.thread85

_ZL20grammar_should_applyP14common_sampler.exit77._ZL20grammar_should_applyP14common_sampler.exit77.thread_crit_edge: ; preds = %_ZL20grammar_should_applyP14common_sampler.exit77
  %.pre92 = load ptr, ptr %i.e, align 8, !tbaa !117
  br label %_ZL20grammar_should_applyP14common_sampler.exit77.thread

_ZL20grammar_should_applyP14common_sampler.exit77.thread: ; preds = %_ZL20grammar_should_applyP14common_sampler.exit77._ZL20grammar_should_applyP14common_sampler.exit77.thread_crit_edge, %bb.ae, %bb.ad
  %i.bo = phi ptr [ %.pre92, %_ZL20grammar_should_applyP14common_sampler.exit77._ZL20grammar_should_applyP14common_sampler.exit77.thread_crit_edge ], [ %i.bg, %bb.ae ], [ %i.bg, %bb.ad ]
  invoke void @llama_sampler_apply(ptr noundef %i.bo, ptr noundef nonnull %i.h)
          to label %_ZL20grammar_should_applyP14common_sampler.exit77.thread85 unwind label %bb.h

_ZL20grammar_should_applyP14common_sampler.exit77.thread85: ; preds = %bb.ac, %_ZL20grammar_should_applyP14common_sampler.exit77.thread, %_ZL20grammar_should_applyP14common_sampler.exit77
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !117
  invoke void @llama_sampler_apply(ptr noundef %i.bp, ptr noundef nonnull %i.h)
          to label %bb.ag unwind label %bb.h

bb.ag:                                            ; preds = %_ZL20grammar_should_applyP14common_sampler.exit77.thread85
  %i.bq = load i64, ptr %i.aj, align 8, !tbaa !166 ; 2 uses
  %.not64 = icmp eq i64 %i.bq, -1
  br i1 %.not64, label %.invoke, label %bb.ah

.invoke:                                          ; preds = %bb.ag, %bb.j, %bb.i
  %i.br = phi i32 [ 618, %bb.j ], [ 617, %bb.i ], [ 671, %bb.ag ]
  %i.bs = phi ptr [ @.str.36, %bb.j ], [ @.str.35, %bb.i ], [ @.str.37, %bb.ag ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.5, i32 noundef %i.br, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.bs) #29
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !163
  %i.bu = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %i.bq
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !165
  br label %_ZL20grammar_should_applyP14common_sampler.exit72.thread82

_ZL20grammar_should_applyP14common_sampler.exit72.thread82: ; preds = %bb.m, %.preheader, %bb.u, %bb.t, %_ZL20grammar_should_applyP14common_sampler.exit72, %bb.l, %bb.y, %bb.ah
  %.1 = phi i32 [ %i.am, %bb.y ], [ %i.i, %bb.l ], [ %i.bv, %bb.ah ], [ %i.am, %bb.u ], [ %i.am, %_ZL20grammar_should_applyP14common_sampler.exit72 ], [ %i.am, %bb.t ], [ %i.i, %.preheader ], [ %i.i, %bb.m ]
  call void @_ZN16common_time_measD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i32 %.1

bb.ai:                                            ; preds = %bb.z, %bb.h
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.be, %bb.z ]
  call void @_ZN16common_time_measD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn
}

declare void @llama_synchronize(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14common_sampler10set_logitsEP13llama_contexti(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @llama_get_sampled_probs_ith(ptr noundef %1, i32 noundef %2) ; 7 uses
  %i.b = tail call ptr @llama_get_sampled_logits_ith(ptr noundef %1, i32 noundef %2) ; 13 uses
  %i.c = tail call ptr @llama_get_sampled_candidates_ith(ptr noundef %1, i32 noundef %2) ; 12 uses
  %i.d = tail call ptr @llama_get_model(ptr noundef %1)
  %i.e = tail call ptr @llama_model_get_vocab(ptr noundef %i.d)
  %i.f = tail call i32 @llama_vocab_n_tokens(ptr noundef %i.e) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llama_get_sampled_probs_count_ith(ptr noundef %1, i32 noundef %2) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.i = zext i32 %i.g to i64                     ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156  ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !150  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 12                  ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.i
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = sub nuw nsw i64 %i.i, %i.p
  tail call void @_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.r)
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.t, ptr %i.j, align 8, !tbaa !156
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit

_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i
  %.not75 = icmp eq i32 %i.g, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !150  ; 8 uses
  %min.iters.check = icmp ult i32 %i.g, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.v = mul nuw nsw i64 %i.i, 12                 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = shl nuw nsw i64 %i.i, 2                  ; 3 uses
  %i.z = getelementptr i8, ptr %i.c, i64 %i.y
  %3 = getelementptr nuw i8, ptr %i.u, i64 4      ; 2 uses
  %4 = getelementptr i8, ptr %i.u, i64 %i.v       ; 2 uses
  %5 = getelementptr i8, ptr %i.b, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.y
  %bound0 = icmp ult ptr %i.u, %i.z
  %bound1 = icmp ult ptr %i.c, %i.x
  %found.conflict = and i1 %bound0, %bound1
  %bound0123 = icmp ult ptr %3, %5
  %bound1124 = icmp ult ptr %i.b, %4
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx = or i1 %found.conflict, %found.conflict125
  %bound0126 = icmp ult ptr %3, %i.aa
  %bound1127 = icmp ult ptr %i.a, %4
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx, %found.conflict128
  br i1 %conflict.rdx129, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index
  %wide.load165 = load <4 x float>, ptr %i.ab, align 4, !tbaa !98, !alias.scope !264
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  %wide.load130 = load <4 x float>, ptr %i.ac, align 4, !tbaa !66, !alias.scope !265
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load131 = load <4 x float>, ptr %i.ad, align 4, !tbaa !66, !alias.scope !266
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %index
  %i.af = shufflevector <4 x float> %wide.load165, <4 x float> %wide.load130, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ag = shufflevector <4 x float> %wide.load131, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.af, <8 x float> %i.ag, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.ae, align 4, !tbaa !86
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.ph
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !98
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.ph
  %i.al = load float, ptr %i.ak, align 4, !tbaa !66
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.ph
  %i.an = load float, ptr %i.am, align 4, !tbaa !66
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv.ph ; 3 uses
  store i32 %i.aj, ptr %i.ao, align 4, !tbaa !98
  %.sroa.420.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store float %i.al, ptr %.sroa.420.0..sroa_idx.prol, align 4, !tbaa !66
  %.sroa.521.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store float %i.an, ptr %.sroa.521.0..sroa_idx.prol, align 4, !tbaa !66
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ap = add nsw i64 %i.i, -1
  %i.aq = icmp eq i64 %indvars.iv.ph, %i.ap
  br i1 %i.aq, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !98
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.au = load float, ptr %i.at, align 4, !tbaa !66
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.aw = load float, ptr %i.av, align 4, !tbaa !66
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  store i32 %i.as, ptr %i.ax, align 4, !tbaa !98
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store float %i.au, ptr %.sroa.420.0..sroa_idx, align 4, !tbaa !66
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store float %i.aw, ptr %.sroa.521.0..sroa_idx, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !98
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !66
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !66
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv.next ; 3 uses
  store i32 %i.az, ptr %i.be, align 4, !tbaa !98
  %.sroa.420.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store float %i.bb, ptr %.sroa.420.0..sroa_idx.1, align 4, !tbaa !66
  %.sroa.521.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store float %i.bd, ptr %.sroa.521.0..sroa_idx.1, align 4, !tbaa !66
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.i
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !257

bb.f:                                             ; preds = %bb.a
  %.not60 = icmp eq ptr %i.b, null
  br i1 %.not60, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = tail call i32 @llama_get_sampled_logits_count_ith(ptr noundef %1, i32 noundef %2) ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.bh = zext i32 %i.bf to i64                   ; 11 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !156 ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !150 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 12                ; 3 uses
  %i.bp = icmp ult i64 %i.bo, %i.bh
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = sub nuw nsw i64 %i.bh, %i.bo
  tail call void @_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %i.bq)
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit64

bb.i:                                             ; preds = %bb.g
  %i.br = icmp ugt i64 %i.bo, %i.bh
  br i1 %i.br, label %bb.j, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit64

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.bk, i64 %i.bh ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.bj, %i.bs
  br i1 %.not.i.i62, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit64, label %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i63

_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i63: ; preds = %bb.j
  store ptr %i.bs, ptr %i.bi, align 8, !tbaa !156
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit64

_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit64: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i63
  %.not76 = icmp eq i32 %i.bf, 0
  br i1 %.not76, label %.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit64
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !150 ; 8 uses
  %min.iters.check145 = icmp ult i32 %i.bf, 16
  br i1 %min.iters.check145, label %scalar.ph144.preheader, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph72
  %i.bu = mul nuw nsw i64 %i.bh, 12               ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  %i.by = getelementptr i8, ptr %i.c, i64 %i.bx
  %6 = getelementptr nuw i8, ptr %i.bt, i64 4
  %7 = getelementptr i8, ptr %i.bt, i64 %i.bu
  %8 = getelementptr i8, ptr %i.b, i64 %i.bx
  %bound0147 = icmp ult ptr %i.bt, %i.by
  %bound1148 = icmp ult ptr %i.c, %i.bw
  %found.conflict149 = and i1 %bound0147, %bound1148
  %bound0150 = icmp ult ptr %6, %8
  %bound1151 = icmp ult ptr %i.b, %7
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %found.conflict149, %found.conflict152
  br i1 %conflict.rdx153, label %scalar.ph144.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck146
  %n.vec155 = and i64 %i.bh, 4294967292           ; 3 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next161, %vector.body156 ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index157
  %wide.load158166 = load <4 x float>, ptr %i.bz, align 4, !tbaa !98, !alias.scope !267
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index157
  %wide.load159 = load <4 x float>, ptr %i.ca, align 4, !tbaa !66, !alias.scope !268
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bt, i64 %index157
  %i.cc = shufflevector <4 x float> %wide.load158166, <4 x float> %wide.load159, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec160 = shufflevector <8 x float> %i.cc, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec160, ptr %i.cb, align 4, !tbaa !86
  %index.next161 = add nuw i64 %index157, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next161, %n.vec155
  br i1 %i.cd, label %middle.block162, label %vector.body156, !llvm.loop !261

middle.block162:                                  ; preds = %vector.body156
  %cmp.n163 = icmp eq i64 %n.vec155, %i.bh
  br i1 %cmp.n163, label %.loopexit, label %scalar.ph144.preheader

scalar.ph144.preheader:                           ; preds = %vector.memcheck146, %.lr.ph72, %middle.block162
  %indvars.iv80.ph = phi i64 [ 0, %vector.memcheck146 ], [ 0, %.lr.ph72 ], [ %n.vec155, %middle.block162 ] ; 6 uses
  %xtraiter169 = and i64 %i.bh, 1
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %scalar.ph144.prol.loopexit, label %scalar.ph144.prol

scalar.ph144.prol:                                ; preds = %scalar.ph144.preheader
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv80.ph
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !98
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv80.ph
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !66
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.bt, i64 %indvars.iv80.ph ; 2 uses
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !98
  %.sroa.410.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ch, i64 0
  store <2 x float> %i.cj, ptr %.sroa.410.0..sroa_idx.prol, align 4, !tbaa !66
  %indvars.iv.next81.prol = or disjoint i64 %indvars.iv80.ph, 1
  br label %scalar.ph144.prol.loopexit

scalar.ph144.prol.loopexit:                       ; preds = %scalar.ph144.prol, %scalar.ph144.preheader
  %indvars.iv80.unr = phi i64 [ %indvars.iv80.ph, %scalar.ph144.preheader ], [ %indvars.iv.next81.prol, %scalar.ph144.prol ]
  %i.ck = add nsw i64 %i.bh, -1
  %i.cl = icmp eq i64 %indvars.iv80.ph, %i.ck
  br i1 %i.cl, label %.loopexit, label %scalar.ph144

scalar.ph144:                                     ; preds = %scalar.ph144.prol.loopexit, %scalar.ph144
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %scalar.ph144 ], [ %indvars.iv80.unr, %scalar.ph144.prol.loopexit ] ; 5 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv80
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !98
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv80
  %i.cp = load float, ptr %i.co, align 4, !tbaa !66
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %i.bt, i64 %indvars.iv80 ; 2 uses
  store i32 %i.cn, ptr %i.cq, align 4, !tbaa !98
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cr = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cp, i64 0
  store <2 x float> %i.cr, ptr %.sroa.410.0..sroa_idx, align 4, !tbaa !66
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next81
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !98
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next81
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !66
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.bt, i64 %indvars.iv.next81 ; 2 uses
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !98
  %.sroa.410.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cx = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  store <2 x float> %i.cx, ptr %.sroa.410.0..sroa_idx.1, align 4, !tbaa !66
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %exitcond84.not.1 = icmp eq i64 %indvars.iv.next81.1, %i.bh
  br i1 %exitcond84.not.1, label %.loopexit, label %scalar.ph144, !llvm.loop !262

bb.k:                                             ; preds = %bb.f
  %i.cy = tail call ptr @llama_get_logits_ith(ptr noundef %1, i32 noundef %2) ; 4 uses
  %.not61 = icmp eq ptr %i.cy, null
  br i1 %.not61, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.5, i32 noundef 154, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.56) #29
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.da = sext i32 %i.f to i64                    ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !156 ; 2 uses
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !150 ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = sdiv exact i64 %i.dg, 12                ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.da
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dj = sub nuw nsw i64 %i.da, %i.dh
  tail call void @_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 noundef %i.dj)
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit67

bb.o:                                             ; preds = %bb.m
  %i.dk = icmp ugt i64 %i.dh, %i.da
  br i1 %i.dk, label %bb.p, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit67

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.dd, i64 %i.da ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.dc, %i.dl
  br i1 %.not.i.i65, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit67, label %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i66

_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i66: ; preds = %bb.p
  store ptr %i.dl, ptr %i.db, align 8, !tbaa !156
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit67

_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit67: ; preds = %bb.n, %bb.o, %bb.p, %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i66
  %i.dm = icmp sgt i32 %i.f, 0
  br i1 %i.dm, label %.lr.ph74, label %.loopexit

.lr.ph74:                                         ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit67
  %i.dn = load ptr, ptr %i.cz, align 8, !tbaa !150 ; 3 uses
  %wide.trip.count88 = zext nneg i32 %i.f to i64  ; 2 uses
  %xtraiter171 = and i64 %wide.trip.count88, 1
  %i.do = icmp eq i32 %i.f, 1
  br i1 %i.do, label %.epil.preheader, label %.lr.ph74.new

.lr.ph74.new:                                     ; preds = %.lr.ph74
  %unroll_iter = and i64 %wide.trip.count88, 2147483646
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph74.new
  %indvars.iv85 = phi i64 [ 0, %.lr.ph74.new ], [ %indvars.iv.next86.1, %bb.q ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph74.new ], [ %niter.next.1, %bb.q ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv85
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !66
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv85 ; 2 uses
  %i.ds = trunc nuw nsw i64 %indvars.iv85 to i32
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !98
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dq, i64 0
  store <2 x float> %i.dt, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !66
  %indvars.iv.next86 = or disjoint i64 %indvars.iv85, 1 ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next86
  %i.dv = load float, ptr %i.du, align 4, !tbaa !66
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv.next86 ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv.next86 to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !98
  %.sroa.42.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0
  store <2 x float> %i.dy, ptr %.sroa.42.0..sroa_idx.1, align 4, !tbaa !66
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !263

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.q
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph74
  %indvars.iv85.epil.init = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next86.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod173 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv85.epil.init
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !66
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv85.epil.init ; 2 uses
  %i.ec = trunc nuw nsw i64 %indvars.iv85.epil.init to i32
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !98
  %.sroa.42.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ea, i64 0
  store <2 x float> %i.ed, ptr %.sroa.42.0..sroa_idx.epil, align 4, !tbaa !66
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph144.prol.loopexit, %scalar.ph144, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %middle.block, %middle.block162, %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit, %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit64, %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit67
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !150 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !156
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 12
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.ef, ptr %i.em, align 8, !tbaa !158
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 %i.el, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !84
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 -1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !84
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !159
  ret void
}

declare i32 @llama_get_sampled_token_ith(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @llama_sampler_apply(ptr noundef, ptr noundef) local_unnamed_addr #3

end_hunk_0
