Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZNK4ncnn19Convolution_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  br i1 %.not.i36.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bo

bb.bb:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.ih, i32 %i.gx)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14, ptr nonnull %i.v, ptr nonnull %i.s, ptr nonnull %i.p, ptr nonnull %5, ptr nonnull %i.q, ptr nonnull %i.t, ptr nonnull %i.r, ptr nonnull %i.u, ptr nonnull align 8 dereferenceable(72) %i.io, ptr nonnull %4, ptr nonnull align 8 dereferenceable(72) %9)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i

_ZNK4ncnn3Mat5emptyEv.exit.thread.i:              ; preds = %bb.bb, %_ZNK4ncnn3Mat5emptyEv.exit.i, %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i
  %.021.i = phi i32 [ 0, %bb.bb ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.i ], [ -100, %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i ]
  %i.kq = load ptr, ptr %i.kd, align 8, !tbaa !11 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.kq, null
  br i1 %.not.i28.i, label %_ZN4ncnn3MatD2Ev.exit26.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread.i
  %i.kr = atomicrmw add ptr %i.kq, i32 -1 acq_rel, align 4
  %i.ks = icmp eq i32 %i.kr, 1
  br i1 %i.ks, label %bb.bd, label %_ZN4ncnn3MatD2Ev.exit26.i

bb.bd:                                            ; preds = %bb.bc
  %i.kt = load ptr, ptr %i.ke, align 8, !tbaa !17 ; 3 uses
  %.not3.i29.i = icmp eq ptr %i.kt, null
  %i.ku = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i29.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kv = load ptr, ptr %i.kt, align 8, !tbaa !9
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8
  invoke void %i.kx(ptr noundef nonnull align 8 dereferenceable(8) %i.kt, ptr noundef %i.ku)
          to label %_ZN4ncnn3MatD2Ev.exit26.i unwind label %bb.bh, !inline_history !19

bb.bf:                                            ; preds = %bb.bd
  %.not.i43.i = icmp eq ptr %i.ku, null
  br i1 %.not.i43.i, label %_ZN4ncnn3MatD2Ev.exit26.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @free(ptr noundef nonnull %i.ku) #12
  br label %_ZN4ncnn3MatD2Ev.exit26.i

bb.bh:                                            ; preds = %bb.be
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit26.i:                        ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %_ZNK4ncnn3Mat5emptyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #12
  br label %_ZNK4ncnn3Mat5emptyEv.exit48.thread.i

_ZNK4ncnn3Mat5emptyEv.exit48.thread.i:            ; preds = %_ZN4ncnn3MatD2Ev.exit26.i, %_ZNK4ncnn3Mat5emptyEv.exit48.i, %.noexc210
  %.122.i = phi i32 [ %.021.i, %_ZN4ncnn3MatD2Ev.exit26.i ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit48.i ], [ -100, %.noexc210 ]
  %i.la = load ptr, ptr %i.jo, align 8, !tbaa !11 ; 2 uses
  %.not.i32.i = icmp eq ptr %i.la, null
  br i1 %.not.i32.i, label %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit48.thread.i
  %i.lb = atomicrmw add ptr %i.la, i32 -1 acq_rel, align 4
  %i.lc = icmp eq i32 %i.lb, 1
  br i1 %i.lc, label %bb.bj, label %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit

bb.bj:                                            ; preds = %bb.bi
  %i.ld = load ptr, ptr %i.jp, align 8, !tbaa !17 ; 3 uses
  %.not3.i33.i = icmp eq ptr %i.ld, null
  %i.le = load ptr, ptr %4, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i33.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lf = load ptr, ptr %i.ld, align 8, !tbaa !9
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8
  invoke void %i.lh(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef %i.le)
          to label %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit unwind label %bb.bn, !inline_history !19

bb.bl:                                            ; preds = %bb.bj
  %.not.i41.i = icmp eq ptr %i.le, null
  br i1 %.not.i41.i, label %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef nonnull %i.le) #12
  br label %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit

bb.bn:                                            ; preds = %bb.bk
  %i.li = landingpad { ptr, i32 }
          catch ptr null
  %i.lj = extractvalue { ptr, i32 } %i.li, 0
  call void @__clang_call_terminate(ptr %i.lj) #32
  unreachable

bb.bo:                                            ; preds = %bb.ba
  %i.lk = atomicrmw add ptr %i.kp, i32 -1 acq_rel, align 4
  %i.ll = icmp eq i32 %i.lk, 1
  br i1 %i.ll, label %bb.bp, label %_ZN4ncnn3MatD2Ev.exit.i

bb.bp:                                            ; preds = %bb.bo
  %i.lm = load ptr, ptr %i.jp, align 8, !tbaa !17 ; 3 uses
  %.not3.i37.i = icmp eq ptr %i.lm, null
  %i.ln = load ptr, ptr %4, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i37.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lo = load ptr, ptr %i.lm, align 8, !tbaa !9
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8
  invoke void %i.lq(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noundef %i.ln)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bt, !inline_history !19

bb.br:                                            ; preds = %bb.bp
  %.not.i40.i = icmp eq ptr %i.ln, null
  br i1 %.not.i40.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.ln) #12
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bt:                                            ; preds = %bb.bq
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  br label %.body

_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit: ; preds = %_ZNK4ncnn3Mat5emptyEv.exit48.thread.i, %bb.bi, %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.cm

bb.bu:                                            ; preds = %bb.ax
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.im, ptr %i.a, align 4, !tbaa !67
  store i32 %i.in, ptr %i.b, align 4, !tbaa !67
  %i.lu = invoke noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
          to label %.noexc212 unwind label %bb.aw

