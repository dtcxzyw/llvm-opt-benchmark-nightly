Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZL25llama_sampler_top_p_applyP13llama_samplerP22llama_token_data_array:bb.a
  %or.cond.not.i = or i1 %i.n, %i.m
  br i1 %or.cond.not.i, label %.lr.ph38.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.o = add i64 %i.g, -1                         ; 3 uses
  %xtraiter = and i64 %i.o, 1
  %i.p = icmp eq i64 %i.g, 2
  br i1 %i.p, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.o, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.02735.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 3 uses
  %.03234.i = phi float [ %i.j, %.lr.ph.i.preheader.new ], [ %.sroa.speculated.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.02735.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !86 ; 2 uses
  %i.t = fcmp olt float %.03234.i, %i.s
  %.sroa.speculated.i = select i1 %i.t, float %i.s, float %.03234.i ; 2 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.02735.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load float, ptr %i.v, align 4, !tbaa !86 ; 2 uses
  %i.x = fcmp olt float %.sroa.speculated.i, %i.w
  %.sroa.speculated.i.1 = select i1 %i.x, float %i.w, float %.sroa.speculated.i ; 3 uses
  %i.y = add nuw i64 %.02735.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph38.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

.lr.ph38.preheader.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph38.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.02735.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph38.preheader.i.loopexit.unr-lcssa ]
  %.03234.i.epil.init = phi float [ %i.j, %.lr.ph.i.preheader ], [ %.sroa.speculated.i.1, %.lr.ph38.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod78 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.02735.i.epil.init
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !86 ; 2 uses
  %i.ac = fcmp olt float %.03234.i.epil.init, %i.ab
  %.sroa.speculated.i.epil = select i1 %i.ac, float %i.ab, float %.03234.i.epil.init
  br label %.lr.ph38.preheader.i

.lr.ph38.preheader.i:                             ; preds = %.lr.ph.i.epil.preheader, %.lr.ph38.preheader.i.loopexit.unr-lcssa, %bb.d
  %.150.i = phi float [ %i.j, %bb.d ], [ %.sroa.speculated.i.1, %.lr.ph38.preheader.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil.preheader ]
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph38.i, %.lr.ph38.preheader.i
  %.02837.i = phi i64 [ %i.ak, %.lr.ph38.i ], [ 0, %.lr.ph38.preheader.i ] ; 2 uses
  %.02936.i = phi float [ %i.aj, %.lr.ph38.i ], [ 0.000000e+00, %.lr.ph38.preheader.i ]
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.02837.i ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !290
  %i.ag = fsub float %i.af, %.150.i
  %i.ah = tail call float @expf(float noundef %i.ag) #40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store float %i.ah, ptr %i.ai, align 4, !tbaa !292
  %i.aj = fadd float %.02936.i, %i.ah             ; 3 uses
  %i.ak = add nuw i64 %.02837.i, 1                ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ak, %i.g
  br i1 %exitcond45.not.i, label %.lr.ph42.i.preheader, label %.lr.ph38.i, !llvm.loop !10

.lr.ph42.i.preheader:                             ; preds = %.lr.ph38.i
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %.lr.ph42.i.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph42.i.preheader
  %i.al = and i64 %i.g, 3                         ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = select i1 %i.am, i64 4, i64 %i.al
  %n.vec = sub i64 %i.g, %i.an                    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %index
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %index
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %index
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %index
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 20 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 44 ; 2 uses
  %i.aw = load float, ptr %i.as, align 4, !tbaa !292
  %i.ax = load float, ptr %i.at, align 4, !tbaa !292
  %i.ay = load float, ptr %i.au, align 4, !tbaa !292
  %i.az = load float, ptr %i.av, align 4, !tbaa !292
  %i.ba = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 1
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 2
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 3
  %i.be = fdiv <4 x float> %i.bd, %broadcast.splat ; 4 uses
  %i.bf = extractelement <4 x float> %i.be, i64 0
  store float %i.bf, ptr %i.as, align 4, !tbaa !292
  %i.bg = extractelement <4 x float> %i.be, i64 1
  store float %i.bg, ptr %i.at, align 4, !tbaa !292
  %i.bh = extractelement <4 x float> %i.be, i64 2
  store float %i.bh, ptr %i.au, align 4, !tbaa !292
  %i.bi = extractelement <4 x float> %i.be, i64 3
  store float %i.bi, ptr %i.av, align 4, !tbaa !292
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %.lr.ph42.i.preheader76, label %vector.body, !llvm.loop !749

.lr.ph42.i.preheader76:                           ; preds = %vector.body, %.lr.ph42.i.preheader
  %.041.i.ph = phi i64 [ 0, %.lr.ph42.i.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader76, %.lr.ph42.i
  %.041.i = phi i64 [ %i.bo, %.lr.ph42.i ], [ %.041.i.ph, %.lr.ph42.i.preheader76 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.041.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !292
  %i.bn = fdiv float %i.bm, %i.aj
  store float %i.bn, ptr %i.bl, align 4, !tbaa !292
  %i.bo = add nuw i64 %.041.i, 1                  ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.bo, %i.g
  br i1 %exitcond46.not.i, label %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit, label %.lr.ph42.i, !llvm.loop !750

_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit: ; preds = %.lr.ph42.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 5 uses
  %i.bq = icmp ult i64 %i.g, 1025
  %or.cond.not = or i1 %i.bq, %i.m
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit
  tail call fastcc void @_ZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorI16llama_token_dataSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 256, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !83
  br label %bb.h

bb.f:                                             ; preds = %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = trunc i64 %i.g to i32
  tail call fastcc void @_ZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayi(ptr noundef nonnull %1, i32 noundef %i.bs)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.046 = phi i64 [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ 256, %bb.e ]
  %.045 = phi ptr [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.br, %bb.e ]
  %i.bt = load i64, ptr %i.f, align 8, !tbaa !93  ; 3 uses
  %.not63 = icmp eq i64 %i.bt, 0
  br i1 %.not63, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.m
  %i.bv = phi i64 [ %i.bt, %.lr.ph ], [ %i.ck, %bb.m ] ; 3 uses
  %.060 = phi i64 [ 0, %.lr.ph ], [ %i.cl, %bb.m ] ; 4 uses
  %.04459 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bz, %bb.m ]
  %.158 = phi ptr [ %.045, %.lr.ph ], [ %.2, %bb.m ] ; 2 uses
  %.14757 = phi i64 [ %.046, %.lr.ph ], [ %.248, %bb.m ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %.158, i64 %.060
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !292
  %i.bz = fadd float %.04459, %i.by               ; 2 uses
  %i.ca = load float, ptr %i.c, align 4, !tbaa !139
  %i.cb = fcmp ult float %i.bz, %i.ca
  br i1 %i.cb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = add nuw i64 %.060, 1                    ; 2 uses
  %i.cd = load i64, ptr %i.bu, align 8, !tbaa !140
  %.not = icmp ult i64 %i.cc, %i.cd
  br i1 %.not, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ce = load i8, ptr %i.k, align 8, !tbaa !95, !range !78, !noundef !79
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = add i64 %.14757, -1
  %i.ch = icmp ne i64 %.060, %i.cg
  %or.cond53.not = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond53.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = trunc i64 %i.bv to i32
  tail call fastcc void @_ZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorI16llama_token_dataSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !83
  %.pre = load i64, ptr %i.f, align 8, !tbaa !93
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ck = phi i64 [ %i.bv, %bb.k ], [ %.pre, %bb.l ] ; 2 uses
  %.248 = phi i64 [ %.14757, %bb.k ], [ %i.bv, %bb.l ]
  %.2 = phi ptr [ %.158, %bb.k ], [ %i.cj, %bb.l ]
  %i.cl = add nuw i64 %.060, 1                    ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  br i1 %i.cm, label %bb.i, label %._crit_edge, !llvm.loop !751

._crit_edge:                                      ; preds = %bb.m, %bb.j
  %.043 = phi i64 [ %i.cc, %bb.j ], [ %i.bt, %bb.m ] ; 4 uses
  %i.cn = load i8, ptr %i.k, align 8, !tbaa !95, !range !78, !noundef !79
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.q, label %bb.n

._crit_edge.thread:                               ; preds = %bb.h
  %i.cp = load i8, ptr %i.k, align 8, !tbaa !95, !range !78, !noundef !79
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.q, label %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit

bb.n:                                             ; preds = %._crit_edge
  %i.cr = load ptr, ptr %i.bp, align 8, !tbaa !83 ; 2 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.ct = icmp ugt i64 %.043, 1
  br i1 %i.ct, label %bb.o, label %bb.p, !prof !221

bb.o:                                             ; preds = %bb.n
  %.idx = mul nuw nsw i64 %.043, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cs, ptr align 4 %i.cr, i64 %.idx, i1 false)
  br label %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cs, ptr noundef nonnull align 4 dereferenceable(12) %i.cr, i64 12, i1 false), !tbaa.struct !289
  br label %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit

_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit: ; preds = %._crit_edge.thread, %bb.o, %bb.p
  %.0437073 = phi i64 [ %.043, %bb.o ], [ 0, %._crit_edge.thread ], [ 1, %bb.p ]
  store i8 1, ptr %i.k, align 8, !tbaa !95
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread, %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit, %._crit_edge
  %.04370 = phi i64 [ 0, %._crit_edge.thread ], [ %.0437073, %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit ], [ %.043, %._crit_edge ]
  store i64 %.04370, ptr %i.f, align 8, !tbaa !93
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZL25llama_sampler_top_p_clonePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !139 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !140
  %i.g = fcmp ult float %i.d, 1.000000e+00
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37, !inline_history !752 ; 2 uses
  store ptr @.str.15, ptr %i.h, align 8, !tbaa !135
  br label %llama_sampler_init_top_p.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37, !inline_history !753 ; 6 uses
  invoke void @_ZN21llama_sampler_backendC2EPKc(ptr noundef nonnull align 8 dereferenceable(66) %i.i, ptr noundef nonnull @.str.16)
          to label %bb.d unwind label %bb.e, !inline_history !753

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  store float %i.d, ptr %i.j, align 4, !tbaa !139
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.f, ptr %i.k, align 8, !tbaa !140
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  br label %llama_sampler_init_top_p.exit

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 104) #39, !inline_history !753
  resume { ptr, i32 } %i.m

