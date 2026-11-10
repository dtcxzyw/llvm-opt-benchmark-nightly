Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  store ptr %gep.us.us204.us, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.aw, i64 noundef %i.ar, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us205.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.us.us205.us:                               ; preds = %.lr.ph183.split.us.split.us201.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.us.us205.us
  %.0178.us185.us.us = phi i64 [ 0, %.lr.ph.us.us205.us ], [ %i.ax, %bb.l ] ; 3 uses
  %i.ax = add nsw i64 %.0178.us185.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us186.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.ax)
  %i.ay = sub nsw i64 %.sroa.speculated.us186.us.us, %.0178.us185.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.az = mul nsw i64 %.0178.us185.us.us, %9
  %i.ba = getelementptr [8 x i8], ptr %i.au, i64 %i.az
  store ptr %i.ba, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.aw, i64 noundef %i.ay, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.l unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.bb = icmp slt i64 %i.ax, %1
  br i1 %i.bb, label %bb.k, label %..loopexit_crit_edge.split.us187.us.us, !llvm.loop !757

..loopexit_crit_edge.split.us187.us.us:           ; preds = %bb.l
  %i.bc = icmp slt i64 %i.av, %2
  br i1 %i.bc, label %.lr.ph183.split.us.split.us201.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !758

.lr.ph183.split.us.split.us.us.us:                ; preds = %.lr.ph183.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %.077182.us.us.us.us = phi i64 [ %i.bd, %..loopexit_crit_edge.split.us.us.us.us.us ], [ 0, %.lr.ph183.us.us ] ; 4 uses
  %i.bd = add nsw i64 %.077182.us.us.us.us, %i.b  ; 3 uses
  %.sroa.speculated124.us.us.us.us = call i64 @llvm.smin.i64(i64 %2, i64 %i.bd)
  %i.be = sub nsw i64 %.sroa.speculated124.us.us.us.us, %.077182.us.us.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %gep.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %.077182.us.us.us.us
  store ptr %gep.us.us.us.us, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.be, i64 noundef %i.ar, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us.us.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph183.split.us.split.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.bf = getelementptr [8 x i8], ptr %5, i64 %.077182.us.us.us.us
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bg, %bb.o ] ; 4 uses
  %i.bg = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bg)
  %i.bh = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.bi = mul nsw i64 %.0178.us.us.us.us.us, %6
  %i.bj = getelementptr [8 x i8], ptr %i.bf, i64 %i.bi
  store ptr %i.bj, ptr %17, align 8
  store i64 %6, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.be, i64 noundef %i.bh, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split.us.split.us.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.bk = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.bl = getelementptr [8 x i8], ptr %i.au, i64 %i.bk
  store ptr %i.bl, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.be, i64 noundef %i.bh, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.bm = icmp slt i64 %i.bg, %1
  br i1 %i.bm, label %bb.m, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !757

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.o
  %i.bn = icmp slt i64 %i.bd, %2
  br i1 %i.bn, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !758

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us187.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bo = icmp slt i64 %i.aq, %0
  br i1 %i.bo, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !759

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.t

.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
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
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %gep.us199 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %.077182.us197
  store ptr %gep.us199, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bu, i64 noundef %i.br, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.bv = icmp slt i64 %i.bt, %2
  br i1 %i.bv, label %bb.p, label %..loopexit177_crit_edge.split.us200, !llvm.loop !758

..loopexit177_crit_edge.split.us200:              ; preds = %.loopexit.us
  %i.bw = icmp slt i64 %i.bq, %0
  br i1 %i.bw, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !759

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us201.us, %bb.p
  %lpad.loopexit.split-lp256 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us200, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  ret void

bb.s:                                             ; preds = %.invoke
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp256, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bp, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !780
  %i.b = sdiv i64 %3, 2
  %i.c = shl nsw i64 %i.b, 1                      ; 2 uses
  %i.d = icmp sgt i64 %3, 1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = srem i64 %4, 4
  %i.g = sub nsw i64 %4, %i.f                     ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph166.preheader, label %._crit_edge167

.lr.ph166.preheader:                              ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep232 = getelementptr i8, ptr %1, i64 16
  %scevgep234 = getelementptr i8, ptr %1, i64 24
  %i.i = shl i64 %3, 3                            ; 4 uses
  %i.j = shl i64 %3, 5
  br label %.lr.ph166

