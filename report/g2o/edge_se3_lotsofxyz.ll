Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_lotsofxyz?download=true
inline.NumInlined: 6649
inline.NumDeleted: 3241
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  %i.bf = getelementptr [8 x i8], ptr %5, i64 %.077182.us.us.us.us
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bg, %bb.o ] ; 4 uses
  %i.bg = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bg)
  %i.bh = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.bi = mul nsw i64 %.0178.us.us.us.us.us, %6
  %i.bj = getelementptr [8 x i8], ptr %i.bf, i64 %i.bi
  store ptr %i.bj, ptr %17, align 8
  store i64 %6, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.be, i64 noundef %i.bh, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split.us.split.us.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.bk = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.bl = getelementptr [8 x i8], ptr %i.au, i64 %i.bk
  store ptr %i.bl, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.be, i64 noundef %i.bh, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.bm = icmp slt i64 %i.bg, %1
  br i1 %i.bm, label %bb.m, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !502

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.o
  %i.bn = icmp slt i64 %i.bd, %2
  br i1 %i.bn, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !503

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us187.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bo = icmp slt i64 %i.aq, %0
  br i1 %i.bo, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !504

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.t

.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.t

.lr.ph183.us:                                     ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us200
  %.078195.us = phi i64 [ %i.bq, %..loopexit177_crit_edge.split.us200 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bq = add nsw i64 %.078195.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bq)
  %i.br = sub nsw i64 %.sroa.speculated128.us, %.078195.us
  %i.bs = mul nsw i64 %.078195.us, %4
  %invariant.gep.us = getelementptr [8 x i8], ptr %3, i64 %i.bs
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.us, %.lr.ph183.us
  %.077182.us197 = phi i64 [ 0, %.lr.ph183.us ], [ %i.bt, %.loopexit.us ] ; 3 uses
  %i.bt = add nsw i64 %.077182.us197, %i.b        ; 3 uses
  %.sroa.speculated124.us198 = call i64 @llvm.smin.i64(i64 %2, i64 %i.bt)
  %i.bu = sub nsw i64 %.sroa.speculated124.us198, %.077182.us197
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %gep.us199 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %.077182.us197
  store ptr %gep.us199, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bu, i64 noundef %i.br, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.bv = icmp slt i64 %i.bt, %2
  br i1 %i.bv, label %bb.p, label %..loopexit177_crit_edge.split.us200, !llvm.loop !503

..loopexit177_crit_edge.split.us200:              ; preds = %.loopexit.us
  %i.bw = icmp slt i64 %i.bq, %0
  br i1 %i.bw, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !504

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us201.us, %bb.p
  %lpad.loopexit.split-lp256 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us200, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  ret void

bb.s:                                             ; preds = %.invoke
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp256, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bp, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !520
  %i.b = sdiv i64 %3, 2
  %i.c = shl nsw i64 %i.b, 1                      ; 2 uses
  %i.d = icmp sgt i64 %3, 1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep251 = getelementptr i8, ptr %1, i64 16
  %scevgep253 = getelementptr i8, ptr %1, i64 24
  %i.f = shl i64 %3, 3                            ; 4 uses
  %i.g = shl i64 %3, 5
  %scevgep283 = getelementptr i8, ptr %1, i64 %i.g
  br label %bb.b

.preheader137:                                    ; preds = %._crit_edge
  %i.h = icmp slt i64 %.1133.lcssa, %4
  %i.i = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge186.split

.preheader.lr.ph.split:                           ; preds = %.preheader137
  %i.j = load ptr, ptr %2, align 8, !tbaa !136    ; 2 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = load i64, ptr %i.e, align 8, !tbaa !137  ; 3 uses
  %i.m = mul i64 %i.l, -8
  %i.n = shl i64 %i.l, 3
  %i.o = mul i64 %i.n, %.1133.lcssa
  %i.p = add i64 %i.o, %i.k
  %i.q = sub i64 %i.a, %i.p
  %min.iters.check311 = icmp ult i64 %3, 4
  %n.vec314 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n321 = icmp eq i64 %3, %n.vec314
  %xtraiter334 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br label %.preheader

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvar281 = phi i64 [ 0, %bb.a ], [ %indvar.next282, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 11 uses
  %.0122178 = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.0132175 = phi i64 [ 0, %bb.a ], [ %.1133.lcssa, %._crit_edge ] ; 6 uses
  %i.r = shl i64 %indvar281, 4
  %i.s = sub i64 32, %i.r
  %i.t = sub i64 %4, %.0132175
  %i.u = srem i64 %i.t, %indvars.iv
  %i.v = sub i64 %4, %i.u                         ; 3 uses
  %i.w = icmp slt i64 %.0132175, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.x = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.y = icmp samesign ugt i64 %indvars.iv, 3
  %i.z = and i64 %indvars.iv, 2
  %.not.not = icmp eq i64 %i.z, 0
  br i1 %i.y, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %exitcond.not.1 = icmp eq i64 %indvars.iv, 2
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.aa = shl i64 %.0132175, 3                    ; 4 uses
  %i.ab = add i64 %i.aa, 8
  %i.ac = add i64 %i.aa, 16
  %i.ad = add i64 %i.aa, 24
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge159.split.us.us
  %indvar = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvar.next, %._crit_edge159.split.us.us ] ; 2 uses
  %.1170.us = phi i64 [ %.0122178, %.lr.ph.split.us.preheader ], [ %.4.lcssa.us, %._crit_edge159.split.us.us ] ; 2 uses
  %.1133167.us = phi i64 [ %.0132175, %.lr.ph.split.us.preheader ], [ %i.fv, %._crit_edge159.split.us.us ] ; 9 uses
  br i1 %i.d, label %.preheader140.us.preheader, label %.preheader141.us

.preheader140.us.preheader:                       ; preds = %.lr.ph.split.us
  %i.ae = add i64 %.1133167.us, 1
  %i.af = add i64 %.1133167.us, 2
  %i.ag = add i64 %.1133167.us, 3
  br label %.preheader140.us

