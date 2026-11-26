Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_euler?download=true
inline.NumInlined: 5314
inline.NumDeleted: 2989
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %i.gq = sub nsw i64 %0, %.0322.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.gq, i64 %.sroa.speculated243) ; 3 uses
  %i.gr = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.gr, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep.us329 = getelementptr [8 x i8], ptr %invariant.gep.us331, i64 %.0322.us
  store ptr %gep.us329, ptr %14, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated218.us, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.y unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.gs = getelementptr [8 x i8], ptr %4, i64 %.0322.us
  store ptr %i.gs, ptr %15, align 8
  store i64 %6, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated.us, i64 noundef %.sroa.speculated218.us, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.z unwind label %.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.gt = add nsw i64 %.0322.us, %.sroa.speculated243 ; 2 uses
  %i.gu = icmp slt i64 %i.gt, %0
  br i1 %i.gu, label %bb.w, label %.loopexit.us, !llvm.loop !298

.loopexit.us:                                     ; preds = %bb.aa
  %indvars.iv.next = sub i64 %indvars.iv, %i.b
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph314.us, !llvm.loop !299

.lr.ph.us330:                                     ; preds = %._crit_edge315.us
  %i.gv = mul nsw i64 %.0132323.us, %3
  %invariant.gep.us331 = getelementptr [8 x i8], ptr %2, i64 %i.gv
  br label %bb.w

.split.us.split.us:                               ; preds = %._crit_edge305.split.us.us
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.split317.us.split.us:                            ; preds = %bb.s
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

.split320.us.split.us:                            ; preds = %bb.t
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body

.loopexit:                                        ; preds = %bb.ai
  %i.gz = sub nsw i64 %0, %i.hd
  %.sroa.speculated218 = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.gz)
  %i.ha = add nsw i64 %i.hd, %i.b                 ; 2 uses
  %i.hb = icmp slt i64 %i.ha, %0
  br i1 %i.hb, label %.lr.ph, label %._crit_edge, !llvm.loop !299

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge315.us, %.lr.ph325.split.preheader, %bb.p, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.af, label %bb.ab, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.ab:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ad) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.ab
  br i1 %i.s, label %bb.ac, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.ac:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.ac
  ret void

bb.ad:                                            ; preds = %.invoke
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

.lr.ph:                                           ; preds = %.lr.ph325.split.preheader, %.loopexit
  %i.hd = phi i64 [ %i.ha, %.loopexit ], [ %i.b, %.lr.ph325.split.preheader ] ; 4 uses
  %.sroa.speculated218380 = phi i64 [ %.sroa.speculated218, %.loopexit ], [ %i.b, %.lr.ph325.split.preheader ] ; 2 uses
  %.0132323379 = phi i64 [ %i.hd, %.loopexit ], [ 0, %.lr.ph325.split.preheader ]
  %i.he = mul nsw i64 %.0132323379, %3
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.he
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.ai
  %.0322 = phi i64 [ %i.hd, %.lr.ph ], [ %i.hi, %bb.ai ] ; 4 uses
  %i.hf = sub nsw i64 %0, %.0322
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.hf, i64 %.sroa.speculated243) ; 3 uses
  %i.hg = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.hg, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0322
  store ptr %gep, ptr %14, align 8
  store i64 %3, ptr %i.as, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated218380, i64 noundef %.sroa.speculated, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.hh = getelementptr [8 x i8], ptr %4, i64 %.0322
  store ptr %i.hh, ptr %15, align 8
  store i64 %6, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated, i64 noundef %.sroa.speculated218380, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ah unwind label %.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ai

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.af
  %lpad.loopexit.split-lp402 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.body

.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.ag
  %lpad.loopexit.split-lp404 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.body

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.hi = add nsw i64 %.0322, %.sroa.speculated243 ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %0
  br i1 %i.hj, label %bb.ae, label %.loopexit, !llvm.loop !298

.body:                                            ; preds = %.split.us.split.us, %.split320.us.split.us, %.split317.us.split.us, %.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn161.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %lpad.loopexit.split-lp402, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gx, %.split317.us.split.us ], [ %lpad.loopexit.split-lp404, %.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gw, %.split.us.split.us ], [ %i.gy, %.split320.us.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.af, label %bb.aj, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

bb.aj:                                            ; preds = %.body
  call void @free(ptr noundef %i.ad) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202: ; preds = %.body, %bb.aj, %bb.ad
  %.pn161.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.ad ], [ %.pn161.pn.pn.pn, %bb.aj ], [ %.pn161.pn.pn.pn, %.body ]
  br i1 %i.s, label %bb.ak, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

