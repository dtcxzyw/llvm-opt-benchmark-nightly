Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_lowlevel_ivf?download=true
inline.NumInlined: 1639
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN35TestLowLevelIVF_ThreadedSearch_Test8TestBodyEv:bb.a
  call void @llvm.assume(i1 %i.io)
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.144.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !61
  %i.is = fcmp ule float %.pre56.i.i, %i.ir
  call void @llvm.assume(i1 %i.is)
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.144.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 20
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !61
  %i.iw = fcmp ule float %.pre56.i.i, %i.iv
  call void @llvm.assume(i1 %i.iw)
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.144.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !61
  %i.ja = fcmp ule float %.pre56.i.i, %i.iz
  call void @llvm.assume(i1 %i.ja)
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.144.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 28
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !61
  %i.je = fcmp ule float %.pre56.i.i, %i.jd
  call void @llvm.assume(i1 %i.je)
  %i.jf = add nuw i64 %.144.i.i, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i.loopexit.unr-lcssa, label %.lr.ph47.split.i.i, !llvm.loop !214

_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph47.split.i.i
  %i.jg = and i32 %i.ft, 7
  %lcmp.mod.not = icmp eq i32 %i.jg, 0
  br i1 %lcmp.mod.not, label %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i, label %.lr.ph47.split.i.i.epil.preheader

.lr.ph47.split.i.i.epil.preheader:                ; preds = %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i.loopexit.unr-lcssa, %.lr.ph47.split.i.i.preheader
  %.144.i.i.epil.init = phi i64 [ 0, %.lr.ph47.split.i.i.preheader ], [ %i.jf, %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i.loopexit.unr-lcssa ]
  %i.jh = and i32 %i.ft, 7
  %lcmp.mod123 = icmp ne i32 %i.jh, 0
  call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph47.split.i.i.epil

.lr.ph47.split.i.i.epil:                          ; preds = %.lr.ph47.split.i.i.epil, %.lr.ph47.split.i.i.epil.preheader
  %.144.i.i.epil = phi i64 [ %i.jl, %.lr.ph47.split.i.i.epil ], [ %.144.i.i.epil.init, %.lr.ph47.split.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph47.split.i.i.epil ], [ 0, %.lr.ph47.split.i.i.epil.preheader ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.144.i.i.epil
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !61
  %i.jk = fcmp ule float %.pre56.i.i, %i.jj
  call void @llvm.assume(i1 %i.jk)
  %i.jl = add nuw i64 %.144.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i, label %.lr.ph47.split.i.i.epil, !llvm.loop !215

_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i: ; preds = %bb.ax, %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i.loopexit.unr-lcssa, %.lr.ph47.split.i.i.epil, %.lr.ph47.split.us.i.i, %.preheader.i.i, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i, %.lr.ph.split.us.i.i, %.preheader41.i.i, %bb.ar
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond83.not.i, label %bb.ay, label %.preheader.i, !llvm.loop !216

bb.ay:                                            ; preds = %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i
  %i.jm = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 2 uses
  %i.jn = sext i32 %i.jm to i64                   ; 8 uses
  %i.jo = load ptr, ptr %11, align 8, !tbaa !83   ; 8 uses
  %i.jp = load ptr, ptr %10, align 8, !tbaa !96   ; 8 uses
  %.not46.i.i.i = icmp eq i32 %i.jm, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ay
  %i.jq = getelementptr inbounds i8, ptr %i.jo, i64 -4 ; 4 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 -8 ; 5 uses
  br label %bb.az

bb.az:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ] ; 2 uses
  %.03740.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.lo, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ] ; 2 uses
  %i.js = load float, ptr %i.jo, align 4, !tbaa !61
  %i.jt = load i64, ptr %i.jp, align 8, !tbaa !56 ; 2 uses
  %i.ju = sub nuw i64 %i.jn, %.03740.i.i.i        ; 5 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.ju ; 3 uses
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !61 ; 5 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.ju ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !56 ; 3 uses
  %i.jz = icmp ult i64 %i.ju, 2
  br i1 %i.jz, label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.az, %bb.bc
  %i.ka = phi i64 [ %i.ld, %bb.bc ], [ 3, %bb.az ]
  %i.kb = phi i64 [ %i.lc, %bb.bc ], [ 2, %bb.az ] ; 7 uses
  %.062.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.bc ], [ 1, %bb.az ] ; 6 uses
  %i.kc = icmp eq i64 %i.kb, %i.ju
  br i1 %i.kc, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i, label %bb.ba

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i.i = load float, ptr %i.jv, align 4, !tbaa !61
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.kb
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !61 ; 4 uses
  %i.kf = getelementptr [4 x i8], ptr %i.jo, i64 %i.kb
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !61 ; 5 uses
  %i.kh = getelementptr [8 x i8], ptr %i.jp, i64 %i.kb
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !56 ; 3 uses
  %i.kj = fcmp ogt float %i.ke, %i.kg
  br i1 %i.kj, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i:        ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.kb
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !56
  %i.km = fcmp oeq float %i.ke, %i.kg
  %i.kn = icmp sgt i64 %i.kl, %i.ki
  %i.ko = and i1 %i.km, %i.kn
  br i1 %i.ko, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i, label %bb.bb

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i, %bb.ba, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i
  %i.kp = phi float [ %.pre.i.i.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i ], [ %i.ke, %bb.ba ], [ %i.ke, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i ] ; 3 uses
  %i.kq = fcmp ogt float %i.jw, %i.kp
  br i1 %i.kq, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i:      ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.kb
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !56 ; 2 uses
  %i.kt = fcmp oeq float %i.jw, %i.kp
  %i.ku = icmp sgt i64 %i.jy, %i.ks
  %i.kv = and i1 %i.kt, %i.ku
  br i1 %i.kv, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %bb.bc

