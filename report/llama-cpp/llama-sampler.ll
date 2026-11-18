Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 58
begin_hunk_0_@llama_sampler_clone:bb.a
bb.g:                                             ; preds = %bb.a, %bb.e, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ %i.h, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @llama_sampler_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef nonnull ptr @llama_sampler_chain_init(i8 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37 ; 4 uses
  store i8 %0, ptr %i.a, align 16, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37 ; 3 uses
  store ptr @_ZL21llama_sampler_chain_i, ptr %i.d, align 16, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !54
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z29llama_sampler_backend_n_nodesPK13llama_sampler(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 886, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !53
  %i.b = icmp eq ptr %i.a, @_ZL21llama_sampler_chain_i
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 887, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #38
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !77, !range !78, !noundef !79
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 890, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7) #38
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !80
  ret i32 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define i32 @llama_sampler_sample(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %4 = alloca %struct.llama_token_data_array, align 8 ; 9 uses
  %i.a = tail call i32 @llama_get_sampled_token_ith(ptr noundef %1, i32 noundef %2) ; 5 uses
  %i.b = tail call ptr @llama_get_sampled_probs_ith(ptr noundef %1, i32 noundef %2) ; 7 uses
  %i.c = tail call ptr @llama_get_sampled_logits_ith(ptr noundef %1, i32 noundef %2) ; 13 uses
  %i.d = tail call ptr @llama_get_sampled_candidates_ith(ptr noundef %1, i32 noundef %2) ; 12 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.llama_sampler_sample, i32 noundef %2)
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %llama_sampler_accept.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %.not5.i = icmp eq ptr %i.g, null
  br i1 %.not5.i, label %llama_sampler_accept.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.g(ptr noundef nonnull %0, i32 noundef %i.a), !inline_history !81
  br label %llama_sampler_accept.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call ptr @llama_get_model(ptr noundef %1)
  %i.i = tail call ptr @llama_model_get_vocab(ptr noundef %i.h)
  %i.j = tail call i32 @llama_vocab_n_tokens(ptr noundef %i.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %0, align 8, !tbaa !53
  %i.l = icmp eq ptr %i.k, @_ZL21llama_sampler_chain_i
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.083 = phi ptr [ %i.o, %bb.f ], [ %3, %bb.e ]  ; 13 uses
  %.not89 = icmp eq ptr %i.b, null
  br i1 %.not89, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = invoke i32 @llama_get_sampled_probs_count_ith(ptr noundef %1, i32 noundef %2)
          to label %bb.i unwind label %bb.w       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.q = zext i32 %i.p to i64                     ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.083, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82   ; 2 uses
  %i.t = load ptr, ptr %.083, align 8, !tbaa !83  ; 5 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 12                  ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.q
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = sub nuw nsw i64 %i.q, %i.x
  invoke void @_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.083, i64 noundef %i.z)
          to label %._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit_crit_edge unwind label %bb.w

._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit_crit_edge: ; preds = %bb.j
  %.pre.pre = load ptr, ptr %.083, align 8, !tbaa !83
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = icmp ugt i64 %i.x, %i.q
  br i1 %i.aa, label %bb.l, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.l
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !82
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit

_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit: ; preds = %._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit_crit_edge, %bb.k, %bb.l, %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i
  %.pre = phi ptr [ %.pre.pre, %._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.t, %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 12 uses
  %.not118 = icmp eq i32 %i.p, 0
  br i1 %.not118, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit
  %min.iters.check = icmp ult i32 %i.p, 24
  br i1 %min.iters.check, label %.lr.ph.preheader225, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ac = mul nuw nsw i64 %i.q, 12                ; 2 uses
  %i.ad = getelementptr i8, ptr %.pre, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -8
  %i.af = shl nuw nsw i64 %i.q, 2                 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.d, i64 %i.af
  %bound0 = icmp ult ptr %.pre, %i.ag
  %bound1 = icmp ult ptr %i.d, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  %i.ah = getelementptr i8, ptr %.pre, i64 4      ; 2 uses
  %5 = getelementptr i8, ptr %.pre, i64 %i.ac     ; 2 uses
  %6 = getelementptr i8, ptr %i.c, i64 %i.af
  %bound0179 = icmp ult ptr %i.ah, %6
  %bound1180 = icmp ult ptr %i.c, %5
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx = or i1 %found.conflict, %found.conflict181
  %7 = getelementptr i8, ptr %i.b, i64 %i.af
  %bound0182 = icmp ult ptr %i.ah, %7
  %bound1183 = icmp ult ptr %i.b, %5
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx, %found.conflict184
  br i1 %conflict.rdx185, label %.lr.ph.preheader225, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  %wide.load221 = load <4 x float>, ptr %i.ai, align 4, !tbaa !84, !alias.scope !656
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index
  %wide.load186 = load <4 x float>, ptr %i.aj, align 4, !tbaa !86, !alias.scope !657
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  %wide.load187 = load <4 x float>, ptr %i.ak, align 4, !tbaa !86, !alias.scope !658
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %index
  %i.am = shufflevector <4 x float> %wide.load221, <4 x float> %wide.load186, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.an = shufflevector <4 x float> %wide.load187, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.am, <8 x float> %i.an, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.al, align 4, !tbaa !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !648

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader225

.lr.ph.preheader225:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %i.q, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader225
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.ph
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !84
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.ph
  %i.as = load float, ptr %i.ar, align 4, !tbaa !86
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.ph
  %i.au = load float, ptr %i.at, align 4, !tbaa !86
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %indvars.iv.ph ; 3 uses
  store i32 %i.aq, ptr %i.av, align 4, !tbaa !84
  %.sroa.419.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store float %i.as, ptr %.sroa.419.0..sroa_idx.prol, align 4, !tbaa !86
  %.sroa.520.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store float %i.au, ptr %.sroa.520.0..sroa_idx.prol, align 4, !tbaa !86
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader225
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader225 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aw = add nsw i64 %i.q, -1
  %i.ax = icmp eq i64 %indvars.iv.ph, %i.aw
  br i1 %i.ax, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !84
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !86
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !86
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %indvars.iv ; 3 uses
  store i32 %i.az, ptr %i.be, align 4, !tbaa !84
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store float %i.bb, ptr %.sroa.419.0..sroa_idx, align 4, !tbaa !86
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store float %i.bd, ptr %.sroa.520.0..sroa_idx, align 4, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !84
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !86
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !86
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %indvars.iv.next ; 3 uses
  store i32 %i.bg, ptr %i.bl, align 4, !tbaa !84
  %.sroa.419.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store float %i.bi, ptr %.sroa.419.0..sroa_idx.1, align 4, !tbaa !86
  %.sroa.520.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store float %i.bk, ptr %.sroa.520.0..sroa_idx.1, align 4, !tbaa !86
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.q
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !649

bb.m:                                             ; preds = %bb.g
  %.not90 = icmp eq ptr %i.c, null
  br i1 %.not90, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = invoke i32 @llama_get_sampled_logits_count_ith(ptr noundef %1, i32 noundef %2)
          to label %bb.o unwind label %bb.w       ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bn = zext i32 %i.bm to i64                   ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.083, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !82 ; 2 uses
  %i.bq = load ptr, ptr %.083, align 8, !tbaa !83 ; 5 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 12                ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %i.bn
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = sub nuw nsw i64 %i.bn, %i.bu
  invoke void @_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.083, i64 noundef %i.bw)
          to label %._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97_crit_edge unwind label %bb.w

._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97_crit_edge: ; preds = %bb.p
  %.pre132.pre = load ptr, ptr %.083, align 8, !tbaa !83
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97

bb.q:                                             ; preds = %bb.o
  %i.bx = icmp ugt i64 %i.bu, %i.bn
  br i1 %i.bx, label %bb.r, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.bq, i64 %i.bn ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.bp, %i.by
  br i1 %.not.i.i94, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97, label %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i95

_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i95: ; preds = %bb.r
  store ptr %i.by, ptr %i.bo, align 8, !tbaa !82
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97

_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97: ; preds = %._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97_crit_edge, %bb.q, %bb.r, %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i95
  %.pre132 = phi ptr [ %.pre132.pre, %._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97_crit_edge ], [ %i.bq, %bb.q ], [ %i.bq, %bb.r ], [ %i.bq, %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i95 ] ; 12 uses
  %i.bz = icmp sgt i32 %i.bm, 0
  br i1 %i.bz, label %.lr.ph115.preheader, label %.loopexit

.lr.ph115.preheader:                              ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97
  %min.iters.check201 = icmp ult i32 %i.bm, 16
  br i1 %min.iters.check201, label %.lr.ph115.preheader223, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph115.preheader
  %i.ca = mul nuw nsw i64 %i.bn, 12               ; 2 uses
  %i.cb = getelementptr i8, ptr %.pre132, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  %i.cd = shl nuw nsw i64 %i.bn, 2                ; 2 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.cd
  %bound0203 = icmp ult ptr %.pre132, %i.ce
  %bound1204 = icmp ult ptr %i.d, %i.cc
  %found.conflict205 = and i1 %bound0203, %bound1204
  %8 = getelementptr i8, ptr %.pre132, i64 4
  %9 = getelementptr i8, ptr %.pre132, i64 %i.ca
  %10 = getelementptr i8, ptr %i.c, i64 %i.cd
  %bound0206 = icmp ult ptr %8, %10
  %bound1207 = icmp ult ptr %i.c, %9
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %found.conflict205, %found.conflict208
  br i1 %conflict.rdx209, label %.lr.ph115.preheader223, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck202
  %n.vec211 = and i64 %i.bn, 2147483644           ; 3 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next217, %vector.body212 ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index213
  %wide.load214222 = load <4 x float>, ptr %i.cf, align 4, !tbaa !84, !alias.scope !659
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index213
  %wide.load215 = load <4 x float>, ptr %i.cg, align 4, !tbaa !86, !alias.scope !660
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %.pre132, i64 %index213
  %i.ci = shufflevector <4 x float> %wide.load214222, <4 x float> %wide.load215, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec216 = shufflevector <8 x float> %i.ci, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec216, ptr %i.ch, align 4, !tbaa !87
  %index.next217 = add nuw i64 %index213, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next217, %n.vec211
  br i1 %i.cj, label %middle.block218, label %vector.body212, !llvm.loop !653

middle.block218:                                  ; preds = %vector.body212
  %cmp.n219 = icmp eq i64 %n.vec211, %i.bn
  br i1 %cmp.n219, label %.loopexit, label %.lr.ph115.preheader223

.lr.ph115.preheader223:                           ; preds = %vector.memcheck202, %.lr.ph115.preheader, %middle.block218
  %indvars.iv122.ph = phi i64 [ 0, %vector.memcheck202 ], [ 0, %.lr.ph115.preheader ], [ %n.vec211, %middle.block218 ] ; 6 uses
  %xtraiter227 = and i64 %i.bn, 1
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol

.lr.ph115.prol:                                   ; preds = %.lr.ph115.preheader223
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv122.ph
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !84
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv122.ph
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !86
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %.pre132, i64 %indvars.iv122.ph ; 2 uses
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !84
  %.sroa.49.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cn, i64 0
  store <2 x float> %i.cp, ptr %.sroa.49.0..sroa_idx.prol, align 4, !tbaa !86
  %indvars.iv.next123.prol = or disjoint i64 %indvars.iv122.ph, 1
  br label %.lr.ph115.prol.loopexit

.lr.ph115.prol.loopexit:                          ; preds = %.lr.ph115.prol, %.lr.ph115.preheader223
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %.lr.ph115.preheader223 ], [ %indvars.iv.next123.prol, %.lr.ph115.prol ]
  %i.cq = add nsw i64 %i.bn, -1
  %i.cr = icmp eq i64 %indvars.iv122.ph, %i.cq
  br i1 %i.cr, label %.loopexit, label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.1, %.lr.ph115 ], [ %indvars.iv122.unr, %.lr.ph115.prol.loopexit ] ; 5 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv122
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !84
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv122
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !86
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %.pre132, i64 %indvars.iv122 ; 2 uses
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !84
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cx = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  store <2 x float> %i.cx, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !86
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next123
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !84
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next123
  %i.db = load float, ptr %i.da, align 4, !tbaa !86
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %.pre132, i64 %indvars.iv.next123 ; 2 uses
  store i32 %i.cz, ptr %i.dc, align 4, !tbaa !84
  %.sroa.49.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  store <2 x float> %i.dd, ptr %.sroa.49.0..sroa_idx.1, align 4, !tbaa !86
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %exitcond126.not.1 = icmp eq i64 %indvars.iv.next123.1, %i.bn
  br i1 %exitcond126.not.1, label %.loopexit, label %.lr.ph115, !llvm.loop !654