.noexc212:                                        ; preds = %bb.bu
  %.not.i211 = icmp eq i32 %i.lu, 0
  br i1 %.not.i211, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.noexc212
  invoke void @_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %i.lt, i32 noundef %i.ii, i32 noundef %i.ij, i32 noundef %i.ik, i32 noundef %i.il, i32 noundef %i.im, i32 noundef %i.in, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %.thread218 unwind label %bb.aw

bb.bw:                                            ; preds = %.noexc212
  %i.lv = invoke noundef i32 @_ZN4ncnn19cpu_support_x86_xopEv()
          to label %.noexc214 unwind label %bb.aw

.noexc214:                                        ; preds = %bb.bw
  %.not1179.i = icmp eq i32 %i.lv, 0
  br i1 %.not1179.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.noexc214
  invoke void @_ZN4ncnn27convolution_packed_int8_xopERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %i.lt, i32 noundef %i.ii, i32 noundef %i.ij, i32 noundef %i.ik, i32 noundef %i.il, i32 noundef %i.im, i32 noundef %i.in, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %.thread218 unwind label %bb.aw

bb.by:                                            ; preds = %.noexc214
  %i.lw = load i32, ptr %i.bm, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.lx = load i32, ptr %i.bk, align 8, !tbaa !66 ; 6 uses
  store i32 %i.lx, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ly = load i32, ptr %i.bo, align 8, !tbaa !68
  %i.lz = mul nsw i32 %i.ly, %i.lx
  store i32 %i.lz, ptr %i.d, align 4, !tbaa !67
  %i.ma = load i64, ptr %i.bp, align 8, !tbaa !20
  %i.mb = sext i32 %i.lx to i64
  %i.mc = mul i64 %i.ma, %i.mb                    ; 22 uses
  %i.md = load i32, ptr %i.fy, align 4, !tbaa !75 ; 15 uses
  %i.me = load i32, ptr %i.fz, align 16, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.mf = load i32, ptr %i.fv, align 8, !tbaa !66 ; 2 uses
  store i32 %i.mf, ptr %i.e, align 4, !tbaa !67
  %i.mg = load i32, ptr %i.ga, align 8, !tbaa !68
  %i.mh = mul i32 %i.mg, %i.mf                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.mi = mul nsw i32 %i.ij, %i.ii                ; 4 uses
  store i32 %i.mi, ptr %i.f, align 4, !tbaa !67
  %i.mj = sext i32 %i.mi to i64                   ; 3 uses
  %i.mk = icmp slt i32 %i.mi, 0
  br i1 %i.mk, label %.noexc1706.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc1706.i:                                     ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #35
          to label %.noexc216 unwind label %bb.aw

.noexc216:                                        ; preds = %.noexc1706.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.by
  %.not.i.i.i.i.i = icmp eq i32 %i.mi, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %.noexc1707.i

.noexc1707.i:                                     ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ml = shl nuw nsw i64 %i.mj, 2
  %i.mm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ml) #36
          to label %.noexc217 unwind label %bb.aw ; 5 uses