llama_sampler_init_top_p.exit:                    ; preds = %bb.b, %bb.d
  %_ZL21llama_sampler_top_p_i.sink.i = phi ptr [ @_ZL21llama_sampler_top_p_i, %bb.d ], [ @_ZL21llama_sampler_empty_i, %bb.b ]
  %.sink.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  %i.n = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37, !inline_history !753 ; 3 uses
  store ptr %_ZL21llama_sampler_top_p_i.sink.i, ptr %i.n, align 16, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sink.i, ptr %i.o, align 8, !tbaa !54
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL24llama_sampler_top_p_freeP13llama_sampler(ptr nofree noundef readonly captures(none) %0) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #39
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit.i

_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !87
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN19llama_sampler_top_pD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !87
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #39
  br label %_ZN19llama_sampler_top_pD2Ev.exit

_ZN19llama_sampler_top_pD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 104) #39
  br label %bb.d

bb.d:                                             ; preds = %_ZN19llama_sampler_top_pD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL32llama_sampler_top_p_backend_initP13llama_samplerP24ggml_backend_buffer_typej(ptr noundef %0, ptr noundef %1, i32 %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_ZL29llama_sampler_backend_supportP13llama_samplerP24ggml_backend_buffer_type(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !116, !range !78, !noundef !79
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %_ZN21llama_sampler_backend4initEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 552, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.48) #38
  unreachable

_ZN21llama_sampler_backend4initEb.exit:           ; preds = %bb.a
  %i.g = zext i1 %i.c to i8
  store i8 1, ptr %i.d, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.g, ptr %i.h, align 1, !tbaa !117
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %3, align 8, !tbaa !285    ; 2 uses
  %i.d = tail call i64 @ggml_nelements(ptr noundef %i.c)
  %i.e = tail call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.c, i64 noundef %i.d) ; 4 uses
  %i.f = tail call ptr @ggml_argsort(ptr noundef %1, ptr noundef %i.e, i32 noundef 1) ; 4 uses
  %i.g = tail call ptr @ggml_set_name(ptr noundef %i.f, ptr noundef nonnull @.str.66) ; 0 uses
  %i.h = tail call i64 @ggml_nrows(ptr noundef %i.e)
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1638, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.77) #38
  unreachable