.preheader.lr.ph.split:                           ; preds = %._crit_edge167.1
  %i.k = load ptr, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.e, align 8, !tbaa !183  ; 3 uses
  %i.n = mul i64 %i.m, -8
  %i.o = mul i64 %.1133.lcssa.1, %i.m
  %i.p = shl i64 %i.o, 3
  %i.q = add i64 %i.p, %i.l
  %i.r = sub i64 %i.a, %i.q
  %min.iters.check329 = icmp ult i64 %3, 4
  %n.vec332 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n339 = icmp eq i64 %3, %n.vec332
  %xtraiter357.a = and i64 %3, 3                  ; 2 uses
  %lcmp.mod358.not.a = icmp eq i64 %xtraiter357.a, 0
  br label %.preheader

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %._crit_edge160
  %indvar = phi i64 [ 0, %.lr.ph166.preheader ], [ %indvar.next, %._crit_edge160 ] ; 2 uses
  %.1164 = phi i64 [ 0, %.lr.ph166.preheader ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %.1133162 = phi i64 [ 0, %.lr.ph166.preheader ], [ %i.fi, %._crit_edge160 ] ; 9 uses
  br i1 %i.d, label %.preheader140.us.preheader, label %.preheader141

.preheader140.us.preheader:                       ; preds = %.lr.ph166
  %i.s = or disjoint i64 %.1133162, 1
  %i.t = or disjoint i64 %.1133162, 2
  %i.u = or disjoint i64 %.1133162, 3
  br label %.preheader140.us

.preheader140.us:                                 ; preds = %.preheader140.us.preheader, %.preheader140.us
  %.2146.us = phi i64 [ %i.av, %.preheader140.us ], [ %.1164, %.preheader140.us.preheader ] ; 2 uses
  %.0128145.us = phi i64 [ %i.aw, %.preheader140.us ], [ 0, %.preheader140.us.preheader ] ; 3 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us ; 4 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !182
  %i.x = load i64, ptr %i.e, align 8, !tbaa !183  ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %.0128145.us ; 2 uses
  %i.z = mul nsw i64 %i.x, %.1133162
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load <2 x double>, ptr %i.aa, align 1, !tbaa !24 ; 2 uses
  %i.ac = mul nsw i64 %i.x, %i.s
  %i.ad = getelementptr [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !24 ; 2 uses
  %i.af = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.ag, ptr %i.v, align 16, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store <2 x double> %i.af, ptr %i.ah, align 16, !tbaa !24
  %i.ai = load ptr, ptr %2, align 8, !tbaa !182
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %.0128145.us ; 2 uses
  %i.al = mul nsw i64 %i.aj, %i.t
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !24 ; 2 uses
  %i.ao = mul nsw i64 %i.aj, %i.u
  %i.ap = getelementptr [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !24 ; 2 uses
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.as = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> %i.as, ptr %i.at, align 16, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store <2 x double> %i.ar, ptr %i.au, align 16, !tbaa !24
  %i.av = add nsw i64 %.2146.us, 8                ; 2 uses
  %i.aw = add nuw nsw i64 %.0128145.us, 2         ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.c
  br i1 %i.ax, label %.preheader140.us, label %.preheader141, !llvm.loop !760

.preheader141:                                    ; preds = %.preheader140.us, %.lr.ph166
  %.0128.lcssa = phi i64 [ 0, %.lr.ph166 ], [ %i.aw, %.preheader140.us ] ; 10 uses
  %.2.lcssa = phi i64 [ %.1164, %.lr.ph166 ], [ %i.av, %.preheader140.us ] ; 8 uses
  %i.ay = icmp slt i64 %.0128.lcssa, %3
  br i1 %i.ay, label %.preheader139.preheader, label %._crit_edge160

.preheader139.preheader:                          ; preds = %.preheader141
  %i.az = load ptr, ptr %2, align 8, !tbaa !182   ; 12 uses
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !183 ; 8 uses
  %i.bb = mul nsw i64 %i.ba, %.1133162            ; 4 uses
  %i.bc = or disjoint i64 %.1133162, 1
  %i.bd = mul nsw i64 %i.ba, %i.bc                ; 4 uses
  %i.be = or disjoint i64 %.1133162, 2
  %i.bf = mul nsw i64 %i.ba, %i.be                ; 4 uses
  %i.bg = or disjoint i64 %.1133162, 3
  %i.bh = mul nsw i64 %i.ba, %i.bg                ; 4 uses
  %i.bi = sub i64 %3, %.0128.lcssa                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bi, 68
  br i1 %min.iters.check, label %.loopexit.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader139.preheader
  %i.bj = xor i64 %.0128.lcssa, -1
  %i.bk = add i64 %3, %i.bj                       ; 2 uses
  %i.bl = shl i64 %.2.lcssa, 3                    ; 3 uses
  %scevgep231 = getelementptr i8, ptr %scevgep, i64 %i.bl ; 2 uses
  %mul.result = shl i64 %i.bk, 5                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.bk, 576460752303423487
  %i.bm = getelementptr i8, ptr %scevgep231, i64 %mul.result
  %i.bn = icmp ult ptr %i.bm, %scevgep231
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %i.bl ; 2 uses
  %i.bo = getelementptr i8, ptr %scevgep233, i64 %mul.result
  %i.bp = icmp ult ptr %i.bo, %scevgep233
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.bl ; 2 uses
  %i.bq = getelementptr i8, ptr %scevgep235, i64 %mul.result
  %i.br = icmp ult ptr %i.bq, %scevgep235
  %i.bs = or i1 %i.br, %mul.overflow
  %i.bt = or i1 %i.bp, %i.bn
  %i.bu = or i1 %i.bt, %i.bs
  br i1 %i.bu, label %.loopexit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bv = shl i64 %.2.lcssa, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bv     ; 4 uses
  %i.bx = shl i64 %.0128.lcssa, 5
  %7 = add i64 %i.j, %i.bv
  %i.by = sub i64 %7, %i.bx
  %i.bz = getelementptr i8, ptr %1, i64 %i.by     ; 4 uses
  %i.ca = shl i64 %indvar, 5                      ; 4 uses
  %i.cb = or disjoint i64 %i.ca, 24
  %i.cc = mul i64 %i.ba, %i.cb                    ; 2 uses
  %i.cd = shl i64 %.0128.lcssa, 3                 ; 4 uses
  %i.ce = getelementptr i8, ptr %i.az, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.cd
  %i.cg = getelementptr i8, ptr %i.az, i64 %i.cc
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.i
  %i.ci = or disjoint i64 %i.ca, 16
  %i.cj = mul i64 %i.ba, %i.ci                    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.az, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.cd
  %i.cm = getelementptr i8, ptr %i.az, i64 %i.cj
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.i
  %i.co = or disjoint i64 %i.ca, 8
  %i.cp = mul i64 %i.ba, %i.co                    ; 2 uses
  %i.cq = getelementptr i8, ptr %i.az, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cd
  %i.cs = getelementptr i8, ptr %i.az, i64 %i.cp
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.i
  %i.cu = mul i64 %i.ba, %i.ca                    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.az, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cd
  %i.cx = getelementptr i8, ptr %i.az, i64 %i.cu
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.i
  %bound0 = icmp ult ptr %i.bw, %i.ch
  %bound1 = icmp ult ptr %i.cf, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  %bound0260 = icmp ult ptr %i.bw, %i.cn
  %bound1261 = icmp ult ptr %i.cl, %i.bz
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx = or i1 %found.conflict, %found.conflict262
  %bound0263 = icmp ult ptr %i.bw, %i.ct
  %bound1264 = icmp ult ptr %i.cr, %i.bz
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %conflict.rdx, %found.conflict265
  %bound0267 = icmp ult ptr %i.bw, %i.cy
  %bound1268 = icmp ult ptr %i.cw, %i.bz
  %found.conflict269 = and i1 %bound0267, %bound1268
  %conflict.rdx270 = or i1 %conflict.rdx266, %found.conflict269
  br i1 %conflict.rdx270, label %.loopexit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, -2                      ; 4 uses
  %i.cz = shl i64 %n.vec, 2
  %i.da = add i64 %.2.lcssa, %i.cz                ; 2 uses
  %i.db = add i64 %.0128.lcssa, %n.vec
  %i.dc = getelementptr [8 x i8], ptr %i.az, i64 %.0128.lcssa
  %i.dd = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr [8 x i8], ptr %i.dc, i64 %index ; 4 uses
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.bb
  %wide.load = load <2 x double>, ptr %i.df, align 8, !tbaa !42, !alias.scope !781
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %i.bd
  %wide.load271 = load <2 x double>, ptr %i.dg, align 8, !tbaa !42, !alias.scope !782
  %i.dh = getelementptr [8 x i8], ptr %i.de, i64 %i.bf
  %wide.load272 = load <2 x double>, ptr %i.dh, align 8, !tbaa !42, !alias.scope !783
  %i.di = getelementptr [8 x i8], ptr %i.de, i64 %i.bh
  %wide.load273 = load <2 x double>, ptr %i.di, align 8, !tbaa !42, !alias.scope !784
  %.idx = shl i64 %index, 5
  %i.dj = getelementptr i8, ptr %i.dd, i64 %.idx
  %i.dk = shufflevector <2 x double> %wide.load, <2 x double> %wide.load271, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dl = shufflevector <2 x double> %wide.load272, <2 x double> %wide.load273, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.dk, <4 x double> %i.dl, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.dj, align 8, !tbaa !42, !alias.scope !785, !noalias !786
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !767

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge160, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader139.preheader, %middle.block
  %.4159.ph = phi i64 [ %.2.lcssa, %vector.memcheck ], [ %.2.lcssa, %vector.scevcheck ], [ %.2.lcssa, %.preheader139.preheader ], [ %i.da, %middle.block ] ; 3 uses
  %.2130157.ph = phi i64 [ %.0128.lcssa, %vector.memcheck ], [ %.0128.lcssa, %vector.scevcheck ], [ %.0128.lcssa, %.preheader139.preheader ], [ %i.db, %middle.block ] ; 5 uses
  %i.dn = sub i64 %3, %.2130157.ph
  %.neg = add i64 %.2130157.ph, 1
  %xtraiter = and i64 %i.dn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.prol.loopexit, label %.loopexit.prol

.loopexit.prol:                                   ; preds = %.loopexit.preheader
  %i.do = getelementptr [8 x i8], ptr %i.az, i64 %.2130157.ph ; 4 uses
  %i.dp = add nsw i64 %.4159.ph, 4                ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %i.do, i64 %i.bb
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !42
  %i.ds = getelementptr [8 x i8], ptr %i.do, i64 %i.bd
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !42
  %i.du = getelementptr [8 x i8], ptr %i.do, i64 %i.bf
  %i.dv = load double, ptr %i.du, align 8, !tbaa !42
  %i.dw = getelementptr [8 x i8], ptr %i.do, i64 %i.bh
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !42
  %i.dy = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.ph ; 4 uses
  store double %i.dr, ptr %i.dy, align 8, !tbaa !42
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  store double %i.dt, ptr %i.dz, align 8, !tbaa !42
  %i.ea = getelementptr i8, ptr %i.dy, i64 16
  store double %i.dv, ptr %i.ea, align 8, !tbaa !42
  %i.eb = getelementptr i8, ptr %i.dy, i64 24
  store double %i.dx, ptr %i.eb, align 8, !tbaa !42
  %i.ec = add nuw nsw i64 %.2130157.ph, 1
  br label %.loopexit.prol.loopexit

.loopexit.prol.loopexit:                          ; preds = %.loopexit.prol, %.loopexit.preheader
  %.lcssa350.unr = phi i64 [ poison, %.loopexit.preheader ], [ %i.dp, %.loopexit.prol ]
  %.4159.unr = phi i64 [ %.4159.ph, %.loopexit.preheader ], [ %i.dp, %.loopexit.prol ]
  %.2130157.unr = phi i64 [ %.2130157.ph, %.loopexit.preheader ], [ %i.ec, %.loopexit.prol ]
  %i.ed = icmp eq i64 %3, %.neg
  br i1 %i.ed, label %._crit_edge160, label %.loopexit

.loopexit:                                        ; preds = %.loopexit.prol.loopexit, %.loopexit
  %.4159 = phi i64 [ %i.et, %.loopexit ], [ %.4159.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %.2130157 = phi i64 [ %i.fh, %.loopexit ], [ %.2130157.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %i.ee = getelementptr [8 x i8], ptr %i.az, i64 %.2130157 ; 4 uses
  %i.ef = getelementptr [8 x i8], ptr %i.ee, i64 %i.bb
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !42
  %i.eh = getelementptr [8 x i8], ptr %i.ee, i64 %i.bd
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !42
  %i.ej = getelementptr [8 x i8], ptr %i.ee, i64 %i.bf
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !42
  %i.el = getelementptr [8 x i8], ptr %i.ee, i64 %i.bh
  %i.em = load double, ptr %i.el, align 8, !tbaa !42
  %i.en = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  store double %i.eg, ptr %i.en, align 8, !tbaa !42
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  store double %i.ei, ptr %i.eo, align 8, !tbaa !42
  %i.ep = getelementptr i8, ptr %i.en, i64 16
  store double %i.ek, ptr %i.ep, align 8, !tbaa !42
  %i.eq = getelementptr i8, ptr %i.en, i64 24
  store double %i.em, ptr %i.eq, align 8, !tbaa !42
  %i.er = getelementptr [8 x i8], ptr %i.az, i64 %.2130157
  %i.es = getelementptr i8, ptr %i.er, i64 8      ; 4 uses
  %i.et = add nsw i64 %.4159, 8                   ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.es, i64 %i.bb
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !42
  %i.ew = getelementptr [8 x i8], ptr %i.es, i64 %i.bd
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !42
  %i.ey = getelementptr [8 x i8], ptr %i.es, i64 %i.bf
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !42
  %i.fa = getelementptr [8 x i8], ptr %i.es, i64 %i.bh
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !42
  %i.fc = getelementptr [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 32
  store double %i.ev, ptr %i.fd, align 8, !tbaa !42
  %i.fe = getelementptr i8, ptr %i.fc, i64 40
  store double %i.ex, ptr %i.fe, align 8, !tbaa !42
  %i.ff = getelementptr i8, ptr %i.fc, i64 48
  store double %i.ez, ptr %i.ff, align 8, !tbaa !42
  %i.fg = getelementptr i8, ptr %i.fc, i64 56
  store double %i.fb, ptr %i.fg, align 8, !tbaa !42
  %i.fh = add nuw nsw i64 %.2130157, 2            ; 2 uses
  %exitcond190.not.1 = icmp eq i64 %i.fh, %3
  br i1 %exitcond190.not.1, label %._crit_edge160, label %.loopexit, !llvm.loop !768

._crit_edge160:                                   ; preds = %.loopexit.prol.loopexit, %.loopexit, %middle.block, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %i.da, %middle.block ], [ %.lcssa350.unr, %.loopexit.prol.loopexit ], [ %i.et, %.loopexit ] ; 2 uses
  %i.fi = add i64 %.1133162, 4                    ; 3 uses
  %i.fj = icmp slt i64 %i.fi, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fj, label %.lr.ph166, label %._crit_edge167, !llvm.loop !769

._crit_edge167:                                   ; preds = %._crit_edge160, %bb.a
  %.1133.lcssa = phi i64 [ 0, %bb.a ], [ %i.fi, %._crit_edge160 ] ; 5 uses
  %.1.lcssa = phi i64 [ 0, %bb.a ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %i.fk = sub i64 %4, %.1133.lcssa
  %i.fl = srem i64 %i.fk, 2
  %i.fm = sub i64 %4, %i.fl                       ; 2 uses
  %i.fn = icmp slt i64 %.1133.lcssa, %i.fm
  br i1 %i.fn, label %.lr.ph166.1.preheader, label %._crit_edge167.1

.lr.ph166.1.preheader:                            ; preds = %._crit_edge167
  %scevgep276 = getelementptr i8, ptr %1, i64 8
  %i.fo = shl i64 %.1133.lcssa, 3                 ; 2 uses
  %i.fp = shl i64 %3, 3                           ; 2 uses
  %i.fq = add i64 %i.fo, 8
  %i.fr = shl i64 %3, 4
  br label %.lr.ph166.1

.lr.ph166.1:                                      ; preds = %.lr.ph166.1.preheader, %._crit_edge160.1
  %indvar299 = phi i64 [ 0, %.lr.ph166.1.preheader ], [ %indvar.next300, %._crit_edge160.1 ] ; 2 uses
  %.1164.1 = phi i64 [ %.1.lcssa, %.lr.ph166.1.preheader ], [ %.4.lcssa.1, %._crit_edge160.1 ] ; 2 uses
  %.1133162.1 = phi i64 [ %.1133.lcssa, %.lr.ph166.1.preheader ], [ %i.jf, %._crit_edge160.1 ] ; 5 uses
  br i1 %i.d, label %.preheader140.us.preheader.1, label %.preheader141.1

.preheader140.us.preheader.1:                     ; preds = %.lr.ph166.1
  %i.fs = add nsw i64 %.1133162.1, 1
  br label %.preheader140.us.1

.preheader140.us.1:                               ; preds = %.preheader140.us.1, %.preheader140.us.preheader.1
  %.2146.us.1 = phi i64 [ %i.gg, %.preheader140.us.1 ], [ %.1164.1, %.preheader140.us.preheader.1 ] ; 2 uses
  %.0128145.us.1 = phi i64 [ %i.gh, %.preheader140.us.1 ], [ 0, %.preheader140.us.preheader.1 ] ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us.1 ; 2 uses
  %i.fu = load ptr, ptr %2, align 8, !tbaa !182
  %i.fv = load i64, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.fu, i64 %.0128145.us.1 ; 2 uses
  %i.fx = mul nsw i64 %i.fv, %.1133162.1
  %i.fy = getelementptr [8 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = load <2 x double>, ptr %i.fy, align 1, !tbaa !24 ; 2 uses
  %i.ga = mul nsw i64 %i.fv, %i.fs
  %i.gb = getelementptr [8 x i8], ptr %i.fw, i64 %i.ga
  %i.gc = load <2 x double>, ptr %i.gb, align 1, !tbaa !24 ; 2 uses
  %i.gd = shufflevector <2 x double> %i.fz, <2 x double> %i.gc, <2 x i32> <i32 1, i32 3>
  %i.ge = shufflevector <2 x double> %i.fz, <2 x double> %i.gc, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.ge, ptr %i.ft, align 16, !tbaa !24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <2 x double> %i.gd, ptr %i.gf, align 16, !tbaa !24
  %i.gg = add nsw i64 %.2146.us.1, 4              ; 2 uses
  %i.gh = add nuw nsw i64 %.0128145.us.1, 2       ; 3 uses
  %i.gi = icmp slt i64 %i.gh, %i.c
  br i1 %i.gi, label %.preheader140.us.1, label %.preheader141.1, !llvm.loop !760

.preheader141.1:                                  ; preds = %.preheader140.us.1, %.lr.ph166.1
  %.0128.lcssa.1 = phi i64 [ 0, %.lr.ph166.1 ], [ %i.gh, %.preheader140.us.1 ] ; 10 uses
  %.2.lcssa.1 = phi i64 [ %.1164.1, %.lr.ph166.1 ], [ %i.gg, %.preheader140.us.1 ] ; 8 uses
  %i.gj = icmp slt i64 %.0128.lcssa.1, %3
  br i1 %i.gj, label %.preheader139.preheader.1, label %._crit_edge160.1

.preheader139.preheader.1:                        ; preds = %.preheader141.1
  %i.gk = load ptr, ptr %2, align 8, !tbaa !182   ; 8 uses
  %i.gl = load i64, ptr %i.e, align 8, !tbaa !183 ; 4 uses
  %i.gm = mul nsw i64 %i.gl, %.1133162.1          ; 4 uses
  %i.gn = add nsw i64 %.1133162.1, 1
  %i.go = mul nsw i64 %i.gl, %i.gn                ; 4 uses
  %i.gp = sub i64 %3, %.0128.lcssa.1              ; 3 uses
  %min.iters.check302 = icmp ult i64 %i.gp, 42
  br i1 %min.iters.check302, label %.loopexit.1.preheader, label %vector.scevcheck275

vector.scevcheck275:                              ; preds = %.preheader139.preheader.1
  %i.gq = xor i64 %.0128.lcssa.1, -1
  %i.gr = add i64 %3, %i.gq                       ; 2 uses
  %i.gs = shl i64 %.2.lcssa.1, 3
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.gs ; 2 uses
  %mul.result279 = shl i64 %i.gr, 4
  %mul.overflow280 = icmp ugt i64 %i.gr, 1152921504606846975
  %i.gt = getelementptr i8, ptr %scevgep277, i64 %mul.result279
  %i.gu = icmp ult ptr %i.gt, %scevgep277
  %i.gv = or i1 %i.gu, %mul.overflow280
  br i1 %i.gv, label %.loopexit.1.preheader, label %vector.memcheck303

vector.memcheck303:                               ; preds = %vector.scevcheck275
  %i.gw = shl i64 %.2.lcssa.1, 3                  ; 2 uses
  %i.gx = getelementptr i8, ptr %1, i64 %i.gw     ; 2 uses
  %i.gy = shl i64 %.0128.lcssa.1, 4
  %8 = add i64 %i.fr, %i.gw
  %i.gz = sub i64 %8, %i.gy
  %i.ha = getelementptr i8, ptr %1, i64 %i.gz     ; 2 uses
  %i.hb = shl i64 %indvar299, 4                   ; 2 uses
  %i.hc = add i64 %i.fq, %i.hb
  %i.hd = mul i64 %i.gl, %i.hc                    ; 2 uses
  %i.he = shl i64 %.0128.lcssa.1, 3               ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gk, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.he
  %i.hh = getelementptr i8, ptr %i.gk, i64 %i.hd
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.fp
  %i.hj = add i64 %i.fo, %i.hb
  %i.hk = mul i64 %i.gl, %i.hj                    ; 2 uses
  %i.hl = getelementptr i8, ptr %i.gk, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.he
  %i.hn = getelementptr i8, ptr %i.gk, i64 %i.hk
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.fp
  %bound0304 = icmp ult ptr %i.gx, %i.hi
  %bound1305 = icmp ult ptr %i.hg, %i.ha
  %found.conflict306 = and i1 %bound0304, %bound1305
  %bound0307 = icmp ult ptr %i.gx, %i.ho
  %bound1308 = icmp ult ptr %i.hm, %i.ha
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %found.conflict306, %found.conflict309
  br i1 %conflict.rdx310, label %.loopexit.1.preheader, label %vector.ph311

vector.ph311:                                     ; preds = %vector.memcheck303
  %n.vec312 = and i64 %i.gp, -2                   ; 4 uses
  %i.hp = shl i64 %n.vec312, 1
  %i.hq = add i64 %.2.lcssa.1, %i.hp              ; 2 uses
  %i.hr = add i64 %.0128.lcssa.1, %n.vec312
  %i.hs = getelementptr [8 x i8], ptr %i.gk, i64 %.0128.lcssa.1
  %i.ht = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa.1
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph311
  %index314 = phi i64 [ 0, %vector.ph311 ], [ %index.next318, %vector.body313 ] ; 3 uses
  %i.hu = getelementptr [8 x i8], ptr %i.hs, i64 %index314 ; 2 uses
  %i.hv = getelementptr [8 x i8], ptr %i.hu, i64 %i.gm
  %wide.load315 = load <2 x double>, ptr %i.hv, align 8, !tbaa !42, !alias.scope !787
  %.idx342 = shl i64 %index314, 4
  %i.hw = getelementptr i8, ptr %i.ht, i64 %.idx342
  %i.hx = getelementptr [8 x i8], ptr %i.hu, i64 %i.go
  %wide.load316 = load <2 x double>, ptr %i.hx, align 8, !tbaa !42, !alias.scope !788
  %interleaved.vec317 = shufflevector <2 x double> %wide.load315, <2 x double> %wide.load316, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec317, ptr %i.hw, align 8, !tbaa !42, !alias.scope !789, !noalias !790
  %index.next318 = add nuw i64 %index314, 2       ; 2 uses
  %i.hy = icmp eq i64 %index.next318, %n.vec312
  br i1 %i.hy, label %middle.block319, label %vector.body313, !llvm.loop !774

middle.block319:                                  ; preds = %vector.body313
  %cmp.n320 = icmp eq i64 %i.gp, %n.vec312
  br i1 %cmp.n320, label %._crit_edge160.1, label %.loopexit.1.preheader

.loopexit.1.preheader:                            ; preds = %vector.memcheck303, %vector.scevcheck275, %.preheader139.preheader.1, %middle.block319
  %.4159.1.ph = phi i64 [ %.2.lcssa.1, %vector.memcheck303 ], [ %.2.lcssa.1, %vector.scevcheck275 ], [ %.2.lcssa.1, %.preheader139.preheader.1 ], [ %i.hq, %middle.block319 ] ; 4 uses
  %.2130157.1.ph = phi i64 [ %.0128.lcssa.1, %vector.memcheck303 ], [ %.0128.lcssa.1, %vector.scevcheck275 ], [ %.0128.lcssa.1, %.preheader139.preheader.1 ], [ %i.hr, %middle.block319 ] ; 5 uses
  %i.hz = sub i64 %3, %.2130157.1.ph
  %.neg359 = add i64 %.2130157.1.ph, 1
  %xtraiter355 = and i64 %i.hz, 1
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.loopexit.1.prol.loopexit, label %.loopexit.1.prol

.loopexit.1.prol:                                 ; preds = %.loopexit.1.preheader
  %i.ia = getelementptr [8 x i8], ptr %i.gk, i64 %.2130157.1.ph ; 2 uses
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %i.gm
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !42
  %i.id = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1.ph
  store double %i.ic, ptr %i.id, align 8, !tbaa !42
  %i.ie = getelementptr [8 x i8], ptr %i.ia, i64 %i.go
  %i.if = load double, ptr %i.ie, align 8, !tbaa !42
  %i.ig = add i64 %.4159.1.ph, 2                  ; 2 uses
  %i.ih = getelementptr [8 x i8], ptr %1, i64 %.4159.1.ph
  %i.ii = getelementptr i8, ptr %i.ih, i64 8
  store double %i.if, ptr %i.ii, align 8, !tbaa !42
  %i.ij = add nuw nsw i64 %.2130157.1.ph, 1
  br label %.loopexit.1.prol.loopexit

.loopexit.1.prol.loopexit:                        ; preds = %.loopexit.1.prol, %.loopexit.1.preheader
  %.lcssa346.unr = phi i64 [ poison, %.loopexit.1.preheader ], [ %i.ig, %.loopexit.1.prol ]
  %.4159.1.unr = phi i64 [ %.4159.1.ph, %.loopexit.1.preheader ], [ %i.ig, %.loopexit.1.prol ]
  %.2130157.1.unr = phi i64 [ %.2130157.1.ph, %.loopexit.1.preheader ], [ %i.ij, %.loopexit.1.prol ]
  %i.ik = icmp eq i64 %3, %.neg359
  br i1 %i.ik, label %._crit_edge160.1, label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1
  %.4159.1 = phi i64 [ %i.jb, %.loopexit.1 ], [ %.4159.1.unr, %.loopexit.1.prol.loopexit ] ; 4 uses
  %.2130157.1 = phi i64 [ %i.je, %.loopexit.1 ], [ %.2130157.1.unr, %.loopexit.1.prol.loopexit ] ; 3 uses
  %i.il = getelementptr [8 x i8], ptr %i.gk, i64 %.2130157.1 ; 2 uses
  %i.im = getelementptr [8 x i8], ptr %i.il, i64 %i.gm
  %i.in = load double, ptr %i.im, align 8, !tbaa !42
  %i.io = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1
  store double %i.in, ptr %i.io, align 8, !tbaa !42
  %i.ip = getelementptr [8 x i8], ptr %i.il, i64 %i.go
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !42
  %i.ir = add i64 %.4159.1, 2                     ; 2 uses
  %i.is = getelementptr [8 x i8], ptr %1, i64 %.4159.1
  %i.it = getelementptr i8, ptr %i.is, i64 8
  store double %i.iq, ptr %i.it, align 8, !tbaa !42
  %i.iu = getelementptr [8 x i8], ptr %i.gk, i64 %.2130157.1
  %i.iv = getelementptr i8, ptr %i.iu, i64 8      ; 2 uses
  %i.iw = getelementptr [8 x i8], ptr %i.iv, i64 %i.gm
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !42
  %i.iy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ir
  store double %i.ix, ptr %i.iy, align 8, !tbaa !42
  %i.iz = getelementptr [8 x i8], ptr %i.iv, i64 %i.go
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !42
  %i.jb = add i64 %.4159.1, 4                     ; 2 uses
  %i.jc = getelementptr [8 x i8], ptr %1, i64 %i.ir
  %i.jd = getelementptr i8, ptr %i.jc, i64 8
  store double %i.ja, ptr %i.jd, align 8, !tbaa !42
  %i.je = add nuw nsw i64 %.2130157.1, 2          ; 2 uses
  %exitcond190.1.not.1 = icmp eq i64 %i.je, %3
  br i1 %exitcond190.1.not.1, label %._crit_edge160.1, label %.loopexit.1, !llvm.loop !775

._crit_edge160.1:                                 ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1, %middle.block319, %.preheader141.1
  %.4.lcssa.1 = phi i64 [ %.2.lcssa.1, %.preheader141.1 ], [ %i.hq, %middle.block319 ], [ %.lcssa346.unr, %.loopexit.1.prol.loopexit ], [ %i.jb, %.loopexit.1 ] ; 2 uses
  %i.jf = add i64 %.1133162.1, 2                  ; 3 uses
  %i.jg = icmp slt i64 %i.jf, %i.fm
  %indvar.next300 = add i64 %indvar299, 1
  br i1 %i.jg, label %.lr.ph166.1, label %._crit_edge167.1, !llvm.loop !769

._crit_edge167.1:                                 ; preds = %._crit_edge160.1, %._crit_edge167
  %.1133.lcssa.1 = phi i64 [ %.1133.lcssa, %._crit_edge167 ], [ %i.jf, %._crit_edge160.1 ] ; 3 uses
  %.1.lcssa.1 = phi i64 [ %.1.lcssa, %._crit_edge167 ], [ %.4.lcssa.1, %._crit_edge160.1 ]
  %i.jh = icmp slt i64 %.1133.lcssa.1, %4
  %i.ji = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.jh, %i.ji
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge180.split

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge176
  %indvar326 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next327, %._crit_edge176 ] ; 2 uses
  %.8179 = phi i64 [ %.1.lcssa.1, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge176 ] ; 5 uses
  %.2134178 = phi i64 [ %.1133.lcssa.1, %.preheader.lr.ph.split ], [ %i.kc, %._crit_edge176 ] ; 2 uses
  %i.jj = mul nsw i64 %i.m, %.2134178
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.jj ; 6 uses
  br i1 %min.iters.check329, label %scalar.ph328.preheader, label %vector.memcheck330

vector.memcheck330:                               ; preds = %.preheader
  %i.jk = mul i64 %indvar326, %i.n
  %i.jl = add i64 %i.r, %i.jk
  %i.jm = shl i64 %.8179, 3
  %i.jn = add i64 %i.jl, %i.jm
  %i.jo = add i64 %i.jn, -1
  %diff.check = icmp ult i64 %i.jo, 31
  br i1 %diff.check, label %scalar.ph328.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck330
  %i.jp = add i64 %.8179, %n.vec332               ; 2 uses
  %i.jq = getelementptr [8 x i8], ptr %1, i64 %.8179
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next337, %vector.body333 ] ; 3 uses
  %i.jr = getelementptr [8 x i8], ptr %invariant.gep, i64 %index334 ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 16
  %wide.load335 = load <2 x double>, ptr %i.jr, align 8, !tbaa !42
  %wide.load336 = load <2 x double>, ptr %i.js, align 8, !tbaa !42
  %i.jt = getelementptr [8 x i8], ptr %i.jq, i64 %index334 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store <2 x double> %wide.load335, ptr %i.jt, align 8, !tbaa !42
  store <2 x double> %wide.load336, ptr %i.ju, align 8, !tbaa !42
  %index.next337 = add nuw i64 %index334, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next337, %n.vec332
  br i1 %i.jv, label %middle.block338, label %vector.body333, !llvm.loop !776

middle.block338:                                  ; preds = %vector.body333
  br i1 %cmp.n339, label %._crit_edge176, label %scalar.ph328.preheader

scalar.ph328.preheader:                           ; preds = %vector.memcheck330, %.preheader, %middle.block338
  %.0174.ph = phi i64 [ 0, %vector.memcheck330 ], [ 0, %.preheader ], [ %n.vec332, %middle.block338 ] ; 3 uses
  %.9173.ph = phi i64 [ %.8179, %vector.memcheck330 ], [ %.8179, %.preheader ], [ %i.jp, %middle.block338 ] ; 2 uses
  br i1 %lcmp.mod358.not.a, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol

scalar.ph328.prol:                                ; preds = %scalar.ph328.preheader, %scalar.ph328.prol
  %.0174.prol = phi i64 [ %i.jz, %scalar.ph328.prol ], [ %.0174.ph, %scalar.ph328.preheader ] ; 2 uses
  %.9173.prol = phi i64 [ %i.jx, %scalar.ph328.prol ], [ %.9173.ph, %scalar.ph328.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph328.prol ], [ 0, %scalar.ph328.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174.prol
  %i.jw = load double, ptr %gep.prol, align 8, !tbaa !42
  %i.jx = add nsw i64 %.9173.prol, 1              ; 3 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173.prol
  store double %i.jw, ptr %i.jy, align 8, !tbaa !42
  %i.jz = add nuw nsw i64 %.0174.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter357.a
  br i1 %prol.iter.cmp.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol, !llvm.loop !777

scalar.ph328.prol.loopexit:                       ; preds = %scalar.ph328.prol, %scalar.ph328.preheader
  %.lcssa343.unr = phi i64 [ poison, %scalar.ph328.preheader ], [ %i.jx, %scalar.ph328.prol ]
  %.0174.unr = phi i64 [ %.0174.ph, %scalar.ph328.preheader ], [ %i.jz, %scalar.ph328.prol ]
  %.9173.unr = phi i64 [ %.9173.ph, %scalar.ph328.preheader ], [ %i.jx, %scalar.ph328.prol ]
  %i.ka = sub nsw i64 %.0174.ph, %3
  %i.kb = icmp ugt i64 %i.ka, -4
  br i1 %i.kb, label %._crit_edge176, label %scalar.ph328

._crit_edge176:                                   ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328, %middle.block338
  %.lcssa = phi i64 [ %i.jp, %middle.block338 ], [ %.lcssa343.unr, %scalar.ph328.prol.loopexit ], [ %i.kp, %scalar.ph328 ]
  %i.kc = add nuw nsw i64 %.2134178, 1            ; 2 uses
  %exitcond191.not = icmp eq i64 %i.kc, %4
  %indvar.next327 = add i64 %indvar326, 1
  br i1 %exitcond191.not, label %._crit_edge180.split, label %.preheader, !llvm.loop !778

scalar.ph328:                                     ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328
  %.0174 = phi i64 [ %i.ks, %scalar.ph328 ], [ %.0174.unr, %scalar.ph328.prol.loopexit ] ; 5 uses
  %.9173 = phi i64 [ %i.kp, %scalar.ph328 ], [ %.9173.unr, %scalar.ph328.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %i.kd = load double, ptr %gep, align 8, !tbaa !42
  %i.ke = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173
  store double %i.kd, ptr %i.ke, align 8, !tbaa !42
  %i.kf = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.1 = getelementptr i8, ptr %i.kf, i64 8
  %i.kg = load double, ptr %gep.1, align 8, !tbaa !42
  %i.kh = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.ki = getelementptr i8, ptr %i.kh, i64 8
  store double %i.kg, ptr %i.ki, align 8, !tbaa !42
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.2 = getelementptr i8, ptr %i.kj, i64 16
  %i.kk = load double, ptr %gep.2, align 8, !tbaa !42
  %i.kl = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.km = getelementptr i8, ptr %i.kl, i64 16
  store double %i.kk, ptr %i.km, align 8, !tbaa !42
  %i.kn = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.3 = getelementptr i8, ptr %i.kn, i64 24
  %i.ko = load double, ptr %gep.3, align 8, !tbaa !42
  %i.kp = add nsw i64 %.9173, 4                   ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.kr = getelementptr i8, ptr %i.kq, i64 24
  store double %i.ko, ptr %i.kr, align 8, !tbaa !42
  %i.ks = add nuw nsw i64 %.0174, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ks, %3
  br i1 %exitcond.not.3, label %._crit_edge176, label %scalar.ph328, !llvm.loop !779

._crit_edge180.split:                             ; preds = %._crit_edge176, %._crit_edge167.1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !193
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !185    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !186  ; 12 uses
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
  %i.l = mul i64 %i.g, %i.k
  %i.m = shl i64 %i.l, 5
  %i.n = shl i64 %3, 3                            ; 4 uses
  %i.o = getelementptr i8, ptr %i.e, i64 %i.m
  %scevgep106 = getelementptr i8, ptr %i.o, i64 %i.n
  %i.p = shl i64 %i.j, 3                          ; 3 uses
  %i.q = or disjoint i64 %i.p, 8
  %i.r = mul i64 %i.g, %i.q
  %i.s = getelementptr i8, ptr %i.e, i64 %i.r
  %scevgep107 = getelementptr i8, ptr %i.s, i64 %i.n
  %i.t = shl i64 %i.g, 3
  %scevgep108 = getelementptr i8, ptr %i.e, i64 %i.t
  %i.u = or disjoint i64 %i.p, 16
  %i.v = mul i64 %i.g, %i.u
  %i.w = getelementptr i8, ptr %i.e, i64 %i.v
  %scevgep109 = getelementptr i8, ptr %i.w, i64 %i.n
  %i.x = shl i64 %i.g, 4
  %scevgep110 = getelementptr i8, ptr %i.e, i64 %i.x
  %i.y = or disjoint i64 %i.p, 24
  %i.z = mul i64 %i.g, %i.y
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.z
  %scevgep111 = getelementptr i8, ptr %i.aa, i64 %i.n
  %i.ab = mul i64 %i.g, 24
  %scevgep112 = getelementptr i8, ptr %i.e, i64 %i.ab
  %i.ac = shl i64 %3, 5
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep111, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep109, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep107, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep106, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep110, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep108, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.e, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %7 = getelementptr i8, ptr %1, i64 %i.ac
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.du, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.am = mul nsw i64 %i.g, %.04460.us
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 1
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.04460.us, 2
  %i.as = mul nsw i64 %i.g, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.e, i64 %i.as ; 4 uses
  %i.au = or disjoint i64 %.04460.us, 3
  %i.av = mul nsw i64 %i.g, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.e, i64 %i.av ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ax = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.az = icmp ult ptr %i.ay, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ax ; 2 uses
  %i.ba = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.bb = icmp ult ptr %i.ba, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ax ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %scevgep84
  %i.be = or i1 %i.bd, %mul.overflow
  %i.bf = or i1 %i.bb, %i.az
  %i.bg = or i1 %i.bf, %i.be
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bh = shl i64 %.04559.us, 3                   ; 2 uses
  %i.bi = getelementptr i8, ptr %1, i64 %i.bh
  %i.bj = getelementptr i8, ptr %7, i64 %i.bh
  %i.bk = insertelement <4 x ptr> poison, ptr %i.bi, i64 0
  %i.bl = shufflevector <4 x ptr> %i.bk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bm = icmp ult <4 x ptr> %i.bl, %i.ag
  %i.bn = insertelement <4 x ptr> poison, ptr %i.bj, i64 0
  %i.bo = shufflevector <4 x ptr> %i.bn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bp = icmp ult <4 x ptr> %i.ak, %i.bo
  %i.bq = and <4 x i1> %i.bm, %i.bp
  %i.br = bitcast <4 x i1> %i.bq to i4
  %i.bs = icmp ne i4 %i.br, 0
  %op.rdx = or i1 %i.bs, %stride.check
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bt = add i64 %.04559.us, %i.al               ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load = load <2 x double>, ptr %i.bv, align 8, !tbaa !42, !alias.scope !804
  %.idx = shl i64 %index, 5
  %i.bw = getelementptr i8, ptr %i.bu, i64 %.idx
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load124 = load <2 x double>, ptr %i.bx, align 8, !tbaa !42, !alias.scope !805
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load125 = load <2 x double>, ptr %i.by, align 8, !tbaa !42, !alias.scope !806
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load126 = load <2 x double>, ptr %i.bz, align 8, !tbaa !42, !alias.scope !807
  %i.ca = shufflevector <2 x double> %wide.load, <2 x double> %wide.load124, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cb = shufflevector <2 x double> %wide.load125, <2 x double> %wide.load126, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.ca, <4 x double> %i.cb, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bw, align 8, !tbaa !42, !alias.scope !808, !noalias !809
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.bt, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !42
  %i.cf = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.ce, ptr %i.cf, align 8, !tbaa !42
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !42
  %i.ci = getelementptr i8, ptr %i.cf, i64 8
  store double %i.ch, ptr %i.ci, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us.ph
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !42
  %i.cl = getelementptr i8, ptr %i.cf, i64 16
  store double %i.ck, ptr %i.cl, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us.ph
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !42
  %i.co = getelementptr i8, ptr %i.cf, i64 24
  store double %i.cn, ptr %i.co, align 8, !tbaa !42
  %i.cp = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.cq = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa144.unr.a = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cp, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cp, %scalar.ph.prol ]
  %i.cr = icmp eq i64 %3, %.neg
  br i1 %i.cr, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dt, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.ds, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !42
  %i.cu = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.ct, ptr %i.cu, align 8, !tbaa !42
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !42
  %i.cx = getelementptr i8, ptr %i.cu, i64 8
  store double %i.cw, ptr %i.cx, align 8, !tbaa !42
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !42
  %i.da = getelementptr i8, ptr %i.cu, i64 16
  store double %i.cz, ptr %i.da, align 8, !tbaa !42
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us
  %i.dc = load double, ptr %i.db, align 8, !tbaa !42
  %i.dd = getelementptr i8, ptr %i.cu, i64 24
  store double %i.dc, ptr %i.dd, align 8, !tbaa !42
  %i.de = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !42
  %i.dh = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 32
  store double %i.dg, ptr %i.di, align 8, !tbaa !42
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.de
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !42
  %i.dl = getelementptr i8, ptr %i.dh, i64 40
  store double %i.dk, ptr %i.dl, align 8, !tbaa !42
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.de
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !42
  %i.do = getelementptr i8, ptr %i.dh, i64 48
  store double %i.dn, ptr %i.do, align 8, !tbaa !42
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.de
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !42
  %i.dr = getelementptr i8, ptr %i.dh, i64 56
  store double %i.dq, ptr %i.dr, align 8, !tbaa !42
  %i.ds = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dt = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dt, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !798

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.bt, %middle.block ], [ %.lcssa144.unr.a, %scalar.ph.prol.loopexit ], [ %i.ds, %scalar.ph ] ; 2 uses
  %i.du = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dv = icmp slt i64 %i.du, %i.c
  br i1 %i.dv, label %.lr.ph.us, label %.preheader, !llvm.loop !799

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.dw = icmp slt i64 %i.c, %4
  br i1 %i.dw, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dx = load ptr, ptr %2, align 8, !tbaa !185   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !186 ; 3 uses
  %i.ea = icmp sgt i64 %3, 0
  br i1 %i.ea, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.eb = ptrtoaddr ptr %i.dx to i64
  %i.ec = mul i64 %i.dz, -8
  %i.ed = mul i64 %i.dz, %i.b
  %i.ee = shl i64 %i.ed, 5
  %i.ef = add i64 %i.ee, %i.eb
  %i.eg = sub i64 %i.a, %i.ef
  %min.iters.check130 = icmp ult i64 %3, 4
  %n.vec133 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n140 = icmp eq i64 %3, %n.vec133
  %xtraiter145 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fc, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.eh = mul nsw i64 %i.dz, %.04267
  %i.ei = getelementptr [8 x i8], ptr %i.dx, i64 %i.eh ; 6 uses
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph
  %i.ej = mul i64 %indvar, %i.ec
  %i.ek = add i64 %i.eg, %i.ej
  %i.el = shl i64 %.266, 3
  %i.em = add i64 %i.ek, %i.el
  %i.en = add i64 %i.em, -1
  %diff.check = icmp ult i64 %i.en, 31
  br i1 %diff.check, label %scalar.ph129.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck131
  %i.eo = add i64 %.266, %n.vec133                ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index135 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load136 = load <2 x double>, ptr %i.eq, align 8, !tbaa !42
  %wide.load137 = load <2 x double>, ptr %i.er, align 8, !tbaa !42
  %i.es = getelementptr [8 x i8], ptr %i.ep, i64 %index135 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x double> %wide.load136, ptr %i.es, align 8, !tbaa !42
  store <2 x double> %wide.load137, ptr %i.et, align 8, !tbaa !42
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.eu, label %middle.block139, label %vector.body134, !llvm.loop !800

middle.block139:                                  ; preds = %vector.body134
  br i1 %cmp.n140, label %._crit_edge, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck131, %.lr.ph, %middle.block139
  %.065.ph = phi i64 [ 0, %vector.memcheck131 ], [ 0, %.lr.ph ], [ %n.vec133, %middle.block139 ] ; 3 uses
  %.364.ph = phi i64 [ %.266, %vector.memcheck131 ], [ %.266, %.lr.ph ], [ %i.eo, %middle.block139 ] ; 2 uses
  br i1 %lcmp.mod146.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %.065.prol = phi i64 [ %i.ez, %scalar.ph129.prol ], [ %.065.ph, %scalar.ph129.preheader ] ; 2 uses
  %.364.prol = phi i64 [ %i.ey, %scalar.ph129.prol ], [ %.364.ph, %scalar.ph129.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.065.prol
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil:bb.a

._crit_edge.thread:                               ; preds = %_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE5blockIllEENS7_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllSA_SB_.exit
  br i1 %i.cf, label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit, label %._crit_edge221.split

.lr.ph220:                                        ; preds = %._crit_edge, %._crit_edge.thread232
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bl, null     ; 2 uses
  %i.fa = icmp sgt i64 %i.bd, 0
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i94.preheader.preheader, label %._crit_edge221.split

.lr.ph.i.i.i.i.i.i94.preheader.preheader:         ; preds = %.lr.ph220
  %min.iters.check = icmp ugt i64 %i.bd, 3
  %ident.check.not = icmp eq i64 %i.bo, 1
  %or.cond279 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.bd, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  %i.fb = sub i64 %i.az, %.sroa.speculated
  %xtraiter282 = and i64 %i.fb, 1
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br label %.lr.ph.i.i.i.i.i.i94.preheader

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader281, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit
  %.052218 = phi i64 [ %i.ff, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit ], [ %.052218.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader281 ] ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %4, i64 %.052218 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !43
  %i.fe = add nsw i32 %i.fd, %i.dh
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !43
  %i.ff = add nsw i64 %.052218, 1                 ; 2 uses
  %i.fg = icmp slt i64 %i.ff, %i.bc
  br i1 %i.fg, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %._crit_edge.thread232, !llvm.loop !977

._crit_edge221.split:                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit, %._crit_edge.thread, %.lr.ph220
  %i.fh = load i64, ptr %i.q, align 8, !tbaa !91
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge221.split
  call void @_ZN5Eigen8internal26triangular_solver_selectorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_Li1ELi5ELi0ELin1EE3runERKS7_RS7_(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %13)
  br label %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit: ; preds = %._crit_edge221.split, %bb.d
  %i.fj = load i64, ptr %i.s, align 8, !tbaa !91  ; 2 uses
  %i.fk = load i64, ptr %i.y, align 8, !tbaa !91
  %i.fl = add nsw i64 %i.fk, %i.fj
  %i.fm = load i64, ptr %i.z, align 8, !tbaa !91
  %i.fn = add nsw i64 %i.fl, %i.fm
  %i.fo = icmp slt i64 %i.fn, 20
  %i.fp = icmp sgt i64 %i.fj, 0
  %or.cond.i.i.i.i91 = and i1 %i.fp, %i.fo
  br i1 %or.cond.i.i.i.i91, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %14, ptr %7, align 8, !tbaa !987
  store ptr %13, ptr %i.ab, align 8, !tbaa !987
  %i.fq = load ptr, ptr %14, align 8, !tbaa !217
  store ptr %i.fq, ptr %i.ac, align 8, !tbaa !220
  %i.fr = load i64, ptr %i.x, align 8, !tbaa !91
  store i64 %i.fr, ptr %i.ad, align 8, !tbaa !91
  %i.fs = load ptr, ptr %13, align 8, !tbaa !217
  store ptr %i.fs, ptr %i.ae, align 8, !tbaa !220
  %i.ft = load i64, ptr %i.u, align 8, !tbaa !91
  store i64 %i.ft, ptr %i.af, align 8, !tbaa !91
  %i.fu = load i64, ptr %i.w, align 8, !tbaa !91
  store i64 %i.fu, ptr %i.ag, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.fv = load ptr, ptr %15, align 8, !tbaa !217
  store ptr %i.fv, ptr %8, align 8, !tbaa !220
  %i.fw = load i64, ptr %i.aa, align 8, !tbaa !91
  store i64 %i.fw, ptr %i.ah, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %8, ptr %9, align 8, !tbaa !988
  store ptr %7, ptr %i.ai, align 8, !tbaa !989
  store ptr %10, ptr %i.aj, align 8, !tbaa !227
  store ptr %15, ptr %i.ak, align 8, !tbaa !987
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

bb.f:                                             ; preds = %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !42
  call void @_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_NS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS7_SE_RKd(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i.i.i.i.i.i94.preheader:                   ; preds = %.lr.ph.i.i.i.i.i.i94.preheader.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit
  %.0219 = phi i64 [ %i.hf, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit ], [ %storemerge222, %.lr.ph.i.i.i.i.i.i94.preheader.preheader ] ; 3 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %.0219
  %i.fy = select i1 %.not.i.i.i.i.i92, ptr null, ptr %i.fx ; 6 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %4, i64 %.0219
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !43
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.gb
  %i.gd = select i1 %.not.i.i.i.i.i92, ptr null, ptr %i.gc ; 6 uses
  br i1 %or.cond279, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i94.preheader280

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i94.preheader
  %i.ge = getelementptr i8, ptr %i.fy, i64 %i.ay
  %i.gf = getelementptr i8, ptr %i.gd, i64 %i.ay
  %bound0 = icmp ult ptr %i.fy, %i.gf
  %bound1 = icmp ult ptr %i.gd, %i.ge
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i94.preheader280, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %index ; 3 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %index ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gg, align 8, !tbaa !42, !alias.scope !990, !noalias !991
  %wide.load238 = load <2 x double>, ptr %i.gi, align 8, !tbaa !42, !alias.scope !990, !noalias !991
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %wide.load239 = load <2 x double>, ptr %i.gh, align 8, !tbaa !42, !alias.scope !991
  %wide.load240 = load <2 x double>, ptr %i.gj, align 8, !tbaa !42, !alias.scope !991
  store <2 x double> %wide.load239, ptr %i.gg, align 8, !tbaa !42, !alias.scope !990, !noalias !991
  store <2 x double> %wide.load240, ptr %i.gi, align 8, !tbaa !42, !alias.scope !990, !noalias !991
  store <2 x double> %wide.load, ptr %i.gh, align 8, !tbaa !42, !alias.scope !991
  store <2 x double> %wide.load238, ptr %i.gj, align 8, !tbaa !42, !alias.scope !991
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !981

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit, label %.lr.ph.i.i.i.i.i.i94.preheader280

.lr.ph.i.i.i.i.i.i94.preheader280:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i94.preheader, %middle.block
  %.05.i.i.i.i.i.i95.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i94.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.gl = add i64 %.sroa.speculated, %.05.i.i.i.i.i.i95.ph
  br i1 %lcmp.mod283.not, label %.lr.ph.i.i.i.i.i.i94.prol.loopexit, label %.lr.ph.i.i.i.i.i.i94.prol

.lr.ph.i.i.i.i.i.i94.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i94.preheader280
  %i.gm = mul nsw i64 %.05.i.i.i.i.i.i95.ph, %i.bo ; 2 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gm ; 2 uses
  %i.gp = load double, ptr %i.gn, align 8, !tbaa !42
  %i.gq = load double, ptr %i.go, align 8, !tbaa !42
  store double %i.gq, ptr %i.gn, align 8, !tbaa !42
  store double %i.gp, ptr %i.go, align 8, !tbaa !42
  %i.gr = or disjoint i64 %.05.i.i.i.i.i.i95.ph, 1
  br label %.lr.ph.i.i.i.i.i.i94.prol.loopexit

.lr.ph.i.i.i.i.i.i94.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i94.prol, %.lr.ph.i.i.i.i.i.i94.preheader280
  %.05.i.i.i.i.i.i95.unr = phi i64 [ %.05.i.i.i.i.i.i95.ph, %.lr.ph.i.i.i.i.i.i94.preheader280 ], [ %i.gr, %.lr.ph.i.i.i.i.i.i94.prol ]
  %i.gs = icmp eq i64 %i.ar, %i.gl
  br i1 %i.gs, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit, label %.lr.ph.i.i.i.i.i.i94

.lr.ph.i.i.i.i.i.i94:                             ; preds = %.lr.ph.i.i.i.i.i.i94.prol.loopexit, %.lr.ph.i.i.i.i.i.i94
  %.05.i.i.i.i.i.i95 = phi i64 [ %i.he, %.lr.ph.i.i.i.i.i.i94 ], [ %.05.i.i.i.i.i.i95.unr, %.lr.ph.i.i.i.i.i.i94.prol.loopexit ] ; 3 uses
  %i.gt = mul nsw i64 %.05.i.i.i.i.i.i95, %i.bo   ; 2 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gt ; 2 uses
  %i.gw = load double, ptr %i.gu, align 8, !tbaa !42
  %i.gx = load double, ptr %i.gv, align 8, !tbaa !42
  store double %i.gx, ptr %i.gu, align 8, !tbaa !42
  store double %i.gw, ptr %i.gv, align 8, !tbaa !42
  %i.gy = add nuw nsw i64 %.05.i.i.i.i.i.i95, 1
  %i.gz = mul nsw i64 %i.gy, %i.bo                ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gz ; 2 uses
  %i.hc = load double, ptr %i.ha, align 8, !tbaa !42
  %i.hd = load double, ptr %i.hb, align 8, !tbaa !42
  store double %i.hd, ptr %i.ha, align 8, !tbaa !42
  store double %i.hc, ptr %i.hb, align 8, !tbaa !42
  %i.he = add nuw nsw i64 %.05.i.i.i.i.i.i95, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i96.1 = icmp eq i64 %i.he, %i.bd
  br i1 %exitcond.not.i.i.i.i.i.i96.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit, label %.lr.ph.i.i.i.i.i.i94, !llvm.loop !982

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i94.prol.loopexit, %.lr.ph.i.i.i.i.i.i94, %middle.block
  %i.hf = add nsw i64 %.0219, 1                   ; 2 uses
  %i.hg = icmp slt i64 %i.hf, %i.bc
  br i1 %i.hg, label %.lr.ph.i.i.i.i.i.i94.preheader, label %._crit_edge221.split, !llvm.loop !983

_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %._crit_edge.thread232, %._crit_edge.thread, %bb.f, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.hh = add nsw i64 %storemerge222, %.sroa.speculated191 ; 2 uses
  %i.hi = icmp slt i64 %i.hh, %.sroa.speculated196
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hi, label %_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE5blockIllEENS7_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllSA_SB_.exit, label %.loopexit, !llvm.loop !984

.loopexit:                                        ; preds = %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit, %bb.b
  %.051 = phi i64 [ %i.k, %bb.b ], [ %.1, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  ret i64 %.051
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::internal::visitor_evaluator", align 8 ; 6 uses
  %4 = alloca %"struct.Eigen::internal::minmax_coeff_visitor", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::CwiseUnaryOp.818", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !91   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !43
  %i.e = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.10144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.sroa.14149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = add nsw i64 %i.b, -1
  %6 = add i64 %i.b, 4294967295
  %i.l = add i64 %i.b, 4294967295
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, %bb.a
  %.0.lcssa = phi i64 [ -1, %bb.a ], [ %.1, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit
  %.0168 = phi i64 [ -1, %.lr.ph ], [ %.1, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ] ; 5 uses
  %.042167 = phi i64 [ 0, %.lr.ph ], [ %i.iv, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ] ; 16 uses
  %7 = sub i64 %i.l, %.042167
  %8 = shl i64 %7, 32
  %9 = ashr exact i64 %8, 29
  %i.m = sub i64 %6, %.042167
  %i.n = shl i64 %i.m, 32
  %i.o = ashr exact i64 %i.n, 29                  ; 2 uses
  %i.p = xor i64 %.042167, -1                     ; 2 uses
  %i.q = add i64 %i.b, %i.p                       ; 4 uses
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = add i64 %i.d, %i.p                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.t = load ptr, ptr %0, align 8, !tbaa !217, !noalias !1031 ; 2 uses
  %i.u = load i64, ptr %i.f, align 8, !tbaa !91, !noalias !1031 ; 4 uses
  %i.v = mul nsw i64 %i.u, %.042167
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  %i.w = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.v
  %i.x = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.w ; 3 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !1031 ; 2 uses
  %i.z = sub nsw i64 %i.b, %.042167               ; 2 uses
  %i.aa = sub nsw i64 %i.y, %i.z                  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  %i.ab = getelementptr [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.ab ; 2 uses
  store ptr %i.ac, ptr %5, align 8
  store i64 %i.z, ptr %.sroa.4138.0..sroa_idx, align 8
  store ptr %i.x, ptr %.sroa.5140.0..sroa_idx, align 8
  store i64 %i.y, ptr %.sroa.6141.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.8143.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.10144.0..sroa_idx, align 8
  store i64 %.042167, ptr %.sroa.11145.0..sroa_idx, align 8
  store i64 %i.u, ptr %.sroa.12146.0..sroa_idx, align 8
  store i64 %i.aa, ptr %.sroa.13147.0..sroa_idx, align 8
  store i64 %i.u, ptr %.sroa.14149.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 -1, i64 16, i1 false)
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !231
  store i64 %i.u, ptr %i.i, align 8, !tbaa !91
  store ptr %5, ptr %i.j, align 8, !tbaa !1032
  call void @_ZN5Eigen8internal12visitor_implINS0_20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEENS0_17visitor_evaluatorISG_EELin1ELb1ELb0ELb0EE3runERKSJ_RSH_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ad = load i64, ptr %4, align 8, !tbaa !233   ; 2 uses
  %i.ae = load double, ptr %i.g, align 8, !tbaa !229
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.af = add nsw i64 %i.ad, %.042167             ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.042167
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !43
  %i.ai = fcmp oeq double %i.ae, 0.000000e+00
  br i1 %i.ai, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %0, align 8, !tbaa !217, !noalias !1033 ; 3 uses
  %.not.i.i.i.i.i43 = icmp eq ptr %i.aj, null     ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.042167
  %i.al = select i1 %.not.i.i.i.i.i43, ptr null, ptr %i.ak ; 6 uses
  %i.am = load i64, ptr %i.c, align 8, !tbaa !91, !noalias !1033 ; 8 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.af
  %i.ao = select i1 %.not.i.i.i.i.i43, ptr null, ptr %i.an ; 6 uses
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !91  ; 4 uses
  %i.aq = icmp sgt i64 %i.am, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %min.iters.check243 = icmp ugt i64 %i.am, 5
  %ident.check.not = icmp eq i64 %i.ap, 1
  %or.cond = select i1 %min.iters.check243, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck244, label %.lr.ph.i.i.i.i.i.i.preheader264

vector.memcheck244:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ar = shl i64 %i.am, 3                        ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.ar
  %bound0245 = icmp ult ptr %i.al, %i.at
  %bound1246 = icmp ult ptr %i.ao, %i.as
  %found.conflict247 = and i1 %bound0245, %bound1246
  br i1 %found.conflict247, label %.lr.ph.i.i.i.i.i.i.preheader264, label %vector.ph248

vector.ph248:                                     ; preds = %vector.memcheck244
  %n.vec249 = and i64 %i.am, 9223372036854775804  ; 3 uses
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next256, %vector.body250 ] ; 3 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.al, i64 %index251 ; 3 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %index251 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load252 = load <2 x double>, ptr %i.au, align 8, !tbaa !42, !alias.scope !1034, !noalias !1035
  %wide.load253 = load <2 x double>, ptr %i.aw, align 8, !tbaa !42, !alias.scope !1034, !noalias !1035
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load254 = load <2 x double>, ptr %i.av, align 8, !tbaa !42, !alias.scope !1035
  %wide.load255 = load <2 x double>, ptr %i.ax, align 8, !tbaa !42, !alias.scope !1035
  store <2 x double> %wide.load254, ptr %i.au, align 8, !tbaa !42, !alias.scope !1034, !noalias !1035
  store <2 x double> %wide.load255, ptr %i.aw, align 8, !tbaa !42, !alias.scope !1034, !noalias !1035
  store <2 x double> %wide.load252, ptr %i.av, align 8, !tbaa !42, !alias.scope !1035
  store <2 x double> %wide.load253, ptr %i.ax, align 8, !tbaa !42, !alias.scope !1035
  %index.next256 = add nuw i64 %index251, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next256, %n.vec249
  br i1 %i.ay, label %middle.block257, label %vector.body250, !llvm.loop !999

middle.block257:                                  ; preds = %vector.body250
  %cmp.n258 = icmp eq i64 %i.am, %n.vec249
  br i1 %cmp.n258, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader264

.lr.ph.i.i.i.i.i.i.preheader264:                  ; preds = %vector.memcheck244, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block257
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck244 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec249, %middle.block257 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.am, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader264
  %i.az = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.ap  ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.az ; 2 uses
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !42
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !42
  store double %i.bd, ptr %i.ba, align 8, !tbaa !42
  store double %i.bc, ptr %i.bb, align 8, !tbaa !42
  %i.be = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader264
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader264 ], [ %i.be, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bf = icmp eq i64 %i.am, %.neg
  br i1 %i.bf, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.bg = mul nsw i64 %.05.i.i.i.i.i.i, %i.ap     ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bg ; 2 uses
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !42
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !42
  store double %i.bk, ptr %i.bh, align 8, !tbaa !42
  store double %i.bj, ptr %i.bi, align 8, !tbaa !42
  %i.bl = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.bm = mul nsw i64 %i.bl, %i.ap                ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bm ; 2 uses
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !42
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !42
  store double %i.bq, ptr %i.bn, align 8, !tbaa !42
  store double %i.bp, ptr %i.bo, align 8, !tbaa !42
  %i.br = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.br, %i.am
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1000

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block257, %bb.d
  %i.bs = load i32, ptr %2, align 4, !tbaa !43
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %2, align 4, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, %bb.c
  %i.bu = load ptr, ptr %0, align 8, !tbaa !217   ; 2 uses
  %i.bv = load i64, ptr %i.f, align 8, !tbaa !91
  %i.bw = mul nsw i64 %i.bv, %.042167
  %i.bx = getelementptr [8 x i8], ptr %i.bu, i64 %i.bw ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %.042167
  %.not.i.i.i.i.i45 = icmp eq ptr %i.bu, null
  %i.bz = select i1 %.not.i.i.i.i.i45, ptr null, ptr %i.bx ; 2 uses
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !1036
  %sext = shl i64 %i.q, 32
  %i.cb = ashr exact i64 %sext, 32                ; 7 uses
  %i.cc = sub nsw i64 %i.ca, %i.cb
  %i.cd = icmp eq i32 %i.r, 0
  %.not.i.i.i.i.i.i46 = icmp eq ptr %i.bz, null
  %i.ce = getelementptr [8 x i8], ptr %i.bz, i64 %i.cc
  %i.cf = or i1 %i.cd, %.not.i.i.i.i.i.i46
  %i.cg = select i1 %i.cf, ptr null, ptr %i.ce    ; 6 uses
  %i.ch = load double, ptr %i.by, align 8, !tbaa !42, !noalias !1037 ; 5 uses
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = and i64 %i.ci, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ck = lshr exact i64 %i.ci, 3
  %i.cl = and i64 %i.ck, 1
  %i.cm = call i64 @llvm.smin.i64(i64 %i.cl, i64 %i.cb)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.cm, %bb.f ], [ %i.cb, %bb.e ] ; 9 uses
  %i.cn = sub nsw i64 %i.cb, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.co = sdiv i64 %i.cn, 2
  %i.cp = shl nsw i64 %i.co, 1                    ; 2 uses
  %i.cq = add nsw i64 %i.cp, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.cr = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check224 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check224, label %.lr.ph.i.i.i.i.i.i.i.preheader263, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec226 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert227 = insertelement <2 x double> poison, double %i.ch, i64 0
  %broadcast.splat228 = shufflevector <2 x double> %broadcast.splatinsert227, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next232, %vector.body229 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index230 ; 2 uses
  %wide.load231 = load <2 x double>, ptr %i.cs, align 8, !tbaa !42
  %i.ct = fdiv <2 x double> %wide.load231, %broadcast.splat228
  store <2 x double> %i.ct, ptr %i.cs, align 8, !tbaa !42
  %index.next232 = add nuw i64 %index230, 2       ; 2 uses
  %i.cu = icmp eq i64 %index.next232, %n.vec226
  br i1 %i.cu, label %middle.block233, label %vector.body229, !llvm.loop !1005

middle.block233:                                  ; preds = %vector.body229
  %cmp.n234 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec226
  br i1 %cmp.n234, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader263

.lr.ph.i.i.i.i.i.i.i.preheader263:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block233
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec226, %middle.block233 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader263, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader263 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !42
  %i.cx = fdiv double %i.cw, %i.ch
  store double %i.cx, ptr %i.cv, align 8, !tbaa !42
  %i.cy = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cy, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1006

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block233, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cz = icmp sgt i64 %i.cn, 1
  br i1 %i.cz, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.da = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i47

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i47, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dc = icmp slt i64 %i.cq, %i.cb
  br i1 %i.dc, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dd = add i64 %.0.i.i.i.i.i.i.i, %i.cp
  %i.de = sub i64 %i.cb, %i.dd                    ; 3 uses
  %min.iters.check211 = icmp ult i64 %i.de, 2
  br i1 %min.iters.check211, label %.lr.ph.i17.i.i.i.i.i.i.preheader262, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec213 = and i64 %i.de, -2                   ; 3 uses
  %i.df = add i64 %i.cq, %n.vec213
  %broadcast.splatinsert214 = insertelement <2 x double> poison, double %i.ch, i64 0
  %broadcast.splat215 = shufflevector <2 x double> %broadcast.splatinsert214, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = getelementptr [8 x i8], ptr %i.cg, i64 %i.cq
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph212
  %index217 = phi i64 [ 0, %vector.ph212 ], [ %index.next219, %vector.body216 ] ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %index217 ; 2 uses
  %wide.load218 = load <2 x double>, ptr %i.dh, align 8, !tbaa !42
  %i.di = fdiv <2 x double> %wide.load218, %broadcast.splat215
  store <2 x double> %i.di, ptr %i.dh, align 8, !tbaa !42
  %index.next219 = add nuw i64 %index217, 2       ; 2 uses
  %i.dj = icmp eq i64 %index.next219, %n.vec213
  br i1 %i.dj, label %middle.block220, label %vector.body216, !llvm.loop !1007

middle.block220:                                  ; preds = %vector.body216
  %cmp.n221 = icmp eq i64 %i.de, %n.vec213
  br i1 %cmp.n221, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader262

.lr.ph.i17.i.i.i.i.i.i.preheader262:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block220
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cq, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.df, %middle.block220 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader262, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.dn, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader262 ] ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !42
  %i.dm = fdiv double %i.dl, %i.ch
  store double %i.dm, ptr %i.dk, align 8, !tbaa !42
  %i.dn = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.dn, %i.cb
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1008

.lr.ph.i.i.i.i.i.i47:                             ; preds = %.lr.ph.i.i.i.i.i.i47, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i.i47 ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.dp = load <2 x double>, ptr %i.do, align 16, !tbaa !24
  %i.dq = fdiv <2 x double> %i.dp, %i.db
  store <2 x double> %i.dq, ptr %i.do, align 16, !tbaa !24
  %i.dr = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.ds = icmp slt i64 %i.dr, %i.cq
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.i47, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1009

bb.g:                                             ; preds = %bb.b
  %i.dt = icmp eq i64 %.0168, -1
  %spec.select = select i1 %i.dt, i64 %.042167, i64 %.0168
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block220, %._crit_edge.i.i.i.i.i.i, %bb.g
  %.1 = phi i64 [ %spec.select, %bb.g ], [ %.0168, %._crit_edge.i.i.i.i.i.i ], [ %.0168, %middle.block220 ], [ %.0168, %.lr.ph.i17.i.i.i.i.i.i ] ; 2 uses
  %i.du = icmp slt i64 %.042167, %i.k
  br i1 %i.du, label %bb.h, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

bb.h:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.dv = load ptr, ptr %0, align 8, !tbaa !217, !noalias !1038 ; 4 uses
  %i.dw = load i64, ptr %i.f, align 8, !tbaa !91, !noalias !1038 ; 3 uses
  %i.dx = mul nsw i64 %i.dw, %.042167
  %.not.i.i.i.i.i48 = icmp eq ptr %i.dv, null     ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = select i1 %.not.i.i.i.i.i48, ptr null, ptr %i.dy ; 4 uses
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !1038 ; 2 uses
  %sext165 = shl i64 %i.q, 32
  %i.eb = ashr exact i64 %sext165, 32             ; 8 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.dz, i64 %i.ec ; 10 uses
  %sext166 = shl i64 %i.s, 32
  %i.ee = ashr exact i64 %sext166, 32             ; 3 uses
  %i.ef = and i64 %i.s, 4294967295
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4tailINS_8internal19VariableAndFixedIntILin1EEEEENS9_22FixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeESF_.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4tailINS_8internal19VariableAndFixedIntILin1EEEEENS9_22FixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeESF_.exit: ; preds = %bb.h
  %i.eh = icmp eq i32 %i.r, 0
  %i.ei = load i64, ptr %i.c, align 8, !tbaa !91, !noalias !1039
  %i.ej = sub nsw i64 %i.ei, %i.ee
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.042167
  %i.el = mul nsw i64 %i.ej, %i.dw                ; 2 uses
  %i.em = getelementptr [8 x i8], ptr %i.ek, i64 %i.el
  %i.en = getelementptr [8 x i8], ptr %i.dv, i64 %i.ec
  %i.eo = getelementptr [8 x i8], ptr %i.en, i64 %i.el
  %i.ep = select i1 %i.eh, i1 true, i1 %.not.i.i.i.i.i48
  %i.eq = select i1 %i.ep, ptr null, ptr %i.eo    ; 2 uses
  %i.er = icmp sgt i64 %i.ee, 0
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4tailINS_8internal19VariableAndFixedIntILin1EEEEENS9_22FixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeESF_.exit
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eq, null
  %i.es = shl i64 %i.ea, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.dz, i64 %i.es
  %10 = sub i64 %i.es, %i.o
  %11 = sub i64 %i.es, %9
  %12 = getelementptr i8, ptr %i.dz, i64 %11
  %i.et = getelementptr i8, ptr %i.dz, i64 %10
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ %i.iu, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.eu = load i64, ptr %i.f, align 8, !tbaa !91, !noalias !1040
  %i.ev = mul nsw i64 %i.eu, %.029.i.i.i.i.i
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ev
  %i.ex = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.ew ; 14 uses
  %i.ey = mul nsw i64 %.029.i.i.i.i.i, %i.dw
  %i.ez = getelementptr [8 x i8], ptr %i.em, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !42, !noalias !1041 ; 9 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fb = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fc = and i64 %i.fb, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fd = lshr exact i64 %i.fb, 3
  %i.fe = and i64 %i.fd, 1
  %i.ff = call i64 @llvm.smin.i64(i64 %i.fe, i64 %i.eb)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ff, %bb.i ], [ %i.eb, %.lr.ph.i.i.i.i.i ] ; 13 uses
  %i.fg = sub nsw i64 %i.eb, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fh = sdiv i64 %i.fg, 2                       ; 2 uses
  %i.fi = shl nsw i64 %i.fh, 1                    ; 2 uses
  %i.fj = add nsw i64 %i.fi, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.fk = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check191 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check191, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.fl = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.ex, i64 %i.fl
  %i.fn = getelementptr i8, ptr %12, i64 %i.fl
  %bound0193 = icmp ult ptr %i.ex, %i.fn
  %bound1194 = icmp ult ptr %i.ed, %i.fm
  %found.conflict195 = and i1 %bound0193, %bound1194
  br i1 %found.conflict195, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261, label %vector.ph196

vector.ph196:                                     ; preds = %vector.memcheck192
  %n.vec197 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert198 = insertelement <2 x double> poison, double %i.fa, i64 0
  %broadcast.splat199 = shufflevector <2 x double> %broadcast.splatinsert198, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph196
  %index201 = phi i64 [ 0, %vector.ph196 ], [ %index.next206, %vector.body200 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index201 ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %index201 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load202 = load <2 x double>, ptr %i.fp, align 8, !tbaa !42, !alias.scope !1042
  %wide.load203 = load <2 x double>, ptr %i.fq, align 8, !tbaa !42, !alias.scope !1042
  %i.fr = fmul <2 x double> %broadcast.splat199, %wide.load202
  %i.fs = fmul <2 x double> %broadcast.splat199, %wide.load203
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load204 = load <2 x double>, ptr %i.fo, align 8, !tbaa !42, !alias.scope !1043, !noalias !1042
  %wide.load205 = load <2 x double>, ptr %i.ft, align 8, !tbaa !42, !alias.scope !1043, !noalias !1042
  %i.fu = fsub <2 x double> %wide.load204, %i.fr
  %i.fv = fsub <2 x double> %wide.load205, %i.fs
  store <2 x double> %i.fu, ptr %i.fo, align 8, !tbaa !42, !alias.scope !1043, !noalias !1042
  store <2 x double> %i.fv, ptr %i.ft, align 8, !tbaa !42, !alias.scope !1043, !noalias !1042
  %index.next206 = add nuw i64 %index201, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next206, %n.vec197
  br i1 %i.fw, label %middle.block207, label %vector.body200, !llvm.loop !1021

middle.block207:                                  ; preds = %vector.body200
  %cmp.n208 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec197
  br i1 %cmp.n208, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261:    ; preds = %vector.memcheck192, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block207
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck192 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec197, %middle.block207 ] ; 5 uses
  %.neg269 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter265 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !42
  %i.ga = fmul double %i.fa, %i.fz
  %i.gb = load double, ptr %i.fx, align 8, !tbaa !42
  %i.gc = fsub double %i.gb, %i.ga
  store double %i.gc, ptr %i.fx, align 8, !tbaa !42
  %i.gd = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261 ], [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ge = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.neg269
  br i1 %i.ge, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !42
  %i.gi = fmul double %i.fa, %i.gh
  %i.gj = load double, ptr %i.gf, align 8, !tbaa !42
  %i.gk = fsub double %i.gj, %i.gi
  store double %i.gk, ptr %i.gf, align 8, !tbaa !42
  %i.gl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.gl
  %i.go = load double, ptr %i.gn, align 8, !tbaa !42
  %i.gp = fmul double %i.fa, %i.go
  %i.gq = load double, ptr %i.gm, align 8, !tbaa !42
  %i.gr = fsub double %i.gq, %i.gp
  store double %i.gr, ptr %i.gm, align 8, !tbaa !42
  %i.gs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.gs, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1022

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block207, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gt = icmp sgt i64 %i.fg, 1
  br i1 %i.gt, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = icmp slt i64 %i.fj, %i.eb
  br i1 %i.gv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fi
  %i.gx = sub i64 %i.eb, %i.gw                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.gx, 4
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.gy = shl i64 %i.fh, 4
  %i.gz = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.ha = add i64 %i.gy, %i.gz                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ex, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.ex, i64 %i.o
  %i.hd = getelementptr i8, ptr %i.et, i64 %i.ha
  %bound0 = icmp ult ptr %i.hb, %scevgep
  %bound1 = icmp ult ptr %i.hd, %i.hc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gx, -4                      ; 3 uses
  %i.he = add i64 %i.fj, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hf = add i64 %i.fj, %index                   ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.hf ; 3 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.hf ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load = load <2 x double>, ptr %i.hh, align 8, !tbaa !42, !alias.scope !1044
  %wide.load180 = load <2 x double>, ptr %i.hi, align 8, !tbaa !42, !alias.scope !1044
  %i.hj = fmul <2 x double> %broadcast.splat, %wide.load
  %i.hk = fmul <2 x double> %broadcast.splat, %wide.load180
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %wide.load181 = load <2 x double>, ptr %i.hg, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  %wide.load182 = load <2 x double>, ptr %i.hl, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  %i.hm = fsub <2 x double> %wide.load181, %i.hj
  %i.hn = fsub <2 x double> %wide.load182, %i.hk
  store <2 x double> %i.hm, ptr %i.hg, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  store <2 x double> %i.hn, ptr %i.hl, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %middle.block, label %vector.body, !llvm.loop !1026

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gx, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260:  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.fj, %vector.memcheck ], [ %i.fj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.he, %middle.block ] ; 6 uses
  %i.hp = sub i64 %i.q, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %.neg270 = add i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter267 = and i64 %i.hp, 1
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !42
  %i.ht = fmul double %i.fa, %i.hs
  %i.hu = load double, ptr %i.hq, align 8, !tbaa !42
  %i.hv = fsub double %i.hu, %i.ht
  store double %i.hv, ptr %i.hq, align 8, !tbaa !42
  %i.hw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260 ], [ %i.hw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.hx = icmp eq i64 %i.eb, %.neg270
  br i1 %i.hx, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.il, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !42
  %i.ib = fmul double %i.fa, %i.ia
  %i.ic = load double, ptr %i.hy, align 8, !tbaa !42
  %i.id = fsub double %i.ic, %i.ib
  store double %i.id, ptr %i.hy, align 8, !tbaa !42
  %i.ie = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ie
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !42
  %i.ii = fmul double %i.fa, %i.ih
  %i.ij = load double, ptr %i.if, align 8, !tbaa !42
  %i.ik = fsub double %i.ij, %i.ii
  store double %i.ik, ptr %i.if, align 8, !tbaa !42
  %i.il = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.il, %i.eb
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1027

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.is, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.io = load <2 x double>, ptr %i.in, align 1, !tbaa !24
  %i.ip = fmul <2 x double> %i.gu, %i.io
  %i.iq = load <2 x double>, ptr %i.im, align 16, !tbaa !24
  %i.ir = fsub <2 x double> %i.iq, %i.ip
  store <2 x double> %i.ir, ptr %i.im, align 16, !tbaa !24
  %i.is = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.it = icmp slt i64 %i.is, %i.fj
  br i1 %i.it, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1028

_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iu = add nuw nsw i64 %.029.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.iu, %i.ee
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1029

_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit: ; preds = %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, %bb.h, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4tailINS_8internal19VariableAndFixedIntILin1EEEEENS9_22FixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeESF_.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.iv = add nuw nsw i64 %.042167, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.iv, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1030
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal12visitor_implINS0_20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEENS0_17visitor_evaluatorISG_EELin1ELb1ELb0ELb0EE3runERKSJ_RSH_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1056, !nonnull !88, !align !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91   ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.critedge81, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !231  ; 4 uses
  br i1 %i.f, label %bb.c, label %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load double, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call noundef double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.j, ptr %i.k, align 8, !tbaa !229
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.d

_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit: ; preds = %bb.b
  %i.l = load <2 x i64>, ptr %i.h, align 1, !tbaa !24
  %i.m = and <2 x i64> %i.l, splat (i64 9223372036854775807)
  %i.n = bitcast <2 x i64> %i.m to <2 x double>   ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.n, i64 0 ; 3 uses
  %i.o = fcmp uno double %.sroa.0.0.vec.extract.i.i.i, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.n, i64 1 ; 3 uses
  %i.p = fcmp ord double %.sroa.0.8.vec.extract.i.i.i, 0.000000e+00
  %i.q = fcmp uge double %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.8.vec.extract.i.i.i
  %.not3.i.i.i.i = and i1 %i.p, %i.q
  %i.r = select i1 %i.o, i1 true, i1 %.not3.i.i.i.i
  %i.s = select i1 %i.r, double %.sroa.0.0.vec.extract.i.i.i, double %.sroa.0.8.vec.extract.i.i.i ; 4 uses
  %i.t = fcmp uno double %i.s, 0.000000e+00
  %i.u = fcmp uno <2 x double> %i.n, zeroinitializer
  %i.v = insertelement <2 x double> poison, double %i.s, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fcmp oeq <2 x double> %i.w, %i.n
  %.in = select i1 %i.t, <2 x i1> %i.u, <2 x i1> %i.x
  %i.y = select <2 x i1> %.in, <2 x double> <double 2.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  %i.aa = extractelement <2 x double> %i.y, i64 1
  %i.ab = tail call double @llvm.maxnum.f64(double %i.z, double %i.aa)
  %i.ac = fptosi double %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.s, ptr %i.ad, align 8, !tbaa !229
  %i.ae = sub nsw i64 2, %i.ac
  store i64 %i.ae, ptr %1, align 8, !tbaa !233
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !1057
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit, %bb.c
  %.promoted = phi double [ %i.j, %bb.c ], [ %i.s, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit ] ; 2 uses
  %.073 = phi i64 [ 1, %bb.c ], [ 2, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit ] ; 3 uses
  %i.ag = add nuw nsw i64 %.073, 1
  %i.ah = icmp slt i64 %i.ag, %i.d
  br i1 %i.ah, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

.preheader:                                       ; preds = %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit, %bb.d
  %.promoted167 = phi double [ %.promoted, %bb.d ], [ %i.bm, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ]
  %.174.lcssa = phi i64 [ %.073, %bb.d ], [ %i.ao, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ] ; 2 uses
  %i.ak = icmp slt i64 %.174.lcssa, %i.d
  br i1 %i.ak, label %.lr.ph166, label %.critedge81

.lr.ph166:                                        ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit
  %i.an = phi double [ %.promoted, %.lr.ph ], [ %i.bm, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ] ; 5 uses
  %.174164 = phi i64 [ %.073, %.lr.ph ], [ %i.ao, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ] ; 3 uses
  %i.ao = add nuw nsw i64 %.174164, 2             ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.174164
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !24
  %i.ar = and <2 x i64> %i.aq, splat (i64 9223372036854775807)
  %i.as = bitcast <2 x i64> %i.ar to <2 x double> ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i82 = extractelement <2 x double> %i.as, i64 0 ; 3 uses
  %i.at = fcmp uno double %.sroa.0.0.vec.extract.i.i.i82, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i83 = extractelement <2 x double> %i.as, i64 1 ; 3 uses
  %i.au = fcmp ord double %.sroa.0.8.vec.extract.i.i.i83, 0.000000e+00
  %i.av = fcmp uge double %.sroa.0.0.vec.extract.i.i.i82, %.sroa.0.8.vec.extract.i.i.i83
  %.not3.i.i.i.i84 = and i1 %i.au, %i.av
  %i.aw = select i1 %i.at, i1 true, i1 %.not3.i.i.i.i84
  %i.ax = select i1 %i.aw, double %.sroa.0.0.vec.extract.i.i.i82, double %.sroa.0.8.vec.extract.i.i.i83 ; 6 uses
  %i.ay = fcmp uno double %i.ax, 0.000000e+00
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_:bb.a
  %i.aw = sdiv i64 %i.av, 256
  %i.ax = and i64 %i.aw, -8
  %.sroa.speculated140 = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 1) ; 7 uses
  %i.ay = icmp sgt i64 %i.at, %.sroa.speculated140
  br i1 %i.ay, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.az = urem i64 %i.at, %.sroa.speculated140    ; 2 uses
  %i.ba = udiv i64 %i.at, %.sroa.speculated140
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = xor i64 %i.az, -1
  %i.bd = add nsw i64 %.sroa.speculated140, %i.bc
  %i.be = shl i64 %i.ba, 3
  %i.bf = add i64 %i.be, 8
  %i.bg = sdiv i64 %i.bd, %i.bf
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = sub nsw i64 %.sroa.speculated140, %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bj = phi i64 [ %i.bi, %bb.r ], [ %.sroa.speculated140, %bb.q ] ; 2 uses
  store i64 %i.bj, ptr %0, align 8, !tbaa !23
  %.pre = load i64, ptr %1, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bk = phi i64 [ %i.bj, %bb.s ], [ %i.at, %bb.p ] ; 5 uses
  %i.bl = phi i64 [ %.pre, %bb.s ], [ %i.aq, %bb.p ] ; 6 uses
  %i.bm = shl i64 %i.bl, 3
  %i.bn = mul i64 %i.bm, %i.bk
  %i.bo = sub nsw i64 %i.av, %i.bn                ; 2 uses
  %i.bp = shl nsw i64 %i.bk, 5
  %.not = icmp slt i64 %i.bo, %i.bp
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = shl i64 %i.bk, 3
  %i.br = udiv i64 %i.bo, %i.bq
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bs = shl i64 %.sroa.speculated140, 5
  %i.bt = udiv i64 4718592, %i.bs
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge = phi i64 [ %i.bt, %bb.v ], [ %i.br, %bb.u ]
  %i.bu = shl i64 %i.bk, 4
  %i.bv = udiv i64 1572864, %i.bu
  %.sroa.speculated135 = tail call i64 @llvm.smin.i64(i64 %storemerge, i64 %i.bv)
  %i.bw = and i64 %.sroa.speculated135, -4        ; 6 uses
  %i.bx = load i64, ptr %2, align 8, !tbaa !23    ; 4 uses
  %i.by = icmp sgt i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bz = srem i64 %i.bx, %i.bw                   ; 2 uses
  %i.ca = sdiv i64 %i.bx, %i.bw
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = sub nsw i64 %i.bw, %i.bz
  %i.cd = shl i64 %i.ca, 2
  %i.ce = add i64 %i.cd, 4
  %i.cf = sdiv i64 %i.cc, %i.ce
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = sub nsw i64 %i.bw, %i.cg
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ci = phi i64 [ %i.ch, %bb.y ], [ %i.bw, %bb.x ]
  store i64 %i.ci, ptr %2, align 8, !tbaa !23
  br label %.critedge116

bb.aa:                                            ; preds = %bb.w
  %i.cj = icmp eq i64 %i.at, %i.bk
  br i1 %i.cj, label %bb.ab, label %.critedge116

bb.ab:                                            ; preds = %bb.aa
  %i.ck = shl i64 %i.at, 3
  %i.cl = mul i64 %i.ck, %i.bx                    ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 1025
  br i1 %i.cm, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = icmp ne i64 %i.g, 0
  %i.co = icmp samesign ult i64 %i.cl, 32769
  %or.cond4 = and i1 %i.cn, %i.co
  br i1 %or.cond4, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.speculated128 = tail call i64 @llvm.smin.i64(i64 %i.bl, i64 576)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.0182 = phi i64 [ %i.bl, %bb.ac ], [ %.sroa.speculated128, %bb.ad ], [ %i.bl, %bb.ab ]
  %.093 = phi i64 [ 1572864, %bb.ac ], [ %i.f, %bb.ad ], [ %i.e, %bb.ab ]
  %i.cp = mul i64 %i.at, 24
  %i.cq = udiv i64 %.093, %i.cp
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %.0182, i64 %i.cq) ; 4 uses
  %i.cr = icmp sgt i64 %.sroa.speculated, 4
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = and i64 %.sroa.speculated, 9223372036854775804
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ct = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.ct, label %.critedge116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i64 [ %i.cs, %bb.af ], [ %.sroa.speculated, %bb.ag ] ; 5 uses
  %i.cu = srem i64 %i.bl, %.0                     ; 2 uses
  %i.cv = sdiv i64 %i.bl, %.0
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = sub nsw i64 %.0, %i.cu
  %i.cy = shl i64 %i.cv, 2
  %i.cz = add i64 %i.cy, 4
  %i.da = sdiv i64 %i.cx, %i.cz
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = sub nsw i64 %.0, %i.db
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ai
  %i.dd = phi i64 [ %i.dc, %bb.ai ], [ %.0, %bb.ah ]
  store i64 %i.dd, ptr %1, align 8, !tbaa !23
  br label %.critedge116

.critedge116:                                     ; preds = %.critedge, %bb.aa, %bb.z, %bb.ag, %bb.m, %bb.n, %bb.k, %bb.o
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !193
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !195    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !196  ; 12 uses
  %i.i = icmp sgt i64 %3, 0
  %i.j = add i64 %3, %6
  %i.k = sub i64 %5, %i.j
  %i.l = shl i64 %i.k, 2                          ; 2 uses
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph78.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph78
  %i.m = add nsw i64 %3, -1                       ; 2 uses
  %i.n = shl i64 %6, 5                            ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n
  %scevgep100 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n
  %scevgep102 = getelementptr i8, ptr %i.q, i64 24
  %smax127 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.r = add nsw i64 %smax127, -4                 ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = mul i64 %i.h, %i.s
  %i.u = shl i64 %i.t, 5
  %i.v = shl i64 %3, 3                            ; 4 uses
  %i.w = getelementptr i8, ptr %i.f, i64 %i.u
  %scevgep128 = getelementptr i8, ptr %i.w, i64 %i.v
  %i.x = shl i64 %i.r, 3                          ; 3 uses
  %i.y = or disjoint i64 %i.x, 8
  %i.z = mul i64 %i.h, %i.y
  %i.aa = getelementptr i8, ptr %i.f, i64 %i.z
  %scevgep129 = getelementptr i8, ptr %i.aa, i64 %i.v
  %i.ab = shl i64 %i.h, 3
  %scevgep130 = getelementptr i8, ptr %i.f, i64 %i.ab
  %i.ac = or disjoint i64 %i.x, 16
  %i.ad = mul i64 %i.h, %i.ac
  %i.ae = getelementptr i8, ptr %i.f, i64 %i.ad
  %scevgep131 = getelementptr i8, ptr %i.ae, i64 %i.v
  %i.af = shl i64 %i.h, 4
  %scevgep132 = getelementptr i8, ptr %i.f, i64 %i.af
  %i.ag = or disjoint i64 %i.x, 24
  %i.ah = mul i64 %i.h, %i.ag
  %i.ai = getelementptr i8, ptr %i.f, i64 %i.ah
  %scevgep133 = getelementptr i8, ptr %i.ai, i64 %i.v
  %i.aj = mul i64 %i.h, 24
  %scevgep134 = getelementptr i8, ptr %i.f, i64 %i.aj
  %i.ak = shl i64 %6, 5
  %i.al = add i64 %6, %3
  %i.am = shl i64 %i.al, 5
  %i.an = insertelement <4 x ptr> poison, ptr %scevgep133, i64 0
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep131, i64 1
  %i.ap = insertelement <4 x ptr> %i.ao, ptr %scevgep129, i64 2
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %scevgep128, i64 3
  %i.ar = insertelement <4 x ptr> poison, ptr %scevgep134, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %scevgep132, i64 1
  %i.at = insertelement <4 x ptr> %i.as, ptr %scevgep130, i64 2
  %i.au = insertelement <4 x ptr> %i.at, ptr %i.f, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %7 = getelementptr i8, ptr %1, i64 %i.ak
  %8 = getelementptr i8, ptr %1, i64 %i.am
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.eg, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.ef, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.aw = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ax = mul nsw i64 %i.h, %.05076.us
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax ; 4 uses
  %i.az = or disjoint i64 %.05076.us, 1
  %i.ba = mul nsw i64 %i.h, %i.az
  %i.bb = getelementptr [8 x i8], ptr %i.f, i64 %i.ba ; 4 uses
  %i.bc = or disjoint i64 %.05076.us, 2
  %i.bd = mul nsw i64 %i.h, %i.bc
  %i.be = getelementptr [8 x i8], ptr %i.f, i64 %i.bd ; 4 uses
  %i.bf = or disjoint i64 %.05076.us, 3
  %i.bg = mul nsw i64 %i.h, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %i.bg ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.bi = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.bk = icmp ult ptr %i.bj, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.bi ; 2 uses
  %i.bl = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.bm = icmp ult ptr %i.bl, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bi ; 2 uses
  %i.bn = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bo = icmp ult ptr %i.bn, %scevgep103
  %i.bp = or i1 %i.bo, %mul.overflow
  %i.bq = or i1 %i.bm, %i.bk
  %i.br = or i1 %i.bq, %i.bp
  br i1 %i.br, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bs = shl i64 %.05175.us, 3                   ; 2 uses
  %i.bt = getelementptr i8, ptr %7, i64 %i.bs
  %i.bu = getelementptr i8, ptr %8, i64 %i.bs
  %i.bv = insertelement <4 x ptr> poison, ptr %i.bt, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = icmp ult <4 x ptr> %i.bw, %i.aq
  %i.by = insertelement <4 x ptr> poison, ptr %i.bu, i64 0
  %i.bz = shufflevector <4 x ptr> %i.by, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ca = icmp ult <4 x ptr> %i.au, %i.bz
  %i.cb = and <4 x i1> %i.bx, %i.ca
  %i.cc = bitcast <4 x i1> %i.cb to i4
  %i.cd = icmp ne i4 %i.cc, 0
  %op.rdx = or i1 %i.cd, %stride.check
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ce = add i64 %i.aw, %i.av                    ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %1, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load = load <2 x double>, ptr %i.cg, align 8, !tbaa !42, !alias.scope !1084
  %.idx = shl i64 %index, 5
  %i.ch = getelementptr i8, ptr %i.cf, i64 %.idx
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load146 = load <2 x double>, ptr %i.ci, align 8, !tbaa !42, !alias.scope !1085
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load147 = load <2 x double>, ptr %i.cj, align 8, !tbaa !42, !alias.scope !1086
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index
  %wide.load148 = load <2 x double>, ptr %i.ck, align 8, !tbaa !42, !alias.scope !1087
  %i.cl = shufflevector <2 x double> %wide.load, <2 x double> %wide.load146, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = shufflevector <2 x double> %wide.load147, <2 x double> %wide.load148, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.cl, <4 x double> %i.cm, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ch, align 8, !tbaa !42, !alias.scope !1088, !noalias !1089
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !1077

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %vector.scevcheck ], [ %i.aw, %.lr.ph.us ], [ %i.ce, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.cp = load double, ptr %i.co, align 8, !tbaa !42
  %i.cq = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.cp, ptr %i.cq, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !42
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  store double %i.cs, ptr %i.ct, align 8, !tbaa !42
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us.ph
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !42
  %i.cw = getelementptr i8, ptr %i.cq, i64 16
  store double %i.cv, ptr %i.cw, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us.ph
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !42
  %i.cz = getelementptr i8, ptr %i.cq, i64 24
  store double %i.cy, ptr %i.cz, align 8, !tbaa !42
  %i.da = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.db = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa166.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.db, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.dc = icmp eq i64 %3, %.neg
  br i1 %i.dc, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.ee, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.ed, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us
  %i.de = load double, ptr %i.dd, align 8, !tbaa !42
  %i.df = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.de, ptr %i.df, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !42
  %i.di = getelementptr i8, ptr %i.df, i64 8
  store double %i.dh, ptr %i.di, align 8, !tbaa !42
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !42
  %i.dl = getelementptr i8, ptr %i.df, i64 16
  store double %i.dk, ptr %i.dl, align 8, !tbaa !42
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !42
  %i.do = getelementptr i8, ptr %i.df, i64 24
  store double %i.dn, ptr %i.do, align 8, !tbaa !42
  %i.dp = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !42
  %i.ds = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  store double %i.dr, ptr %i.dt, align 8, !tbaa !42
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dp
  %i.dv = load double, ptr %i.du, align 8, !tbaa !42
  %i.dw = getelementptr i8, ptr %i.ds, i64 40
  store double %i.dv, ptr %i.dw, align 8, !tbaa !42
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.dp
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !42
  %i.dz = getelementptr i8, ptr %i.ds, i64 48
  store double %i.dy, ptr %i.dz, align 8, !tbaa !42
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dp
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !42
  %i.ec = getelementptr i8, ptr %i.ds, i64 56
  store double %i.eb, ptr %i.ec, align 8, !tbaa !42
  %i.ed = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.ee = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ee, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1078

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.ce, %middle.block ], [ %.lcssa166.unr, %scalar.ph.prol.loopexit ], [ %i.ed, %scalar.ph ]
  %i.ef = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.eg = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.eh = icmp slt i64 %i.eg, %i.c
  br i1 %i.eh, label %.lr.ph.us, label %.preheader, !llvm.loop !1079

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.ei = add nsw i64 %smax, -4
  %i.ej = lshr exact i64 %i.ei, 2
  %i.ek = mul i64 %i.ej, %invariant.op
  %i.el = shl i64 %5, 2
  %i.em = add i64 %i.ek, %i.el
  %i.en = shl i64 %3, 2
  %i.eo = sub i64 %i.em, %i.en
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.eo, %.lr.ph78.split ], [ %i.ef, %._crit_edge.us ]
  %i.ep = icmp slt i64 %i.c, %4
  br i1 %i.ep, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.eq = load ptr, ptr %2, align 8, !tbaa !195   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !196 ; 3 uses
  %i.et = icmp sgt i64 %3, 0
  %i.eu = add i64 %3, %6
  %i.ev = sub i64 %5, %i.eu
  br i1 %i.et, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.ew = ptrtoaddr ptr %i.eq to i64
  %i.ex = mul i64 %i.es, -8
  %i.ey = mul i64 %i.es, %i.b
  %i.ez = shl i64 %i.ey, 5
  %i.fa = add i64 %i.ez, %i.ew
  %i.fb = sub i64 %i.a, %i.fa
  %min.iters.check152 = icmp ult i64 %3, 4
  %n.vec155 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n162 = icmp eq i64 %3, %n.vec155
  %xtraiter168 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br label %.lr.ph

