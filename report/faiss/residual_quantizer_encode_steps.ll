Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/residual_quantizer_encode_steps?download=true
inline.NumInlined: 502
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 38
begin_hunk_0_@"_ZZN5faiss27beam_search_encode_step_tabEmmmPKfmPKmS1_mS1_mPKiS1_mPiPf17ApproxTopK_mode_tENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined":bb.a
  %exitcond52.not.i.i = icmp eq i64 %i.km, %i.ii
  br i1 %exitcond52.not.i.i, label %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit, label %.lr.ph45.split.i.i, !llvm.loop !0

_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod284.not = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod284.not, label %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit.loopexit.unr-lcssa, %.lr.ph45.split.us.i.i
  %.epil.init = phi float [ %.pre54.i.i, %.lr.ph45.split.us.i.i ], [ %i.iy, %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit.loopexit.unr-lcssa ]
  %.144.us.i.i.epil.init = phi i64 [ 0, %.lr.ph45.split.us.i.i ], [ %i.iz, %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod285 = trunc i32 %i.ih to i1
  call void @llvm.assume(i1 %lcmp.mod285)
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.099.0, i64 %.144.us.i.i.epil.init
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !35, !llvm.access.group !133 ; 2 uses
  %i.kp = fcmp ogt float %.epil.init, %i.ko
  br i1 %i.kp, label %_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit40.us.i.i.epil, label %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit

_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit40.us.i.i.epil: ; preds = %.epil.preheader
  %i.kq = trunc i64 %.144.us.i.i.epil.init to i32
  store float %i.ko, ptr %i.ho, align 4, !tbaa !35, !llvm.access.group !133
  store i32 %i.kq, ptr %.sroa.089.0, align 4, !tbaa !45, !llvm.access.group !133
  br label %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit

_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit: ; preds = %bb.s, %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit.loopexit.unr-lcssa, %_ZN5faiss16heap_replace_topINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit40.us.i.i.epil, %.epil.preheader, %bb.l, %bb.h, %bb.i, %bb.j, %bb.k
  %i.kr = load i64, ptr %15, align 8, !tbaa !14, !llvm.access.group !133 ; 9 uses
  %.not46.i = icmp eq i64 %i.kr, 0
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit
  %i.ks = getelementptr inbounds i8, ptr %i.ho, i64 -4 ; 4 uses
  %i.kt = getelementptr inbounds i8, ptr %.sroa.089.0, i64 -4 ; 5 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i, %.lr.ph.i
  %.041.i = phi i64 [ 0, %.lr.ph.i ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %.03740.i = phi i64 [ 0, %.lr.ph.i ], [ %i.mq, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %i.ku = load float, ptr %i.ho, align 4, !tbaa !35, !llvm.access.group !133
  %i.kv = load i32, ptr %.sroa.089.0, align 4, !tbaa !45, !llvm.access.group !133 ; 2 uses
  %i.kw = sub nuw i64 %i.kr, %.03740.i            ; 5 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.kw ; 3 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !35, !llvm.access.group !133 ; 5 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.kw ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !45, !llvm.access.group !133 ; 3 uses
  %i.lb = icmp ult i64 %i.kw, 2
  br i1 %i.lb, label %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %bb.w
  %i.lc = phi i64 [ %i.mf, %bb.w ], [ 3, %bb.t ]
  %i.ld = phi i64 [ %i.me, %bb.w ], [ 2, %bb.t ]  ; 7 uses
  %.062.i.i = phi i64 [ %.1.i.i, %bb.w ], [ 1, %bb.t ] ; 6 uses
  %i.le = icmp eq i64 %i.ld, %i.kw
  br i1 %i.le, label %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i, label %bb.u

.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load float, ptr %i.kx, align 4, !tbaa !35, !llvm.access.group !133
  br label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.ld
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !35, !llvm.access.group !133 ; 4 uses
  %i.lh = getelementptr [4 x i8], ptr %i.ho, i64 %i.ld
  %i.li = load float, ptr %i.lh, align 4, !tbaa !35, !llvm.access.group !133 ; 5 uses
  %i.lj = getelementptr [4 x i8], ptr %.sroa.089.0, i64 %i.ld
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !45, !llvm.access.group !133 ; 3 uses
  %i.ll = fcmp ogt float %i.lg, %i.li
  br i1 %i.ll, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i:            ; preds = %bb.u
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.ld
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !45, !llvm.access.group !133
  %i.lo = fcmp oeq float %i.lg, %i.li
  %i.lp = icmp sgt i32 %i.ln, %i.lk
  %i.lq = and i1 %i.lo, %i.lp
  br i1 %i.lq, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i, label %bb.v

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i:     ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i, %bb.u, %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i
  %i.lr = phi float [ %.pre.i.i, %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i ], [ %i.lg, %bb.u ], [ %i.lg, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i ] ; 3 uses
  %i.ls = fcmp ogt float %i.ky, %i.lr
  br i1 %i.ls, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i:          ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.ld
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !45, !llvm.access.group !133 ; 2 uses
  %i.lv = fcmp oeq float %i.ky, %i.lr
  %i.lw = icmp sgt i32 %i.la, %i.lu
  %i.lx = and i1 %i.lv, %i.lw
  br i1 %i.lx, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i, label %bb.w

bb.v:                                             ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i
  %i.ly = fcmp ogt float %i.ky, %i.li
  br i1 %i.ly, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i:          ; preds = %bb.v
  %i.lz = fcmp oeq float %i.ky, %i.li
  %i.ma = icmp sgt i32 %i.la, %i.lk
  %i.mb = and i1 %i.lz, %i.ma
  br i1 %i.mb, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i
  %.sink79.i.i = phi float [ %i.lr, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i ], [ %i.li, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i ]
  %.sink.i.i = phi i32 [ %i.lu, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i ], [ %i.lk, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.ld, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i ], [ %i.lc, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i ] ; 3 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.062.i.i
  store float %.sink79.i.i, ptr %i.mc, align 4, !tbaa !35, !llvm.access.group !133
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.062.i.i
  store i32 %.sink.i.i, ptr %i.md, align 4, !tbaa !45, !llvm.access.group !133
  %i.me = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.mf = or disjoint i64 %i.me, 1
  %i.mg = icmp ugt i64 %i.me, %i.kw
  br i1 %i.mg, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i: ; preds = %bb.w, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i, %bb.v, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.w ], [ %.062.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i ], [ %.062.i.i, %bb.v ]
  %.pre68.i.i = load float, ptr %i.kx, align 4, !tbaa !35, !llvm.access.group !133
  %.pre69.i.i = load i32, ptr %i.kz, align 4, !tbaa !45, !llvm.access.group !133
  br label %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i, %bb.t
  %i.mh = phi i32 [ %i.la, %bb.t ], [ %.pre69.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i ]
  %i.mi = phi float [ %i.ky, %bb.t ], [ %.pre68.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.t ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.0.lcssa.i.i
  store float %i.mi, ptr %i.mj, align 4, !tbaa !35, !llvm.access.group !133
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.0.lcssa.i.i
  store i32 %i.mh, ptr %i.mk, align 4, !tbaa !45, !llvm.access.group !133
  %i.ml = xor i64 %.041.i, -1
  %i.mm = add i64 %i.kr, %i.ml                    ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.mm
  store float %i.ku, ptr %i.mn, align 4, !tbaa !35, !llvm.access.group !133
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.089.0, i64 %i.mm
  store i32 %i.kv, ptr %i.mo, align 4, !tbaa !45, !llvm.access.group !133
  %.not.i84 = icmp ne i32 %i.kv, -1
  %i.mp = zext i1 %.not.i84 to i64
  %spec.select.i = add i64 %.041.i, %i.mp         ; 2 uses
  %i.mq = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %i.mq, %i.kr
  br i1 %exitcond.not.i85, label %._crit_edge.i, label %bb.t, !llvm.loop !3

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i, %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN5faiss19approx_topk_by_modeILNS_9SIMDLevelE0EEEv17ApproxTopK_mode_tjjPKfjPfPi.exit ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 7 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.kr
  %i.ms = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = shl i64 %.0.lcssa.i, 2                  ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ho, ptr align 4 %i.mt, i64 %i.mu, i1 false), !llvm.access.group !133
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.089.0, i64 %i.kr
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.ms
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.089.0, ptr align 4 %i.mw, i64 %i.mu, i1 false), !llvm.access.group !133
  %i.mx = icmp ult i64 %.0.lcssa.i, %i.kr
  br i1 %i.mx, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMaxIfiEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.my = sub nuw i64 %i.kr, %.0.lcssa.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.my, 8
  br i1 %min.iters.check, label %.lr.ph44.i.preheader273, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %i.my, -8                      ; 3 uses
  %i.mz = add i64 %.0.lcssa.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.na = add nuw i64 %.0.lcssa.i, %index         ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.na ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.nb, align 4, !tbaa !35, !llvm.access.group !133
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.nc, align 4, !tbaa !35, !llvm.access.group !133
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.089.0, i64 %i.na ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.nd, align 4, !tbaa !45, !llvm.access.group !133
  store <4 x i32> splat (i32 -1), ptr %i.ne, align 4, !tbaa !45, !llvm.access.group !133
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nf = icmp eq i64 %index.next, %n.vec
  br i1 %i.nf, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.my, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_reorderINS_4CMaxIfiEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i.preheader273

.lr.ph44.i.preheader273:                          ; preds = %.lr.ph44.i.preheader, %middle.block
  %.242.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph44.i.preheader ], [ %i.mz, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader273, %.lr.ph44.i
  %.242.i = phi i64 [ %i.ni, %.lr.ph44.i ], [ %.242.i.ph, %.lr.ph44.i.preheader273 ] ; 3 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.242.i
  store float f0x7F7FFFFF, ptr %i.ng, align 4, !tbaa !35, !llvm.access.group !133
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.089.0, i64 %.242.i
  store i32 -1, ptr %i.nh, align 4, !tbaa !45, !llvm.access.group !133
  %i.ni = add nuw i64 %.242.i, 1                  ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.ni, %i.kr
  br i1 %exitcond47.not.i, label %_ZN5faiss12heap_reorderINS_4CMaxIfiEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i, !llvm.loop !155

_ZN5faiss12heap_reorderINS_4CMaxIfiEEEEmmPNT_1TEPNS3_2TIE.exit: ; preds = %.lr.ph44.i, %middle.block, %._crit_edge.i
  %i.nj = load i64, ptr %15, align 8, !tbaa !14, !llvm.access.group !133 ; 2 uses
  %.not132 = icmp eq i64 %i.nj, 0
  br i1 %.not132, label %._crit_edge121, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIfiEEEEmmPNT_1TEPNS3_2TIE.exit
  %.pre138.a = load i64, ptr %6, align 8, !tbaa !14
  br label %.lr.ph120

._crit_edge121:                                   ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIfiEEEEmmPNT_1TEPNS3_2TIE.exit
  %.not.i.i.i = icmp eq ptr %.sroa.089.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %._crit_edge121.thread

._crit_edge121.thread:                            ; preds = %bb.aa, %._crit_edge121
  %i.nk = ptrtoint ptr %.sroa.089.0 to i64
  %i.nl = sub i64 %.sroa.11.0, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.089.0, i64 noundef %i.nl) #19, !llvm.access.group !133
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge121, %._crit_edge121.thread
  %.not.i.i.i86 = icmp eq ptr %.sroa.095.0, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.nm = ptrtoint ptr %.sroa.9.0 to i64
  %i.nn = ptrtoint ptr %.sroa.095.0 to i64
  %i.no = sub i64 %i.nm, %i.nn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0, i64 noundef %i.no) #19, !llvm.access.group !133
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.x
  %.not.i.i.i87 = icmp eq ptr %.sroa.099.0, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIfSaIfEED2Ev.exit88, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.np = ptrtoint ptr %.sroa.099.0 to i64
  %i.nq = sub i64 %.sroa.9103.0, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0, i64 noundef %i.nq) #19, !llvm.access.group !133
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit88