"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit": ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !111
  %i.l = tail call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef %i.e, i64 noundef 1, i64 noundef %i.k)
  %i.m = tail call noundef ptr @ggml_get_rows(ptr noundef %1, ptr noundef %i.l, ptr noundef %i.f) ; 3 uses
  %i.n = tail call ptr @ggml_set_name(ptr noundef %i.m, ptr noundef nonnull @.str.67) ; 0 uses
  %i.o = tail call i64 @ggml_nelements(ptr noundef %i.m)
  %i.p = tail call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.m, i64 noundef %i.o) ; 2 uses
  %i.q = tail call ptr @ggml_soft_max(ptr noundef %1, ptr noundef %i.p) ; 2 uses
  %i.r = tail call ptr @ggml_set_name(ptr noundef %i.q, ptr noundef nonnull @.str.68) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !286  ; 4 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit"
  %i.u = tail call i64 @ggml_nrows(ptr noundef nonnull %i.t)
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit63", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1638, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.77) #38
  unreachable

"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit63": ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !111
  %i.y = tail call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef nonnull %i.t, i64 noundef 1, i64 noundef %i.x)
  %i.z = tail call noundef ptr @ggml_get_rows(ptr noundef %1, ptr noundef %i.y, ptr noundef %i.f)
  br label %bb.e