bb.s:                                             ; preds = %bb.m
  %i.de = invoke ptr @llama_get_logits_ith(ptr noundef %1, i32 noundef %2)
          to label %bb.t unwind label %bb.w       ; 4 uses

bb.t:                                             ; preds = %bb.s
  %.not91 = icmp eq ptr %i.de, null
  br i1 %.not91, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 940, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #38
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.y, %bb.p, %bb.j, %bb.n, %bb.h, %bb.u, %bb.s
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %bb.t
  %i.dg = sext i32 %i.j to i64                    ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.083, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !82 ; 2 uses
  %i.dj = load ptr, ptr %.083, align 8, !tbaa !83 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 12                ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.dg
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = sub nuw nsw i64 %i.dg, %i.dn
  invoke void @_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.083, i64 noundef %i.dp)
          to label %._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101_crit_edge unwind label %bb.w

._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101_crit_edge: ; preds = %bb.y
  %.pre133.pre = load ptr, ptr %.083, align 8, !tbaa !83
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101

bb.z:                                             ; preds = %bb.x
  %i.dq = icmp ugt i64 %i.dn, %i.dg
  br i1 %i.dq, label %bb.aa, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101

bb.aa:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.dg ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.di, %i.dr
  br i1 %.not.i.i98, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101, label %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i99

