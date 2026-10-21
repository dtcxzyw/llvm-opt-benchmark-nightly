Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_lowlevel_ivf?download=true
inline.NumInlined: 1639
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN35TestLowLevelIVF_ThreadedSearch_Test8TestBodyEv:bb.a
  call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.144.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load float, ptr %i.io, align 4, !tbaa !61
  %i.iq = fcmp ule float %.pre56.i.i, %i.ip
  call void @llvm.assume(i1 %i.iq)
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.144.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 20
  %i.it = load float, ptr %i.is, align 4, !tbaa !61
  %i.iu = fcmp ule float %.pre56.i.i, %i.it
  call void @llvm.assume(i1 %i.iu)
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.144.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !61
  %i.iy = fcmp ule float %.pre56.i.i, %i.ix
  call void @llvm.assume(i1 %i.iy)
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.144.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 28
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !61
  %i.jc = fcmp ule float %.pre56.i.i, %i.jb
  call void @llvm.assume(i1 %i.jc)
  %i.jd = add nuw i64 %.144.i.i, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i.loopexit.unr-lcssa, label %.lr.ph47.split.i.i, !llvm.loop !215

_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph47.split.i.i
  %i.je = and i32 %i.fr, 7
  %lcmp.mod.not = icmp eq i32 %i.je, 0
  br i1 %lcmp.mod.not, label %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i, label %.lr.ph47.split.i.i.epil.preheader

.lr.ph47.split.i.i.epil.preheader:                ; preds = %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i.loopexit.unr-lcssa, %.lr.ph47.split.i.i.preheader
  %.144.i.i.epil.init = phi i64 [ 0, %.lr.ph47.split.i.i.preheader ], [ %i.jd, %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i.loopexit.unr-lcssa ]
  %i.jf = and i32 %i.fr, 7
  %lcmp.mod153 = icmp ne i32 %i.jf, 0
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %.lr.ph47.split.i.i.epil

.lr.ph47.split.i.i.epil:                          ; preds = %.lr.ph47.split.i.i.epil, %.lr.ph47.split.i.i.epil.preheader
  %.144.i.i.epil = phi i64 [ %i.jj, %.lr.ph47.split.i.i.epil ], [ %.144.i.i.epil.init, %.lr.ph47.split.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph47.split.i.i.epil ], [ 0, %.lr.ph47.split.i.i.epil.preheader ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.144.i.i.epil
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !61
  %i.ji = fcmp ule float %.pre56.i.i, %i.jh
  call void @llvm.assume(i1 %i.ji)
  %i.jj = add nuw i64 %.144.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i, label %.lr.ph47.split.i.i.epil, !llvm.loop !216

_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i: ; preds = %bb.aw, %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i.loopexit.unr-lcssa, %.lr.ph47.split.i.i.epil, %.lr.ph47.split.us.i.i, %.preheader.i.i, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i, %.lr.ph.split.us.i.i, %.preheader41.i.i, %bb.ar
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond89.not.i, label %bb.ax, label %.preheader.i, !llvm.loop !217

bb.ax:                                            ; preds = %_ZN5faiss12maxheap_addnIfEEvmPT_PlPKS1_PKlm.exit.i
  %i.jk = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 2 uses
  %i.jl = sext i32 %i.jk to i64                   ; 8 uses
  %i.jm = load ptr, ptr %11, align 8, !tbaa !83   ; 8 uses
  %i.jn = load ptr, ptr %10, align 8, !tbaa !96   ; 8 uses
  %.not46.i.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ax
  %i.jo = getelementptr inbounds i8, ptr %i.jm, i64 -4 ; 4 uses
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 -8 ; 5 uses
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ] ; 2 uses
  %.03740.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.lm, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ] ; 2 uses
  %i.jq = load float, ptr %i.jm, align 4, !tbaa !61
  %i.jr = load i64, ptr %i.jn, align 8, !tbaa !56 ; 2 uses
  %i.js = sub nuw i64 %i.jl, %.03740.i.i.i        ; 5 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.js ; 3 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !61 ; 5 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.js ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !56 ; 3 uses
  %i.jx = icmp ult i64 %i.js, 2
  br i1 %i.jx, label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ay, %bb.bb
  %i.jy = phi i64 [ %i.lb, %bb.bb ], [ 3, %bb.ay ]
  %i.jz = phi i64 [ %i.la, %bb.bb ], [ 2, %bb.ay ] ; 7 uses
  %.062.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.bb ], [ 1, %bb.ay ] ; 6 uses
  %i.ka = icmp eq i64 %i.jz, %i.js
  br i1 %i.ka, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i, label %bb.az

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i.i = load float, ptr %i.jt, align 4, !tbaa !61
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i