bb.e:                                             ; preds = %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit", %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit63"
  %storemerge = phi ptr [ %i.z, %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit63" ], [ %i.f, %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit" ] ; 2 uses
  store ptr %storemerge, ptr %i.s, align 8, !tbaa !286
  %i.aa = tail call ptr @ggml_set_name(ptr noundef %storemerge, ptr noundef nonnull @.str.69) ; 0 uses
  %i.ab = tail call ptr @ggml_cumsum(ptr noundef %1, ptr noundef %i.q) ; 2 uses
  %i.ac = tail call ptr @ggml_set_name(ptr noundef %i.ab, ptr noundef nonnull @.str.70) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !139
  %i.af = tail call ptr @ggml_scale_bias(ptr noundef %1, ptr noundef %i.ab, float noundef -1.000000e+00, float noundef %i.ae) ; 2 uses
  %i.ag = tail call ptr @ggml_set_name(ptr noundef %i.af, ptr noundef nonnull @.str.71) ; 0 uses
  %i.ah = tail call ptr @ggml_step(ptr noundef %1, ptr noundef %i.af) ; 4 uses
  %i.ai = tail call ptr @ggml_set_name(ptr noundef %i.ah, ptr noundef nonnull @.str.72) ; 0 uses
  %i.aj = tail call ptr @ggml_sum(ptr noundef %1, ptr noundef %i.ah) ; 2 uses
  %i.ak = tail call ptr @ggml_set_name(ptr noundef %i.aj, ptr noundef nonnull @.str.73) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !111
  %i.an = add nsw i64 %i.am, -1
  %i.ao = sitofp i64 %i.an to float
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev:bb.a
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #39
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !588  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !589
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #39
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit:      ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit, %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !552   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !556
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #39
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !592
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !600
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  store i8 0, ptr %i.d, align 4, !tbaa !601
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !173
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !603, !nonnull !79, !align !410
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h), !inline_history !1164 ; 0 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !602
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext 1, i64 noundef %i.j), !inline_history !1164
  %i.k = load i8, ptr %i.d, align 4, !tbaa !601, !range !78, !noundef !79
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !604  ; 2 uses
  %i.o = and i32 %i.n, 64
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = or i32 %i.n, 128
  store i32 %i.p, ptr %i.m, align 8, !tbaa !564
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !592  ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !593
  %.not3.not.not = icmp ne ptr %i.r, %i.s         ; 3 uses
  br i1 %.not3.not.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !592
  store ptr %i.t, ptr %i.c, align 8, !tbaa !600
  store i8 0, ptr %i.d, align 4, !tbaa !601
  store ptr null, ptr %i.f, align 8, !tbaa !173
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !603, !nonnull !79, !align !410
  %i.v = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u), !inline_history !1164 ; 0 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !602
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext 1, i64 noundef %i.w), !inline_history !1164
  %i.x = load i8, ptr %i.d, align 4, !tbaa !601, !range !78, !noundef !79
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.loopexit, label %bb.d, !llvm.loop !1165

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %.not3.not.not, %bb.e ], [ %.not3.not.not, %bb.d ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !588  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #39
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit:      ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !552    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !556
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #39
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE25_M_establish_failed_matchES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !556
  %i.c = load ptr, ptr %0, align 8, !tbaa !552    ; 15 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ult i64 %i.g, 3
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.i, label %bb.c

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37 ; 12 uses
  store ptr %1, ptr %i.i, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %1, ptr %i.j, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.1, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %1, ptr %i.k, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.2, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %0, align 8, !tbaa !552
  store ptr %i.l, ptr %i.n, align 8, !tbaa !551
  store ptr %i.m, ptr %i.a, align 8, !tbaa !556
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #39
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !551  ; 5 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.e
  %i.s = sdiv exact i64 %i.r, 24                  ; 2 uses
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %bb.d, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit.i

bb.d:                                             ; preds = %bb.c
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, %i.p
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.d ] ; 4 uses
  store ptr %1, ptr %.06.i.i.i.i.i, align 8, !tbaa !554
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  store ptr %1, ptr %i.u, align 8, !tbaa !555
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  store i8 0, ptr %i.v, align 8, !tbaa !563
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11.i = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i.i.i11.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !37

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  br label %.lr.ph.i.i.i.i12.i.prol