.noexc217:                                        ; preds = %.noexc1707.i
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mj ; 2 uses
  store i32 0, ptr %i.mm, align 4, !tbaa !67
  %i.mo = add nsw i64 %i.mj, -1                   ; 2 uses
  %i.mp = icmp eq i64 %i.mo, 0
  br i1 %i.mp, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc217
  %i.mq = getelementptr i8, ptr %i.mm, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.mo, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mq, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !67
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc217, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.10.0.i = phi ptr [ %i.mn, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.mn, %.noexc217 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.02736.0.i = phi ptr [ %i.mm, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.mm, %.noexc217 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr %.sroa.02736.0.i, ptr %i.g, align 8, !tbaa !296
  %i.mr = mul nsw i32 %i.lw, %i.il
  %i.ms = mul nsw i32 %i.ik, %i.ii
  %i.mt = sub i32 %i.mr, %i.ms
  %i.mu = icmp sgt i32 %i.ij, 0
  %i.mv = icmp sgt i32 %i.ii, 0
  %or.cond.i = and i1 %i.mv, %i.mu
  br i1 %or.cond.i, label %.preheader2821.i.preheader, label %._crit_edge2867.split.i

.preheader2821.i.preheader:                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.mw = zext nneg i32 %i.ii to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ii, 4
  %min.iters.check749 = icmp ult i32 %i.ii, 32
  %i.mx = and i64 %i.mw, 28
  %n.vec = and i64 %i.mw, 2147483616              ; 5 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ik, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.my = trunc nuw nsw i64 %n.vec to i32
  %i.mz = mul i32 %i.ik, %i.my
  %i.na = shl <8 x i32> %broadcast.splat, splat (i32 3) ; 5 uses
  %broadcast.splatinsert750 = insertelement <8 x i32> poison, i32 %i.lx, i64 0
  %broadcast.splat751 = shufflevector <8 x i32> %broadcast.splatinsert750, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.nb = mul nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.op = add <8 x i32> %i.na, %i.na      ; 2 uses
  %invariant.op986 = add <8 x i32> %invariant.op, %i.na ; 2 uses
  %invariant.op987 = add <8 x i32> %invariant.op986, %i.na
  %cmp.n = icmp eq i64 %n.vec, %i.mw
  %min.epilog.iters.check = icmp eq i64 %i.mx, 0
  %n.vec755 = and i64 %i.mw, 2147483644           ; 4 uses
  %i.nc = trunc nuw nsw i64 %n.vec755 to i32
  %i.nd = mul i32 %i.ik, %i.nc
  %broadcast.splatinsert756 = insertelement <4 x i32> poison, i32 %i.lx, i64 0
  %broadcast.splat757 = shufflevector <4 x i32> %broadcast.splatinsert756, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert760 = insertelement <4 x i32> poison, i32 %i.ik, i64 0
  %broadcast.splat761 = shufflevector <4 x i32> %broadcast.splatinsert760, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ne = mul nsw <4 x i32> %broadcast.splat761, <i32 0, i32 1, i32 2, i32 3>
  %i.nf = shl nsw i32 %i.ik, 2
  %broadcast.splatinsert763 = insertelement <4 x i32> poison, i32 %i.nf, i64 0
  %broadcast.splat764 = shufflevector <4 x i32> %broadcast.splatinsert763, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n769 = icmp eq i64 %n.vec755, %i.mw
  br label %iter.check

iter.check:                                       ; preds = %.preheader2821.i.preheader, %._crit_edge.i
  %.010792866.i = phi i32 [ %i.nh, %._crit_edge.i ], [ 0, %.preheader2821.i.preheader ] ; 2 uses
  %.010812865.i = phi i32 [ %i.oi, %._crit_edge.i ], [ 0, %.preheader2821.i.preheader ] ; 5 uses
  %.010852864.i = phi i32 [ %i.oj, %._crit_edge.i ], [ 0, %.preheader2821.i.preheader ]
  %i.ng = sext i32 %.010792866.i to i64           ; 5 uses
  %i.nh = add i32 %.010792866.i, %i.ii            ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check749, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ni = add nsw i64 %n.vec, %i.ng
  %i.nj = add i32 %.010812865.i, %i.mz            ; 3 uses
  %broadcast.splatinsert752 = insertelement <8 x i32> poison, i32 %.010812865.i, i64 0
  %broadcast.splat753 = shufflevector <8 x i32> %broadcast.splatinsert752, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat753, %i.nb
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.02736.0.i, i64 %i.ng
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <8 x i32> %vec.ind, %i.na
  %step.add.2.reass = add <8 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <8 x i32> %vec.ind, %invariant.op986
  %i.nk = mul nsw <8 x i32> %vec.ind, %broadcast.splat751
  %i.nl = mul nsw <8 x i32> %step.add, %broadcast.splat751
  %i.nm = mul nsw <8 x i32> %step.add.2.reass, %broadcast.splat751
  %i.nn = mul nsw <8 x i32> %step.add.3.reass, %broadcast.splat751
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.np = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.nq = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %i.nk, ptr %gep, align 4, !tbaa !67
  store <8 x i32> %i.nl, ptr %i.no, align 4, !tbaa !67
  store <8 x i32> %i.nm, ptr %i.np, align 4, !tbaa !67
  store <8 x i32> %i.nn, ptr %i.nq, align 4, !tbaa !67
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next.reass = add <8 x i32> %vec.ind, %invariant.op987
  %i.nr = icmp eq i64 %index.next, %n.vec
  br i1 %i.nr, label %middle.block, label %vector.body, !llvm.loop !782

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !298

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val754 = phi i32 [ %i.nj, %vec.epilog.iter.check ], [ %.010812865.i, %vector.main.loop.iter.check ]
  %i.ns = add nsw i64 %n.vec755, %i.ng
  %i.nt = add i32 %.010812865.i, %i.nd            ; 2 uses
  %broadcast.splatinsert758 = insertelement <4 x i32> poison, i32 %bc.resume.val754, i64 0
  %broadcast.splat759 = shufflevector <4 x i32> %broadcast.splatinsert758, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction762 = add nsw <4 x i32> %broadcast.splat759, %i.ne
  %invariant.gep988 = getelementptr [4 x i8], ptr %.sroa.02736.0.i, i64 %i.ng
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index765 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next767, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind766 = phi <4 x i32> [ %induction762, %vec.epilog.ph ], [ %vec.ind.next768, %vec.epilog.vector.body ] ; 2 uses
  %i.nu = mul nsw <4 x i32> %vec.ind766, %broadcast.splat757
  %gep989 = getelementptr [4 x i8], ptr %invariant.gep988, i64 %index765
  store <4 x i32> %i.nu, ptr %gep989, align 4, !tbaa !67
  %index.next767 = add nuw i64 %index765, 4       ; 2 uses
  %vec.ind.next768 = add nsw <4 x i32> %vec.ind766, %broadcast.splat764
  %i.nv = icmp eq i64 %index.next767, %n.vec755
  br i1 %i.nv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !783

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n769, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ng, %iter.check ], [ %i.ni, %vec.epilog.iter.check ], [ %i.ns, %vec.epilog.middle.block ]
  %.110822861.i.ph = phi i32 [ %.010812865.i, %iter.check ], [ %i.nj, %vec.epilog.iter.check ], [ %i.nt, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge2867.split.i:                          ; preds = %._crit_edge.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  store i32 0, ptr %i.i, align 4, !tbaa !67
  %i.nw = sdiv i32 %i.mh, 4
  store i32 %i.nw, ptr %i.h, align 4, !tbaa !67
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !44
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.ih, i32 %i.ny)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %9, ptr nonnull align 8 dereferenceable(72) %8, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %i.lt, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g)
  %i.nz = load i32, ptr %i.h, align 4, !tbaa !67
  %i.oa = shl nsw i32 %i.nz, 2
  %i.ob = load i32, ptr %i.i, align 4, !tbaa !67
  %i.oc = add nsw i32 %i.ob, %i.oa                ; 3 uses
  store i32 %i.oc, ptr %i.i, align 4, !tbaa !67
  %i.od = sub nsw i32 %i.mh, %i.oc                ; 2 uses
  %i.oe = sdiv i32 %i.od, 2                       ; 2 uses
  store i32 %i.oe, ptr %i.h, align 4, !tbaa !67
  %i.of = icmp sgt i32 %i.od, 1
  br i1 %i.of, label %_ZN4ncnn3MatD2Ev.exit1399.lr.ph.i, label %._crit_edge3228.i