bb.bb:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i
  %i.kw = fcmp ogt float %i.jw, %i.kg
  br i1 %i.kw, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i:      ; preds = %bb.bb
  %i.kx = fcmp oeq float %i.jw, %i.kg
  %i.ky = icmp sgt i64 %i.jy, %i.ki
  %i.kz = and i1 %i.kx, %i.ky
  br i1 %i.kz, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i
  %.sink79.i.i.i.i = phi float [ %i.kp, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.kg, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.ks, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.ki, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ]
  %.1.i.i.i.i = phi i64 [ %i.kb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.ka, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %.062.i.i.i.i
  store float %.sink79.i.i.i.i, ptr %i.la, align 4, !tbaa !61
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.062.i.i.i.i
  store i64 %.sink.i.i.i.i, ptr %i.lb, align 8, !tbaa !56
  %i.lc = shl i64 %.1.i.i.i.i, 1                  ; 3 uses
  %i.ld = or disjoint i64 %i.lc, 1
  %i.le = icmp ugt i64 %i.lc, %i.ju
  br i1 %i.le, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i: ; preds = %bb.bc, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i, %bb.bb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i
  %.0.lcssa.ph.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.bc ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i ], [ %.062.i.i.i.i, %bb.bb ]
  %.pre68.i.i.i.i = load float, ptr %i.jv, align 4, !tbaa !61
  %.pre69.i.i.i.i = load i64, ptr %i.jx, align 8, !tbaa !56
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, %bb.az
  %i.lf = phi i64 [ %i.jy, %bb.az ], [ %.pre69.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ]
  %i.lg = phi float [ %i.jw, %bb.az ], [ %.pre68.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ 1, %bb.az ], [ %.0.lcssa.ph.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %.0.lcssa.i.i.i.i
  store float %i.lg, ptr %i.lh, align 4, !tbaa !61
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.0.lcssa.i.i.i.i
  store i64 %i.lf, ptr %i.li, align 8, !tbaa !56
  %i.lj = xor i64 %.041.i.i.i, -1
  %i.lk = add i64 %i.lj, %i.jn                    ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.lk
  store float %i.js, ptr %i.ll, align 4, !tbaa !61
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.lk
  store i64 %i.jt, ptr %i.lm, align 8, !tbaa !56
  %.not.i.i131.i = icmp ne i64 %i.jt, -1
  %i.ln = zext i1 %.not.i.i131.i to i64
  %spec.select.i.i.i = add i64 %.041.i.i.i, %i.ln ; 2 uses
  %i.lo = add nuw i64 %.03740.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.lo, %i.jn
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.az, !llvm.loop !3

._crit_edge.i.i.i:                                ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, %bb.ay
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.ay ], [ %spec.select.i.i.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ] ; 8 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jn
  %i.lq = sub i64 0, %.0.lcssa.i.i.i              ; 2 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.lq
  %i.ls = shl i64 %.0.lcssa.i.i.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jo, ptr align 4 %i.lr, i64 %i.ls, i1 false)
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jn
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.lq
  %i.lv = shl i64 %.0.lcssa.i.i.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jp, ptr align 8 %i.lu, i64 %i.lv, i1 false)
  %i.lw = icmp ult i64 %.0.lcssa.i.i.i, %i.jn
  br i1 %i.lw, label %.lr.ph44.i.i.i.preheader, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i