_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i99: ; preds = %bb.aa
  store ptr %i.dr, ptr %i.dh, align 8, !tbaa !82
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101

_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101: ; preds = %._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101_crit_edge, %bb.z, %bb.aa, %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i99
  %.pre133 = phi ptr [ %.pre133.pre, %._ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101_crit_edge ], [ %i.dj, %bb.z ], [ %i.dj, %bb.aa ], [ %i.dj, %_ZSt8_DestroyIP16llama_token_dataS0_EvT_S2_RSaIT0_E.exit.i.i99 ] ; 6 uses
  %i.ds = icmp sgt i32 %i.j, 0
  br i1 %i.ds, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101
  %wide.trip.count130 = zext nneg i32 %i.j to i64 ; 2 uses
  %xtraiter229 = and i64 %wide.trip.count130, 1
  %i.dt = icmp eq i32 %i.j, 1
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph117.new

.lr.ph117.new:                                    ; preds = %.lr.ph117
  %unroll_iter = and i64 %wide.trip.count130, 2147483646
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph117.new
  %indvars.iv127 = phi i64 [ 0, %.lr.ph117.new ], [ %indvars.iv.next128.1, %bb.ab ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph117.new ], [ %niter.next.1, %bb.ab ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv127
  %i.dv = load float, ptr %i.du, align 4, !tbaa !86
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %.pre133, i64 %indvars.iv127 ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv127 to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !84
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0
  store <2 x float> %i.dy, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !86
  %indvars.iv.next128 = or disjoint i64 %indvars.iv127, 1 ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next128
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !86
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %.pre133, i64 %indvars.iv.next128 ; 2 uses
  %i.ec = trunc nuw nsw i64 %indvars.iv.next128 to i32
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !84
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ea, i64 0
  store <2 x float> %i.ed, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !86
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !655

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ab
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph117
  %indvars.iv127.epil.init = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next128.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod231 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod231)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv127.epil.init
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !86
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %.pre133, i64 %indvars.iv127.epil.init ; 2 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv127.epil.init to i32
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !84
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ef, i64 0
  store <2 x float> %i.ei, ptr %.sroa.4.0..sroa_idx.epil, align 4, !tbaa !86
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph115.prol.loopexit, %.lr.ph115, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %middle.block, %middle.block218, %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit, %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97, %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101
  %i.ej = phi ptr [ %.pre132, %middle.block218 ], [ %.pre, %middle.block ], [ %.pre133, %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit101 ], [ %.pre, %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit ], [ %.pre132, %_ZNSt6vectorI16llama_token_dataSaIS0_EE6resizeEm.exit97 ], [ %.pre132, %.lr.ph115.prol.loopexit ], [ %.pre133, %.epil.preheader ], [ %.pre133, %.loopexit.loopexit.unr-lcssa ], [ %.pre132, %.lr.ph115 ], [ %.pre, %.lr.ph ], [ %.pre, %.lr.ph.prol.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %i.ej, ptr %4, align 8, !tbaa !92
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.083, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !82
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ej to i64
  %i.ep = sub i64 %i.en, %i.eo
end_hunk_0
begin_hunk_1_@_ZL41llama_sampler_penalties_backend_set_inputP13llama_sampler:bb.a
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !84
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i.i, i64 4
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !628
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.cs = icmp sgt i32 %.val2.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !1243

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.l
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.l ], [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i64 %i.bc, ptr %.sroa.04.0.lcssa.i.i.i.i.i, align 4
  %.val1.i.pre.i.i.i.i = load i32, ptr %.sroa.082.4, align 4, !tbaa !627
  br label %bb.m

bb.m:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %.val1.i24.i.i.i.i = phi i32 [ %i.cn, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i ], [ %.val1.i.pre.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i" ]
  %.sroa.08.020.i.add.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq i64 %.sroa.08.020.i.add.i.i.i, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i67, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i", label %bb.k, !llvm.loop !1244

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i": ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.082.4, i64 128 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ct, %.sroa.13.2
  br i1 %.not6.i.i.i.i, label %.lr.ph134, label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.da, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i" ], [ %i.ct, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i" ] ; 6 uses
  %i.cu = load i64, ptr %.sroa.0.07.i.i.i.i, align 4 ; 2 uses
  %.sroa.03.0.extract.trunc.i.i13.i.i.i = trunc i64 %i.cu to i32 ; 2 uses
  %.sroa.0.07.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -8 ; 2 uses
  %.val2.i8.i.i14.i.i.i = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.cv = icmp sgt i32 %.val2.i8.i.i14.i.i.i, %.sroa.03.0.extract.trunc.i.i13.i.i.i
  br i1 %i.cv, label %.lr.ph.i.i18.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i"

.lr.ph.i.i18.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i18.i.i.i
  %.val2.i11.i.i19.i.i.i = phi i32 [ %.val2.i.i.i23.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.val2.i8.i.i14.i.i.i, %.lr.ph.i12.i.i.i ]
  %.sroa.0.010.i.i20.i.i.i = phi ptr [ %.sroa.0.0.i.i22.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  %.sroa.04.09.i.i21.i.i.i = phi ptr [ %.sroa.0.010.i.i20.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  store i32 %.val2.i11.i.i19.i.i.i, ptr %.sroa.04.09.i.i21.i.i.i, align 4, !tbaa !627
  %i.cw = getelementptr inbounds i8, ptr %.sroa.04.09.i.i21.i.i.i, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !84
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i21.i.i.i, i64 4
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !628
  %.sroa.0.0.i.i22.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i20.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i23.i.i.i = load i32, ptr %.sroa.0.0.i.i22.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.cz = icmp sgt i32 %.val2.i.i.i23.i.i.i, %.sroa.03.0.extract.trunc.i.i13.i.i.i
  br i1 %i.cz, label %.lr.ph.i.i18.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i", !llvm.loop !1243

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.010.i.i20.i.i.i, %.lr.ph.i.i18.i.i.i ]
  store i64 %i.cu, ptr %.sroa.04.0.lcssa.i.i16.i.i.i, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.07.i.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i17.i.i.i, label %.lr.ph134, label %.lr.ph.i12.i.i.i, !llvm.loop !1245

.preheader.i24.i.i.i:                             ; preds = %bb.j
  %.not18.i26.i.i.i = icmp eq ptr %.sroa.082.4, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not18.i26.i.i.i, label %.lr.ph134, label %.lr.ph.i27.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %.preheader.i24.i.i.i
  %.val1.i.pre22.i28.i.i.i = load i32, ptr %.sroa.082.4, align 4, !tbaa !627
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i27.i.i.i
  %.val1.i.i29.i.i.i = phi i32 [ %.val1.i.pre22.i28.i.i.i, %.lr.ph.i27.i.i.i ], [ %.val1.i24.i38.i.i.i, %bb.q ]
  %.pn19.i31.i.i.i = phi ptr [ %.sroa.082.4, %.lr.ph.i27.i.i.i ], [ %.sroa.08.020.i30.i.i.i, %bb.q ] ; 4 uses
  %.sroa.08.020.i30.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i31.i.i.i, i64 8 ; 9 uses
  %.val.i.i32.i.i.i = load i32, ptr %.sroa.08.020.i30.i.i.i, align 4, !tbaa !627
  %i.db = icmp slt i32 %.val.i.i32.i.i.i, %.val1.i.i29.i.i.i
  %i.dc = load i64, ptr %.sroa.08.020.i30.i.i.i, align 4 ; 4 uses
  br i1 %i.db, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = ptrtoint ptr %.sroa.08.020.i30.i.i.i to i64
  %i.de = sub i64 %i.dd, %i.au
  %i.df = ashr exact i64 %i.de, 3                 ; 5 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i

.lr.ph.i.i.i.i.i.preheader.i48.i.i.i:             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn19.i31.i.i.i, i64 16 ; 2 uses
  %xtraiter = and i64 %i.df, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol

.lr.ph.i.i.i.i.i.i49.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol
  %.010.i.i.i.i.i.i50.i.i.i.prol = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ %i.df, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ]
  %.069.i.i.i.i.i.i51.i.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ %i.dh, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i52.i.i.i.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ %.sroa.08.020.i30.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ]
  %i.di = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i.prol, i64 -8 ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i.prol, i64 -8 ; 3 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !84
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !627
  %i.dl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i.prol, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !84
  %i.dn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i.prol, i64 -4
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !628
  %i.do = add nsw i64 %.010.i.i.i.i.i.i50.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol, !llvm.loop !1246