_ZN4ncnn3MatD2Ev.exit1399.lr.ph.i:                ; preds = %._crit_edge2867.split.i
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  br label %_ZN4ncnn3MatD2Ev.exit1399.i

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa748 = phi i32 [ %i.nt, %vec.epilog.middle.block ], [ %i.nj, %middle.block ], [ %i.om, %vec.epilog.scalar.ph ]
  %i.oi = add nsw i32 %i.mt, %.lcssa748
  %i.oj = add nuw nsw i32 %.010852864.i, 1        ; 2 uses
  %exitcond3675.not.i = icmp eq i32 %i.oj, %i.ij
  br i1 %exitcond3675.not.i, label %._crit_edge2867.split.i, label %iter.check, !llvm.loop !784

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.110822861.i = phi i32 [ %i.om, %vec.epilog.scalar.ph ], [ %.110822861.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ok = mul nsw i32 %.110822861.i, %i.lx
  %i.ol = getelementptr inbounds [4 x i8], ptr %.sroa.02736.0.i, i64 %indvars.iv.i
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !67
end_hunk_0
begin_hunk_1_@_ZNK4ncnn19Convolution_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.clz = load i8, ptr %i.cly, align 1, !tbaa !316
  %i.cma = sext i8 %i.clz to i32
  %i.cmb = getelementptr inbounds nuw i8, ptr %.33480.us.i, i64 3
  %i.cmc = load i8, ptr %i.cmb, align 1, !tbaa !316
  %i.cmd = sext i8 %i.cmc to i32
  %i.cme = mul nsw i32 %i.cmd, %i.cma
  %i.cmf = add nsw i32 %i.clx, %i.cme             ; 3 uses
  %i.cmg = getelementptr inbounds nuw i8, ptr %.33480.us.i, i64 4 ; 2 uses
  %indvars.iv.next3861.i.1 = add nuw nsw i64 %indvars.iv3860.i, 2 ; 2 uses
  %niter888.next.1 = add i64 %niter888, 2         ; 2 uses
  %niter888.ncmp.1 = icmp eq i64 %niter888.next.1, %unroll_iter887
  br i1 %niter888.ncmp.1, label %._crit_edge3483.us.i.unr-lcssa, label %.noexc1256.us.i.new, !llvm.loop !899

._crit_edge3483.us.i.unr-lcssa:                   ; preds = %.noexc1256.us.i.new
  br i1 %lcmp.mod884.not, label %._crit_edge3483.us.i, label %.epil.preheader882

.epil.preheader882:                               ; preds = %._crit_edge3483.us.i.unr-lcssa, %.noexc1256.us.i
  %indvars.iv3860.i.epil.init = phi i64 [ 0, %.noexc1256.us.i ], [ %indvars.iv.next3861.i.1, %._crit_edge3483.us.i.unr-lcssa ]
  %.33480.us.i.epil.init = phi ptr [ %.29903487.us.i, %.noexc1256.us.i ], [ %i.cmg, %._crit_edge3483.us.i.unr-lcssa ] ; 2 uses
  %.19923479.us.i.epil.init = phi i32 [ %.09913486.us.i, %.noexc1256.us.i ], [ %i.cmf, %._crit_edge3483.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod886)
  %i.cmh = getelementptr inbounds nuw [4 x i8], ptr %i.cki, i64 %indvars.iv3860.i.epil.init
  %i.cmi = load i32, ptr %i.cmh, align 4, !tbaa !67
  %i.cmj = sext i32 %i.cmi to i64
  %i.cmk = getelementptr inbounds i8, ptr %gep3496.us.i, i64 %i.cmj ; 2 uses
  %i.cml = load i8, ptr %i.cmk, align 1, !tbaa !316
  %i.cmm = sext i8 %i.cml to i32
  %i.cmn = load i8, ptr %.33480.us.i.epil.init, align 1, !tbaa !316
  %i.cmo = sext i8 %i.cmn to i32
  %i.cmp = mul nsw i32 %i.cmo, %i.cmm
  %i.cmq = add nsw i32 %i.cmp, %.19923479.us.i.epil.init
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmk, i64 %i.mc
  %i.cms = load i8, ptr %i.cmr, align 1, !tbaa !316
  %i.cmt = sext i8 %i.cms to i32
  %i.cmu = getelementptr inbounds nuw i8, ptr %.33480.us.i.epil.init, i64 1
  %i.cmv = load i8, ptr %i.cmu, align 1, !tbaa !316
  %i.cmw = sext i8 %i.cmv to i32
  %i.cmx = mul nsw i32 %i.cmw, %i.cmt
  %i.cmy = add nsw i32 %i.cmq, %i.cmx
  br label %._crit_edge3483.us.i

._crit_edge3483.us.i:                             ; preds = %._crit_edge3483.us.i.unr-lcssa, %.epil.preheader882
  %.lcssa798 = phi i32 [ %i.cmf, %._crit_edge3483.us.i.unr-lcssa ], [ %i.cmy, %.epil.preheader882 ] ; 2 uses
  %scevgep3862.i = getelementptr i8, ptr %.29903487.us.i, i64 2
  %scevgep3863.i = getelementptr i8, ptr %scevgep3862.i, i64 %i.ckr ; 2 uses
  %indvars.iv.next3868.i = add nuw nsw i64 %indvars.iv3867.i, 2 ; 2 uses
  %i.cmz = trunc i64 %indvars.iv.next3868.i to i32 ; 2 uses
  %i.cna = or i32 %i.cmz, 1
  %i.cnb = icmp slt i32 %i.cna, %i.cft
  br i1 %i.cnb, label %.noexc1256.us.i, label %.preheader.i, !llvm.loop !900

.preheader.i:                                     ; preds = %._crit_edge3483.us.i, %.noexc1256.preheader.i, %._crit_edge3457.i
  %.0991.lcssa.i = phi i32 [ %i.cjt, %._crit_edge3457.i ], [ %i.cjt, %.noexc1256.preheader.i ], [ %.lcssa798, %._crit_edge3483.us.i ] ; 3 uses
  %.2990.lcssa.i = phi ptr [ %.0988.lcssa.i, %._crit_edge3457.i ], [ %.0988.lcssa.i, %.noexc1256.preheader.i ], [ %scevgep3863.i, %._crit_edge3483.us.i ]
  %.1.lcssa.i = phi i32 [ %.0987.lcssa.i, %._crit_edge3457.i ], [ %i.cko, %.noexc1256.preheader.i ], [ %i.cmz, %._crit_edge3483.us.i ] ; 2 uses
  %i.cnc = icmp slt i32 %.1.lcssa.i, %i.cft
  br i1 %i.cnc, label %.noexc.lr.ph.i, label %._crit_edge3510.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.cnd = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !901
  %i.cne = sext i32 %i.cnd to i64
  %i.cnf = load i32, ptr %i.b, align 4, !tbaa !67
  %i.cng = mul nsw i32 %i.cnf, %i.cfr
  %i.cnh = sext i32 %i.cng to i64
  %i.cni = mul i64 %i.bua, %i.cne
  %i.cnj = mul i64 %i.cni, %i.cnh
  %invariant.gep3514.i = getelementptr i8, ptr %i.bty, i64 %i.cnj
  %i.cnk = load i32, ptr %i.a, align 4, !tbaa !67
  %i.cnl = mul nsw i32 %i.cnk, %i.cfs
  %i.cnm = sext i32 %i.cnl to i64
  %invariant.gep3515.i = getelementptr i8, ptr %invariant.gep3514.i, i64 %i.cnm
  %i.cnn = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.cno = icmp sgt i32 %i.cnn, 0
  %i.cnp = load ptr, ptr %i.g, align 8            ; 5 uses
  br i1 %i.cno, label %.noexc.us.preheader.i, label %._crit_edge3510.i

.noexc.us.preheader.i:                            ; preds = %.noexc.lr.ph.i
  %i.cnq = zext i32 %.1.lcssa.i to i64
  %i.cnr = zext nneg i32 %i.cnn to i64            ; 3 uses
  %xtraiter890 = and i64 %i.cnr, 3                ; 3 uses
  %i.cns = icmp ult i32 %i.cnn, 4
  %unroll_iter894 = and i64 %i.cnr, 2147483644
  %lcmp.mod891.not = icmp eq i64 %xtraiter890, 0
  %lcmp.mod893 = icmp ne i64 %xtraiter890, 0
  br label %.noexc.us.i

.noexc.us.i:                                      ; preds = %._crit_edge3504.us.i, %.noexc.us.preheader.i
  %indvars.iv3877.i = phi i64 [ %i.cnq, %.noexc.us.preheader.i ], [ %indvars.iv.next3878.i, %._crit_edge3504.us.i ] ; 2 uses
  %.43508.us.i = phi ptr [ %.2990.lcssa.i, %.noexc.us.preheader.i ], [ %i.cpz, %._crit_edge3504.us.i ] ; 3 uses
  %.29933507.us.i = phi i32 [ %.0991.lcssa.i, %.noexc.us.preheader.i ], [ %.lcssa800, %._crit_edge3504.us.i ] ; 2 uses
  %.reass3513.us.i = mul i64 %factor.op.mul3461.i, %indvars.iv3877.i
  %gep3516.us.i = getelementptr i8, ptr %invariant.gep3515.i, i64 %.reass3513.us.i ; 5 uses
  br i1 %i.cns, label %.epil.preheader889, label %.noexc.us.i.new

.noexc.us.i.new:                                  ; preds = %.noexc.us.i, %.noexc.us.i.new
  %indvars.iv3870.i = phi i64 [ %indvars.iv.next3871.i.3, %.noexc.us.i.new ], [ 0, %.noexc.us.i ] ; 5 uses
  %.53501.us.i = phi ptr [ %i.cpn, %.noexc.us.i.new ], [ %.43508.us.i, %.noexc.us.i ] ; 5 uses
  %.39943500.us.i = phi i32 [ %i.cpm, %.noexc.us.i.new ], [ %.29933507.us.i, %.noexc.us.i ]
  %niter895 = phi i64 [ %niter895.next.3, %.noexc.us.i.new ], [ 0, %.noexc.us.i ]
  %i.cnt = getelementptr inbounds nuw [4 x i8], ptr %i.cnp, i64 %indvars.iv3870.i
  %i.cnu = load i32, ptr %i.cnt, align 4, !tbaa !67
  %i.cnv = sext i32 %i.cnu to i64
  %i.cnw = getelementptr inbounds i8, ptr %gep3516.us.i, i64 %i.cnv
  %i.cnx = load i8, ptr %i.cnw, align 1, !tbaa !316
  %i.cny = sext i8 %i.cnx to i32
  %i.cnz = load i8, ptr %.53501.us.i, align 1, !tbaa !316
  %i.coa = sext i8 %i.cnz to i32
  %i.cob = mul nsw i32 %i.coa, %i.cny
  %i.coc = add nsw i32 %i.cob, %.39943500.us.i
  %i.cod = getelementptr inbounds nuw i8, ptr %.53501.us.i, i64 1
  %i.coe = getelementptr inbounds nuw [4 x i8], ptr %i.cnp, i64 %indvars.iv3870.i
  %i.cof = getelementptr inbounds nuw i8, ptr %i.coe, i64 4
  %i.cog = load i32, ptr %i.cof, align 4, !tbaa !67
  %i.coh = sext i32 %i.cog to i64
  %i.coi = getelementptr inbounds i8, ptr %gep3516.us.i, i64 %i.coh
  %i.coj = load i8, ptr %i.coi, align 1, !tbaa !316
  %i.cok = sext i8 %i.coj to i32
  %i.col = load i8, ptr %i.cod, align 1, !tbaa !316
  %i.com = sext i8 %i.col to i32
  %i.con = mul nsw i32 %i.com, %i.cok
  %i.coo = add nsw i32 %i.con, %i.coc
  %i.cop = getelementptr inbounds nuw i8, ptr %.53501.us.i, i64 2
  %i.coq = getelementptr inbounds nuw [4 x i8], ptr %i.cnp, i64 %indvars.iv3870.i
  %i.cor = getelementptr inbounds nuw i8, ptr %i.coq, i64 8
  %i.cos = load i32, ptr %i.cor, align 4, !tbaa !67
  %i.cot = sext i32 %i.cos to i64
  %i.cou = getelementptr inbounds i8, ptr %gep3516.us.i, i64 %i.cot
  %i.cov = load i8, ptr %i.cou, align 1, !tbaa !316
  %i.cow = sext i8 %i.cov to i32
  %i.cox = load i8, ptr %i.cop, align 1, !tbaa !316
  %i.coy = sext i8 %i.cox to i32
  %i.coz = mul nsw i32 %i.coy, %i.cow
  %i.cpa = add nsw i32 %i.coz, %i.coo
  %i.cpb = getelementptr inbounds nuw i8, ptr %.53501.us.i, i64 3
  %i.cpc = getelementptr inbounds nuw [4 x i8], ptr %i.cnp, i64 %indvars.iv3870.i
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cpc, i64 12
  %i.cpe = load i32, ptr %i.cpd, align 4, !tbaa !67
  %i.cpf = sext i32 %i.cpe to i64
  %i.cpg = getelementptr inbounds i8, ptr %gep3516.us.i, i64 %i.cpf
  %i.cph = load i8, ptr %i.cpg, align 1, !tbaa !316
  %i.cpi = sext i8 %i.cph to i32
  %i.cpj = load i8, ptr %i.cpb, align 1, !tbaa !316
  %i.cpk = sext i8 %i.cpj to i32
  %i.cpl = mul nsw i32 %i.cpk, %i.cpi
  %i.cpm = add nsw i32 %i.cpl, %i.cpa             ; 3 uses
  %i.cpn = getelementptr inbounds nuw i8, ptr %.53501.us.i, i64 4 ; 2 uses
  %indvars.iv.next3871.i.3 = add nuw nsw i64 %indvars.iv3870.i, 4 ; 2 uses
  %niter895.next.3 = add i64 %niter895, 4         ; 2 uses
  %niter895.ncmp.3 = icmp eq i64 %niter895.next.3, %unroll_iter894
  br i1 %niter895.ncmp.3, label %._crit_edge3504.us.i.unr-lcssa, label %.noexc.us.i.new, !llvm.loop !904

._crit_edge3504.us.i.unr-lcssa:                   ; preds = %.noexc.us.i.new
  br i1 %lcmp.mod891.not, label %._crit_edge3504.us.i, label %.epil.preheader889

.epil.preheader889:                               ; preds = %._crit_edge3504.us.i.unr-lcssa, %.noexc.us.i
  %indvars.iv3870.i.epil.init = phi i64 [ 0, %.noexc.us.i ], [ %indvars.iv.next3871.i.3, %._crit_edge3504.us.i.unr-lcssa ]
  %.53501.us.i.epil.init = phi ptr [ %.43508.us.i, %.noexc.us.i ], [ %i.cpn, %._crit_edge3504.us.i.unr-lcssa ]
  %.39943500.us.i.epil.init = phi i32 [ %.29933507.us.i, %.noexc.us.i ], [ %i.cpm, %._crit_edge3504.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod893)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.epil.preheader889
  %indvars.iv3870.i.epil = phi i64 [ %indvars.iv3870.i.epil.init, %.epil.preheader889 ], [ %indvars.iv.next3871.i.epil, %bb.cl ] ; 2 uses
  %.53501.us.i.epil = phi ptr [ %.53501.us.i.epil.init, %.epil.preheader889 ], [ %i.cpy, %bb.cl ] ; 2 uses
  %.39943500.us.i.epil = phi i32 [ %.39943500.us.i.epil.init, %.epil.preheader889 ], [ %i.cpx, %bb.cl ]
  %epil.iter = phi i64 [ 0, %.epil.preheader889 ], [ %epil.iter.next, %bb.cl ]
  %i.cpo = getelementptr inbounds nuw [4 x i8], ptr %i.cnp, i64 %indvars.iv3870.i.epil
  %i.cpp = load i32, ptr %i.cpo, align 4, !tbaa !67
  %i.cpq = sext i32 %i.cpp to i64
  %i.cpr = getelementptr inbounds i8, ptr %gep3516.us.i, i64 %i.cpq
  %i.cps = load i8, ptr %i.cpr, align 1, !tbaa !316
  %i.cpt = sext i8 %i.cps to i32
  %i.cpu = load i8, ptr %.53501.us.i.epil, align 1, !tbaa !316
  %i.cpv = sext i8 %i.cpu to i32
  %i.cpw = mul nsw i32 %i.cpv, %i.cpt
  %i.cpx = add nsw i32 %i.cpw, %.39943500.us.i.epil ; 2 uses
  %i.cpy = getelementptr inbounds nuw i8, ptr %.53501.us.i.epil, i64 1
  %indvars.iv.next3871.i.epil = add nuw nsw i64 %indvars.iv3870.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter890
  br i1 %epil.iter.cmp.not, label %._crit_edge3504.us.i, label %bb.cl, !llvm.loop !905

._crit_edge3504.us.i:                             ; preds = %bb.cl, %._crit_edge3504.us.i.unr-lcssa
  %.lcssa800 = phi i32 [ %i.cpm, %._crit_edge3504.us.i.unr-lcssa ], [ %i.cpx, %bb.cl ] ; 2 uses
  %i.cpz = getelementptr i8, ptr %.43508.us.i, i64 %i.cnr
  %indvars.iv.next3878.i = add nuw nsw i64 %indvars.iv3877.i, 1 ; 2 uses
  %i.cqa = trunc nuw i64 %indvars.iv.next3878.i to i32
  %i.cqb = icmp sgt i32 %i.cft, %i.cqa
  br i1 %i.cqb, label %.noexc.us.i, label %._crit_edge3510.i, !llvm.loop !906

._crit_edge3510.i:                                ; preds = %._crit_edge3504.us.i, %.noexc.lr.ph.i, %.preheader.i
  %.2993.lcssa.i = phi i32 [ %.0991.lcssa.i, %.preheader.i ], [ %.0991.lcssa.i, %.noexc.lr.ph.i ], [ %.lcssa800, %._crit_edge3504.us.i ]
  store i32 %.2993.lcssa.i, ptr %.211013518.i, align 4, !tbaa !67
  %i.cqc = getelementptr inbounds nuw i8, ptr %.211013518.i, i64 4
  %i.cqd = add nuw nsw i32 %.210983519.i, 1       ; 2 uses
  %exitcond3880.not.i = icmp eq i32 %i.cqd, %i.or
  br i1 %exitcond3880.not.i, label %._crit_edge3520.i, label %.noexc1260.i, !llvm.loop !907

._crit_edge3520.i:                                ; preds = %._crit_edge3510.i, %.preheader2814.i
  %indvars.iv.next3882.i = add nsw i64 %indvars.iv3881.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next3882.i, %i.pe
  br i1 %exitcond.not, label %._crit_edge3522.i, label %_ZN4ncnn3MatD2Ev.exit1373.i, !llvm.loop !908

.thread218:                                       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.bv, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.cn

bb.cm:                                            ; preds = %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit203.thread, %bb.av
  %.0 = phi i32 [ %i.ia, %bb.av ], [ %.122.i, %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit ], [ %i.id, %_ZNK4ncnn3Mat5emptyEv.exit203.thread ] ; 2 uses
  %.not100 = icmp eq i32 %.0, 0
  br i1 %.not100, label %bb.cn, label %_ZNK4ncnn3Mat5emptyEv.exit204.thread

bb.cn:                                            ; preds = %.thread218, %bb.cm
  %i.cqe = load i8, ptr %i.cz, align 1, !tbaa !56, !range !48, !noundef !49
  %i.cqf = trunc nuw i8 %i.cqe to i1
  br i1 %i.cqf, label %bb.co, label %bb.fl

bb.co:                                            ; preds = %bb.cn
  %i.cqg = load i32, ptr %i.fv, align 8, !tbaa !66
  %i.cqh = icmp eq i32 %i.cqg, 4                  ; 2 uses
  br i1 %i.cy, label %bb.cp, label %bb.em

bb.cp:                                            ; preds = %bb.co
  br i1 %i.cqh, label %bb.cq, label %.thread221

bb.cq:                                            ; preds = %bb.cp
  %i.cqi = load i32, ptr %i.ga, align 8, !tbaa !68
  %i.cqj = and i32 %i.cqi, -2147483647
  %i.cqk = icmp eq i32 %i.cqj, 1
  br i1 %i.cqk, label %bb.cr, label %.thread577

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.cql = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.cqm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cqn = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cqo = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cqq = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cqr = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  store i64 0, ptr %i.cqr, align 16, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cqo, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.cs unwind label %bb.dh

bb.cs:                                            ; preds = %bb.cr
  %i.cqs = load ptr, ptr %i.cql, align 8, !tbaa !11 ; 2 uses
  %.not.i194 = icmp eq ptr %i.cqs, null
  br i1 %.not.i194, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.cqt = atomicrmw add ptr %i.cqs, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.cqu = load ptr, ptr %i.ft, align 8, !tbaa !11 ; 2 uses
  %.not.i.i195 = icmp eq ptr %i.cqu, null
  br i1 %.not.i.i195, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.cqv = atomicrmw add ptr %i.cqu, i32 -1 acq_rel, align 4
  %i.cqw = icmp eq i32 %i.cqv, 1
  br i1 %i.cqw, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.cqx = load ptr, ptr %i.fw, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i196 = icmp eq ptr %i.cqx, null
  %i.cqy = load ptr, ptr %9, align 16, !tbaa !18  ; 3 uses
  br i1 %.not3.i.i196, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.cqz = load ptr, ptr %i.cqx, align 8, !tbaa !9
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqz, i64 24
  %i.crb = load ptr, ptr %i.cra, align 8
  invoke void %i.crb(ptr noundef nonnull align 8 dereferenceable(8) %i.cqx, ptr noundef %i.cqy)
          to label %bb.da unwind label %bb.dh, !inline_history !63

bb.cy:                                            ; preds = %bb.cw
  %.not.i18.i197 = icmp eq ptr %i.cqy, null
  br i1 %.not.i18.i197, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef nonnull %i.cqy) #12
  br label %bb.da