._crit_edge85.split:                              ; preds = %._crit_edge, %.lr.ph84, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04883 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fz, %._crit_edge ] ; 2 uses
  %.282 = phi i64 [ %.051.lcssa, %.lr.ph.preheader ], [ %i.fy, %._crit_edge ]
  %i.fc = add i64 %.282, %6                       ; 5 uses
  %i.fd = mul nsw i64 %i.es, %.04883
  %i.fe = getelementptr [8 x i8], ptr %i.eq, i64 %i.fd ; 6 uses
  br i1 %min.iters.check152, label %scalar.ph151.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph
  %i.ff = mul i64 %indvar, %i.ex
  %i.fg = add i64 %i.fb, %i.ff
  %i.fh = shl i64 %i.fc, 3
  %i.fi = add i64 %i.fg, %i.fh
  %i.fj = add i64 %i.fi, -1
  %diff.check = icmp ult i64 %i.fj, 31
  br i1 %diff.check, label %scalar.ph151.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck153
  %i.fk = add i64 %i.fc, %n.vec155                ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %1, i64 %i.fc
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %index157 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load158 = load <2 x double>, ptr %i.fm, align 8, !tbaa !42
  %wide.load159 = load <2 x double>, ptr %i.fn, align 8, !tbaa !42
  %i.fo = getelementptr [8 x i8], ptr %i.fl, i64 %index157 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x double> %wide.load158, ptr %i.fo, align 8, !tbaa !42
  store <2 x double> %wide.load159, ptr %i.fp, align 8, !tbaa !42
  %index.next160 = add nuw i64 %index157, 4       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.us.us203.us
  %.0178.us185.us.us = phi i64 [ 0, %.lr.ph.us.us203.us ], [ %i.az, %bb.l ] ; 3 uses
  %i.az = add nsw i64 %.0178.us185.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us186.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.az)
  %i.ba = sub nsw i64 %.sroa.speculated.us186.us.us, %.0178.us185.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.bb = mul nsw i64 %.0178.us185.us.us, %9
  %i.bc = getelementptr [8 x i8], ptr %i.au, i64 %i.bb
  store ptr %i.bc, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.aw, i64 noundef %i.ba, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.l unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.bd = icmp slt i64 %i.az, %1
  br i1 %i.bd, label %bb.k, label %..loopexit_crit_edge.split.us187.us.us, !llvm.loop !1214

