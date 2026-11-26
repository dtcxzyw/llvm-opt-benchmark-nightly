Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se2_lotsofxy?download=true
inline.NumInlined: 5625
inline.NumDeleted: 2632
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  %i.bf = getelementptr [8 x i8], ptr %5, i64 %.077182.us.us.us.us
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bg, %bb.o ] ; 4 uses
  %i.bg = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bg)
  %i.bh = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.bi = mul nsw i64 %.0178.us.us.us.us.us, %6
  %i.bj = getelementptr [8 x i8], ptr %i.bf, i64 %i.bi
  store ptr %i.bj, ptr %17, align 8
  store i64 %6, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.be, i64 noundef %i.bh, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split.us.split.us.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  %i.bk = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.bl = getelementptr [8 x i8], ptr %i.au, i64 %i.bk
  store ptr %i.bl, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.be, i64 noundef %i.bh, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  %i.bm = icmp slt i64 %i.bg, %1
  br i1 %i.bm, label %bb.m, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !526

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.o
  %i.bn = icmp slt i64 %i.bd, %2
  br i1 %i.bn, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !527

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us187.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bo = icmp slt i64 %i.aq, %0
  br i1 %i.bo, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !528

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.t

.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
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
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %gep.us199 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %.077182.us197
  store ptr %gep.us199, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bu, i64 noundef %i.br, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.bv = icmp slt i64 %i.bt, %2
  br i1 %i.bv, label %bb.p, label %..loopexit177_crit_edge.split.us200, !llvm.loop !527

..loopexit177_crit_edge.split.us200:              ; preds = %.loopexit.us
  %i.bw = icmp slt i64 %i.bq, %0
  br i1 %i.bw, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !528

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us201.us, %bb.p
  %lpad.loopexit.split-lp256 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us200, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #31
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #31
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  ret void