bb.da:                                            ; preds = %bb.cv, %bb.cu, %bb.cx, %bb.cz, %bb.cy
  %i.crc = load ptr, ptr %i.cql, align 8, !tbaa !11 ; 2 uses
  %i.crd = load <2 x ptr>, ptr %10, align 16, !tbaa !64
  store <2 x ptr> %i.crd, ptr %9, align 16, !tbaa !64
  %i.cre = load i64, ptr %i.cqm, align 16, !tbaa !65
  store i64 %i.cre, ptr %i.fu, align 16, !tbaa !65
  %i.crf = load i32, ptr %i.cqn, align 8, !tbaa !66
  store i32 %i.crf, ptr %i.fv, align 8, !tbaa !66
  %i.crg = load ptr, ptr %i.cqo, align 16, !tbaa !17
  store ptr %i.crg, ptr %i.fw, align 16, !tbaa !17
  %i.crh = load <4 x i32>, ptr %i.cqp, align 8, !tbaa !67
  store <4 x i32> %i.crh, ptr %i.fx, align 8, !tbaa !67
  %i.cri = load i32, ptr %i.cqq, align 8, !tbaa !68
  store i32 %i.cri, ptr %i.ga, align 8, !tbaa !68
  %i.crj = load i64, ptr %i.cqr, align 16, !tbaa !20
  store i64 %i.crj, ptr %i.gb, align 16, !tbaa !20
  %.not.i = icmp eq ptr %i.crc, null
  br i1 %.not.i, label %bb.do, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.crk = atomicrmw add ptr %i.crc, i32 -1 acq_rel, align 4
  %i.crl = icmp eq i32 %i.crk, 1
  br i1 %i.crl, label %bb.dc, label %bb.do