bb.az:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jz
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !61 ; 4 uses
  %i.kd = getelementptr [4 x i8], ptr %i.jm, i64 %i.jz
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !61 ; 5 uses
  %i.kf = getelementptr [8 x i8], ptr %i.jn, i64 %i.jz
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !56 ; 3 uses
  %i.kh = fcmp ogt float %i.kc, %i.ke
  br i1 %i.kh, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i:        ; preds = %bb.az
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jz
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !56
  %i.kk = fcmp oeq float %i.kc, %i.ke
  %i.kl = icmp sgt i64 %i.kj, %i.kg
  %i.km = and i1 %i.kk, %i.kl
  br i1 %i.km, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i, label %bb.ba

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i, %bb.az, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i
  %i.kn = phi float [ %.pre.i.i.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i ], [ %i.kc, %bb.az ], [ %i.kc, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i ] ; 3 uses
  %i.ko = fcmp ogt float %i.ju, %i.kn
  br i1 %i.ko, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i:      ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jz
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !56 ; 2 uses
  %i.kr = fcmp oeq float %i.ju, %i.kn
  %i.ks = icmp sgt i64 %i.jw, %i.kq
  %i.kt = and i1 %i.kr, %i.ks
  br i1 %i.kt, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %bb.bb

bb.ba:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i
  %i.ku = fcmp ogt float %i.ju, %i.ke
  br i1 %i.ku, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i:      ; preds = %bb.ba
  %i.kv = fcmp oeq float %i.ju, %i.ke
  %i.kw = icmp sgt i64 %i.jw, %i.kg
  %i.kx = and i1 %i.kv, %i.kw
  br i1 %i.kx, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i
  %.sink79.i.i.i.i = phi float [ %i.kn, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.ke, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.kq, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.kg, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ]
  %.1.i.i.i.i = phi i64 [ %i.jz, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.jy, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ] ; 3 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.062.i.i.i.i
  store float %.sink79.i.i.i.i, ptr %i.ky, align 4, !tbaa !61
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.062.i.i.i.i
  store i64 %.sink.i.i.i.i, ptr %i.kz, align 8, !tbaa !56
  %i.la = shl i64 %.1.i.i.i.i, 1                  ; 3 uses
  %i.lb = or disjoint i64 %i.la, 1
  %i.lc = icmp ugt i64 %i.la, %i.js
  br i1 %i.lc, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i: ; preds = %bb.bb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i, %bb.ba, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i
  %.0.lcssa.ph.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.bb ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i ], [ %.062.i.i.i.i, %bb.ba ]
  %.pre68.i.i.i.i = load float, ptr %i.jt, align 4, !tbaa !61
  %.pre69.i.i.i.i = load i64, ptr %i.jv, align 8, !tbaa !56
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, %bb.ay
  %i.ld = phi i64 [ %i.jw, %bb.ay ], [ %.pre69.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ]
  %i.le = phi float [ %i.ju, %bb.ay ], [ %.pre68.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ 1, %bb.ay ], [ %.0.lcssa.ph.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.0.lcssa.i.i.i.i
  store float %i.le, ptr %i.lf, align 4, !tbaa !61
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.0.lcssa.i.i.i.i
  store i64 %i.ld, ptr %i.lg, align 8, !tbaa !56
  %i.lh = xor i64 %.041.i.i.i, -1
  %i.li = add i64 %i.lh, %i.jl                    ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.li
  store float %i.jq, ptr %i.lj, align 4, !tbaa !61
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.li
  store i64 %i.jr, ptr %i.lk, align 8, !tbaa !56
  %.not.i.i131.i = icmp ne i64 %i.jr, -1
  %i.ll = zext i1 %.not.i.i131.i to i64
  %spec.select.i.i.i = add i64 %.041.i.i.i, %i.ll ; 2 uses
  %i.lm = add nuw i64 %.03740.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.lm, %i.jl
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.ay, !llvm.loop !3

._crit_edge.i.i.i:                                ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, %bb.ax
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.ax ], [ %spec.select.i.i.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ] ; 8 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jl
  %i.lo = sub i64 0, %.0.lcssa.i.i.i              ; 2 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lo
  %i.lq = shl i64 %.0.lcssa.i.i.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jm, ptr align 4 %i.lp, i64 %i.lq, i1 false)
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jl
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %i.lo
  %i.lt = shl i64 %.0.lcssa.i.i.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jn, ptr align 8 %i.ls, i64 %i.lt, i1 false)
  %i.lu = icmp ult i64 %.0.lcssa.i.i.i, %i.jl
  br i1 %i.lu, label %.lr.ph44.i.i.i.preheader, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i