_ZNSt6vectorIfSaIfEED2Ev.exit88:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.y
  %i.nr = add i64 %.058123, 1
  %i.ns = load i64, ptr %i.b, align 8, !tbaa !14, !llvm.access.group !133
  %.not61.not = icmp slt i64 %.058123, %i.ns
  %indvar.next = add i64 %indvar, 1
  br i1 %.not61.not, label %.lr.ph125, label %.loopexit109, !llvm.loop !156

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %bb.aa
  %i.nt = phi i64 [ %i.of, %bb.aa ], [ %i.nj, %.lr.ph120.preheader ]
  %i.nu = phi i64 [ %i.og, %bb.aa ], [ %.pre138.a, %.lr.ph120.preheader ] ; 3 uses
  %.0119 = phi i64 [ %i.oj, %bb.aa ], [ 0, %.lr.ph120.preheader ] ; 2 uses
  %.056118 = phi ptr [ %i.oi, %bb.aa ], [ %i.hm, %.lr.ph120.preheader ] ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.089.0, i64 %.0119
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !45, !llvm.access.group !133
  %18 = load i64, ptr %4, align 8, !tbaa !14, !llvm.access.group !133 ; 2 uses
  %i.nx = sext i32 %i.nw to i64                   ; 2 uses
  %i.ny = urem i64 %i.nx, %18
  %i.nz = udiv i64 %i.nx, %18
  %i.oa = trunc i64 %i.ny to i32
  %.not62 = icmp eq i64 %i.nu, 0
  br i1 %.not62, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph120
  %sext = shl i64 %i.nz, 32
  %i.ob = ashr exact i64 %sext, 32
  %i.oc = mul i64 %i.ob, %i.nu
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.oc
  %i.oe = shl i64 %i.nu, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.056118, ptr align 4 %i.od, i64 %i.oe, i1 false), !llvm.access.group !133
  %.pre139.a = load i64, ptr %6, align 8, !tbaa !14, !llvm.access.group !133
  %.pre140 = load i64, ptr %15, align 8, !tbaa !14, !llvm.access.group !133
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph120
  %i.of = phi i64 [ %.pre140, %bb.z ], [ %i.nt, %.lr.ph120 ] ; 2 uses
  %i.og = phi i64 [ %.pre139.a, %bb.z ], [ 0, %.lr.ph120 ] ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.056118, i64 %i.og ; 2 uses
  store i32 %i.oa, ptr %i.oh, align 4, !tbaa !45, !llvm.access.group !133
  %i.oi = getelementptr i8, ptr %i.oh, i64 4
  %i.oj = add nuw i64 %.0119, 1                   ; 2 uses
  %i.ok = icmp ult i64 %i.oj, %i.of
  br i1 %i.ok, label %.lr.ph120, label %._crit_edge121.thread, !llvm.loop !157