bb.dc:                                            ; preds = %bb.db
  %i.crm = load ptr, ptr %i.cqo, align 16, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.crm, null
  %i.crn = load ptr, ptr %10, align 16, !tbaa !18 ; 3 uses
  br i1 %.not3.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.cro = load ptr, ptr %i.crm, align 8, !tbaa !9
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cro, i64 24
  %i.crq = load ptr, ptr %i.crp, align 8
  invoke void %i.crq(ptr noundef nonnull align 8 dereferenceable(8) %i.crm, ptr noundef %i.crn)
          to label %bb.do unwind label %bb.dg, !inline_history !19

bb.de:                                            ; preds = %bb.dc
  %.not.i183 = icmp eq ptr %i.crn, null
  br i1 %.not.i183, label %bb.do, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @free(ptr noundef nonnull %i.crn) #12
  br label %bb.do

bb.dg:                                            ; preds = %bb.dd
  %i.crr = landingpad { ptr, i32 }
          catch ptr null
  %i.crs = extractvalue { ptr, i32 } %i.crr, 0
  call void @__clang_call_terminate(ptr %i.crs) #32
  unreachable

bb.dh:                                            ; preds = %bb.cx, %bb.cr
  %i.crt = landingpad { ptr, i32 }
          cleanup
  %i.cru = load ptr, ptr %i.cql, align 8, !tbaa !11 ; 2 uses
  %.not.i118 = icmp eq ptr %i.cru, null
  br i1 %.not.i118, label %_ZN4ncnn3MatD2Ev.exit116, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.crv = atomicrmw add ptr %i.cru, i32 -1 acq_rel, align 4
  %i.crw = icmp eq i32 %i.crv, 1
  br i1 %i.crw, label %bb.dj, label %_ZN4ncnn3MatD2Ev.exit116