..loopexit_crit_edge.split.us187.us.us:           ; preds = %bb.l
  %i.be = icmp slt i64 %i.av, %2
  br i1 %i.be, label %.lr.ph183.split.us.split.us200.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !1215

.lr.ph183.split.us.split.us.us.us:                ; preds = %.lr.ph183.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %.077182.us.us.us.us = phi i64 [ %i.bf, %..loopexit_crit_edge.split.us.us.us.us.us ], [ 0, %.lr.ph183.us.us ] ; 4 uses
  %i.bf = add nsw i64 %.077182.us.us.us.us, %i.b  ; 3 uses
  %.sroa.speculated124.us.us.us.us = call i64 @llvm.smin.i64(i64 %2, i64 %i.bf)
  %i.bg = sub nsw i64 %.sroa.speculated124.us.us.us.us, %.077182.us.us.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.bh = mul nsw i64 %.077182.us.us.us.us, %4
  %i.bi = getelementptr [8 x i8], ptr %i.as, i64 %i.bh
  store ptr %i.bi, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bg, i64 noundef %i.ar, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us.us.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph183.split.us.split.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.bj = mul nsw i64 %.077182.us.us.us.us, %6
  %invariant.gep.us.us.us.us = getelementptr [8 x i8], ptr %5, i64 %i.bj
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bk, %bb.o ] ; 4 uses
  %i.bk = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bk)
  %i.bl = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %gep.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us.us.us, i64 %.0178.us.us.us.us.us
  store ptr %gep.us.us.us.us.us, ptr %17, align 8
  store i64 %6, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.bg, i64 noundef %i.bl, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split.us.split.us.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.bm = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.bn = getelementptr [8 x i8], ptr %i.au, i64 %i.bm
  store ptr %i.bn, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.bg, i64 noundef %i.bl, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.bo = icmp slt i64 %i.bk, %1
  br i1 %i.bo, label %bb.m, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !1214

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.o
  %i.bp = icmp slt i64 %i.bf, %2
  br i1 %i.bp, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !1215

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us187.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bq = icmp slt i64 %i.aq, %0
  br i1 %i.bq, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !1216

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.t