bb.ak:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202
  call void @free(ptr noundef %i.q) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202, %bb.ak
  resume { ptr, i32 } %.pn161.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !315
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !130    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131  ; 12 uses
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
  %7 = shl i64 %i.r, 3                            ; 3 uses
  %8 = or disjoint i64 %7, 24
  %9 = mul i64 %i.h, %8
  %i.t = shl i64 %3, 3                            ; 4 uses
  %i.u = getelementptr i8, ptr %i.f, i64 %9
  %scevgep128 = getelementptr i8, ptr %i.u, i64 %i.t
  %10 = mul i64 %i.h, 24
  %scevgep129 = getelementptr i8, ptr %i.f, i64 %10
  %i.v = or disjoint i64 %7, 16
  %i.w = mul i64 %i.h, %i.v
  %i.x = getelementptr i8, ptr %i.f, i64 %i.w
  %scevgep129.a = getelementptr i8, ptr %i.x, i64 %i.t
  %i.y = shl i64 %i.h, 4
  %scevgep130 = getelementptr i8, ptr %i.f, i64 %i.y
  %i.z = or disjoint i64 %7, 8
  %i.aa = mul i64 %i.h, %i.z
  %i.ab = getelementptr i8, ptr %i.f, i64 %i.aa
  %scevgep131 = getelementptr i8, ptr %i.ab, i64 %i.t
  %i.ac = shl i64 %i.h, 3
  %scevgep132 = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ad = mul i64 %i.h, %i.s
  %11 = shl i64 %i.ad, 5
  %scevgep133 = getelementptr i8, ptr %i.f, i64 %11
  %scevgep134 = getelementptr i8, ptr %scevgep133, i64 %i.t
  %i.ae = shl i64 %6, 5
  %i.af = add i64 %6, %3
  %i.ag = shl i64 %i.af, 5
  %scevgep135 = getelementptr i8, ptr %1, i64 %i.ag
  %scevgep136 = getelementptr i8, ptr %1, i64 %i.ae
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.ah = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.dk, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.dj, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.ai = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.aj = mul nsw i64 %i.h, %.05076.us
  %i.ak = getelementptr [8 x i8], ptr %i.f, i64 %i.aj ; 4 uses
  %i.al = or disjoint i64 %.05076.us, 1
  %i.am = mul nsw i64 %i.h, %i.al
  %i.an = getelementptr [8 x i8], ptr %i.f, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.05076.us, 2
  %i.ap = mul nsw i64 %i.h, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.f, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.05076.us, 3
  %i.as = mul nsw i64 %i.h, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.f, i64 %i.as ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.au = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.aw = icmp ult ptr %i.av, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.au ; 2 uses
  %i.ax = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.ay = icmp ult ptr %i.ax, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.au ; 2 uses
  %i.az = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.ba = icmp ult ptr %i.az, %scevgep103
  %i.bb = or i1 %i.ba, %mul.overflow
  %i.bc = or i1 %i.ay, %i.aw
  %i.bd = or i1 %i.bc, %i.bb
  br i1 %i.bd, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.be = shl i64 %.05175.us, 3                   ; 2 uses
  %i.bf = getelementptr i8, ptr %scevgep136, i64 %i.be ; 4 uses
  %i.bg = getelementptr i8, ptr %scevgep135, i64 %i.be ; 4 uses
  %bound0 = icmp ult ptr %i.bf, %scevgep134
  %bound1 = icmp ult ptr %i.f, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  %i.bh = or i1 %found.conflict, %stride.check
  %bound0137 = icmp ult ptr %i.bf, %scevgep131
  %bound1138 = icmp ult ptr %scevgep132, %i.bg
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx = or i1 %i.bh, %found.conflict139
  %bound0140 = icmp ult ptr %i.bf, %scevgep129.a
  %bound1141 = icmp ult ptr %scevgep130, %i.bg
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx143 = or i1 %conflict.rdx, %found.conflict142
  %bound0144 = icmp ult ptr %i.bf, %scevgep128
  %bound1145 = icmp ult ptr %scevgep129, %i.bg
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx147 = or i1 %conflict.rdx143, %found.conflict146
  br i1 %conflict.rdx147, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bi = add i64 %i.ai, %i.ah                    ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %1, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index
  %wide.load = load <2 x double>, ptr %i.bk, align 8, !tbaa !10, !alias.scope !316
  %.idx = shl i64 %index, 5
  %i.bl = getelementptr i8, ptr %i.bj, i64 %.idx
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load148 = load <2 x double>, ptr %i.bm, align 8, !tbaa !10, !alias.scope !317
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load149 = load <2 x double>, ptr %i.bn, align 8, !tbaa !10, !alias.scope !318
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load150 = load <2 x double>, ptr %i.bo, align 8, !tbaa !10, !alias.scope !319
  %i.bp = shufflevector <2 x double> %wide.load, <2 x double> %wide.load148, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bq = shufflevector <2 x double> %wide.load149, <2 x double> %wide.load150, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bp, <4 x double> %i.bq, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bl, align 8, !tbaa !10, !alias.scope !320, !noalias !321
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.ai, %vector.memcheck ], [ %i.ai, %vector.scevcheck ], [ %i.ai, %.lr.ph.us ], [ %i.bi, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.04974.us.ph
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !10
  %i.bu = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.bt, ptr %i.bu, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04974.us.ph
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !10
  %i.bx = getelementptr i8, ptr %i.bu, i64 8
  store double %i.bw, ptr %i.bx, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04974.us.ph
  %i.bz = load double, ptr %i.by, align 8, !tbaa !10
  %i.ca = getelementptr i8, ptr %i.bu, i64 16
  store double %i.bz, ptr %i.ca, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04974.us.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !10
  %i.cd = getelementptr i8, ptr %i.bu, i64 24
  store double %i.cc, ptr %i.cd, align 8, !tbaa !10
  %i.ce = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.cf = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa168.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ce, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.cf, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.ce, %scalar.ph.prol ]
  %i.cg = icmp eq i64 %3, %.neg
  br i1 %i.cg, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.di, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.dh, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.04974.us
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !10
  %i.cj = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.ci, ptr %i.cj, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04974.us
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !10
  %i.cm = getelementptr i8, ptr %i.cj, i64 8
  store double %i.cl, ptr %i.cm, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04974.us
  %i.co = load double, ptr %i.cn, align 8, !tbaa !10
  %i.cp = getelementptr i8, ptr %i.cj, i64 16
  store double %i.co, ptr %i.cp, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04974.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !10
  %i.cs = getelementptr i8, ptr %i.cj, i64 24
  store double %i.cr, ptr %i.cs, align 8, !tbaa !10
  %i.ct = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !10
  %i.cw = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 32
  store double %i.cv, ptr %i.cx, align 8, !tbaa !10
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ct
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !10
  %i.da = getelementptr i8, ptr %i.cw, i64 40
  store double %i.cz, ptr %i.da, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ct
  %i.dc = load double, ptr %i.db, align 8, !tbaa !10
  %i.dd = getelementptr i8, ptr %i.cw, i64 48
  store double %i.dc, ptr %i.dd, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ct
  %i.df = load double, ptr %i.de, align 8, !tbaa !10
  %i.dg = getelementptr i8, ptr %i.cw, i64 56
  store double %i.df, ptr %i.dg, align 8, !tbaa !10
  %i.dh = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.di = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.di, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !309

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.bi, %middle.block ], [ %.lcssa168.unr, %scalar.ph.prol.loopexit ], [ %i.dh, %scalar.ph ]
  %i.dj = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.dk = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.c
  br i1 %i.dl, label %.lr.ph.us, label %.preheader, !llvm.loop !310

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.dm = add nsw i64 %smax, -4
  %i.dn = lshr exact i64 %i.dm, 2
  %i.do = mul i64 %i.dn, %invariant.op
  %i.dp = shl i64 %5, 2
  %i.dq = add i64 %i.do, %i.dp
  %i.dr = shl i64 %3, 2
  %i.ds = sub i64 %i.dq, %i.dr
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.ds, %.lr.ph78.split ], [ %i.dj, %._crit_edge.us ]
  %i.dt = icmp slt i64 %i.c, %4
  br i1 %i.dt, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.du = load ptr, ptr %2, align 8, !tbaa !130   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !131 ; 3 uses
  %i.dx = icmp sgt i64 %3, 0
  %i.dy = add i64 %3, %6
  %i.dz = sub i64 %5, %i.dy
  br i1 %i.dx, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.ea = ptrtoaddr ptr %i.du to i64
  %i.eb = mul i64 %i.dw, -8
  %i.ec = mul i64 %i.dw, %i.b
  %i.ed = shl i64 %i.ec, 5
  %i.ee = add i64 %i.ed, %i.ea
  %i.ef = sub i64 %i.a, %i.ee
  %min.iters.check154 = icmp ult i64 %3, 4
  %n.vec157 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n164 = icmp eq i64 %3, %n.vec157
  %xtraiter170 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br label %.lr.ph