bb.dj:                                            ; preds = %bb.di
  %i.crx = load ptr, ptr %i.cqo, align 16, !tbaa !17 ; 3 uses
  %.not3.i119 = icmp eq ptr %i.crx, null
  %i.cry = load ptr, ptr %10, align 16, !tbaa !18 ; 3 uses
  br i1 %.not3.i119, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.crz = load ptr, ptr %i.crx, align 8, !tbaa !9
  %i.csa = getelementptr inbounds nuw i8, ptr %i.crz, i64 24
  %i.csb = load ptr, ptr %i.csa, align 8
  invoke void %i.csb(ptr noundef nonnull align 8 dereferenceable(8) %i.crx, ptr noundef %i.cry)
          to label %_ZN4ncnn3MatD2Ev.exit116 unwind label %bb.dn, !inline_history !19

bb.dl:                                            ; preds = %bb.dj
  %.not.i181 = icmp eq ptr %i.cry, null
  br i1 %.not.i181, label %_ZN4ncnn3MatD2Ev.exit116, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @free(ptr noundef nonnull %i.cry) #12
  br label %_ZN4ncnn3MatD2Ev.exit116

bb.dn:                                            ; preds = %bb.dk
  %i.csc = landingpad { ptr, i32 }
          catch ptr null
  %i.csd = extractvalue { ptr, i32 } %i.csc, 0
  call void @__clang_call_terminate(ptr %i.csd) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit116:                         ; preds = %bb.di, %bb.dh, %bb.dk, %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %.body

bb.do:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %.pr.pre = load i32, ptr %i.fv, align 8, !tbaa !66
  %i.cse = icmp eq i32 %.pr.pre, 4
  br i1 %i.cse, label %.thread577, label %.thread221

.thread577:                                       ; preds = %bb.cq, %bb.do
  %i.csf = load i32, ptr %i.ga, align 8, !tbaa !68
  %i.csg = and i32 %i.csf, 1
  %i.csh = icmp eq i32 %i.csg, 0
  br i1 %i.csh, label %bb.dp, label %.thread221

bb.dp:                                            ; preds = %.thread577
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.csi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.csj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.csk = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.csl = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.csm = getelementptr inbounds nuw i8, ptr %11, i64 40
end_hunk_1