.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.t

.lr.ph183.us:                                     ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us199
  %.078195.us = phi i64 [ %i.bs, %..loopexit177_crit_edge.split.us199 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bs = add nsw i64 %.078195.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bs)
  %i.bt = sub nsw i64 %.sroa.speculated128.us, %.078195.us
  %i.bu = getelementptr [8 x i8], ptr %3, i64 %.078195.us
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.us, %.lr.ph183.us
  %.077182.us197 = phi i64 [ 0, %.lr.ph183.us ], [ %i.bv, %.loopexit.us ] ; 3 uses
  %i.bv = add nsw i64 %.077182.us197, %i.b        ; 3 uses
  %.sroa.speculated124.us198 = call i64 @llvm.smin.i64(i64 %2, i64 %i.bv)
  %i.bw = sub nsw i64 %.sroa.speculated124.us198, %.077182.us197
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.bx = mul nsw i64 %.077182.us197, %4
  %i.by = getelementptr [8 x i8], ptr %i.bu, i64 %i.bx
  store ptr %i.by, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bw, i64 noundef %i.bt, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.bz = icmp slt i64 %i.bv, %2
  br i1 %i.bz, label %bb.p, label %..loopexit177_crit_edge.split.us199, !llvm.loop !1215

..loopexit177_crit_edge.split.us199:              ; preds = %.loopexit.us
  %i.ca = icmp slt i64 %i.bs, %0
  br i1 %i.ca, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !1216

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us200.us, %bb.p
  %lpad.loopexit.split-lp254 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us199, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  ret void