.preheader140.us:                                 ; preds = %.preheader140.us.preheader, %.preheader140.us
  %.2146.us = phi i64 [ %i.bh, %.preheader140.us ], [ %.1170.us, %.preheader140.us.preheader ] ; 2 uses
  %.0128145.us = phi i64 [ %i.bi, %.preheader140.us ], [ 0, %.preheader140.us.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us ; 3 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !136
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !137 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %.0128145.us ; 2 uses
  %i.al = mul nsw i64 %i.aj, %.1133167.us
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !70 ; 2 uses
  %i.ao = mul nsw i64 %i.aj, %i.ae
  %i.ap = getelementptr [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !70 ; 2 uses
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.as = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.as, ptr %i.ah, align 16, !tbaa !70
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  store <2 x double> %i.ar, ptr %i.at, align 16, !tbaa !70
  %i.au = load ptr, ptr %2, align 8, !tbaa !136
  %i.av = load i64, ptr %i.e, align 8, !tbaa !137 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %.0128145.us ; 2 uses
  %i.ax = mul nsw i64 %i.av, %i.af
  %i.ay = getelementptr [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load <2 x double>, ptr %i.ay, align 1, !tbaa !70 ; 2 uses
  %i.ba = mul nsw i64 %i.av, %i.ag
  %i.bb = getelementptr [8 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load <2 x double>, ptr %i.bb, align 1, !tbaa !70 ; 2 uses
  %i.bd = shufflevector <2 x double> %i.az, <2 x double> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.be = shufflevector <2 x double> %i.az, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store <2 x double> %i.be, ptr %i.bf, align 16, !tbaa !70
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  store <2 x double> %i.bd, ptr %i.bg, align 16, !tbaa !70
  %i.bh = add nsw i64 %.2146.us, %i.x             ; 2 uses
  %i.bi = add nuw nsw i64 %.0128145.us, 2         ; 3 uses
  %i.bj = icmp slt i64 %i.bi, %i.c
  br i1 %i.bj, label %.preheader140.us, label %.preheader141.us, !llvm.loop !505

.preheader141.us:                                 ; preds = %.preheader140.us, %.lr.ph.split.us
  %.0128.lcssa.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.bi, %.preheader140.us ] ; 10 uses
  %.2.lcssa.us = phi i64 [ %.1170.us, %.lr.ph.split.us ], [ %i.bh, %.preheader140.us ] ; 8 uses
  %i.bk = icmp slt i64 %.0128.lcssa.us, %3
  br i1 %i.bk, label %.preheader139.lr.ph.us, label %._crit_edge159.split.us.us

.preheader139.lr.ph.us:                           ; preds = %.preheader141.us
  %i.bl = load ptr, ptr %2, align 8, !tbaa !136   ; 12 uses
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !137 ; 8 uses
  %i.bn = mul nsw i64 %i.bm, %.1133167.us         ; 4 uses
  %i.bo = add nsw i64 %.1133167.us, 1
  %i.bp = mul nsw i64 %i.bm, %i.bo                ; 4 uses
  %i.bq = add nsw i64 %.1133167.us, 2
  %i.br = mul nsw i64 %i.bm, %i.bq                ; 4 uses
  %i.bs = add nsw i64 %.1133167.us, 3
  %i.bt = mul nsw i64 %i.bm, %i.bs                ; 4 uses
  %i.bu = sub i64 %3, %.0128.lcssa.us             ; 3 uses
  %min.iters.check = icmp ult i64 %i.bu, 68
  br i1 %min.iters.check, label %.loopexit.us.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader139.lr.ph.us
  %i.bv = xor i64 %.0128.lcssa.us, -1
  %i.bw = add i64 %3, %i.bv                       ; 2 uses
  %i.bx = shl i64 %.2.lcssa.us, 3                 ; 3 uses
  %scevgep250 = getelementptr i8, ptr %scevgep, i64 %i.bx ; 2 uses
  %mul.result = shl i64 %i.bw, 5                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.bw, 576460752303423487
  %i.by = getelementptr i8, ptr %scevgep250, i64 %mul.result
  %i.bz = icmp ult ptr %i.by, %scevgep250
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %i.bx ; 2 uses
  %i.ca = getelementptr i8, ptr %scevgep252, i64 %mul.result
  %i.cb = icmp ult ptr %i.ca, %scevgep252
  %scevgep254 = getelementptr i8, ptr %scevgep253, i64 %i.bx ; 2 uses
  %i.cc = getelementptr i8, ptr %scevgep254, i64 %mul.result
  %i.cd = icmp ult ptr %i.cc, %scevgep254
  %i.ce = or i1 %i.cd, %mul.overflow
  %i.cf = or i1 %i.cb, %i.bz
  %i.cg = or i1 %i.cf, %i.ce
  br i1 %i.cg, label %.loopexit.us.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ch = shl i64 %.2.lcssa.us, 3                 ; 2 uses
  %i.ci = getelementptr i8, ptr %1, i64 %i.ch     ; 4 uses
  %i.cj = shl i64 %.0128.lcssa.us, 5
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = getelementptr i8, ptr %scevgep283, i64 %i.ck ; 4 uses
  %i.cm = mul i64 %indvar, %i.s                   ; 4 uses
  %i.cn = add i64 %i.ad, %i.cm
  %i.co = mul i64 %i.bm, %i.cn                    ; 2 uses
  %i.cp = shl i64 %.0128.lcssa.us, 3              ; 4 uses
  %i.cq = getelementptr i8, ptr %i.bl, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.bl, i64 %i.co
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.f
  %i.cu = add i64 %i.ac, %i.cm
  %i.cv = mul i64 %i.bm, %i.cu                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.bl, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.cp
  %i.cy = getelementptr i8, ptr %i.bl, i64 %i.cv
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.f
  %i.da = add i64 %i.ab, %i.cm
  %i.db = mul i64 %i.bm, %i.da                    ; 2 uses
  %i.dc = getelementptr i8, ptr %i.bl, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.cp
  %i.de = getelementptr i8, ptr %i.bl, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.f
  %i.dg = add i64 %i.aa, %i.cm
  %i.dh = mul i64 %i.bm, %i.dg                    ; 2 uses
  %i.di = getelementptr i8, ptr %i.bl, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.cp
  %i.dk = getelementptr i8, ptr %i.bl, i64 %i.dh
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.f
  %bound0 = icmp ult ptr %i.ci, %i.ct
  %bound1 = icmp ult ptr %i.cr, %i.cl
  %found.conflict = and i1 %bound0, %bound1
  %bound0284 = icmp ult ptr %i.ci, %i.cz
  %bound1285 = icmp ult ptr %i.cx, %i.cl
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx = or i1 %found.conflict, %found.conflict286
  %bound0287 = icmp ult ptr %i.ci, %i.df
  %bound1288 = icmp ult ptr %i.dd, %i.cl
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx290 = or i1 %conflict.rdx, %found.conflict289
  %bound0291 = icmp ult ptr %i.ci, %i.dl
  %bound1292 = icmp ult ptr %i.dj, %i.cl
  %found.conflict293 = and i1 %bound0291, %bound1292
  %conflict.rdx294 = or i1 %conflict.rdx290, %found.conflict293
  br i1 %conflict.rdx294, label %.loopexit.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, -2                      ; 4 uses
  %i.dm = shl i64 %n.vec, 2
  %i.dn = add i64 %.2.lcssa.us, %i.dm             ; 2 uses
  %i.do = add i64 %.0128.lcssa.us, %n.vec
  %i.dp = getelementptr [8 x i8], ptr %i.bl, i64 %.0128.lcssa.us
  %i.dq = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dp, i64 %index ; 4 uses
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %i.bn
  %wide.load = load <2 x double>, ptr %i.ds, align 8, !tbaa !68, !alias.scope !521
  %i.dt = getelementptr [8 x i8], ptr %i.dr, i64 %i.bp
  %wide.load295 = load <2 x double>, ptr %i.dt, align 8, !tbaa !68, !alias.scope !522
  %i.du = getelementptr [8 x i8], ptr %i.dr, i64 %i.br
  %wide.load296 = load <2 x double>, ptr %i.du, align 8, !tbaa !68, !alias.scope !523
  %i.dv = getelementptr [8 x i8], ptr %i.dr, i64 %i.bt
  %wide.load297 = load <2 x double>, ptr %i.dv, align 8, !tbaa !68, !alias.scope !524
  %.idx = shl i64 %index, 5
  %i.dw = getelementptr i8, ptr %i.dq, i64 %.idx
  %i.dx = shufflevector <2 x double> %wide.load, <2 x double> %wide.load295, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dy = shufflevector <2 x double> %wide.load296, <2 x double> %wide.load297, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.dx, <4 x double> %i.dy, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.dw, align 8, !tbaa !68, !alias.scope !525, !noalias !526
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !512

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge159.split.us.us, label %.loopexit.us.us.preheader

.loopexit.us.us.preheader:                        ; preds = %vector.memcheck, %vector.scevcheck, %.preheader139.lr.ph.us, %middle.block
  %.4158.us.us.ph = phi i64 [ %.2.lcssa.us, %vector.memcheck ], [ %.2.lcssa.us, %vector.scevcheck ], [ %.2.lcssa.us, %.preheader139.lr.ph.us ], [ %i.dn, %middle.block ] ; 3 uses
  %.2130156.us.us.ph = phi i64 [ %.0128.lcssa.us, %vector.memcheck ], [ %.0128.lcssa.us, %vector.scevcheck ], [ %.0128.lcssa.us, %.preheader139.lr.ph.us ], [ %i.do, %middle.block ] ; 5 uses
  %i.ea = sub i64 %3, %.2130156.us.us.ph
  %.neg = add i64 %.2130156.us.us.ph, 1
  %xtraiter = and i64 %i.ea, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.us.us.prol.loopexit, label %.loopexit.us.us.prol

.loopexit.us.us.prol:                             ; preds = %.loopexit.us.us.preheader
  %i.eb = getelementptr [8 x i8], ptr %i.bl, i64 %.2130156.us.us.ph ; 4 uses
  %i.ec = add nsw i64 %.4158.us.us.ph, 4          ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.eb, i64 %i.bn
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !68
  %i.ef = getelementptr [8 x i8], ptr %i.eb, i64 %i.bp
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !68
  %i.eh = getelementptr [8 x i8], ptr %i.eb, i64 %i.br
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !68
  %i.ej = getelementptr [8 x i8], ptr %i.eb, i64 %i.bt
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !68
  %i.el = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158.us.us.ph ; 4 uses
  store double %i.ee, ptr %i.el, align 8, !tbaa !68
  %i.em = getelementptr i8, ptr %i.el, i64 8
  store double %i.eg, ptr %i.em, align 8, !tbaa !68
  %i.en = getelementptr i8, ptr %i.el, i64 16
  store double %i.ei, ptr %i.en, align 8, !tbaa !68
  %i.eo = getelementptr i8, ptr %i.el, i64 24
  store double %i.ek, ptr %i.eo, align 8, !tbaa !68
  %i.ep = add nuw nsw i64 %.2130156.us.us.ph, 1
  br label %.loopexit.us.us.prol.loopexit

.loopexit.us.us.prol.loopexit:                    ; preds = %.loopexit.us.us.prol, %.loopexit.us.us.preheader
  %.lcssa332.unr = phi i64 [ poison, %.loopexit.us.us.preheader ], [ %i.ec, %.loopexit.us.us.prol ]
  %.4158.us.us.unr = phi i64 [ %.4158.us.us.ph, %.loopexit.us.us.preheader ], [ %i.ec, %.loopexit.us.us.prol ]
  %.2130156.us.us.unr = phi i64 [ %.2130156.us.us.ph, %.loopexit.us.us.preheader ], [ %i.ep, %.loopexit.us.us.prol ]
  %i.eq = icmp eq i64 %3, %.neg
  br i1 %i.eq, label %._crit_edge159.split.us.us, label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.prol.loopexit, %.loopexit.us.us
  %.4158.us.us = phi i64 [ %i.fg, %.loopexit.us.us ], [ %.4158.us.us.unr, %.loopexit.us.us.prol.loopexit ] ; 3 uses
  %.2130156.us.us = phi i64 [ %i.fu, %.loopexit.us.us ], [ %.2130156.us.us.unr, %.loopexit.us.us.prol.loopexit ] ; 3 uses
  %i.er = getelementptr [8 x i8], ptr %i.bl, i64 %.2130156.us.us ; 4 uses
  %i.es = getelementptr [8 x i8], ptr %i.er, i64 %i.bn
  %i.et = load double, ptr %i.es, align 8, !tbaa !68
  %i.eu = getelementptr [8 x i8], ptr %i.er, i64 %i.bp
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !68
  %i.ew = getelementptr [8 x i8], ptr %i.er, i64 %i.br
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !68
  %i.ey = getelementptr [8 x i8], ptr %i.er, i64 %i.bt
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !68
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158.us.us ; 4 uses
  store double %i.et, ptr %i.fa, align 8, !tbaa !68
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  store double %i.ev, ptr %i.fb, align 8, !tbaa !68
  %i.fc = getelementptr i8, ptr %i.fa, i64 16
  store double %i.ex, ptr %i.fc, align 8, !tbaa !68
  %i.fd = getelementptr i8, ptr %i.fa, i64 24
  store double %i.ez, ptr %i.fd, align 8, !tbaa !68
  %i.fe = getelementptr [8 x i8], ptr %i.bl, i64 %.2130156.us.us
  %i.ff = getelementptr i8, ptr %i.fe, i64 8      ; 4 uses
  %i.fg = add nsw i64 %.4158.us.us, 8             ; 2 uses
  %i.fh = getelementptr [8 x i8], ptr %i.ff, i64 %i.bn
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !68
  %i.fj = getelementptr [8 x i8], ptr %i.ff, i64 %i.bp
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !68
  %i.fl = getelementptr [8 x i8], ptr %i.ff, i64 %i.br
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !68
  %i.fn = getelementptr [8 x i8], ptr %i.ff, i64 %i.bt
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !68
  %i.fp = getelementptr [8 x i8], ptr %1, i64 %.4158.us.us ; 4 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 32
  store double %i.fi, ptr %i.fq, align 8, !tbaa !68
  %i.fr = getelementptr i8, ptr %i.fp, i64 40
  store double %i.fk, ptr %i.fr, align 8, !tbaa !68
  %i.fs = getelementptr i8, ptr %i.fp, i64 48
  store double %i.fm, ptr %i.fs, align 8, !tbaa !68
  %i.ft = getelementptr i8, ptr %i.fp, i64 56
  store double %i.fo, ptr %i.ft, align 8, !tbaa !68
  %i.fu = add nuw nsw i64 %.2130156.us.us, 2      ; 2 uses
  %exitcond208.not.1 = icmp eq i64 %i.fu, %3
  br i1 %exitcond208.not.1, label %._crit_edge159.split.us.us, label %.loopexit.us.us, !llvm.loop !513

._crit_edge159.split.us.us:                       ; preds = %.loopexit.us.us.prol.loopexit, %.loopexit.us.us, %middle.block, %.preheader141.us
  %.4.lcssa.us = phi i64 [ %.2.lcssa.us, %.preheader141.us ], [ %i.dn, %middle.block ], [ %.lcssa332.unr, %.loopexit.us.us.prol.loopexit ], [ %i.fg, %.loopexit.us.us ] ; 2 uses
  %i.fv = add i64 %.1133167.us, %indvars.iv       ; 3 uses
  %i.fw = icmp slt i64 %i.fv, %i.v
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fw, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !514

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge159.split
  %.1170 = phi i64 [ %.4.lcssa, %._crit_edge159.split ], [ %.0122178, %.lr.ph.split.preheader ] ; 2 uses
  %.1133167 = phi i64 [ %i.hq, %._crit_edge159.split ], [ %.0132175, %.lr.ph.split.preheader ] ; 7 uses
  br i1 %i.d, label %.preheader140.preheader, label %.preheader141

.preheader140.preheader:                          ; preds = %.lr.ph.split
  %i.fx = add i64 %.1133167, 1
  br label %.preheader140

.preheader141:                                    ; preds = %.preheader140, %.lr.ph.split
  %.0128.lcssa = phi i64 [ 0, %.lr.ph.split ], [ %i.gw, %.preheader140 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1170, %.lr.ph.split ], [ %i.gv, %.preheader140 ] ; 2 uses
  %i.fy = icmp sge i64 %.0128.lcssa, %3
  %brmerge = or i1 %i.fy, %.not.not
  br i1 %brmerge, label %._crit_edge159.split, label %.preheader139.lr.ph.split.split

.preheader139.lr.ph.split.split:                  ; preds = %.preheader141
  %i.fz = load ptr, ptr %2, align 8, !tbaa !136
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !137 ; 4 uses
  %i.gb = mul nsw i64 %i.ga, %.1133167
  %i.gc = add nsw i64 %.1133167, 1
  %i.gd = mul nsw i64 %i.ga, %i.gc
  %i.ge = add nsw i64 %.1133167, 2
  %i.gf = mul nsw i64 %i.ga, %i.ge
  %i.gg = add nsw i64 %.1133167, 3
  %i.gh = mul nsw i64 %i.ga, %i.gg
  br label %.preheader139

.preheader140:                                    ; preds = %.preheader140.preheader, %.preheader140
  %.2146 = phi i64 [ %i.gv, %.preheader140 ], [ %.1170, %.preheader140.preheader ] ; 2 uses
  %.0128145 = phi i64 [ %i.gw, %.preheader140 ], [ 0, %.preheader140.preheader ] ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146 ; 2 uses
  %i.gj = load ptr, ptr %2, align 8, !tbaa !136
  %i.gk = load i64, ptr %i.e, align 8, !tbaa !137 ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gj, i64 %.0128145 ; 2 uses
  %i.gm = mul nsw i64 %i.gk, %.1133167
  %i.gn = getelementptr [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !70 ; 2 uses
  %i.gp = mul nsw i64 %i.gk, %i.fx
  %i.gq = getelementptr [8 x i8], ptr %i.gl, i64 %i.gp
  %i.gr = load <2 x double>, ptr %i.gq, align 1, !tbaa !70 ; 2 uses
  %i.gs = shufflevector <2 x double> %i.go, <2 x double> %i.gr, <2 x i32> <i32 1, i32 3>
  %i.gt = shufflevector <2 x double> %i.go, <2 x double> %i.gr, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.gt, ptr %i.gi, align 16, !tbaa !70
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv
  store <2 x double> %i.gs, ptr %i.gu, align 16, !tbaa !70
  %i.gv = add nsw i64 %.2146, %i.x                ; 2 uses
  %i.gw = add nuw nsw i64 %.0128145, 2            ; 3 uses
  %i.gx = icmp slt i64 %i.gw, %i.c
  br i1 %i.gx, label %.preheader140, label %.preheader141, !llvm.loop !505

.preheader139:                                    ; preds = %.preheader139.lr.ph.split.split, %..loopexit_crit_edge
  %.4158 = phi i64 [ %.2.lcssa, %.preheader139.lr.ph.split.split ], [ %.lcssa328, %..loopexit_crit_edge ] ; 5 uses
  %.2130156 = phi i64 [ %.0128.lcssa, %.preheader139.lr.ph.split.split ], [ %i.hp, %..loopexit_crit_edge ] ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %i.fz, i64 %.2130156 ; 4 uses
  %i.gz = getelementptr [8 x i8], ptr %i.gy, i64 %i.gb
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !68
  %i.hb = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158
  store double %i.ha, ptr %i.hb, align 8, !tbaa !68
  %i.hc = getelementptr [8 x i8], ptr %i.gy, i64 %i.gd
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !68
  %i.he = add nsw i64 %.4158, 2                   ; 2 uses
  %i.hf = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.hg = getelementptr i8, ptr %i.hf, i64 8
  store double %i.hd, ptr %i.hg, align 8, !tbaa !68
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %bb.c

bb.c:                                             ; preds = %.preheader139
  %i.hh = getelementptr [8 x i8], ptr %i.gy, i64 %i.gf
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !68
  %i.hj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.he
  store double %i.hi, ptr %i.hj, align 8, !tbaa !68
  %i.hk = getelementptr [8 x i8], ptr %i.gy, i64 %i.gh
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !68
  %i.hm = add nsw i64 %.4158, 4
  %i.hn = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.ho = getelementptr i8, ptr %i.hn, i64 24
  store double %i.hl, ptr %i.ho, align 8, !tbaa !68
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.c, %.preheader139
  %.lcssa328 = phi i64 [ %i.hm, %bb.c ], [ %i.he, %.preheader139 ] ; 2 uses
  %i.hp = add nuw nsw i64 %.2130156, 1            ; 2 uses
  %exitcond201.not = icmp eq i64 %i.hp, %3
  br i1 %exitcond201.not, label %._crit_edge159.split, label %.preheader139, !llvm.loop !515

._crit_edge159.split:                             ; preds = %..loopexit_crit_edge, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %.lcssa328, %..loopexit_crit_edge ] ; 2 uses
  %i.hq = add i64 %.1133167, %indvars.iv          ; 3 uses
  %i.hr = icmp slt i64 %i.hq, %i.v
  br i1 %i.hr, label %.lr.ph.split, label %._crit_edge, !llvm.loop !514

._crit_edge:                                      ; preds = %._crit_edge159.split, %._crit_edge159.split.us.us, %bb.b
  %.1133.lcssa = phi i64 [ %.0132175, %bb.b ], [ %i.fv, %._crit_edge159.split.us.us ], [ %i.hq, %._crit_edge159.split ] ; 4 uses
  %.1.lcssa = phi i64 [ %.0122178, %bb.b ], [ %.4.lcssa.us, %._crit_edge159.split.us.us ], [ %.4.lcssa, %._crit_edge159.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 0
  %indvar.next282 = add i64 %indvar281, 1
  br i1 %.not, label %.preheader137, label %bb.b

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge182
  %indvar308 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next309, %._crit_edge182 ] ; 2 uses
  %.8185 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge182 ] ; 5 uses
  %.2134184 = phi i64 [ %.1133.lcssa, %.preheader.lr.ph.split ], [ %i.il, %._crit_edge182 ] ; 2 uses
  %i.hs = mul nsw i64 %i.l, %.2134184
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.hs ; 6 uses
  br i1 %min.iters.check311, label %scalar.ph310.preheader, label %vector.memcheck312

vector.memcheck312:                               ; preds = %.preheader
  %i.ht = mul i64 %indvar308, %i.m
  %i.hu = add i64 %i.q, %i.ht
  %i.hv = shl i64 %.8185, 3
  %i.hw = add i64 %i.hu, %i.hv
  %i.hx = add i64 %i.hw, -1
  %diff.check = icmp ult i64 %i.hx, 31
  br i1 %diff.check, label %scalar.ph310.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck312
  %i.hy = add i64 %.8185, %n.vec314               ; 2 uses
  %i.hz = getelementptr [8 x i8], ptr %1, i64 %.8185
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next319, %vector.body315 ] ; 3 uses
  %i.ia = getelementptr [8 x i8], ptr %invariant.gep, i64 %index316 ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 16
  %wide.load317 = load <2 x double>, ptr %i.ia, align 8, !tbaa !68
  %wide.load318 = load <2 x double>, ptr %i.ib, align 8, !tbaa !68
  %i.ic = getelementptr [8 x i8], ptr %i.hz, i64 %index316 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <2 x double> %wide.load317, ptr %i.ic, align 8, !tbaa !68
  store <2 x double> %wide.load318, ptr %i.id, align 8, !tbaa !68
  %index.next319 = add nuw i64 %index316, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.ie, label %middle.block320, label %vector.body315, !llvm.loop !516

middle.block320:                                  ; preds = %vector.body315
  br i1 %cmp.n321, label %._crit_edge182, label %scalar.ph310.preheader

scalar.ph310.preheader:                           ; preds = %vector.memcheck312, %.preheader, %middle.block320
  %.0180.ph = phi i64 [ 0, %vector.memcheck312 ], [ 0, %.preheader ], [ %n.vec314, %middle.block320 ] ; 3 uses
  %.9179.ph = phi i64 [ %.8185, %vector.memcheck312 ], [ %.8185, %.preheader ], [ %i.hy, %middle.block320 ] ; 2 uses
  br i1 %lcmp.mod335.not, label %scalar.ph310.prol.loopexit, label %scalar.ph310.prol

scalar.ph310.prol:                                ; preds = %scalar.ph310.preheader, %scalar.ph310.prol
  %.0180.prol = phi i64 [ %i.ii, %scalar.ph310.prol ], [ %.0180.ph, %scalar.ph310.preheader ] ; 2 uses
  %.9179.prol = phi i64 [ %i.ig, %scalar.ph310.prol ], [ %.9179.ph, %scalar.ph310.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph310.prol ], [ 0, %scalar.ph310.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180.prol
  %i.if = load double, ptr %gep.prol, align 8, !tbaa !68
  %i.ig = add nsw i64 %.9179.prol, 1              ; 3 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179.prol
  store double %i.if, ptr %i.ih, align 8, !tbaa !68
  %i.ii = add nuw nsw i64 %.0180.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter334
  br i1 %prol.iter.cmp.not, label %scalar.ph310.prol.loopexit, label %scalar.ph310.prol, !llvm.loop !517

scalar.ph310.prol.loopexit:                       ; preds = %scalar.ph310.prol, %scalar.ph310.preheader
  %.lcssa324.unr = phi i64 [ poison, %scalar.ph310.preheader ], [ %i.ig, %scalar.ph310.prol ]
  %.0180.unr = phi i64 [ %.0180.ph, %scalar.ph310.preheader ], [ %i.ii, %scalar.ph310.prol ]
  %.9179.unr = phi i64 [ %.9179.ph, %scalar.ph310.preheader ], [ %i.ig, %scalar.ph310.prol ]
  %i.ij = sub nsw i64 %.0180.ph, %3
  %i.ik = icmp ugt i64 %i.ij, -4
  br i1 %i.ik, label %._crit_edge182, label %scalar.ph310

._crit_edge182:                                   ; preds = %scalar.ph310.prol.loopexit, %scalar.ph310, %middle.block320
  %.lcssa = phi i64 [ %i.hy, %middle.block320 ], [ %.lcssa324.unr, %scalar.ph310.prol.loopexit ], [ %i.iy, %scalar.ph310 ]
  %i.il = add nuw nsw i64 %.2134184, 1            ; 2 uses
  %exitcond211.not = icmp eq i64 %i.il, %4
  %indvar.next309 = add i64 %indvar308, 1
  br i1 %exitcond211.not, label %._crit_edge186.split, label %.preheader, !llvm.loop !518

scalar.ph310:                                     ; preds = %scalar.ph310.prol.loopexit, %scalar.ph310
  %.0180 = phi i64 [ %i.jb, %scalar.ph310 ], [ %.0180.unr, %scalar.ph310.prol.loopexit ] ; 5 uses
  %.9179 = phi i64 [ %i.iy, %scalar.ph310 ], [ %.9179.unr, %scalar.ph310.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %i.im = load double, ptr %gep, align 8, !tbaa !68
  %i.in = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179
  store double %i.im, ptr %i.in, align 8, !tbaa !68
  %i.io = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.1 = getelementptr i8, ptr %i.io, i64 8
  %i.ip = load double, ptr %gep.1, align 8, !tbaa !68
  %i.iq = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  store double %i.ip, ptr %i.ir, align 8, !tbaa !68
  %i.is = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.2 = getelementptr i8, ptr %i.is, i64 16
  %i.it = load double, ptr %gep.2, align 8, !tbaa !68
  %i.iu = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  store double %i.it, ptr %i.iv, align 8, !tbaa !68
  %i.iw = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.3 = getelementptr i8, ptr %i.iw, i64 24
  %i.ix = load double, ptr %gep.3, align 8, !tbaa !68
  %i.iy = add nsw i64 %.9179, 4                   ; 2 uses
  %i.iz = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.ja = getelementptr i8, ptr %i.iz, i64 24
  store double %i.ix, ptr %i.ja, align 8, !tbaa !68
  %i.jb = add nuw nsw i64 %.0180, 4               ; 2 uses
  %exitcond210.not.3 = icmp eq i64 %i.jb, %3
  br i1 %exitcond210.not.3, label %._crit_edge182, label %scalar.ph310, !llvm.loop !519

._crit_edge186.split:                             ; preds = %._crit_edge182, %.preheader137
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !540
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !133    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !134  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.j = add nsw i64 %smax, -4                    ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %7 = mul i64 %i.g, %i.k
  %8 = shl i64 %7, 5
  %i.l = shl i64 %3, 3                            ; 4 uses
  %i.m = getelementptr i8, ptr %i.e, i64 %8
  %scevgep106 = getelementptr i8, ptr %i.m, i64 %i.l
  %9 = shl i64 %i.j, 3                            ; 3 uses
  %i.n = or disjoint i64 %9, 8
  %i.o = mul i64 %i.g, %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.o
  %scevgep107.a = getelementptr i8, ptr %i.p, i64 %i.l
  %i.q = shl i64 %i.g, 3
  %scevgep108 = getelementptr i8, ptr %i.e, i64 %i.q
  %i.r = or disjoint i64 %9, 16
  %i.s = mul i64 %i.g, %i.r
  %i.t = getelementptr i8, ptr %i.e, i64 %i.s
  %scevgep109 = getelementptr i8, ptr %i.t, i64 %i.l
  %i.u = shl i64 %i.g, 4
  %scevgep110 = getelementptr i8, ptr %i.e, i64 %i.u
  %10 = or disjoint i64 %9, 24
  %i.v = mul i64 %i.g, %10
  %11 = getelementptr i8, ptr %i.e, i64 %i.v
  %scevgep111 = getelementptr i8, ptr %11, i64 %i.l
  %12 = mul i64 %i.g, 24
  %scevgep112 = getelementptr i8, ptr %i.e, i64 %12
  %i.w = shl i64 %3, 5
  %scevgep113 = getelementptr i8, ptr %1, i64 %i.w
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.x = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.cy, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.y = mul nsw i64 %i.g, %.04460.us
  %i.z = getelementptr [8 x i8], ptr %i.e, i64 %i.y ; 4 uses
  %i.aa = or disjoint i64 %.04460.us, 1
  %i.ab = mul nsw i64 %i.g, %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.e, i64 %i.ab ; 4 uses
  %i.ad = or disjoint i64 %.04460.us, 2
  %i.ae = mul nsw i64 %i.g, %i.ad
  %i.af = getelementptr [8 x i8], ptr %i.e, i64 %i.ae ; 4 uses
  %i.ag = or disjoint i64 %.04460.us, 3
  %i.ah = mul nsw i64 %i.g, %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.e, i64 %i.ah ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.aj = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.al = icmp ult ptr %i.ak, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.aj ; 2 uses
  %i.am = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.an = icmp ult ptr %i.am, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.aj ; 2 uses
  %i.ao = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.ap = icmp ult ptr %i.ao, %scevgep84
  %i.aq = or i1 %i.ap, %mul.overflow
  %i.ar = or i1 %i.an, %i.al
  %i.as = or i1 %i.ar, %i.aq
  br i1 %i.as, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.at = shl i64 %.04559.us, 3                   ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.at     ; 4 uses
  %i.av = getelementptr i8, ptr %scevgep113, i64 %i.at ; 4 uses
  %bound0 = icmp ult ptr %i.au, %scevgep111
  %bound1 = icmp ult ptr %scevgep112, %i.av
  %found.conflict = and i1 %bound0, %bound1
  %i.aw = or i1 %found.conflict, %stride.check
  %bound0114 = icmp ult ptr %i.au, %scevgep109
  %bound1115 = icmp ult ptr %scevgep110, %i.av
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx = or i1 %i.aw, %found.conflict116
  %bound0117 = icmp ult ptr %i.au, %scevgep107.a
  %bound1118 = icmp ult ptr %scevgep108, %i.av
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx, %found.conflict119
  %bound0121 = icmp ult ptr %i.au, %scevgep106
  %bound1122 = icmp ult ptr %i.e, %i.av
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  br i1 %conflict.rdx124, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ax = add i64 %.04559.us, %i.x                ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index
  %wide.load = load <2 x double>, ptr %i.az, align 8, !tbaa !68, !alias.scope !541
  %.idx = shl i64 %index, 5
  %i.ba = getelementptr i8, ptr %i.ay, i64 %.idx
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  %wide.load125 = load <2 x double>, ptr %i.bb, align 8, !tbaa !68, !alias.scope !542
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index
  %wide.load126 = load <2 x double>, ptr %i.bc, align 8, !tbaa !68, !alias.scope !543
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  %wide.load127 = load <2 x double>, ptr %i.bd, align 8, !tbaa !68, !alias.scope !544
  %i.be = shufflevector <2 x double> %wide.load, <2 x double> %wide.load125, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bf = shufflevector <2 x double> %wide.load126, <2 x double> %wide.load127, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.be, <4 x double> %i.bf, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ba, align 8, !tbaa !68, !alias.scope !545, !noalias !546
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !533

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.ax, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.04358.us.ph
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !68
  %i.bj = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.bi, ptr %i.bj, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04358.us.ph
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !68
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  store double %i.bl, ptr %i.bm, align 8, !tbaa !68
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us.ph
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !68
  %i.bp = getelementptr i8, ptr %i.bj, i64 16
  store double %i.bo, ptr %i.bp, align 8, !tbaa !68
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us.ph
  %i.br = load double, ptr %i.bq, align 8, !tbaa !68
  %i.bs = getelementptr i8, ptr %i.bj, i64 24
  store double %i.br, ptr %i.bs, align 8, !tbaa !68
  %i.bt = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.bu = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa145.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bt, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.bu, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.bt, %scalar.ph.prol ]
  %i.bv = icmp eq i64 %3, %.neg
  br i1 %i.bv, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.cx, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.cw, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.04358.us
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !68
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.bx, ptr %i.by, align 8, !tbaa !68
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04358.us
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !68
  %i.cb = getelementptr i8, ptr %i.by, i64 8
  store double %i.ca, ptr %i.cb, align 8, !tbaa !68
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !68
  %i.ce = getelementptr i8, ptr %i.by, i64 16
  store double %i.cd, ptr %i.ce, align 8, !tbaa !68
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !68
  %i.ch = getelementptr i8, ptr %i.by, i64 24
  store double %i.cg, ptr %i.ch, align 8, !tbaa !68
  %i.ci = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !68
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 32
  store double %i.ck, ptr %i.cm, align 8, !tbaa !68
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ci
  %i.co = load double, ptr %i.cn, align 8, !tbaa !68
  %i.cp = getelementptr i8, ptr %i.cl, i64 40
  store double %i.co, ptr %i.cp, align 8, !tbaa !68
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ci
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !68
  %i.cs = getelementptr i8, ptr %i.cl, i64 48
  store double %i.cr, ptr %i.cs, align 8, !tbaa !68
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ci
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !68
  %i.cv = getelementptr i8, ptr %i.cl, i64 56
  store double %i.cu, ptr %i.cv, align 8, !tbaa !68
  %i.cw = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.cx = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cx, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !534

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.ax, %middle.block ], [ %.lcssa145.unr, %scalar.ph.prol.loopexit ], [ %i.cw, %scalar.ph ] ; 2 uses
  %i.cy = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.cz = icmp slt i64 %i.cy, %i.c
  br i1 %i.cz, label %.lr.ph.us, label %.preheader, !llvm.loop !535

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.da = icmp slt i64 %i.c, %4
  br i1 %i.da, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.db = load ptr, ptr %2, align 8, !tbaa !133   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !134 ; 3 uses
  %i.de = icmp sgt i64 %3, 0
  br i1 %i.de, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.df = ptrtoaddr ptr %i.db to i64
  %i.dg = mul i64 %i.dd, -8
  %i.dh = mul i64 %i.dd, %i.b
  %i.di = shl i64 %i.dh, 5
  %i.dj = add i64 %i.di, %i.df
  %i.dk = sub i64 %i.a, %i.dj
  %min.iters.check131 = icmp ult i64 %3, 4
  %n.vec134 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n141 = icmp eq i64 %3, %n.vec134
  %xtraiter146 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.eg, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.dl = mul nsw i64 %i.dd, %.04267
  %i.dm = getelementptr [8 x i8], ptr %i.db, i64 %i.dl ; 6 uses
  br i1 %min.iters.check131, label %scalar.ph130.preheader, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph
  %i.dn = mul i64 %indvar, %i.dg
  %i.do = add i64 %i.dk, %i.dn
  %i.dp = shl i64 %.266, 3
  %i.dq = add i64 %i.do, %i.dp
  %i.dr = add i64 %i.dq, -1
  %diff.check = icmp ult i64 %i.dr, 31
  br i1 %diff.check, label %scalar.ph130.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck132
  %i.ds = add i64 %.266, %n.vec134                ; 2 uses
  %i.dt = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body135 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index136 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load137 = load <2 x double>, ptr %i.du, align 8, !tbaa !68
  %wide.load138 = load <2 x double>, ptr %i.dv, align 8, !tbaa !68
  %i.dw = getelementptr [8 x i8], ptr %i.dt, i64 %index136 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <2 x double> %wide.load137, ptr %i.dw, align 8, !tbaa !68
  store <2 x double> %wide.load138, ptr %i.dx, align 8, !tbaa !68
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.dy, label %middle.block140, label %vector.body135, !llvm.loop !536

middle.block140:                                  ; preds = %vector.body135
  br i1 %cmp.n141, label %._crit_edge, label %scalar.ph130.preheader

scalar.ph130.preheader:                           ; preds = %vector.memcheck132, %.lr.ph, %middle.block140
  %.065.ph = phi i64 [ 0, %vector.memcheck132 ], [ 0, %.lr.ph ], [ %n.vec134, %middle.block140 ] ; 3 uses
  %.364.ph = phi i64 [ %.266, %vector.memcheck132 ], [ %.266, %.lr.ph ], [ %i.ds, %middle.block140 ] ; 2 uses
  br i1 %lcmp.mod147.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol

scalar.ph130.prol:                                ; preds = %scalar.ph130.preheader, %scalar.ph130.prol
  %.065.prol = phi i64 [ %i.ed, %scalar.ph130.prol ], [ %.065.ph, %scalar.ph130.preheader ] ; 2 uses
  %.364.prol = phi i64 [ %i.ec, %scalar.ph130.prol ], [ %.364.ph, %scalar.ph130.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph130.prol ], [ 0, %scalar.ph130.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.065.prol
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !68
  %i.eb = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.ea, ptr %i.eb, align 8, !tbaa !68
  %i.ec = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.ed = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter146
  br i1 %prol.iter.cmp.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol, !llvm.loop !537
end_hunk_0
begin_hunk_1_@calloc
!326 = distinct !{!326, !71}
!327 = distinct !{!327, !71}
!328 = distinct !{!328, !71, !80, !81}
!329 = distinct !{!329, !82}
!330 = distinct !{!330, !71, !80}
!331 = distinct !{!331, !71, !80, !81}
!332 = distinct !{!332, !82}
!333 = distinct !{!333, !71, !80}
!334 = distinct !{!334, !71}
!335 = distinct !{!335, !82}
!336 = distinct !{!336, !71}
!337 = distinct !{!337, !71, !80, !81}
!338 = distinct !{!338, !82}
!339 = distinct !{!339, !71, !80}
!340 = distinct !{!340, !71, !80, !81}
!341 = distinct !{!341, !82}
!342 = distinct !{!342, !71, !80}
!343 = distinct !{!343, !82}
!344 = distinct !{!344, !71}
!345 = distinct !{!345, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!346 = distinct !{!346, !345, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!347 = distinct !{!347, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl"}
!348 = distinct !{!348, !347, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl: argument 0"}
!349 = distinct !{!349, !71}
!350 = distinct !{!350, !82}
!351 = !{!118, !113, i64 8}
!352 = !{!346}
!353 = !{!348}
!354 = distinct !{!354, !71}
!355 = distinct !{!355, !71}
!356 = distinct !{!356, !71}
!357 = distinct !{!357, !71}
!358 = distinct !{!358, !71}
!359 = distinct !{!359, !71}
!360 = distinct !{!360, !71}
!361 = distinct !{!361, !71}
!362 = distinct !{!362, !71}
!363 = distinct !{!363, i1 true, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlIS4_EEKNS_7ProductIS9_T_Li0EEERKNS0_ISD_EE"}
!364 = distinct !{!364, !363, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlIS4_EEKNS_7ProductIS9_T_Li0EEERKNS0_ISD_EE: argument 0"}
!365 = distinct !{!365, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE"}
!366 = distinct !{!366, !365, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE: argument 0"}
!367 = distinct !{!367, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl"}
!368 = distinct !{!368, !367, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl: argument 0"}
!369 = distinct !{!369, !71}
!370 = distinct !{!370, !82}
!371 = distinct !{!371, !71}
!372 = distinct !{!372, i1 true, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlINS1_IS4_EEEEKNS_7ProductIS9_T_Li0EEERKNS0_ISE_EE"}
!373 = distinct !{!373, !372, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlINS1_IS4_EEEEKNS_7ProductIS9_T_Li0EEERKNS0_ISE_EE: argument 0"}
!374 = distinct !{!374, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!375 = distinct !{!375, !374, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!376 = distinct !{!376, !71}
!377 = distinct !{!377, !82}
!378 = distinct !{!378, !71}
!379 = distinct !{!379, !71}
!380 = distinct !{!380, i1 false, !"LVerDomain"}
!381 = distinct !{!381, !380}
!382 = distinct !{!382, !380}
!383 = distinct !{!383, !380}
!384 = distinct !{!384, !71, !80, !81}
!385 = distinct !{!385, !71, !80}
!386 = distinct !{!386, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE"}
!387 = distinct !{!387, !386, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE: argument 0"}
!388 = distinct !{!388, !71}
!389 = distinct !{!389, !71}
!390 = !{!364}
!391 = !{!366}
!392 = !{!141, !42, i64 0}
!393 = !{!150, !150, i64 0}
!394 = !{!151, !151, i64 0}
!395 = !{!152, !152, i64 0}
!396 = !{!56, !56, i64 0}
!397 = !{!368}
!398 = !{!373}
!399 = !{!375}
!400 = !{!381}
!401 = !{!382}
!402 = !{!383}
!403 = !{!382, !381}
!404 = !{!387}
!405 = distinct !{!405, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl"}
!406 = distinct !{!406, !405, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl: argument 0"}
!407 = distinct !{!407, !71}
!408 = distinct !{!408, !82}
!409 = !{!"_ZTSN5Eigen8internal18scalar_opposite_opIdEE"}
!410 = !{!"_ZTSN5Eigen12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !117, i64 0, !409, i64 8}
!411 = !{!410, !117, i64 0}
!412 = !{!"_ZTSN5Eigen7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS5_IdLin1ELi1ELi0ELin1ELi1EEELi0EEE", !410, i64 0, !113, i64 16}
!413 = !{!412, !113, i64 16}
!414 = !{!406}
!415 = distinct !{!415, i1 true, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE11lazyProductIS4_EEKNS_7ProductIS9_T_Li1EEERKNS0_ISD_EE"}
!416 = distinct !{!416, !415, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE11lazyProductIS4_EEKNS_7ProductIS9_T_Li1EEERKNS0_ISD_EE: argument 0"}
!417 = !{!"_ZTSN5Eigen7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES4_Li0EEE", !153, i64 0, !117, i64 32}
!418 = !{!417, !117, i64 32}
!419 = !{!416}
!420 = distinct !{!420, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!421 = distinct !{!421, !420, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!422 = distinct !{!422, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!423 = distinct !{!423, !422, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!424 = distinct !{!424, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl"}
!425 = distinct !{!425, !424, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl: argument 0"}
!426 = distinct !{!426, !71}
!427 = distinct !{!427, !82}
!428 = distinct !{!428, !71}
!429 = distinct !{!429, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!430 = distinct !{!430, !429, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!431 = distinct !{!431, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl"}
!432 = distinct !{!432, !431, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl: argument 0"}
!433 = distinct !{!433, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!434 = distinct !{!434, !433, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!435 = distinct !{!435, !71}
!436 = distinct !{!436, !82}
!437 = distinct !{!437, !71}
!438 = !{!421}
!439 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1EEE", !154, i64 0}
!440 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ELb1EEE", !439, i64 0, !117, i64 24, !74, i64 32, !74, i64 40, !43, i64 48}
!441 = !{!440, !43, i64 48}
!442 = !{!423}
!443 = !{!425}
!444 = !{!430}
!445 = !{!432}
!446 = !{!434}
!447 = distinct !{!447, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!448 = distinct !{!448, !447, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!449 = distinct !{!449, !71}
!450 = distinct !{!450, !82}
!451 = distinct !{!451, !71}
!452 = distinct !{!452, !71}
!453 = distinct !{!453, !71}
!454 = distinct !{!454, !82}
!455 = distinct !{!455, !82}
!456 = distinct !{!456, !82}
!457 = distinct !{!457, !82}
!458 = distinct !{!458, i1 false, !"LVerDomain"}
!459 = distinct !{!459, !458}
!460 = distinct !{!460, !458}
!461 = distinct !{!461, !458}
!462 = distinct !{!462, !71, !80, !81}
!463 = distinct !{!463, !71, !80}
!464 = !{!"_ZTSN5Eigen7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES4_Li1EEE", !153, i64 0, !117, i64 32}
!465 = !{!464, !117, i64 32}
!466 = !{!448}
!467 = !{!459}
!468 = !{!460}
!469 = !{!461}
!470 = !{!460, !459}
!471 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi0EEE", !42, i64 0, !74, i64 8, !138, i64 16}
!472 = !{!471, !42, i64 0}
!473 = distinct !{!473, !71}
!474 = distinct !{!474, !71}
!475 = distinct !{!475, !71}
!476 = distinct !{!476, !71}
!477 = distinct !{!477, !71}
!478 = distinct !{!478, !71}
!479 = distinct !{!479, !71}
!480 = distinct !{!480, !71}
!481 = distinct !{!481, !71}
!482 = distinct !{!482, !71}
!483 = distinct !{!483, !82}
!484 = distinct !{!484, !82}
!485 = distinct !{!485, !71}
!486 = distinct !{!486, !71}
!487 = !{!"_ZTSN5Eigen9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !117, i64 0}
!488 = !{!487, !117, i64 0}
!489 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEE", !42, i64 0, !138, i64 8, !74, i64 16}
!490 = !{!489, !42, i64 0}
!491 = !{!"branch_weights", i32 1, i32 1048575}
!492 = !{!165, !43, i64 0}
!493 = !{!165, !43, i64 8}
!494 = distinct !{!494, !71}
!495 = !{i64 2153720449}
!496 = !{i64 2153719454}
!497 = !{i64 2153719852}
!498 = !{i64 2153720051}
!499 = !{i64 2153720250}
!500 = distinct !{!500, !71}
!501 = !{i64 2153719653}
!502 = distinct !{!502, !71}
!503 = distinct !{!503, !71}
!504 = distinct !{!504, !71}
!505 = distinct !{!505, !71}
!506 = distinct !{!506, i1 false, !"LVerDomain"}
!507 = distinct !{!507, !506}
!508 = distinct !{!508, !506}
!509 = distinct !{!509, !506}
!510 = distinct !{!510, !506}
!511 = distinct !{!511, !506}
!512 = distinct !{!512, !71, !80, !81}
!513 = distinct !{!513, !71, !80}
!514 = distinct !{!514, !71}
!515 = distinct !{!515, !71}
!516 = distinct !{!516, !71, !80, !81}
!517 = distinct !{!517, !82}
!518 = distinct !{!518, !71}
!519 = distinct !{!519, !71, !80}
!520 = !{i64 2155622775}
!521 = !{!507}
!522 = !{!508}
!523 = !{!509}
!524 = !{!510}
!525 = !{!511}
!526 = !{!510, !509, !508, !507}
!527 = distinct !{!527, i1 false, !"LVerDomain"}
!528 = distinct !{!528, !527}
!529 = distinct !{!529, !527}
!530 = distinct !{!530, !527}
!531 = distinct !{!531, !527}
!532 = distinct !{!532, !527}
!533 = distinct !{!533, !71, !80, !81}
!534 = distinct !{!534, !71, !80}
!535 = distinct !{!535, !71}
!536 = distinct !{!536, !71, !80, !81}
!537 = distinct !{!537, !82}
!538 = distinct !{!538, !71}
!539 = distinct !{!539, !71, !80}
!540 = !{i64 2155623086}
!541 = !{!528}
!542 = !{!529}
!543 = !{!530}
!544 = !{!531}
!545 = !{!532}
!546 = !{!531, !530, !529, !528}
!547 = distinct !{!547, !71}
!548 = distinct !{!548, !71}
!549 = distinct !{!549, !71}
!550 = distinct !{!550, !71}
!551 = distinct !{!551, !71}
!552 = distinct !{!552, !71}
!553 = distinct !{!553, !71}
!554 = distinct !{!554, !71}
!555 = distinct !{!555, !71}
!556 = distinct !{!556, !71}
!557 = distinct !{!557, !71}
!558 = distinct !{!558, !71}
!559 = distinct !{!559, !71}
!560 = distinct !{!560, !71}
!561 = distinct !{!561, !82}
!562 = distinct !{!562, !71}
!563 = !{i64 2155613725}
!564 = !{i64 2155614548}
!565 = !{i64 2155614602}
!566 = !{i64 2155614665}
!567 = !{i64 2155615494}
!568 = !{i64 2155615548}
!569 = !{i64 2155615611}
!570 = !{i64 2155616440}
!571 = !{i64 2155616494}
!572 = !{i64 2155616557}
!573 = !{i64 2155617386}
!574 = !{i64 2155617440}
!575 = !{i64 2155617503}
!576 = !{i64 2155618332}
!577 = !{i64 2155618386}
!578 = !{i64 2155618449}
!579 = !{i64 2155619278}
!580 = !{i64 2155619332}
!581 = !{i64 2155619395}
!582 = !{i64 2155620224}
!583 = !{i64 2155620278}
!584 = !{i64 2155620341}
!585 = !{i64 2155621170}
!586 = !{i64 2155621224}
!587 = !{i64 2155621287}
!588 = !{i64 2155621339}
!589 = !{i64 2155622160}
!590 = !{i64 2155622214}
!591 = !{i64 2155622277}
!592 = !{i64 2155602160}
!593 = !{i64 2155603431}
!594 = !{i64 2155603485}
!595 = !{i64 2155604699}
!596 = !{i64 2155604753}
!597 = !{i64 2155605967}
!598 = !{i64 2155606021}
!599 = !{i64 2155607235}
!600 = !{i64 2155607289}
!601 = !{i64 2155608503}
!602 = !{i64 2155608557}
!603 = !{i64 2155609771}
!604 = !{i64 2155609825}
!605 = !{i64 2155611039}
!606 = !{i64 2155611093}
!607 = !{i64 2155612307}
!608 = !{i64 2155612361}
!609 = !{i64 2155612413}
!610 = !{i64 2155613619}
!611 = !{i64 2155613673}
!612 = distinct !{!612, !71}
!613 = distinct !{!613, !71}
!614 = distinct !{!614, !71}
!615 = distinct !{!615, !71}
!616 = distinct !{!616, !71}
!617 = distinct !{!617, !71}
!618 = distinct !{!618, !71}
!619 = !{i64 2155562389}
!620 = !{i64 2155562152}
!621 = !{i64 2155562205}
!622 = !{i64 2155562331}
!623 = !{i64 2155562447}
!624 = !{i64 2155562503}
!625 = !{i64 2155563062}
!626 = !{i64 2155563128}
!627 = !{i64 2155563191}
!628 = !{i64 2155563756}
!629 = !{i64 2155563822}
!630 = !{i64 2155563885}
!631 = !{i64 2155564450}
!632 = !{i64 2155564516}
!633 = !{i64 2155564579}
!634 = !{i64 2155565144}
!635 = !{i64 2155565210}
!636 = !{i64 2155565273}
!637 = !{i64 2155565838}
!638 = !{i64 2155565904}
!639 = !{i64 2155565967}
!640 = !{i64 2155566532}
!641 = !{i64 2155566598}
!642 = !{i64 2155566661}
!643 = !{i64 2155567226}
!644 = !{i64 2155567292}
!645 = !{i64 2155567355}
!646 = !{i64 2155567920}
!647 = !{i64 2155567986}
!648 = !{i64 2155568049}
!649 = !{i64 2155568113}
!650 = !{i64 2155568670}
!651 = !{i64 2155568736}
!652 = !{i64 2155568799}
!653 = distinct !{!653, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!654 = distinct !{!654, !653, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!655 = distinct !{!655, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!656 = distinct !{!656, !655, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!657 = distinct !{!657, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!658 = distinct !{!658, !657, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!659 = distinct !{!659, !71}
!660 = distinct !{!660, !82}
!661 = distinct !{!661, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3rowEl"}
!662 = distinct !{!662, !661, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3rowEl: argument 0"}
!663 = distinct !{!663, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!664 = distinct !{!664, !663, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!665 = distinct !{!665, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!666 = distinct !{!666, !665, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!667 = distinct !{!667, !71}
!668 = distinct !{!668, !82}
!669 = !{!654}
!670 = !{!656}
!671 = !{!658}
!672 = !{!662}
!673 = !{!664}
!674 = !{!666}
!675 = distinct !{!675, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!676 = distinct !{!676, !675, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!677 = distinct !{!677, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!678 = distinct !{!678, !677, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!679 = distinct !{!679, !71, !80, !81}
!680 = distinct !{!680, !71, !81, !80}
!681 = distinct !{!681, !71}
!682 = distinct !{!682, !71}
!683 = distinct !{!683, !82}
!684 = distinct !{!684, !71}
!685 = distinct !{!685, i1 false, !"LVerDomain"}
!686 = distinct !{!686, !685}
!687 = distinct !{!687, !685}
!688 = distinct !{!688, !685}
!689 = distinct !{!689, !71, !80, !81}
!690 = distinct !{!690, !71, !80}
!691 = distinct !{!691, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!692 = distinct !{!692, !691, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!693 = distinct !{!693, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!694 = distinct !{!694, !693, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!695 = distinct !{!695, !82}
!696 = distinct !{!696, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!697 = distinct !{!697, !696, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!698 = distinct !{!698, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!699 = distinct !{!699, !698, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!700 = distinct !{!700, !71, !80, !81}
!701 = distinct !{!701, !71, !81, !80}
!702 = distinct !{!702, !71}
!703 = distinct !{!703, !71}
!704 = distinct !{!704, !71}
!705 = distinct !{!705, !82}
!706 = distinct !{!706, !71}
!707 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EEE", !150, i64 0, !151, i64 8, !152, i64 16, !56, i64 24}
!708 = !{!707, !56, i64 24}
!709 = !{!148, !117, i64 0}
!710 = !{!676}
!711 = !{!678}
!712 = !{!686}
!713 = !{!687}
!714 = !{!688}
!715 = !{!687, !686}
!716 = !{!707, !150, i64 0}
!717 = !{!707, !151, i64 8}
!718 = !{!692}
!719 = !{!694}
!720 = !{!697}
!721 = !{!699}
!722 = !{!145, !42, i64 0}
!723 = distinct !{!723, !71, !80, !81}
!724 = distinct !{!724, !82}
!725 = distinct !{!725, !71, !80}
!726 = distinct !{!726, !71}
!727 = distinct !{!727, !71}
!728 = distinct !{!728, !71}
!729 = distinct !{!729, !71}
!730 = distinct !{!730, !71}
!731 = distinct !{!731, !71}
!732 = distinct !{!732, !71}
!733 = distinct !{!733, !71, !80, !81}
!734 = distinct !{!734, !82}
!735 = distinct !{!735, !71}
!736 = distinct !{!736, !71, !80}
!737 = !{i64 2155622381}
!738 = distinct !{!738, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!739 = distinct !{!739, !738, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!740 = distinct !{!740, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!741 = distinct !{!741, !740, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!742 = distinct !{!742, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl"}
!743 = distinct !{!743, !742, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl: argument 0"}
!744 = distinct !{!744, !71}
!745 = distinct !{!745, !82}
!746 = distinct !{!746, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3rowEl"}
end_hunk_1