.lr.ph.i.i.i.i12.i.prol:                          ; preds = %.lr.ph.i.i.i.i12.i.prol, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i
  %.09.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i12.i.prol ], [ %i.p, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.i.prol ], [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i ]
  store ptr %1, ptr %.09.i.i.i.i.i.prol, align 8
  %.sroa.8.0..09.i.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.sroa_idx.prol, align 8
  %.sroa.11.0..09.i.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 16
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.sroa_idx.prol, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %2 = xor i64 %i.s, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %2, 3
  br i1 %prol.iter.cmp.not, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit.i, label %.lr.ph.i.i.i.i12.i.prol, !llvm.loop !1166

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit.i: ; preds = %.lr.ph.i.i.i.i12.i.prol
  store ptr %i.x, ptr %i.o, align 8, !tbaa !551
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit

_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit.i: ; preds = %bb.c
  store ptr %1, ptr %i.c, align 8, !tbaa !554
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.y, align 8, !tbaa !555
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.z, align 8, !tbaa !563
  %.06.i.i.i.i18.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %.06.i.i.i.i18.i.ptr.1, align 8, !tbaa !554
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %1, ptr %i.aa, align 8, !tbaa !555
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 0, ptr %i.ab, align 8, !tbaa !563
  %.06.i.i.i.i18.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %1, ptr %.06.i.i.i.i18.i.ptr.2, align 8, !tbaa !554
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %1, ptr %i.ac, align 8, !tbaa !555
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %i.ad, align 8, !tbaa !563
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit.i
  store ptr %i.ae, ptr %i.o, align 8, !tbaa !551
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit.i, %_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !556
  %i.c = load ptr, ptr %0, align 8, !tbaa !552    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %i.i, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #38
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i: ; preds = %bb.b
  %i.j = mul nuw nsw i64 %1, 24
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #37 ; 4 uses
  %xtraiter31 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ]
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = add i64 %.068.i.i.i.i.i.i.prol, -1       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1167

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.r = add i64 %.068.i.i.i.i.i.i, -4            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1168

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !552
  store ptr %.lcssa, ptr %i.u, align 8, !tbaa !551
  store ptr %i.t, ptr %i.a, align 8, !tbaa !556
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #39
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !551  ; 6 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  %i.z = sdiv exact i64 %i.y, 24                  ; 3 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load <2 x ptr>, ptr %2, align 8, !tbaa !173
  %.pre8.i.i.i.i = load i8, ptr %i.ab, align 8, !tbaa !563, !range !78
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.g ] ; 3 uses
  store <2 x ptr> %i.ac, ptr %.06.i.i.i.i, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  store i8 %.pre8.i.i.i.i, ptr %i.ad, align 8, !tbaa !563
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ae, %i.w
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit, label %bb.g, !llvm.loop !37

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit: ; preds = %bb.g, %bb.f
  %i.af = sub i64 %1, %i.z                        ; 3 uses
  %xtraiter = and i64 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i12.prol ], [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.i.i12.prol ], [ %i.af, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ag = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !1169

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit
  %.lcssa30.unr = phi ptr [ poison, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.ah, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.ah, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.af, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %i.ag, %.lr.ph.i.i.i.i12.prol ]
  %i.ai = sub i64 %i.z, %1
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.an = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !1168

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12, %.lr.ph.i.i.i.i12.prol.loopexit
  %.lcssa30 = phi ptr [ %.lcssa30.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i12 ]
  store ptr %.lcssa30, ptr %i.v, align 8, !tbaa !551
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.ap = icmp eq i64 %1, 0
  br i1 %i.ap, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load <2 x ptr>, ptr %2, align 8, !tbaa !173
  %.pre8.i.i.i.i17 = load i8, ptr %i.ar, align 8, !tbaa !563, !range !78
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i18 = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.au, %bb.i ] ; 3 uses
  store <2 x ptr> %i.as, ptr %.06.i.i.i.i18, align 8, !tbaa !173
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 16
end_hunk_1