.lr.ph44.i.i.i.preheader:                         ; preds = %._crit_edge.i.i.i
  %i.lv = sub nuw i64 %i.jl, %.0.lcssa.i.i.i      ; 3 uses
  %min.iters.check = icmp ult i64 %i.lv, 4
  br i1 %min.iters.check, label %.lr.ph44.i.i.i.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.i.i.preheader
  %n.vec = and i64 %i.lv, -4                      ; 3 uses
  %i.lw = add i64 %.0.lcssa.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lx = add nuw i64 %.0.lcssa.i.i.i, %index     ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.lx
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ly, align 4, !tbaa !61
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.lx ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.lz, align 8, !tbaa !56
  store <2 x i64> splat (i64 -1), ptr %i.ma, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mb = icmp eq i64 %index.next, %n.vec
  br i1 %i.mb, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lv, %n.vec
  br i1 %cmp.n, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, label %.lr.ph44.i.i.i.preheader146

.lr.ph44.i.i.i.preheader146:                      ; preds = %.lr.ph44.i.i.i.preheader, %middle.block
  %.242.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %.lr.ph44.i.i.i.preheader ], [ %i.lw, %middle.block ]
  br label %.lr.ph44.i.i.i

.lr.ph44.i.i.i:                                   ; preds = %.lr.ph44.i.i.i.preheader146, %.lr.ph44.i.i.i
  %.242.i.i.i = phi i64 [ %i.me, %.lr.ph44.i.i.i ], [ %.242.i.i.i.ph, %.lr.ph44.i.i.i.preheader146 ] ; 3 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %.242.i.i.i
  store float f0x7F7FFFFF, ptr %i.mc, align 4, !tbaa !61
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.242.i.i.i
  store i64 -1, ptr %i.md, align 8, !tbaa !56
  %i.me = add nuw i64 %.242.i.i.i, 1              ; 2 uses
  %exitcond47.not.i.i.i = icmp eq i64 %i.me, %i.jl
  br i1 %exitcond47.not.i.i.i, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, label %.lr.ph44.i.i.i, !llvm.loop !219

_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i:     ; preds = %.lr.ph44.i.i.i, %middle.block, %._crit_edge.i.i.i
  %i.mf = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !55 ; 2 uses
  %i.mg = icmp sgt i32 %i.mf, 0
  br i1 %i.mg, label %.lr.ph.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.1, %.lr.ph.i.i.i.i.i.i.preheader.1
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1:      ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  %.05.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %.05.i.i.i.i.ptr.1, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2, label %bb.bc

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2:      ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1
  %.05.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.2 = load i64, ptr %.05.i.i.i.i.ptr.2, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.2, 0
  br i1 %.not.i.i.i.i.i.i.i.2, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i, label %bb.bc

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i:        ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.fe, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2, %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1, %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  call void @_ZSt9terminatev() #23
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2
  %i.mh = load ptr, ptr %i.bc, align 8, !tbaa !110
  %i.mi = ptrtoint ptr %i.mh to i64
  %i.mj = ptrtoint ptr %i.fe to i64
  %i.mk = sub i64 %i.mi, %i.mj
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.mk) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.ml = load ptr, ptr %11, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i133.i = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i133.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit134.i, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.mm = load ptr, ptr %i.az, align 8, !tbaa !99
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %i.ml to i64
  %i.mp = sub i64 %i.mn, %i.mo
  call void @_ZdlPvm(ptr noundef nonnull %i.ml, i64 noundef %i.mp) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit134.i