.lr.ph44.i.i.i.preheader:                         ; preds = %._crit_edge.i.i.i
  %i.lx = sub nuw i64 %i.jn, %.0.lcssa.i.i.i      ; 3 uses
  %min.iters.check = icmp ult i64 %i.lx, 4
  br i1 %min.iters.check, label %.lr.ph44.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.i.i.preheader
  %n.vec = and i64 %i.lx, -4                      ; 3 uses
  %i.ly = add i64 %.0.lcssa.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lz = add nuw i64 %.0.lcssa.i.i.i, %index     ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.lz ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ma, align 4, !tbaa !61
  store <2 x float> splat (float f0x7F7FFFFF), ptr %16, align 4, !tbaa !61
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.lz ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.mb, align 8, !tbaa !56
  store <2 x i64> splat (i64 -1), ptr %i.mc, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lx, %n.vec
  br i1 %cmp.n, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, label %.lr.ph44.i.i.i.preheader122

.lr.ph44.i.i.i.preheader122:                      ; preds = %.lr.ph44.i.i.i.preheader, %middle.block
  %.242.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %.lr.ph44.i.i.i.preheader ], [ %i.ly, %middle.block ]
  br label %.lr.ph44.i.i.i

.lr.ph44.i.i.i:                                   ; preds = %.lr.ph44.i.i.i.preheader122, %.lr.ph44.i.i.i
  %.242.i.i.i = phi i64 [ %i.mg, %.lr.ph44.i.i.i ], [ %.242.i.i.i.ph, %.lr.ph44.i.i.i.preheader122 ] ; 3 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.242.i.i.i
  store float f0x7F7FFFFF, ptr %i.me, align 4, !tbaa !61
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.242.i.i.i
  store i64 -1, ptr %i.mf, align 8, !tbaa !56
  %i.mg = add nuw i64 %.242.i.i.i, 1              ; 2 uses
  %exitcond47.not.i.i.i = icmp eq i64 %i.mg, %i.jn
  br i1 %exitcond47.not.i.i.i, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, label %.lr.ph44.i.i.i, !llvm.loop !218

_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i:     ; preds = %.lr.ph44.i.i.i, %middle.block, %._crit_edge.i.i.i
  %i.mh = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 2 uses
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %.lr.ph.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1:      ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  %.05.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %.05.i.i.i.i.ptr.1, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2, label %bb.bd

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2:      ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1
  %.05.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.2 = load i64, ptr %.05.i.i.i.i.ptr.2, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.2, 0
  br i1 %.not.i.i.i.i.i.i.i.2, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i, label %bb.bd

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i:        ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ff, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2, %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1, %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  call void @_ZSt9terminatev() #23
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2
  %i.mj = load ptr, ptr %i.bd, align 8, !tbaa !110
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = ptrtoint ptr %i.ff to i64
  %i.mm = sub i64 %i.mk, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.mm) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.mn = load ptr, ptr %11, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i133.i = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i133.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit134.i, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.mo = load ptr, ptr %i.ba, align 8, !tbaa !99
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mn to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef %i.mr) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit134.i