.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i
  %.010.i.i.i.i.i.i50.i.i.i.unr = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.do, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %.069.i.i.i.i.i.i51.i.i.i.unr = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %.078.i.i.i.i.i.i52.i.i.i.unr = phi ptr [ %.sroa.08.020.i30.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.di, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %i.dp = icmp ult i64 %i.df, 4
  br i1 %i.dp, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i, label %.lr.ph.i.i.i.i.i.i49.i.i.i

.lr.ph.i.i.i.i.i.i49.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i49.i.i.i
  %.010.i.i.i.i.i.i50.i.i.i = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.010.i.i.i.i.i.i50.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i51.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.069.i.i.i.i.i.i51.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i52.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.078.i.i.i.i.i.i52.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 8 uses
  %i.dq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -8
  %i.dr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -8
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !84
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !627
  %i.dt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !84
  %i.dv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -4
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !628
  %i.dw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -16
  %i.dx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -16
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !84
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !627
  %i.dz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !84
  %i.eb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -12
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !628
  %i.ec = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -24
  %i.ed = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -24
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !84
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !627
  %i.ef = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !84
  %i.eh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -20
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !628
  %i.ei = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -32 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -32 ; 2 uses
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !84
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !627
  %i.el = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !84
  %i.en = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -28
  store i32 %i.em, ptr %i.en, align 4, !tbaa !628
  %i.eo = add nsw i64 %.010.i.i.i.i.i.i50.i.i.i, -4
  %i.ep = icmp sgt i64 %.010.i.i.i.i.i.i50.i.i.i, 4
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i.i49.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i, !llvm.loop !1242

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i49.i.i.i, %bb.o
  store i64 %i.dc, ptr %.sroa.082.4, align 4
  %i.eq = trunc i64 %i.dc to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.sroa.03.0.extract.trunc.i.i33.i.i.i = trunc i64 %i.dc to i32 ; 2 uses
  %.val2.i8.i.i34.i.i.i = load i32, ptr %.pn19.i31.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.er = icmp sgt i32 %.val2.i8.i.i34.i.i.i, %.sroa.03.0.extract.trunc.i.i33.i.i.i
  br i1 %i.er, label %.lr.ph.i.i41.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i35.i.i.i"

.lr.ph.i.i41.i.i.i:                               ; preds = %bb.p, %.lr.ph.i.i41.i.i.i
  %.val2.i11.i.i42.i.i.i = phi i32 [ %.val2.i.i.i46.i.i.i, %.lr.ph.i.i41.i.i.i ], [ %.val2.i8.i.i34.i.i.i, %bb.p ]
  %.sroa.0.010.i.i43.i.i.i = phi ptr [ %.sroa.0.0.i.i45.i.i.i, %.lr.ph.i.i41.i.i.i ], [ %.pn19.i31.i.i.i, %bb.p ] ; 3 uses
  %.sroa.04.09.i.i44.i.i.i = phi ptr [ %.sroa.0.010.i.i43.i.i.i, %.lr.ph.i.i41.i.i.i ], [ %.sroa.08.020.i30.i.i.i, %bb.p ] ; 3 uses
  store i32 %.val2.i11.i.i42.i.i.i, ptr %.sroa.04.09.i.i44.i.i.i, align 4, !tbaa !627
  %i.es = getelementptr inbounds i8, ptr %.sroa.04.09.i.i44.i.i.i, i64 -4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !84
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i44.i.i.i, i64 4
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !628
  %.sroa.0.0.i.i45.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i43.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i46.i.i.i = load i32, ptr %.sroa.0.0.i.i45.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.ev = icmp sgt i32 %.val2.i.i.i46.i.i.i, %.sroa.03.0.extract.trunc.i.i33.i.i.i
  br i1 %i.ev, label %.lr.ph.i.i41.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i35.i.i.i", !llvm.loop !1243

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i35.i.i.i": ; preds = %.lr.ph.i.i41.i.i.i, %bb.p
  %.sroa.04.0.lcssa.i.i36.i.i.i = phi ptr [ %.sroa.08.020.i30.i.i.i, %bb.p ], [ %.sroa.0.010.i.i43.i.i.i, %.lr.ph.i.i41.i.i.i ]
  store i64 %i.dc, ptr %.sroa.04.0.lcssa.i.i36.i.i.i, align 4
  %.val1.i.pre.i37.i.i.i = load i32, ptr %.sroa.082.4, align 4, !tbaa !627
  br label %bb.q

bb.q:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i35.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i
  %.val1.i24.i38.i.i.i = phi i32 [ %i.eq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i ], [ %.val1.i.pre.i37.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i35.i.i.i" ]
  %.not.i40.i.i.i = icmp eq ptr %.sroa.08.020.i30.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i40.i.i.i, label %.lr.ph134, label %bb.n, !llvm.loop !1244

.lr.ph134:                                        ; preds = %bb.q, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i", %.preheader.i24.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i", %._crit_edge129
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !199 ; 7 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !199 ; 7 uses
  %min.iters.check248 = icmp samesign ult i64 %indvars.iv, 27
  br i1 %min.iters.check248, label %scalar.ph247.preheader, label %vector.memcheck249

vector.memcheck249:                               ; preds = %.lr.ph134
  %i.fa = shl nuw nsw i64 %indvars.iv, 2
  %i.fb = add nuw i64 %i.fa, 4                    ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ex, i64 %i.fb  ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ez, i64 %i.fb  ; 2 uses
  %bound0 = icmp ult ptr %i.ex, %i.fd
  %bound1 = icmp ult ptr %i.ez, %i.fc
  %found.conflict = and i1 %bound0, %bound1
  %1 = shl nuw nsw i64 %indvars.iv, 3
  %2 = getelementptr i8, ptr %.sroa.082.4, i64 %1
  %3 = getelementptr i8, ptr %2, i64 8            ; 2 uses
  %bound0250 = icmp ult ptr %i.ex, %3
  %bound1251 = icmp ult ptr %.sroa.082.4, %i.fc
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx = or i1 %found.conflict, %found.conflict252
  %bound0253 = icmp ult ptr %i.ez, %3
  %bound1254 = icmp ult ptr %.sroa.082.4, %i.fd
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx256 = or i1 %conflict.rdx, %found.conflict255
  br i1 %conflict.rdx256, label %scalar.ph247.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck249
  %n.vec258 = and i64 %indvars.iv.next, 9223372036854775800 ; 3 uses
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next265, %vector.body259 ] ; 5 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.4, i64 %index260
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.4, i64 %index260
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %wide.vec = load <8 x i32>, ptr %i.fe, align 4, !tbaa !84, !alias.scope !1261 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec261 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec262 = load <8 x i32>, ptr %i.fg, align 4, !tbaa !84, !alias.scope !1261 ; 2 uses
  %strided.vec263 = shufflevector <8 x i32> %wide.vec262, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec264 = shufflevector <8 x i32> %wide.vec262, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index260 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <4 x i32> %strided.vec, ptr %i.fh, align 4, !tbaa !84, !alias.scope !1262, !noalias !1263
  store <4 x i32> %strided.vec263, ptr %i.fi, align 4, !tbaa !84, !alias.scope !1262, !noalias !1263
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %index260 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <4 x i32> %strided.vec261, ptr %i.fj, align 4, !tbaa !84, !alias.scope !1264, !noalias !1261
  store <4 x i32> %strided.vec264, ptr %i.fk, align 4, !tbaa !84, !alias.scope !1264, !noalias !1261
  %index.next265 = add nuw i64 %index260, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next265, %n.vec258
  br i1 %i.fl, label %middle.block266, label %vector.body259, !llvm.loop !1251

middle.block266:                                  ; preds = %vector.body259
  %cmp.n267 = icmp eq i64 %indvars.iv.next, %n.vec258
  br i1 %cmp.n267, label %._crit_edge135, label %scalar.ph247.preheader

scalar.ph247.preheader:                           ; preds = %vector.memcheck249, %.lr.ph134, %middle.block266
  %indvars.iv164.ph = phi i64 [ 0, %vector.memcheck249 ], [ 0, %.lr.ph134 ], [ %n.vec258, %middle.block266 ] ; 6 uses
  %i.fm = and i64 %indvars.iv, 1
  %lcmp.mod284.not.not = icmp eq i64 %i.fm, 0
  br i1 %lcmp.mod284.not.not, label %scalar.ph247.prol, label %scalar.ph247.prol.loopexit

scalar.ph247.prol:                                ; preds = %scalar.ph247.preheader
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.4, i64 %indvars.iv164.ph ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !627
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv164.ph
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !84
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !628
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv164.ph
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !84
  %indvars.iv.next165.prol = or disjoint i64 %indvars.iv164.ph, 1
  br label %scalar.ph247.prol.loopexit

scalar.ph247.prol.loopexit:                       ; preds = %scalar.ph247.prol, %scalar.ph247.preheader
  %indvars.iv164.unr = phi i64 [ %indvars.iv164.ph, %scalar.ph247.preheader ], [ %indvars.iv.next165.prol, %scalar.ph247.prol ]
  %i.ft = icmp eq i64 %indvars.iv, %indvars.iv164.ph
  br i1 %i.ft, label %._crit_edge135, label %scalar.ph247

bb.r:                                             ; preds = %.lr.ph128, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit
  %indvars.iv161 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next162, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 4 uses
  %.sroa.19.0126 = phi ptr [ %i.af, %.lr.ph128 ], [ %.sroa.19.4, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 7 uses
  %.sroa.13.0125 = phi ptr [ %i.ae, %.lr.ph128 ], [ %.sroa.13.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 4 uses
  %.sroa.082.0124 = phi ptr [ %i.ae, %.lr.ph128 ], [ %.sroa.082.4, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 10 uses
  %i.fu = load ptr, ptr %i.ag, align 8, !tbaa !199
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv161 ; 2 uses
  %i.fw = load ptr, ptr %i.ah, align 8, !tbaa !199
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv161 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.0125, %.sroa.19.0126
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fy = load i32, ptr %i.fv, align 4, !tbaa !84
  store i32 %i.fy, ptr %.sroa.13.0125, align 4, !tbaa !627
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.13.0125, i64 4
  %i.ga = load i32, ptr %i.fx, align 4, !tbaa !84
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !628
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

bb.t:                                             ; preds = %bb.r
  %i.gb = ptrtoint ptr %.sroa.19.0126 to i64      ; 2 uses
  %i.gc = ptrtoint ptr %.sroa.082.0124 to i64     ; 3 uses
  %i.gd = sub i64 %i.gb, %i.gc                    ; 4 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775800
  br i1 %i.ge, label %bb.u, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #38
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.gf = ashr exact i64 %i.gd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gg = add nsw i64 %.sroa.speculated.i.i.i, %i.gf ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.gf
  %i.gi = tail call i64 @llvm.umin.i64(i64 %i.gg, i64 1152921504606846975)
  %i.gj = select i1 %i.gh, i64 1152921504606846975, i64 %i.gi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gk = shl nuw nsw i64 %i.gj, 3
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #37
          to label %.noexc70 unwind label %.loopexit107 ; 8 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gd ; 2 uses
  %i.gn = load i32, ptr %i.fv, align 4, !tbaa !84
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !627
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.gp = load i32, ptr %i.fx, align 4, !tbaa !84
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !628
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.082.0124, %.sroa.19.0126
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i68.preheader

.lr.ph.i.i.i.i.i68.preheader:                     ; preds = %.noexc70
  %i.gq = ptrtoaddr ptr %i.gl to i64
  %i.gr = add i64 %i.gb, -8
  %i.gs = sub i64 %i.gr, %i.gc                    ; 2 uses
  %i.gt = lshr i64 %i.gs, 3
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gs, 24
  %i.gv = sub i64 %i.gc, %i.gq
  %diff.check = icmp ugt i64 %i.gv, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i68.preheader273, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i68.preheader
  %n.vec = and i64 %i.gu, 4611686018427387900     ; 3 uses
  %i.gw = shl i64 %n.vec, 3                       ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gl, i64 %i.gw  ; 2 uses
  %i.gy = getelementptr i8, ptr %.sroa.082.0124, i64 %i.gw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gl, i64 %i.gz ; 2 uses
  %next.gep234 = getelementptr i8, ptr %.sroa.082.0124, i64 %i.gz ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.ha = getelementptr i8, ptr %next.gep234, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep234, align 4, !alias.scope !1266
  %wide.load235 = load <2 x i64>, ptr %i.ha, align 4, !alias.scope !1266
  %i.hb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !1265
  store <2 x i64> %wide.load235, ptr %i.hb, align 4, !alias.scope !1265
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !1255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i68.preheader273

.lr.ph.i.i.i.i.i68.preheader273:                  ; preds = %.lr.ph.i.i.i.i.i68.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i68.preheader ], [ %i.gx, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.082.0124, %.lr.ph.i.i.i.i.i68.preheader ], [ %i.gy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i68

.lr.ph.i.i.i.i.i68:                               ; preds = %.lr.ph.i.i.i.i.i68.preheader273, %.lr.ph.i.i.i.i.i68
  %.012.i.i.i.i.i = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i68 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i68.preheader273 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i68 ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i68.preheader273 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.hd = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !1266
  store i64 %i.hd, ptr %.012.i.i.i.i.i, align 4, !alias.scope !1265
  %i.he = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.he, %.sroa.19.0126
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i68, !llvm.loop !1256

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i68, %middle.block, %.noexc70
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gl, %.noexc70 ], [ %i.gx, %middle.block ], [ %i.hf, %.lr.ph.i.i.i.i.i68 ]
  %.not.i34.i.i = icmp eq ptr %.sroa.082.0124, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.082.0124, i64 noundef %i.gd) #39
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gj
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.s
  %.sroa.082.4 = phi ptr [ %i.gl, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.082.0124, %bb.s ] ; 26 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0125, %bb.s ] ; 4 uses
  %.sroa.19.4 = phi ptr [ %i.hg, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.0126, %bb.s ] ; 4 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 5 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1
  %exitcond.not = icmp eq i64 %indvars.iv161, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge129, label %bb.r, !llvm.loop !1257

end_hunk_1