._crit_edge85.split:                              ; preds = %._crit_edge, %.lr.ph84, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04883 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fd, %._crit_edge ] ; 2 uses
  %.282 = phi i64 [ %.051.lcssa, %.lr.ph.preheader ], [ %i.fc, %._crit_edge ]
  %i.eg = add i64 %.282, %6                       ; 5 uses
  %i.eh = mul nsw i64 %i.dw, %.04883
  %i.ei = getelementptr [8 x i8], ptr %i.du, i64 %i.eh ; 6 uses
  br i1 %min.iters.check154, label %scalar.ph153.preheader, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph
  %i.ej = mul i64 %indvar, %i.eb
  %i.ek = add i64 %i.ef, %i.ej
  %i.el = shl i64 %i.eg, 3
  %i.em = add i64 %i.ek, %i.el
  %i.en = add i64 %i.em, -1
  %diff.check = icmp ult i64 %i.en, 31
  br i1 %diff.check, label %scalar.ph153.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck155
  %i.eo = add i64 %i.eg, %n.vec157                ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %1, i64 %i.eg
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index159 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load160 = load <2 x double>, ptr %i.eq, align 8, !tbaa !10
  %wide.load161 = load <2 x double>, ptr %i.er, align 8, !tbaa !10
  %i.es = getelementptr [8 x i8], ptr %i.ep, i64 %index159 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x double> %wide.load160, ptr %i.es, align 8, !tbaa !10
  store <2 x double> %wide.load161, ptr %i.et, align 8, !tbaa !10
  %index.next162 = add nuw i64 %index159, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.eu, label %middle.block163, label %vector.body158, !llvm.loop !311