bb.s:                                             ; preds = %.invoke
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp256, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bp, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #31
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #31
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #31, !srcloc !544
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
  %i.j = load ptr, ptr %2, align 8, !tbaa !138    ; 2 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = load i64, ptr %i.e, align 8, !tbaa !139  ; 3 uses
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
  %i.ai = load ptr, ptr %2, align 8, !tbaa !138
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !139 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %.0128145.us ; 2 uses
  %i.al = mul nsw i64 %i.aj, %.1133167.us
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !84 ; 2 uses
  %i.ao = mul nsw i64 %i.aj, %i.ae
  %i.ap = getelementptr [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !84 ; 2 uses
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.as = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.as, ptr %i.ah, align 16, !tbaa !84
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  store <2 x double> %i.ar, ptr %i.at, align 16, !tbaa !84
  %i.au = load ptr, ptr %2, align 8, !tbaa !138
  %i.av = load i64, ptr %i.e, align 8, !tbaa !139 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %.0128145.us ; 2 uses
  %i.ax = mul nsw i64 %i.av, %i.af
  %i.ay = getelementptr [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load <2 x double>, ptr %i.ay, align 1, !tbaa !84 ; 2 uses
  %i.ba = mul nsw i64 %i.av, %i.ag
  %i.bb = getelementptr [8 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load <2 x double>, ptr %i.bb, align 1, !tbaa !84 ; 2 uses
  %i.bd = shufflevector <2 x double> %i.az, <2 x double> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.be = shufflevector <2 x double> %i.az, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store <2 x double> %i.be, ptr %i.bf, align 16, !tbaa !84
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  store <2 x double> %i.bd, ptr %i.bg, align 16, !tbaa !84
  %i.bh = add nsw i64 %.2146.us, %i.x             ; 2 uses
  %i.bi = add nuw nsw i64 %.0128145.us, 2         ; 3 uses
  %i.bj = icmp slt i64 %i.bi, %i.c
  br i1 %i.bj, label %.preheader140.us, label %.preheader141.us, !llvm.loop !529

.preheader141.us:                                 ; preds = %.preheader140.us, %.lr.ph.split.us
  %.0128.lcssa.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.bi, %.preheader140.us ] ; 10 uses
  %.2.lcssa.us = phi i64 [ %.1170.us, %.lr.ph.split.us ], [ %i.bh, %.preheader140.us ] ; 8 uses
  %i.bk = icmp slt i64 %.0128.lcssa.us, %3
  br i1 %i.bk, label %.preheader139.lr.ph.us, label %._crit_edge159.split.us.us

.preheader139.lr.ph.us:                           ; preds = %.preheader141.us
  %i.bl = load ptr, ptr %2, align 8, !tbaa !138   ; 12 uses
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !139 ; 8 uses
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
  %wide.load = load <2 x double>, ptr %i.ds, align 8, !tbaa !71, !alias.scope !545
  %i.dt = getelementptr [8 x i8], ptr %i.dr, i64 %i.bp
  %wide.load295 = load <2 x double>, ptr %i.dt, align 8, !tbaa !71, !alias.scope !546
  %i.du = getelementptr [8 x i8], ptr %i.dr, i64 %i.br
  %wide.load296 = load <2 x double>, ptr %i.du, align 8, !tbaa !71, !alias.scope !547
  %i.dv = getelementptr [8 x i8], ptr %i.dr, i64 %i.bt
  %wide.load297 = load <2 x double>, ptr %i.dv, align 8, !tbaa !71, !alias.scope !548
  %.idx = shl i64 %index, 5
  %i.dw = getelementptr i8, ptr %i.dq, i64 %.idx
  %i.dx = shufflevector <2 x double> %wide.load, <2 x double> %wide.load295, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dy = shufflevector <2 x double> %wide.load296, <2 x double> %wide.load297, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.dx, <4 x double> %i.dy, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.dw, align 8, !tbaa !71, !alias.scope !549, !noalias !550
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !536

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
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !71
  %i.ef = getelementptr [8 x i8], ptr %i.eb, i64 %i.bp
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !71
  %i.eh = getelementptr [8 x i8], ptr %i.eb, i64 %i.br
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !71
  %i.ej = getelementptr [8 x i8], ptr %i.eb, i64 %i.bt
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !71
  %i.el = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158.us.us.ph ; 4 uses
  store double %i.ee, ptr %i.el, align 8, !tbaa !71
  %i.em = getelementptr i8, ptr %i.el, i64 8
  store double %i.eg, ptr %i.em, align 8, !tbaa !71
  %i.en = getelementptr i8, ptr %i.el, i64 16
  store double %i.ei, ptr %i.en, align 8, !tbaa !71
  %i.eo = getelementptr i8, ptr %i.el, i64 24
  store double %i.ek, ptr %i.eo, align 8, !tbaa !71
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
  %i.et = load double, ptr %i.es, align 8, !tbaa !71
  %i.eu = getelementptr [8 x i8], ptr %i.er, i64 %i.bp
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !71
  %i.ew = getelementptr [8 x i8], ptr %i.er, i64 %i.br
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !71
  %i.ey = getelementptr [8 x i8], ptr %i.er, i64 %i.bt
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !71
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158.us.us ; 4 uses
  store double %i.et, ptr %i.fa, align 8, !tbaa !71
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  store double %i.ev, ptr %i.fb, align 8, !tbaa !71
  %i.fc = getelementptr i8, ptr %i.fa, i64 16
  store double %i.ex, ptr %i.fc, align 8, !tbaa !71
  %i.fd = getelementptr i8, ptr %i.fa, i64 24
  store double %i.ez, ptr %i.fd, align 8, !tbaa !71
  %i.fe = getelementptr [8 x i8], ptr %i.bl, i64 %.2130156.us.us
  %i.ff = getelementptr i8, ptr %i.fe, i64 8      ; 4 uses
  %i.fg = add nsw i64 %.4158.us.us, 8             ; 2 uses
  %i.fh = getelementptr [8 x i8], ptr %i.ff, i64 %i.bn
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !71
  %i.fj = getelementptr [8 x i8], ptr %i.ff, i64 %i.bp
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !71
  %i.fl = getelementptr [8 x i8], ptr %i.ff, i64 %i.br
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !71
  %i.fn = getelementptr [8 x i8], ptr %i.ff, i64 %i.bt
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !71
  %i.fp = getelementptr [8 x i8], ptr %1, i64 %.4158.us.us ; 4 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 32
  store double %i.fi, ptr %i.fq, align 8, !tbaa !71
  %i.fr = getelementptr i8, ptr %i.fp, i64 40
  store double %i.fk, ptr %i.fr, align 8, !tbaa !71
  %i.fs = getelementptr i8, ptr %i.fp, i64 48
  store double %i.fm, ptr %i.fs, align 8, !tbaa !71
  %i.ft = getelementptr i8, ptr %i.fp, i64 56
  store double %i.fo, ptr %i.ft, align 8, !tbaa !71
  %i.fu = add nuw nsw i64 %.2130156.us.us, 2      ; 2 uses
  %exitcond208.not.1 = icmp eq i64 %i.fu, %3
  br i1 %exitcond208.not.1, label %._crit_edge159.split.us.us, label %.loopexit.us.us, !llvm.loop !537

._crit_edge159.split.us.us:                       ; preds = %.loopexit.us.us.prol.loopexit, %.loopexit.us.us, %middle.block, %.preheader141.us
  %.4.lcssa.us = phi i64 [ %.2.lcssa.us, %.preheader141.us ], [ %i.dn, %middle.block ], [ %.lcssa332.unr, %.loopexit.us.us.prol.loopexit ], [ %i.fg, %.loopexit.us.us ] ; 2 uses
  %i.fv = add i64 %.1133167.us, %indvars.iv       ; 3 uses
  %i.fw = icmp slt i64 %i.fv, %i.v
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fw, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !538

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
  %i.fz = load ptr, ptr %2, align 8, !tbaa !138
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !139 ; 4 uses
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
  %i.gj = load ptr, ptr %2, align 8, !tbaa !138
  %i.gk = load i64, ptr %i.e, align 8, !tbaa !139 ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gj, i64 %.0128145 ; 2 uses
  %i.gm = mul nsw i64 %i.gk, %.1133167
  %i.gn = getelementptr [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !84 ; 2 uses
  %i.gp = mul nsw i64 %i.gk, %i.fx
  %i.gq = getelementptr [8 x i8], ptr %i.gl, i64 %i.gp
  %i.gr = load <2 x double>, ptr %i.gq, align 1, !tbaa !84 ; 2 uses
  %i.gs = shufflevector <2 x double> %i.go, <2 x double> %i.gr, <2 x i32> <i32 1, i32 3>
  %i.gt = shufflevector <2 x double> %i.go, <2 x double> %i.gr, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.gt, ptr %i.gi, align 16, !tbaa !84
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv
  store <2 x double> %i.gs, ptr %i.gu, align 16, !tbaa !84
  %i.gv = add nsw i64 %.2146, %i.x                ; 2 uses
  %i.gw = add nuw nsw i64 %.0128145, 2            ; 3 uses
  %i.gx = icmp slt i64 %i.gw, %i.c
  br i1 %i.gx, label %.preheader140, label %.preheader141, !llvm.loop !529

.preheader139:                                    ; preds = %.preheader139.lr.ph.split.split, %..loopexit_crit_edge
  %.4158 = phi i64 [ %.2.lcssa, %.preheader139.lr.ph.split.split ], [ %.lcssa328, %..loopexit_crit_edge ] ; 5 uses
  %.2130156 = phi i64 [ %.0128.lcssa, %.preheader139.lr.ph.split.split ], [ %i.hp, %..loopexit_crit_edge ] ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %i.fz, i64 %.2130156 ; 4 uses
  %i.gz = getelementptr [8 x i8], ptr %i.gy, i64 %i.gb
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !71
  %i.hb = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158
  store double %i.ha, ptr %i.hb, align 8, !tbaa !71
  %i.hc = getelementptr [8 x i8], ptr %i.gy, i64 %i.gd
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !71
  %i.he = add nsw i64 %.4158, 2                   ; 2 uses
  %i.hf = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.hg = getelementptr i8, ptr %i.hf, i64 8
  store double %i.hd, ptr %i.hg, align 8, !tbaa !71
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %bb.c

bb.c:                                             ; preds = %.preheader139
  %i.hh = getelementptr [8 x i8], ptr %i.gy, i64 %i.gf
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !71
  %i.hj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.he
  store double %i.hi, ptr %i.hj, align 8, !tbaa !71
  %i.hk = getelementptr [8 x i8], ptr %i.gy, i64 %i.gh
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !71
  %i.hm = add nsw i64 %.4158, 4
  %i.hn = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.ho = getelementptr i8, ptr %i.hn, i64 24
  store double %i.hl, ptr %i.ho, align 8, !tbaa !71
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.c, %.preheader139
  %.lcssa328 = phi i64 [ %i.hm, %bb.c ], [ %i.he, %.preheader139 ] ; 2 uses
  %i.hp = add nuw nsw i64 %.2130156, 1            ; 2 uses
  %exitcond201.not = icmp eq i64 %i.hp, %3
  br i1 %exitcond201.not, label %._crit_edge159.split, label %.preheader139, !llvm.loop !539

._crit_edge159.split:                             ; preds = %..loopexit_crit_edge, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %.lcssa328, %..loopexit_crit_edge ] ; 2 uses
  %i.hq = add i64 %.1133167, %indvars.iv          ; 3 uses
  %i.hr = icmp slt i64 %i.hq, %i.v
  br i1 %i.hr, label %.lr.ph.split, label %._crit_edge, !llvm.loop !538

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
  %wide.load317 = load <2 x double>, ptr %i.ia, align 8, !tbaa !71
  %wide.load318 = load <2 x double>, ptr %i.ib, align 8, !tbaa !71
  %i.ic = getelementptr [8 x i8], ptr %i.hz, i64 %index316 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <2 x double> %wide.load317, ptr %i.ic, align 8, !tbaa !71
  store <2 x double> %wide.load318, ptr %i.id, align 8, !tbaa !71
  %index.next319 = add nuw i64 %index316, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.ie, label %middle.block320, label %vector.body315, !llvm.loop !540

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
  %i.if = load double, ptr %gep.prol, align 8, !tbaa !71
  %i.ig = add nsw i64 %.9179.prol, 1              ; 3 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179.prol
  store double %i.if, ptr %i.ih, align 8, !tbaa !71
  %i.ii = add nuw nsw i64 %.0180.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter334
  br i1 %prol.iter.cmp.not, label %scalar.ph310.prol.loopexit, label %scalar.ph310.prol, !llvm.loop !541

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
  br i1 %exitcond211.not, label %._crit_edge186.split, label %.preheader, !llvm.loop !542

scalar.ph310:                                     ; preds = %scalar.ph310.prol.loopexit, %scalar.ph310
  %.0180 = phi i64 [ %i.jb, %scalar.ph310 ], [ %.0180.unr, %scalar.ph310.prol.loopexit ] ; 5 uses
  %.9179 = phi i64 [ %i.iy, %scalar.ph310 ], [ %.9179.unr, %scalar.ph310.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %i.im = load double, ptr %gep, align 8, !tbaa !71
  %i.in = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179
  store double %i.im, ptr %i.in, align 8, !tbaa !71
  %i.io = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.1 = getelementptr i8, ptr %i.io, i64 8
  %i.ip = load double, ptr %gep.1, align 8, !tbaa !71
  %i.iq = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  store double %i.ip, ptr %i.ir, align 8, !tbaa !71
  %i.is = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.2 = getelementptr i8, ptr %i.is, i64 16
  %i.it = load double, ptr %gep.2, align 8, !tbaa !71
  %i.iu = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  store double %i.it, ptr %i.iv, align 8, !tbaa !71
  %i.iw = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.3 = getelementptr i8, ptr %i.iw, i64 24
  %i.ix = load double, ptr %gep.3, align 8, !tbaa !71
  %i.iy = add nsw i64 %.9179, 4                   ; 2 uses
  %i.iz = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.ja = getelementptr i8, ptr %i.iz, i64 24
  store double %i.ix, ptr %i.ja, align 8, !tbaa !71
  %i.jb = add nuw nsw i64 %.0180, 4               ; 2 uses
  %exitcond210.not.3 = icmp eq i64 %i.jb, %3
  br i1 %exitcond210.not.3, label %._crit_edge182, label %scalar.ph310, !llvm.loop !543

._crit_edge186.split:                             ; preds = %._crit_edge182, %.preheader137
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #31, !srcloc !564
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !135    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !136  ; 12 uses
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
  %wide.load = load <2 x double>, ptr %i.az, align 8, !tbaa !71, !alias.scope !565
  %.idx = shl i64 %index, 5
  %i.ba = getelementptr i8, ptr %i.ay, i64 %.idx
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  %wide.load125 = load <2 x double>, ptr %i.bb, align 8, !tbaa !71, !alias.scope !566
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index
  %wide.load126 = load <2 x double>, ptr %i.bc, align 8, !tbaa !71, !alias.scope !567
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  %wide.load127 = load <2 x double>, ptr %i.bd, align 8, !tbaa !71, !alias.scope !568
  %i.be = shufflevector <2 x double> %wide.load, <2 x double> %wide.load125, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bf = shufflevector <2 x double> %wide.load126, <2 x double> %wide.load127, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.be, <4 x double> %i.bf, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ba, align 8, !tbaa !71, !alias.scope !569, !noalias !570
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !557

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.ax, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.04358.us.ph
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !71
  %i.bj = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.bi, ptr %i.bj, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04358.us.ph
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !71
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  store double %i.bl, ptr %i.bm, align 8, !tbaa !71
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us.ph
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !71
  %i.bp = getelementptr i8, ptr %i.bj, i64 16
  store double %i.bo, ptr %i.bp, align 8, !tbaa !71
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us.ph
  %i.br = load double, ptr %i.bq, align 8, !tbaa !71
  %i.bs = getelementptr i8, ptr %i.bj, i64 24
  store double %i.br, ptr %i.bs, align 8, !tbaa !71
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
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !71
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.bx, ptr %i.by, align 8, !tbaa !71
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04358.us
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !71
  %i.cb = getelementptr i8, ptr %i.by, i64 8
  store double %i.ca, ptr %i.cb, align 8, !tbaa !71
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !71
  %i.ce = getelementptr i8, ptr %i.by, i64 16
  store double %i.cd, ptr %i.ce, align 8, !tbaa !71
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !71
  %i.ch = getelementptr i8, ptr %i.by, i64 24
  store double %i.cg, ptr %i.ch, align 8, !tbaa !71
  %i.ci = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !71
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 32
  store double %i.ck, ptr %i.cm, align 8, !tbaa !71
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ci
  %i.co = load double, ptr %i.cn, align 8, !tbaa !71
  %i.cp = getelementptr i8, ptr %i.cl, i64 40
  store double %i.co, ptr %i.cp, align 8, !tbaa !71
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ci
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !71
  %i.cs = getelementptr i8, ptr %i.cl, i64 48
  store double %i.cr, ptr %i.cs, align 8, !tbaa !71
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ci
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !71
  %i.cv = getelementptr i8, ptr %i.cl, i64 56
  store double %i.cu, ptr %i.cv, align 8, !tbaa !71
  %i.cw = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.cx = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cx, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !558

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.ax, %middle.block ], [ %.lcssa145.unr, %scalar.ph.prol.loopexit ], [ %i.cw, %scalar.ph ] ; 2 uses
  %i.cy = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.cz = icmp slt i64 %i.cy, %i.c
  br i1 %i.cz, label %.lr.ph.us, label %.preheader, !llvm.loop !559

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.da = icmp slt i64 %i.c, %4
  br i1 %i.da, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.db = load ptr, ptr %2, align 8, !tbaa !135   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !136 ; 3 uses
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
  %wide.load137 = load <2 x double>, ptr %i.du, align 8, !tbaa !71
  %wide.load138 = load <2 x double>, ptr %i.dv, align 8, !tbaa !71
  %i.dw = getelementptr [8 x i8], ptr %i.dt, i64 %index136 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <2 x double> %wide.load137, ptr %i.dw, align 8, !tbaa !71
  store <2 x double> %wide.load138, ptr %i.dx, align 8, !tbaa !71
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.dy, label %middle.block140, label %vector.body135, !llvm.loop !560

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
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !71
  %i.eb = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.ea, ptr %i.eb, align 8, !tbaa !71
  %i.ec = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.ed = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter146
  br i1 %prol.iter.cmp.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol, !llvm.loop !561
end_hunk_0
begin_hunk_1_@calloc
!350 = distinct !{!350, !72}
!351 = distinct !{!351, !72}
!352 = distinct !{!352, !72, !75, !76}
!353 = distinct !{!353, !77}
!354 = distinct !{!354, !72, !75}
!355 = distinct !{!355, !72, !75, !76}
!356 = distinct !{!356, !77}
!357 = distinct !{!357, !72, !75}
!358 = distinct !{!358, !72}
!359 = distinct !{!359, !77}
!360 = distinct !{!360, !72}
!361 = distinct !{!361, !72, !75, !76}
!362 = distinct !{!362, !77}
!363 = distinct !{!363, !72, !75}
!364 = distinct !{!364, !72, !75, !76}
!365 = distinct !{!365, !77}
!366 = distinct !{!366, !72, !75}
!367 = distinct !{!367, !77}
!368 = distinct !{!368, !72}
!369 = distinct !{!369, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!370 = distinct !{!370, !369, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!371 = distinct !{!371, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl"}
!372 = distinct !{!372, !371, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl: argument 0"}
!373 = distinct !{!373, !72}
!374 = distinct !{!374, !77}
!375 = !{!120, !115, i64 8}
!376 = !{!370}
!377 = !{!372}
!378 = distinct !{!378, !72}
!379 = distinct !{!379, !72}
!380 = distinct !{!380, !72}
!381 = distinct !{!381, !72}
!382 = distinct !{!382, !72}
!383 = distinct !{!383, !72}
!384 = distinct !{!384, !72}
!385 = distinct !{!385, !72}
!386 = distinct !{!386, !72}
!387 = distinct !{!387, i1 true, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlIS4_EEKNS_7ProductIS9_T_Li0EEERKNS0_ISD_EE"}
!388 = distinct !{!388, !387, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlIS4_EEKNS_7ProductIS9_T_Li0EEERKNS0_ISD_EE: argument 0"}
!389 = distinct !{!389, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE"}
!390 = distinct !{!390, !389, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE: argument 0"}
!391 = distinct !{!391, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl"}
!392 = distinct !{!392, !391, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl: argument 0"}
!393 = distinct !{!393, !72}
!394 = distinct !{!394, !77}
!395 = distinct !{!395, !72}
!396 = distinct !{!396, i1 true, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlINS1_IS4_EEEEKNS_7ProductIS9_T_Li0EEERKNS0_ISE_EE"}
!397 = distinct !{!397, !396, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlINS1_IS4_EEEEKNS_7ProductIS9_T_Li0EEERKNS0_ISE_EE: argument 0"}
!398 = distinct !{!398, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!399 = distinct !{!399, !398, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!400 = distinct !{!400, !72}
!401 = distinct !{!401, !77}
!402 = distinct !{!402, !72}
!403 = distinct !{!403, !72}
!404 = distinct !{!404, i1 false, !"LVerDomain"}
!405 = distinct !{!405, !404}
!406 = distinct !{!406, !404}
!407 = distinct !{!407, !404}
!408 = distinct !{!408, !72, !75, !76}
!409 = distinct !{!409, !72, !75}
!410 = distinct !{!410, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE"}
!411 = distinct !{!411, !410, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE: argument 0"}
!412 = distinct !{!412, !72}
!413 = distinct !{!413, !72}
!414 = !{!388}
!415 = !{!390}
!416 = !{!143, !42, i64 0}
!417 = !{!152, !152, i64 0}
!418 = !{!153, !153, i64 0}
!419 = !{!154, !154, i64 0}
!420 = !{!56, !56, i64 0}
!421 = !{!392}
!422 = !{!397}
!423 = !{!399}
!424 = !{!405}
!425 = !{!406}
!426 = !{!407}
!427 = !{!406, !405}
!428 = !{!411}
!429 = distinct !{!429, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl"}
!430 = distinct !{!430, !429, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE3colEl: argument 0"}
!431 = distinct !{!431, !72}
!432 = distinct !{!432, !77}
!433 = !{!"_ZTSN5Eigen8internal18scalar_opposite_opIdEE"}
!434 = !{!"_ZTSN5Eigen12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !119, i64 0, !433, i64 8}
!435 = !{!434, !119, i64 0}
!436 = !{!"_ZTSN5Eigen7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS5_IdLin1ELi1ELi0ELin1ELi1EEELi0EEE", !434, i64 0, !115, i64 16}
!437 = !{!436, !115, i64 16}
!438 = !{!430}
!439 = distinct !{!439, i1 true, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE11lazyProductIS4_EEKNS_7ProductIS9_T_Li1EEERKNS0_ISD_EE"}
!440 = distinct !{!440, !439, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE11lazyProductIS4_EEKNS_7ProductIS9_T_Li1EEERKNS0_ISD_EE: argument 0"}
!441 = !{!"_ZTSN5Eigen7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES4_Li0EEE", !155, i64 0, !119, i64 32}
!442 = !{!441, !119, i64 32}
!443 = !{!440}
!444 = distinct !{!444, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!445 = distinct !{!445, !444, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!446 = distinct !{!446, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!447 = distinct !{!447, !446, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!448 = distinct !{!448, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl"}
!449 = distinct !{!449, !448, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl: argument 0"}
!450 = distinct !{!450, !72}
!451 = distinct !{!451, !77}
!452 = distinct !{!452, !72}
!453 = distinct !{!453, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!454 = distinct !{!454, !453, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!455 = distinct !{!455, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl"}
!456 = distinct !{!456, !455, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl: argument 0"}
!457 = distinct !{!457, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!458 = distinct !{!458, !457, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!459 = distinct !{!459, !72}
!460 = distinct !{!460, !77}
!461 = distinct !{!461, !72}
!462 = !{!445}
!463 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1EEE", !156, i64 0}
!464 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ELb1EEE", !463, i64 0, !119, i64 24, !80, i64 32, !80, i64 40, !43, i64 48}
!465 = !{!464, !43, i64 48}
!466 = !{!447}
!467 = !{!449}
!468 = !{!454}
!469 = !{!456}
!470 = !{!458}
!471 = distinct !{!471, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!472 = distinct !{!472, !471, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!473 = distinct !{!473, !72}
!474 = distinct !{!474, !77}
!475 = distinct !{!475, !72}
!476 = distinct !{!476, !72}
!477 = distinct !{!477, !72}
!478 = distinct !{!478, !77}
!479 = distinct !{!479, !77}
!480 = distinct !{!480, !77}
!481 = distinct !{!481, !77}
!482 = distinct !{!482, i1 false, !"LVerDomain"}
!483 = distinct !{!483, !482}
!484 = distinct !{!484, !482}
!485 = distinct !{!485, !482}
!486 = distinct !{!486, !72, !75, !76}
!487 = distinct !{!487, !72, !75}
!488 = !{!"_ZTSN5Eigen7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEES4_Li1EEE", !155, i64 0, !119, i64 32}
!489 = !{!488, !119, i64 32}
!490 = !{!472}
!491 = !{!483}
!492 = !{!484}
!493 = !{!485}
!494 = !{!484, !483}
!495 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi0EEE", !42, i64 0, !80, i64 8, !140, i64 16}
!496 = !{!495, !42, i64 0}
!497 = distinct !{!497, !72}
!498 = distinct !{!498, !72}
!499 = distinct !{!499, !72}
!500 = distinct !{!500, !72}
!501 = distinct !{!501, !72}
!502 = distinct !{!502, !72}
!503 = distinct !{!503, !72}
!504 = distinct !{!504, !72}
!505 = distinct !{!505, !72}
!506 = distinct !{!506, !72}
!507 = distinct !{!507, !77}
!508 = distinct !{!508, !77}
!509 = distinct !{!509, !72}
!510 = distinct !{!510, !72}
!511 = !{!"_ZTSN5Eigen9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !119, i64 0}
!512 = !{!511, !119, i64 0}
!513 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEE", !42, i64 0, !140, i64 8, !80, i64 16}
!514 = !{!513, !42, i64 0}
!515 = !{!"branch_weights", i32 1, i32 1048575}
!516 = !{!167, !43, i64 0}
!517 = !{!167, !43, i64 8}
!518 = distinct !{!518, !72}
!519 = !{i64 2153720315}
!520 = !{i64 2153719320}
!521 = !{i64 2153719718}
!522 = !{i64 2153719917}
!523 = !{i64 2153720116}
!524 = distinct !{!524, !72}
!525 = !{i64 2153719519}
!526 = distinct !{!526, !72}
!527 = distinct !{!527, !72}
!528 = distinct !{!528, !72}
!529 = distinct !{!529, !72}
!530 = distinct !{!530, i1 false, !"LVerDomain"}
!531 = distinct !{!531, !530}
!532 = distinct !{!532, !530}
!533 = distinct !{!533, !530}
!534 = distinct !{!534, !530}
!535 = distinct !{!535, !530}
!536 = distinct !{!536, !72, !75, !76}
!537 = distinct !{!537, !72, !75}
!538 = distinct !{!538, !72}
!539 = distinct !{!539, !72}
!540 = distinct !{!540, !72, !75, !76}
!541 = distinct !{!541, !77}
!542 = distinct !{!542, !72}
!543 = distinct !{!543, !72, !75}
!544 = !{i64 2155622641}
!545 = !{!531}
!546 = !{!532}
!547 = !{!533}
!548 = !{!534}
!549 = !{!535}
!550 = !{!534, !533, !532, !531}
!551 = distinct !{!551, i1 false, !"LVerDomain"}
!552 = distinct !{!552, !551}
!553 = distinct !{!553, !551}
!554 = distinct !{!554, !551}
!555 = distinct !{!555, !551}
!556 = distinct !{!556, !551}
!557 = distinct !{!557, !72, !75, !76}
!558 = distinct !{!558, !72, !75}
!559 = distinct !{!559, !72}
!560 = distinct !{!560, !72, !75, !76}
!561 = distinct !{!561, !77}
!562 = distinct !{!562, !72}
!563 = distinct !{!563, !72, !75}
!564 = !{i64 2155622952}
!565 = !{!552}
!566 = !{!553}
!567 = !{!554}
!568 = !{!555}
!569 = !{!556}
!570 = !{!555, !554, !553, !552}
!571 = distinct !{!571, !72}
!572 = distinct !{!572, !72}
!573 = distinct !{!573, !72}
!574 = distinct !{!574, !72}
!575 = distinct !{!575, !72}
!576 = distinct !{!576, !72}
!577 = distinct !{!577, !72}
!578 = distinct !{!578, !72}
!579 = distinct !{!579, !72}
!580 = distinct !{!580, !72}
!581 = distinct !{!581, !72}
!582 = distinct !{!582, !72}
!583 = distinct !{!583, !72}
!584 = distinct !{!584, !72}
!585 = distinct !{!585, !77}
!586 = distinct !{!586, !72}
!587 = !{i64 2155613591}
!588 = !{i64 2155614414}
!589 = !{i64 2155614468}
!590 = !{i64 2155614531}
!591 = !{i64 2155615360}
!592 = !{i64 2155615414}
!593 = !{i64 2155615477}
!594 = !{i64 2155616306}
!595 = !{i64 2155616360}
!596 = !{i64 2155616423}
!597 = !{i64 2155617252}
!598 = !{i64 2155617306}
!599 = !{i64 2155617369}
!600 = !{i64 2155618198}
!601 = !{i64 2155618252}
!602 = !{i64 2155618315}
!603 = !{i64 2155619144}
!604 = !{i64 2155619198}
!605 = !{i64 2155619261}
!606 = !{i64 2155620090}
!607 = !{i64 2155620144}
!608 = !{i64 2155620207}
!609 = !{i64 2155621036}
!610 = !{i64 2155621090}
!611 = !{i64 2155621153}
!612 = !{i64 2155621205}
!613 = !{i64 2155622026}
!614 = !{i64 2155622080}
!615 = !{i64 2155622143}
!616 = !{i64 2155602026}
!617 = !{i64 2155603297}
!618 = !{i64 2155603351}
!619 = !{i64 2155604565}
!620 = !{i64 2155604619}
!621 = !{i64 2155605833}
!622 = !{i64 2155605887}
!623 = !{i64 2155607101}
!624 = !{i64 2155607155}
!625 = !{i64 2155608369}
!626 = !{i64 2155608423}
!627 = !{i64 2155609637}
!628 = !{i64 2155609691}
!629 = !{i64 2155610905}
!630 = !{i64 2155610959}
!631 = !{i64 2155612173}
!632 = !{i64 2155612227}
!633 = !{i64 2155612279}
!634 = !{i64 2155613485}
!635 = !{i64 2155613539}
!636 = distinct !{!636, !72}
!637 = distinct !{!637, !72}
!638 = distinct !{!638, !72}
!639 = distinct !{!639, !72}
!640 = distinct !{!640, !72}
!641 = distinct !{!641, !72}
!642 = distinct !{!642, !72}
!643 = !{i64 2155562255}
!644 = !{i64 2155562018}
!645 = !{i64 2155562071}
!646 = !{i64 2155562197}
!647 = !{i64 2155562313}
!648 = !{i64 2155562369}
!649 = !{i64 2155562928}
!650 = !{i64 2155562994}
!651 = !{i64 2155563057}
!652 = !{i64 2155563622}
!653 = !{i64 2155563688}
!654 = !{i64 2155563751}
!655 = !{i64 2155564316}
!656 = !{i64 2155564382}
!657 = !{i64 2155564445}
!658 = !{i64 2155565010}
!659 = !{i64 2155565076}
!660 = !{i64 2155565139}
!661 = !{i64 2155565704}
!662 = !{i64 2155565770}
!663 = !{i64 2155565833}
!664 = !{i64 2155566398}
!665 = !{i64 2155566464}
!666 = !{i64 2155566527}
!667 = !{i64 2155567092}
!668 = !{i64 2155567158}
!669 = !{i64 2155567221}
!670 = !{i64 2155567786}
!671 = !{i64 2155567852}
!672 = !{i64 2155567915}
!673 = !{i64 2155567979}
!674 = !{i64 2155568536}
!675 = !{i64 2155568602}
!676 = !{i64 2155568665}
!677 = distinct !{!677, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!678 = distinct !{!678, !677, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!679 = distinct !{!679, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!680 = distinct !{!680, !679, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!681 = distinct !{!681, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!682 = distinct !{!682, !681, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!683 = distinct !{!683, !72}
!684 = distinct !{!684, !77}
!685 = distinct !{!685, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3rowEl"}
!686 = distinct !{!686, !685, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3rowEl: argument 0"}
!687 = distinct !{!687, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!688 = distinct !{!688, !687, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!689 = distinct !{!689, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!690 = distinct !{!690, !689, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!691 = distinct !{!691, !72}
!692 = distinct !{!692, !77}
!693 = !{!678}
!694 = !{!680}
!695 = !{!682}
!696 = !{!686}
!697 = !{!688}
!698 = !{!690}
!699 = distinct !{!699, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!700 = distinct !{!700, !699, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!701 = distinct !{!701, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!702 = distinct !{!702, !701, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!703 = distinct !{!703, !72, !75, !76}
!704 = distinct !{!704, !72, !76, !75}
!705 = distinct !{!705, !72}
!706 = distinct !{!706, !72}
!707 = distinct !{!707, !77}
!708 = distinct !{!708, !72}
!709 = distinct !{!709, i1 false, !"LVerDomain"}
!710 = distinct !{!710, !709}
!711 = distinct !{!711, !709}
!712 = distinct !{!712, !709}
!713 = distinct !{!713, !72, !75, !76}
!714 = distinct !{!714, !72, !75}
!715 = distinct !{!715, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!716 = distinct !{!716, !715, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!717 = distinct !{!717, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!718 = distinct !{!718, !717, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!719 = distinct !{!719, !77}
!720 = distinct !{!720, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!721 = distinct !{!721, !720, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!722 = distinct !{!722, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!723 = distinct !{!723, !722, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!724 = distinct !{!724, !72, !75, !76}
!725 = distinct !{!725, !72, !76, !75}
!726 = distinct !{!726, !72}
!727 = distinct !{!727, !72}
!728 = distinct !{!728, !72}
!729 = distinct !{!729, !77}
!730 = distinct !{!730, !72}
!731 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EEE", !152, i64 0, !153, i64 8, !154, i64 16, !56, i64 24}
!732 = !{!731, !56, i64 24}
!733 = !{!150, !119, i64 0}
!734 = !{!700}
!735 = !{!702}
!736 = !{!710}
!737 = !{!711}
!738 = !{!712}
!739 = !{!711, !710}
!740 = !{!731, !152, i64 0}
!741 = !{!731, !153, i64 8}
!742 = !{!716}
!743 = !{!718}
!744 = !{!721}
!745 = !{!723}
!746 = !{!147, !42, i64 0}
!747 = distinct !{!747, !72, !75, !76}
!748 = distinct !{!748, !77}
!749 = distinct !{!749, !72, !75}
!750 = distinct !{!750, !72}
!751 = distinct !{!751, !72}
!752 = distinct !{!752, !72}
!753 = distinct !{!753, !72}
!754 = distinct !{!754, !72}
!755 = distinct !{!755, !72}
!756 = distinct !{!756, !72}
!757 = distinct !{!757, !72, !75, !76}
!758 = distinct !{!758, !77}
!759 = distinct !{!759, !72}
!760 = distinct !{!760, !72, !75}
!761 = !{i64 2155622247}
!762 = distinct !{!762, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!763 = distinct !{!763, !762, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!764 = distinct !{!764, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!765 = distinct !{!765, !764, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!766 = distinct !{!766, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl"}
!767 = distinct !{!767, !766, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl: argument 0"}
!768 = distinct !{!768, !72}
!769 = distinct !{!769, !77}
!770 = distinct !{!770, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3rowEl"}
end_hunk_1