bb.s:                                             ; preds = %.invoke
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp254, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.br, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS ROWMAJOR", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !1227
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  %i.e = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader43.lr.ph.split.us, label %.preheader42

.preheader43.lr.ph.split.us:                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %2, align 8, !tbaa !182    ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !183  ; 4 uses
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep66 = getelementptr i8, ptr %1, i64 16
  %scevgep68 = getelementptr i8, ptr %1, i64 24
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.j = add nuw i64 %smax, %3
  %i.k = shl i64 %i.j, 3
  %i.l = getelementptr i8, ptr %i.g, i64 %i.k
  %scevgep74 = getelementptr i8, ptr %i.l, i64 -8
  %i.m = shl i64 %3, 5
  %min.iters.check = icmp ult i64 %3, 22
  %ident.check = icmp ne i64 %i.h, 1
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %7 = getelementptr i8, ptr %1, i64 %i.m
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader43.us

.preheader43.us:                                  ; preds = %._crit_edge.us, %.preheader43.lr.ph.split.us
  %.03447.us = phi i64 [ 0, %.preheader43.lr.ph.split.us ], [ %i.ch, %._crit_edge.us ] ; 2 uses
  %.03546.us = phi i64 [ 0, %.preheader43.lr.ph.split.us ], [ %.lcssa64, %._crit_edge.us ] ; 7 uses
  %i.o = getelementptr [8 x i8], ptr %i.g, i64 %.03447.us ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader43.us
  %i.p = shl i64 %.03546.us, 3                    ; 3 uses
  %scevgep65 = getelementptr i8, ptr %scevgep, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %scevgep65, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %scevgep65
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.p ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep67, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %scevgep67
  %i.u = or i1 %i.t, %mul.overflow
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.p ; 2 uses
  %i.v = getelementptr i8, ptr %scevgep69, i64 %mul.result
  %i.w = icmp ult ptr %i.v, %scevgep69
  %i.x = or i1 %i.r, %ident.check
  %i.y = or i1 %i.x, %i.u
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aa = shl i64 %.03546.us, 3                   ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr i8, ptr %7, i64 %i.aa
  %bound0 = icmp ult ptr %i.ab, %scevgep74
  %bound1 = icmp ult ptr %i.g, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = add i64 %.03546.us, %i.n                ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %1, i64 %.03546.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !42, !alias.scope !1228
  %.idx = shl i64 %index, 5
  %i.ag = getelementptr i8, ptr %i.ae, i64 %.idx
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %wide.load75 = load <2 x double>, ptr %i.ah, align 8, !tbaa !42, !alias.scope !1228
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load76 = load <2 x double>, ptr %i.ai, align 8, !tbaa !42, !alias.scope !1228
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %wide.load77 = load <2 x double>, ptr %i.aj, align 8, !tbaa !42, !alias.scope !1228
  %i.ak = shufflevector <2 x double> %wide.load, <2 x double> %wide.load75, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.al = shufflevector <2 x double> %wide.load76, <2 x double> %wide.load77, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.ak, <4 x double> %i.al, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ag, align 8, !tbaa !42, !alias.scope !1229, !noalias !1228
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1220

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader43.us, %middle.block
  %.03345.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader43.us ], [ %n.vec, %middle.block ] ; 4 uses
  %.144.us.ph = phi i64 [ %.03546.us, %vector.memcheck ], [ %.03546.us, %vector.scevcheck ], [ %.03546.us, %.preheader43.us ], [ %i.ad, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.03345.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.an = mul nsw i64 %i.h, %.03345.us.ph
  %i.ao = getelementptr [8 x i8], ptr %i.o, i64 %i.an ; 4 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !42
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %.144.us.ph ; 4 uses
  store double %i.ap, ptr %i.aq, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !42
  %i.at = getelementptr i8, ptr %i.aq, i64 8
  store double %i.as, ptr %i.at, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !42
  %i.aw = getelementptr i8, ptr %i.aq, i64 16
  store double %i.av, ptr %i.aw, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !42
  %i.az = getelementptr i8, ptr %i.aq, i64 24
  store double %i.ay, ptr %i.az, align 8, !tbaa !42
  %i.ba = add nsw i64 %.144.us.ph, 4              ; 2 uses
  %i.bb = or disjoint i64 %.03345.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa98.unr.a = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.03345.us.unr = phi i64 [ %.03345.us.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.144.us.unr = phi i64 [ %.144.us.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %i.bc = icmp eq i64 %3, %.neg
  br i1 %i.bc, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03345.us = phi i64 [ %i.cg, %scalar.ph ], [ %.03345.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.144.us = phi i64 [ %i.cf, %scalar.ph ], [ %.144.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bd = mul nsw i64 %i.h, %.03345.us
  %i.be = getelementptr [8 x i8], ptr %i.o, i64 %i.bd ; 4 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !42
  %i.bg = getelementptr inbounds [8 x i8], ptr %1, i64 %.144.us ; 4 uses
  store double %i.bf, ptr %i.bg, align 8, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !42
  %i.bj = getelementptr i8, ptr %i.bg, i64 8
  store double %i.bi, ptr %i.bj, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !42
  %i.bm = getelementptr i8, ptr %i.bg, i64 16
  store double %i.bl, ptr %i.bm, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !42
  %i.bp = getelementptr i8, ptr %i.bg, i64 24
  store double %i.bo, ptr %i.bp, align 8, !tbaa !42
  %i.bq = add nuw nsw i64 %.03345.us, 1
  %i.br = mul nsw i64 %i.h, %i.bq
  %i.bs = getelementptr [8 x i8], ptr %i.o, i64 %i.br ; 4 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !42
  %i.bu = getelementptr [8 x i8], ptr %1, i64 %.144.us ; 4 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 32
  store double %i.bt, ptr %i.bv, align 8, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !42
  %i.by = getelementptr i8, ptr %i.bu, i64 40
  store double %i.bx, ptr %i.by, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !42
  %i.cb = getelementptr i8, ptr %i.bu, i64 48
  store double %i.ca, ptr %i.cb, align 8, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !42
  %i.ce = getelementptr i8, ptr %i.bu, i64 56
  store double %i.cd, ptr %i.ce, align 8, !tbaa !42
  %i.cf = add nsw i64 %.144.us, 8                 ; 2 uses
  %i.cg = add nuw nsw i64 %.03345.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cg, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1221

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa64 = phi i64 [ %i.ad, %middle.block ], [ %.lcssa98.unr.a, %scalar.ph.prol.loopexit ], [ %i.cf, %scalar.ph ] ; 2 uses
  %i.ch = add nuw nsw i64 %.03447.us, 4           ; 2 uses
  %i.ci = icmp slt i64 %i.ch, %i.c
  br i1 %i.ci, label %.preheader43.us, label %.preheader42, !llvm.loop !1222

.preheader42:                                     ; preds = %._crit_edge.us, %bb.a
  %.035.lcssa = phi i64 [ 0, %bb.a ], [ %.lcssa64, %._crit_edge.us ]
  %i.cj = icmp slt i64 %i.c, %4
  %i.ck = icmp sgt i64 %3, 0
  %or.cond63 = and i1 %i.cj, %i.ck
  br i1 %or.cond63, label %.preheader.lr.ph.split, label %._crit_edge53.split

.preheader.lr.ph.split:                           ; preds = %.preheader42
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load ptr, ptr %2, align 8, !tbaa !182   ; 2 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !183 ; 6 uses
  %i.cp = shl i64 %i.b, 5
  %i.cq = add i64 %i.cp, %i.cn
  %min.iters.check83 = icmp ugt i64 %3, 5
  %ident.check80.not = icmp eq i64 %i.co, 1
  %or.cond96 = select i1 %min.iters.check83, i1 %ident.check80.not, i1 false
  %n.vec86 = and i64 %3, 9223372036854775804      ; 4 uses
  %cmp.n93 = icmp eq i64 %3, %n.vec86
  %xtraiter99 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.03252 = phi i64 [ %i.c, %.preheader.lr.ph.split ], [ %i.dn, %._crit_edge ] ; 2 uses
  %.251 = phi i64 [ %.035.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.cr = getelementptr [8 x i8], ptr %i.cm, i64 %.03252 ; 6 uses
  br i1 %or.cond96, label %vector.memcheck84, label %scalar.ph82.preheader

vector.memcheck84:                                ; preds = %.preheader
  %i.cs = shl i64 %indvar, 3
  %i.ct = add i64 %i.cq, %i.cs
  %i.cu = sub i64 %i.a, %i.ct
  %i.cv = shl i64 %.251, 3
  %i.cw = add i64 %i.cu, %i.cv
  %i.cx = add i64 %i.cw, -1
  %diff.check = icmp ult i64 %i.cx, 31
  br i1 %diff.check, label %scalar.ph82.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck84
  %i.cy = add i64 %.251, %n.vec86                 ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %1, i64 %.251
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next91, %vector.body87 ] ; 3 uses
  %i.da = getelementptr [8 x i8], ptr %i.cr, i64 %index88 ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load89 = load <2 x double>, ptr %i.da, align 8, !tbaa !42
  %wide.load90 = load <2 x double>, ptr %i.db, align 8, !tbaa !42
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %index88 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load89, ptr %i.dc, align 8, !tbaa !42
  store <2 x double> %wide.load90, ptr %i.dd, align 8, !tbaa !42
  %index.next91 = add nuw i64 %index88, 4         ; 2 uses
  %i.de = icmp eq i64 %index.next91, %n.vec86
  br i1 %i.de, label %middle.block92, label %vector.body87, !llvm.loop !1223

middle.block92:                                   ; preds = %vector.body87
  br i1 %cmp.n93, label %._crit_edge, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %vector.memcheck84, %.preheader, %middle.block92
  %.050.ph = phi i64 [ 0, %vector.memcheck84 ], [ 0, %.preheader ], [ %n.vec86, %middle.block92 ] ; 3 uses
  %.349.ph = phi i64 [ %.251, %vector.memcheck84 ], [ %.251, %.preheader ], [ %i.cy, %middle.block92 ] ; 2 uses
  br i1 %lcmp.mod100.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader, %scalar.ph82.prol
  %.050.prol = phi i64 [ %i.dk, %scalar.ph82.prol ], [ %.050.ph, %scalar.ph82.preheader ] ; 2 uses
  %.349.prol = phi i64 [ %i.dj, %scalar.ph82.prol ], [ %.349.ph, %scalar.ph82.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph82.prol ], [ 0, %scalar.ph82.preheader ]
  %i.df = mul nsw i64 %i.co, %.050.prol
  %i.dg = getelementptr [8 x i8], ptr %i.cr, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !42
  %i.di = getelementptr inbounds [8 x i8], ptr %1, i64 %.349.prol
  store double %i.dh, ptr %i.di, align 8, !tbaa !42
  %i.dj = add nsw i64 %.349.prol, 1               ; 3 uses
  %i.dk = add nuw nsw i64 %.050.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter99
  br i1 %prol.iter.cmp.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol, !llvm.loop !1224

end_hunk_3