_ZNSt6vectorIfSaIfEED2Ev.exit134.i:               ; preds = %bb.be, %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.ms = load ptr, ptr %10, align 8, !tbaa !96   ; 3 uses
  %.not.i.i.i135.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i135.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit136.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit134.i
  %i.mt = load ptr, ptr %i.ay, align 8, !tbaa !97
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = ptrtoint ptr %i.ms to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mw) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit136.i

_ZNSt6vectorIlSaIlEED2Ev.exit136.i:               ; preds = %bb.bf, %_ZNSt6vectorIfSaIfEED2Ev.exit134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.mx = add nuw nsw i64 %.04775.i, 1            ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.mx, 200
  br i1 %exitcond87.not.i, label %bb.t, label %bb.ad, !llvm.loop !219

.lr.ph.i:                                         ; preds = %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, %_ZN7testing15AssertionResultD2Ev.exit.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %_ZN7testing15AssertionResultD2Ev.exit.i ], [ 0, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i ] ; 3 uses
  %i.my = phi i32 [ %i.oy, %_ZN7testing15AssertionResultD2Ev.exit.i ], [ %i.mh, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.mz = load ptr, ptr %10, align 8, !tbaa !96
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %indvars.iv84.i ; 2 uses
  %i.nb = sext i32 %i.my to i64
  %i.nc = mul nuw nsw i64 %.04775.i, %i.nb
  %i.nd = load ptr, ptr %7, align 8, !tbaa !96
  %i.ne = getelementptr [8 x i8], ptr %i.nd, i64 %i.nc
  %i.nf = getelementptr [8 x i8], ptr %i.ne, i64 %indvars.iv84.i ; 2 uses
  %i.ng = load i64, ptr %i.na, align 8, !tbaa !56, !noalias !242
  %i.nh = load i64, ptr %i.nf, align 8, !tbaa !56, !noalias !242
  %i.ni = icmp eq i64 %i.ng, %i.nh
  br i1 %i.ni, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %bb.bl

bb.bh:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19, !noalias !243
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.na)
          to label %.noexc168.i unwind label %bb.bl

.noexc168.i:                                      ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !243
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.nf)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i unwind label %bb.bj, !noalias !243

_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i: ; preds = %.noexc168.i
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.nj = load ptr, ptr %2, align 8, !tbaa !65, !noalias !243 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.be
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bi
  %i.nl = load i64, ptr %i.be, align 8, !tbaa !26, !noalias !243
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !243
  %i.nn = load ptr, ptr %1, align 8, !tbaa !65, !noalias !243 ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.bf
  br i1 %i.no, label %.noexc138.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.np = load i64, ptr %i.bf, align 8, !tbaa !26, !noalias !243
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #20
  br label %.noexc138.i

bb.bj:                                            ; preds = %.noexc168.i
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

bb.bk:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nt = load ptr, ptr %2, align 8, !tbaa !65, !noalias !243 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.be
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.bk
  %i.nv = load i64, ptr %i.be, align 8, !tbaa !26, !noalias !243
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i, %bb.bj
  %.pn.i.i = phi { ptr, i32 } [ %i.nr, %bb.bj ], [ %i.ns, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i ], [ %i.ns, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !243
  %i.nx = load ptr, ptr %1, align 8, !tbaa !65, !noalias !243 ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.bf
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i
  %i.nz = load i64, ptr %i.bf, align 8, !tbaa !26, !noalias !243
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.oa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !243
  br label %.body169.i

.noexc138.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !243
  br label %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i

_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i: ; preds = %.noexc138.i, %bb.bg
  %i.ob = load i8, ptr %13, align 8, !tbaa !74, !range !75, !noundef !76
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.bv, label %bb.bm

bb.bl:                                            ; preds = %bb.bh, %bb.bg
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i

bb.bm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
end_hunk_0