_ZNSt6vectorIfSaIfEED2Ev.exit134.i:               ; preds = %bb.bd, %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.mq = load ptr, ptr %10, align 8, !tbaa !96   ; 3 uses
  %.not.i.i.i135.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i135.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit136.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit134.i
  %i.mr = load ptr, ptr %i.ax, align 8, !tbaa !97
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = ptrtoint ptr %i.mq to i64
  %i.mu = sub i64 %i.ms, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.mu) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit136.i

_ZNSt6vectorIlSaIlEED2Ev.exit136.i:               ; preds = %bb.be, %_ZNSt6vectorIfSaIfEED2Ev.exit134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.mv = add nuw nsw i64 %.04772.i, 1            ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.mv, 200
  br i1 %exitcond93.not.i, label %bb.t, label %bb.ad, !llvm.loop !220

.lr.ph.i:                                         ; preds = %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, %_ZN7testing15AssertionResultD2Ev.exit.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %_ZN7testing15AssertionResultD2Ev.exit.i ], [ 0, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i ] ; 3 uses
  %i.mw = phi i32 [ %i.ow, %_ZN7testing15AssertionResultD2Ev.exit.i ], [ %i.mf, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.mx = load ptr, ptr %10, align 8, !tbaa !96
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv90.i ; 2 uses
  %i.mz = sext i32 %i.mw to i64
  %i.na = mul nuw nsw i64 %.04772.i, %i.mz
  %i.nb = load ptr, ptr %7, align 8, !tbaa !96
  %i.nc = getelementptr [8 x i8], ptr %i.nb, i64 %i.na
  %i.nd = getelementptr [8 x i8], ptr %i.nc, i64 %indvars.iv90.i ; 2 uses
  %i.ne = load i64, ptr %i.my, align 8, !tbaa !56, !noalias !243
  %i.nf = load i64, ptr %i.nd, align 8, !tbaa !56, !noalias !243
  %i.ng = icmp eq i64 %i.ne, %i.nf
  br i1 %i.ng, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %bb.bk

bb.bg:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19, !noalias !244
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.my)
          to label %.noexc168.i unwind label %bb.bk

.noexc168.i:                                      ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !244
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.nd)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i unwind label %bb.bi, !noalias !244

_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i: ; preds = %.noexc168.i
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.nh = load ptr, ptr %2, align 8, !tbaa !65, !noalias !244 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.bd
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bh
  %i.nj = load i64, ptr %i.bd, align 8, !tbaa !26, !noalias !244
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !244
  %i.nl = load ptr, ptr %1, align 8, !tbaa !65, !noalias !244 ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.be
  br i1 %i.nm, label %.noexc138.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.nn = load i64, ptr %i.be, align 8, !tbaa !26, !noalias !244
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #20
  br label %.noexc138.i

bb.bi:                                            ; preds = %.noexc168.i
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

bb.bj:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.nq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nr = load ptr, ptr %2, align 8, !tbaa !65, !noalias !244 ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.bd
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.bj
  %i.nt = load i64, ptr %i.bd, align 8, !tbaa !26, !noalias !244
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i, %bb.bi
  %.pn.i.i = phi { ptr, i32 } [ %i.np, %bb.bi ], [ %i.nq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i ], [ %i.nq, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !244
  %i.nv = load ptr, ptr %1, align 8, !tbaa !65, !noalias !244 ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.be
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i
  %i.nx = load i64, ptr %i.be, align 8, !tbaa !26, !noalias !244
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !244
  br label %.body169.i

.noexc138.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !244
  br label %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i

_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i: ; preds = %.noexc138.i, %bb.bf
  %i.nz = load i8, ptr %13, align 8, !tbaa !74, !range !75, !noundef !76
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.bu, label %bb.bl

bb.bk:                                            ; preds = %bb.bg, %bb.bf
  %i.ob = landingpad { ptr, i32 }
          cleanup
end_hunk_0