._crit_edge129:                                   ; preds = %.loopexit109, %bb.b
  call void @__kmpc_dispatch_deinit(ptr nonnull @2, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge129, %bb.a
  ret void

.loopexit:                                        ; preds = %.noexc38.us58.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc38.us.i
  %lpad.loopexit105 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.c, %bb.d, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.h, %bb.i, %bb.j, %bb.k
  %lpad.loopexit110 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.split.us.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.er, %.split.us.i ], [ %i.er, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit105, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit110, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ol = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ol) #21, !llvm.access.group !133
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_8(ptr, i32, i32, i64, i64, i64, i64) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_8(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: nounwind
declare void @__kmpc_dispatch_deinit(ptr, i32) local_unnamed_addr #14

declare void @_ZN5faiss8fvec_addEmPKfS1_Pf(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss15rq_encode_steps14refine_beam_mpERKNS_17ResidualQuantizerEmmPKfiPiPfS7_RNS0_20RefineBeamMemoryPoolE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr noundef nonnull align 8 dereferenceable(120) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = trunc i64 %2 to i32                      ; 3 uses
  %i.c = tail call noundef double @_ZN5faiss12getmillisecsEv()
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79   ; 6 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80   ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, -2
  br label %bb.q

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0110188.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dd, %._crit_edge.loopexit.unr-lcssa ]
  %.0111187.epil.init = phi i32 [ %i.b, %.lr.ph ], [ %.sroa.speculated159.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0112186.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod312 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod312)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0110188.epil.init
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  %i.k = trunc i64 %i.j to i32
  %i.l = shl i32 %.0111187.epil.init, %i.k
  %.sroa.speculated159.epil = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.l)
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %.0112186.epil.init, i32 %.sroa.speculated159.epil)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  %i.m = zext nneg i32 %spec.select.lcssa to i64
  %i.n = mul i64 %1, %i.m
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0112.lcssa = phi i64 [ 0, %bb.a ], [ %i.n, %._crit_edge.loopexit ] ; 8 uses
  %i.o = add i64 %i.e, 1
  %i.p = mul i64 %i.o, %.0112.lcssa               ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82   ; 2 uses
  %i.s = load ptr, ptr %8, align 8, !tbaa !83     ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2                   ; 3 uses
  %i.x = icmp ugt i64 %i.p, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.y = sub nuw i64 %i.p, %i.w
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.y)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.z = icmp ult i64 %i.p, %i.w
  br i1 %i.z, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.p ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.aa
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !82
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !84
  %i.ae = mul i64 %i.ad, %.0112.lcssa             ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38 ; 2 uses
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2                 ; 3 uses
  %i.am = icmp ugt i64 %i.ae, %i.al
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.an = sub nuw i64 %i.ae, %i.al
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.an)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ao = icmp ult i64 %i.ae, %i.al
  br i1 %i.ao, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.ag, %i.ap
  br i1 %.not.i.i126, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !38
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 3 uses
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !79
  %i.as = add i64 %i.ar, 1
  %i.at = mul i64 %i.as, %.0112.lcssa             ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82 ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !83 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2                 ; 3 uses
  %i.bb = icmp ugt i64 %i.at, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bc = sub nuw i64 %i.at, %i.ba
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %i.bc)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit129

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bd = icmp ult i64 %i.at, %i.ba
  br i1 %i.bd, label %bb.j, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit129

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.at ; 2 uses
  %.not.i.i127 = icmp eq ptr %i.av, %i.be
  br i1 %.not.i.i127, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit129, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i128

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i128:     ; preds = %bb.j
end_hunk_0