middle.block163:                                  ; preds = %vector.body158
  br i1 %cmp.n164, label %._crit_edge, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %vector.memcheck155, %.lr.ph, %middle.block163
  %.081.ph = phi i64 [ 0, %vector.memcheck155 ], [ 0, %.lr.ph ], [ %n.vec157, %middle.block163 ] ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.assume
!121 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEE", !13, i64 0}
!122 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_7ProductINS_5BlockINS3_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEENS3_INS3_IS9_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEE", !13, i64 0}
!123 = !{!"p1 _ZTSN5Eigen8internal13sub_assign_opIddEE", !13, i64 0}
!124 = !{!"p1 _ZTSN5Eigen5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEE", !13, i64 0}
!125 = !{i64 8}
!126 = !{!"branch_weights", i32 1, i32 1048575}
!127 = !{!"_ZTSN5Eigen8internal10CacheSizesE", !18, i64 0, !18, i64 8, !18, i64 16}
!128 = !{!127, !18, i64 8}
!129 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIdlLi0ELi0ELi1EEE", !70, i64 0, !18, i64 8}
!130 = !{!129, !70, i64 0}
!131 = !{!129, !18, i64 8}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEELi1EEE", !74, i64 0}
!134 = !{!"_ZTSN5Eigen6StrideILi0ELi0EEE", !114, i64 0, !114, i64 1}
!135 = !{!"_ZTSN5Eigen3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEE", !133, i64 0, !134, i64 10}
!136 = !{!"_ZTSN5Eigen9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEE", !135, i64 0}
!137 = !{!"_ZTSN5Eigen7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEES4_Li0EEE", !136, i64 0, !14, i64 16}
!138 = !{!137, !14, i64 16}
!139 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLi6EEE", !70, i64 0}
!140 = !{!139, !70, i64 0}
!141 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEES4_EE", !70, i64 0, !108, i64 8, !71, i64 9}
!142 = !{!141, !70, i64 0}
!143 = !{!"_ZTSN5Eigen8internal9evaluatorINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEE", !141, i64 0}
!144 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEES4_EE", !70, i64 0, !108, i64 8, !71, i64 9}
!145 = !{!144, !70, i64 0}
!146 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEEEE", !13, i64 0}
!147 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEENS3_IKNS2_ISB_S6_Li0EEEEELi1EEEEE", !13, i64 0}
!148 = !{!"p1 _ZTSN5Eigen8internal13add_assign_opIddEE", !13, i64 0}
!149 = !{!"p1 _ZTSN5Eigen3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEE", !13, i64 0}
!150 = distinct !{!150, i1 true, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES4_Li0EEEE11lazyProductIS4_EEKNS1_IS6_T_Li1EEERKNS0_IS9_EE"}
!151 = distinct !{!151, !150, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES4_Li0EEEE11lazyProductIS4_EEKNS1_IS6_T_Li1EEERKNS0_IS9_EE: argument 0"}
!152 = !{!151}
!153 = distinct !{!153, i1 true, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES4_Li0EEEE11lazyProductIS4_EEKNS1_IS6_T_Li1EEERKNS0_IS9_EE"}
!154 = distinct !{!154, !153, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES4_Li0EEEE11lazyProductIS4_EEKNS1_IS6_T_Li1EEERKNS0_IS9_EE: argument 0"}
!155 = !{!154}
!156 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!157 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!158 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!159 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !18, i64 8}
!160 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!161 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!162 = !{!"_ZTSSt6locale", !161, i64 0}
!163 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !156, i64 24, !157, i64 28, !157, i64 32, !158, i64 40, !159, i64 48, !5, i64 64, !6, i64 192, !160, i64 200, !162, i64 208}
!164 = !{!163, !157, i64 32}
!165 = distinct !{!165, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEEE8ConstantEllRKd"}
!166 = distinct !{!166, !165, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEEE8ConstantEllRKd: argument 0"}
!167 = distinct !{!167, i1 true, !"_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE17robustInformationERKNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEE"}
!168 = distinct !{!168, !167, !"_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE17robustInformationERKNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEE: argument 0"}
!169 = distinct !{!169, i1 true, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEESA_E4typeEKSE_EERKS5_RKNS_10MatrixBaseISE_EE"}
!170 = distinct !{!170, !169, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEESA_E4typeEKSE_EERKS5_RKNS_10MatrixBaseISE_EE: argument 0"}
!171 = !{!68, !50, i64 64}
!172 = !{!166}
!173 = !{!168}
!174 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIdEE", !9, i64 0}
!175 = !{!174, !9, i64 0}
!176 = !{!170}
!177 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !13, i64 0}
!178 = !{!"_ZTSNSt12_Vector_baseIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_Vector_impl_dataE", !177, i64 0, !177, i64 8, !177, i64 16}
!179 = !{!178, !177, i64 0}
!180 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !70, i64 0, !18, i64 8}
!181 = !{!180, !70, i64 0}
!182 = distinct !{!182, i1 true, !"_ZNK5Eigen9TransformIdLi3ELi1ELi0EE7inverseENS_15TransformTraitsE"}
!183 = distinct !{!183, !182, !"_ZNK5Eigen9TransformIdLi3ELi1ELi0EE7inverseENS_15TransformTraitsE: argument 0"}
!184 = !{!183}
!185 = !{!68, !6, i64 56}
!186 = distinct !{!186, !12}
!187 = !{!"_ZTSN5Eigen9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEE", !14, i64 0}
!188 = !{!"_ZTSN5Eigen7ProductINS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES3_Li0EEE", !187, i64 0, !14, i64 8}
!189 = !{!188, !14, i64 8}
!190 = !{!"_ZTSN5Eigen7ProductINS0_INS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES3_Li0EEES3_Li1EEE", !188, i64 0, !14, i64 16}
!191 = !{!190, !14, i64 16}
!192 = distinct !{!192, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE12partialPivLuEv"}
!193 = distinct !{!193, !192, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE12partialPivLuEv: argument 0"}
!194 = !{!193}
!195 = !{i64 0, i64 288, !11}
!196 = !{i64 0, i64 24, !11}
!197 = !{!92, !18, i64 24}
!198 = distinct !{!198, i1 true, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!199 = distinct !{!199, !198, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!200 = distinct !{!200, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELi6ELi1EEEE8ConstantEllRKd"}
!201 = distinct !{!201, !200, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELi6ELi1EEEE8ConstantEllRKd: argument 0"}
!202 = distinct !{!202, !12, !101, !102}
!203 = distinct !{!203, !12, !102, !101}
!204 = distinct !{!204, !12}
!205 = distinct !{!205, i1 true, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!206 = distinct !{!206, !205, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!207 = distinct !{!207, i1 true, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEE17bottomRightCornerINS_8internal19VariableAndFixedIntILin1EEESB_EENS7_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeESD_SE_"}
!208 = distinct !{!208, !207, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEE17bottomRightCornerINS_8internal19VariableAndFixedIntILin1EEESB_EENS7_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeESD_SE_: argument 0"}
!209 = distinct !{!209, !12}
!210 = !{!199}
!211 = !{!201}
!212 = !{!206}
!213 = !{!208}
!214 = !{!105, !105, i64 0}
!215 = !{!107, !18, i64 48}
!216 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEELi1EEE", !113, i64 0}
!217 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELi0EEE", !70, i64 0, !71, i64 8, !108, i64 9}
!218 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELi1EEE", !217, i64 0}
!219 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1ELb1EEE", !218, i64 0, !105, i64 16, !99, i64 24, !99, i64 32, !18, i64 40}
!220 = !{!"_ZTSN5Eigen9BlockImplINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1ENS_5DenseEEE", !219, i64 0}
!221 = !{!"_ZTSN5Eigen5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEE", !220, i64 0}
!222 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0ELb1EEE", !216, i64 0, !221, i64 24, !99, i64 72, !114, i64 80, !18, i64 88}
!223 = !{!"_ZTSN5Eigen9BlockImplINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0ENS_5DenseEEE", !222, i64 0}
!224 = !{!"_ZTSN5Eigen5BlockINS0_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEE", !223, i64 0}
!225 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0EEELi1EEE", !115, i64 0}
!226 = !{!"_ZTSN5Eigen9BlockImplINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0ENS_5DenseEEE", !118, i64 0}
!227 = !{!"_ZTSN5Eigen5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEE", !226, i64 0}
!228 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0ELb1EEE", !225, i64 0, !227, i64 24, !114, i64 72, !99, i64 80, !18, i64 88}
!229 = !{!"_ZTSN5Eigen9BlockImplINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0ENS_5DenseEEE", !228, i64 0}
!230 = !{!"_ZTSN5Eigen5BlockINS0_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0EEE", !229, i64 0}
!231 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0ELb1EEE", !109, i64 0}
!232 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS2_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEE", !231, i64 0}
!233 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0ELb1EEE", !111, i64 0}
!234 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS2_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0EEEEE", !233, i64 0}
!235 = !{!"_ZTSN5Eigen8internal17product_evaluatorINS_7ProductINS_5BlockINS3_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEENS3_INS3_IS9_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEELi4ENS_10DenseShapeESF_ddEE", !224, i64 0, !230, i64 96, !232, i64 192, !234, i64 216, !18, i64 240}
!236 = !{!235, !18, i64 240}
!237 = !{!121, !121, i64 0}
!238 = !{!122, !122, i64 0}
!239 = !{!123, !123, i64 0}
!240 = !{!124, !124, i64 0}
!241 = distinct !{!241, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEE3rowEl"}
!242 = distinct !{!242, !241, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEE3rowEl: argument 0"}
!243 = distinct !{!243, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0EEEE3colEl"}
!244 = distinct !{!244, !243, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0EEEE3colEl: argument 0"}
!245 = distinct !{!245, i1 false, !"LVerDomain"}
!246 = distinct !{!246, !245}
!247 = distinct !{!247, !245}
!248 = distinct !{!248, !245}
!249 = distinct !{!249, !12, !101, !102}
!250 = distinct !{!250, !12}
!251 = distinct !{!251, !12, !101}
!252 = distinct !{!252, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0EEEE3colEl"}
!253 = distinct !{!253, !252, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0EEEE3colEl: argument 0"}
!254 = distinct !{!254, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEE3rowEl"}
!255 = distinct !{!255, !254, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEE3rowEl: argument 0"}
!256 = distinct !{!256, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEE3rowEl"}
!257 = distinct !{!257, !256, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEE3rowEl: argument 0"}
!258 = distinct !{!258, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0EEEE3colEl"}
!259 = distinct !{!259, !258, !"_ZNK5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi1ELi6ELb0EEELi1ELin1ELb0EEEE3colEl: argument 0"}
!260 = distinct !{!260, i1 false, !"LVerDomain"}
!261 = distinct !{!261, !260}
!262 = distinct !{!262, !260}
!263 = distinct !{!263, !260}
!264 = distinct !{!264, !12, !101, !102}
!265 = distinct !{!265, !12}
!266 = distinct !{!266, !12}
!267 = distinct !{!267, !12, !101}
!268 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS2_INS_7ProductINS3_INS3_IS9_Li6ELi1ELb1EEELin1ELi1ELb0EEENS3_INS3_IS9_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEE", !121, i64 0, !122, i64 8, !123, i64 16, !124, i64 24}
!269 = !{!268, !124, i64 24}
!270 = !{!113, !70, i64 0}
!271 = !{!242}
!272 = !{!115, !70, i64 0}
!273 = !{!244}
!274 = !{!118, !105, i64 16}
!275 = !{!246}
!276 = !{!247}
!277 = !{!248}
!278 = !{!247, !246}
!279 = !{!107, !105, i64 24}
!280 = !{!268, !122, i64 8}
!281 = !{!253}
!282 = !{!255}
!283 = !{!268, !121, i64 0}
!284 = !{!257}
!285 = !{!259}
!286 = !{!261}
!287 = !{!262}
!288 = !{!263}
!289 = !{!262, !261}
!290 = distinct !{!290, !12, !101}
!291 = distinct !{!291, !12}
!292 = distinct !{!292, i1 false, !"LVerDomain"}
!293 = distinct !{!293, !292}
!294 = distinct !{!294, !292}
!295 = distinct !{!295, !12, !101, !102}
!296 = distinct !{!296, !12}
!297 = distinct !{!297, !12}
!298 = distinct !{!298, !12}
!299 = distinct !{!299, !12}
!300 = !{!293}
!301 = !{!294}
!302 = distinct !{!302, i1 false, !"LVerDomain"}
!303 = distinct !{!303, !302}
!304 = distinct !{!304, !302}
!305 = distinct !{!305, !302}
!306 = distinct !{!306, !302}
!307 = distinct !{!307, !302}
!308 = distinct !{!308, !12, !101, !102}
!309 = distinct !{!309, !12, !101}
!310 = distinct !{!310, !12}
!311 = distinct !{!311, !12, !101, !102}
!312 = distinct !{!312, !132}
!313 = distinct !{!313, !12}
!314 = distinct !{!314, !12, !101}
!315 = !{i64 2155431147}
!316 = !{!303}
!317 = !{!304}
!318 = !{!305}
!319 = !{!306}
!320 = !{!307}
!321 = !{!303, !304, !305, !306}
!322 = distinct !{!322, !12}
!323 = distinct !{!323, !12}
!324 = distinct !{!324, !12}
!325 = distinct !{!325, !12}
!326 = distinct !{!326, !12, !101, !102}
!327 = distinct !{!327, !132}
!328 = distinct !{!328, !12}
!329 = distinct !{!329, !12, !101}
!330 = !{i64 2155430442}
!331 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIKdlLi0ELi0ELi1EEE", !70, i64 0, !18, i64 8}
!332 = !{!331, !70, i64 0}
!333 = !{!331, !18, i64 8}
!334 = distinct !{!334, !12}
!335 = distinct !{!335, !12}
!336 = distinct !{!336, !12}
!337 = distinct !{!337, !12}
!338 = distinct !{!338, !12}
!339 = distinct !{!339, !12}
!340 = distinct !{!340, !12}
!341 = distinct !{!341, !12}
!342 = distinct !{!342, !12}
!343 = distinct !{!343, !12}
!344 = distinct !{!344, !12}
!345 = distinct !{!345, !12}
!346 = distinct !{!346, !12}
!347 = distinct !{!347, !12}
!348 = distinct !{!348, !132}
!349 = distinct !{!349, !12}
!350 = !{i64 2155421786}
!351 = !{i64 2155422609}
!352 = !{i64 2155422663}
!353 = !{i64 2155422726}
!354 = !{i64 2155423555}
!355 = !{i64 2155423609}
!356 = !{i64 2155423672}
!357 = !{i64 2155424501}
!358 = !{i64 2155424555}
!359 = !{i64 2155424618}
!360 = !{i64 2155425447}
!361 = !{i64 2155425501}
!362 = !{i64 2155425564}
!363 = !{i64 2155426393}
!364 = !{i64 2155426447}
!365 = !{i64 2155426510}
!366 = !{i64 2155427339}
!367 = !{i64 2155427393}
!368 = !{i64 2155427456}
!369 = !{i64 2155428285}
!370 = !{i64 2155428339}
!371 = !{i64 2155428402}
!372 = !{i64 2155429231}
!373 = !{i64 2155429285}
!374 = !{i64 2155429348}
!375 = !{i64 2155429400}
!376 = !{i64 2155430221}
!377 = !{i64 2155430275}
!378 = !{i64 2155430338}
!379 = !{i64 2155410221}
!380 = !{i64 2155411492}
!381 = !{i64 2155411546}
!382 = !{i64 2155412760}
!383 = !{i64 2155412814}
!384 = !{i64 2155414028}
!385 = !{i64 2155414082}
!386 = !{i64 2155415296}
!387 = !{i64 2155415350}
!388 = !{i64 2155416564}
!389 = !{i64 2155416618}
!390 = !{i64 2155417832}
!391 = !{i64 2155417886}
!392 = !{i64 2155419100}
!393 = !{i64 2155419154}
!394 = !{i64 2155420368}
!395 = !{i64 2155420422}
!396 = !{i64 2155420474}
!397 = !{i64 2155421680}
!398 = !{i64 2155421734}
!399 = !{!18, !18, i64 0}
!400 = !{!127, !18, i64 16}
!401 = distinct !{!401, !12}
!402 = !{i64 2153528510}
!403 = !{i64 2153527515}
!404 = !{i64 2153527913}
!405 = !{i64 2153528112}
!406 = !{i64 2153528311}
!407 = distinct !{!407, !12}
!408 = !{i64 2153527714}
!409 = distinct !{!409, !12}
!410 = distinct !{!410, !12}
!411 = distinct !{!411, !12}
!412 = distinct !{!412, !12}
!413 = distinct !{!413, !12}
!414 = distinct !{!414, !12}
!415 = distinct !{!415, !12}
!416 = !{i64 2155370450}
!417 = !{i64 2155370213}
!418 = !{i64 2155370266}
!419 = !{i64 2155370392}
!420 = !{i64 2155370508}
!421 = !{i64 2155370564}
!422 = !{i64 2155371123}
!423 = !{i64 2155371189}
!424 = !{i64 2155371252}
!425 = !{i64 2155371817}
!426 = !{i64 2155371883}
!427 = !{i64 2155371946}
!428 = !{i64 2155372511}
!429 = !{i64 2155372577}
!430 = !{i64 2155372640}
!431 = !{i64 2155373205}
!432 = !{i64 2155373271}
!433 = !{i64 2155373334}
!434 = !{i64 2155373899}
!435 = !{i64 2155373965}
!436 = !{i64 2155374028}
!437 = !{i64 2155374593}
!438 = !{i64 2155374659}
!439 = !{i64 2155374722}
!440 = !{i64 2155375287}
!441 = !{i64 2155375353}
!442 = !{i64 2155375416}
!443 = !{i64 2155375981}
!444 = !{i64 2155376047}
!445 = !{i64 2155376110}
!446 = !{i64 2155376174}
!447 = !{i64 2155376731}
!448 = !{i64 2155376797}
!449 = !{i64 2155376860}
!450 = distinct !{!450, !12, !101, !102}
!451 = distinct !{!451, !12, !101}
!452 = distinct !{!452, i1 false, !"LVerDomain"}
!453 = distinct !{!453, !452}
!454 = distinct !{!454, !452}
!455 = distinct !{!455, !12, !101, !102}
!456 = distinct !{!456, !12, !101}
!457 = distinct !{!457, !12}
!458 = distinct !{!458, !12}
!459 = distinct !{!459, !12}
!460 = distinct !{!460, !12}
!461 = distinct !{!461, !12}
!462 = distinct !{!462, !12}
!463 = !{!453}
!464 = !{!454}
!465 = distinct !{!465, i1 true, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEES5_Li0EEEE11lazyProductIS8_EEKNS1_ISB_T_Li1EEERKNS0_ISE_EE"}
!466 = distinct !{!466, !465, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEES5_Li0EEEE11lazyProductIS8_EEKNS1_ISB_T_Li1EEERKNS0_ISE_EE: argument 0"}
!467 = distinct !{!467, i1 true, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEEE11lazyProductINS1_IKNS_7ProductIS9_S4_Li0EEEEEEEKNSC_IS9_T_Li1EEERKNS0_ISG_EE"}
!468 = distinct !{!468, !467, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEEE11lazyProductINS1_IKNS_7ProductIS9_S4_Li0EEEEEEEKNSC_IS9_T_Li1EEERKNS0_ISG_EE: argument 0"}
!469 = distinct !{!469, i1 true, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEES5_Li0EEEE11lazyProductIS8_EEKNS1_ISB_T_Li1EEERKNS0_ISE_EE"}
!470 = distinct !{!470, !469, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEES5_Li0EEEE11lazyProductIS8_EEKNS1_ISB_T_Li1EEERKNS0_ISE_EE: argument 0"}
!471 = !{!466}
!472 = !{!468}
!473 = !{!470}
!474 = distinct !{!474, i1 true, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEES5_Li0EEEE11lazyProductIS8_EEKNS1_ISB_T_Li1EEERKNS0_ISE_EE"}
!475 = distinct !{!475, !474, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEES5_Li0EEEE11lazyProductIS8_EEKNS1_ISB_T_Li1EEERKNS0_ISE_EE: argument 0"}
!476 = !{!475}
!477 = distinct !{!477, !12}
!478 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEEEE", !139, i64 0}
!479 = !{!"_ZTSN5Eigen8internal9evaluatorINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEE", !478, i64 0}
!480 = !{!"_ZTSN5Eigen8internal17product_evaluatorINS_7ProductINS2_INS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEES6_Li0EEES9_Li1EEELi3ENS_10DenseShapeESE_ddEE", !80, i64 0, !135, i64 288, !479, i64 304, !143, i64 312, !18, i64 328}
!481 = !{!480, !18, i64 328}
!482 = !{!478, !70, i64 0}
!483 = distinct !{!483, !12}
!484 = !{!"_ZTSN5Eigen8internal11plain_arrayIdLi36ELi1ELi16EEE", !5, i64 0}
!485 = !{!"_ZTSN5Eigen12DenseStorageIdLi36ELi6ELi6ELi1EEE", !484, i64 0}
!486 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi6ELi6ELi1ELi6ELi6EEEEE", !485, i64 0}
!487 = !{!"_ZTSN5Eigen6MatrixIdLi6ELi6ELi1ELi6ELi6EEE", !486, i64 0}
!488 = !{!"_ZTSN5Eigen8internal9evaluatorIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEE", !143, i64 0}
!489 = !{!"_ZTSN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEENS0_10IndexBasedEdEE", !488, i64 0}
!490 = !{!"_ZTSN5Eigen8internal9evaluatorINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEEEE", !489, i64 0}
!491 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLi6ELi6ELi1ELi6ELi6EEEEEEE", !139, i64 0}
!492 = !{!"_ZTSN5Eigen8internal9evaluatorINS_6MatrixIdLi6ELi6ELi1ELi6ELi6EEEEE", !491, i64 0}
!493 = !{!"_ZTSN5Eigen8internal17product_evaluatorINS_7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEENS3_IKNS2_ISB_S6_Li0EEEEELi1EEELi3ENS_10DenseShapeESG_ddEE", !136, i64 0, !487, i64 16, !490, i64 304, !492, i64 320, !18, i64 328}
!494 = !{!493, !18, i64 328}
!495 = !{!146, !146, i64 0}
!496 = !{!147, !147, i64 0}
!497 = !{!148, !148, i64 0}
!498 = !{!149, !149, i64 0}
!499 = distinct !{!499, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEEE3rowEl"}
!500 = distinct !{!500, !499, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEEEEE3rowEl: argument 0"}
!501 = distinct !{!501, i1 false, !"LVerDomain"}
!502 = distinct !{!502, !501}
!503 = distinct !{!503, !501}
!504 = distinct !{!504, !501}
!505 = distinct !{!505, !12, !101}
!506 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS3_IS5_Li16ES7_EEEENSB_IKNSA_ISE_S5_Li0EEEEELi1EEEEENS0_13add_assign_opIddEELi0EEE", !146, i64 0, !147, i64 8, !148, i64 16, !149, i64 24}
!507 = !{!506, !146, i64 0}
!508 = !{!506, !147, i64 8}
!509 = !{!500}
!510 = !{!502}
!511 = !{!503}
!512 = !{!504}
!513 = !{!502, !503}
end_hunk_1
