Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_euler?download=true
inline.NumInlined: 5314
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a

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
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result.a = shl i64 %i.m, 5                 ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %7 = getelementptr i8, ptr %1, i64 %i.ak
  %8 = add i64 %6, %3
  %9 = shl i64 %8, 5
  %i.al = getelementptr i8, ptr %1, i64 %9
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.am = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.dp, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.do, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.an = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ao = mul nsw i64 %i.h, %.05076.us
  %i.ap = getelementptr [8 x i8], ptr %i.f, i64 %i.ao ; 4 uses
  %i.aq = or disjoint i64 %.05076.us, 1
  %i.ar = mul nsw i64 %i.h, %i.aq
  %i.as = getelementptr [8 x i8], ptr %i.f, i64 %i.ar ; 4 uses
  %i.at = or disjoint i64 %.05076.us, 2
  %i.au = mul nsw i64 %i.h, %i.at
  %i.av = getelementptr [8 x i8], ptr %i.f, i64 %i.au ; 4 uses
  %i.aw = or disjoint i64 %.05076.us, 3
  %i.ax = mul nsw i64 %i.h, %i.aw
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.az = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %scevgep99, i64 %mul.result.a
  %i.bb = icmp ult ptr %i.ba, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.az ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep101, i64 %mul.result.a
  %i.bd = icmp ult ptr %i.bc, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.az ; 2 uses
  %i.be = getelementptr i8, ptr %scevgep103, i64 %mul.result.a
  %i.bf = icmp ult ptr %i.be, %scevgep103
  %i.bg = or i1 %i.bf, %mul.overflow
  %i.bh = or i1 %i.bd, %i.bb
  %i.bi = or i1 %i.bh, %i.bg
  br i1 %i.bi, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bj = shl i64 %.05175.us, 3                   ; 2 uses
  %i.bk = getelementptr i8, ptr %7, i64 %i.bj     ; 4 uses
  %i.bl = getelementptr i8, ptr %i.al, i64 %i.bj  ; 4 uses
  %bound0 = icmp ult ptr %i.bk, %scevgep133
  %bound1 = icmp ult ptr %scevgep134, %i.bl
  %found.conflict = and i1 %bound0, %bound1
  %i.bm = or i1 %found.conflict, %stride.check
  %bound0135 = icmp ult ptr %i.bk, %scevgep131
  %bound1136 = icmp ult ptr %scevgep132, %i.bl
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx = or i1 %i.bm, %found.conflict137
  %bound0138 = icmp ult ptr %i.bk, %scevgep129
  %bound1139 = icmp ult ptr %scevgep130, %i.bl
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx, %found.conflict140
  %bound0142 = icmp ult ptr %i.bk, %scevgep128
  %bound1143 = icmp ult ptr %i.f, %i.bl
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  br i1 %conflict.rdx145, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bn = add i64 %i.an, %i.am                    ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %1, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index
  %wide.load = load <2 x double>, ptr %i.bp, align 8, !tbaa !10, !alias.scope !316
  %.idx = shl i64 %index, 5
  %i.bq = getelementptr i8, ptr %i.bo, i64 %.idx
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index
  %wide.load146 = load <2 x double>, ptr %i.br, align 8, !tbaa !10, !alias.scope !317
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index
  %wide.load147 = load <2 x double>, ptr %i.bs, align 8, !tbaa !10, !alias.scope !318
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load148 = load <2 x double>, ptr %i.bt, align 8, !tbaa !10, !alias.scope !319
  %i.bu = shufflevector <2 x double> %wide.load, <2 x double> %wide.load146, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = shufflevector <2 x double> %wide.load147, <2 x double> %wide.load148, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bu, <4 x double> %i.bv, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bq, align 8, !tbaa !10, !alias.scope !320, !noalias !321
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %vector.scevcheck ], [ %i.an, %.lr.ph.us ], [ %i.bn, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.04974.us.ph
  %i.by = load double, ptr %i.bx, align 8, !tbaa !10
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.by, ptr %i.bz, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.04974.us.ph
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !10
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  store double %i.cb, ptr %i.cc, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.04974.us.ph
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !10
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  store double %i.ce, ptr %i.cf, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr i8, ptr %i.bz, i64 24
  store double %i.ch, ptr %i.ci, align 8, !tbaa !10
  %i.cj = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.ck = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa166.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.ck, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %i.cl = icmp eq i64 %3, %.neg
  br i1 %i.cl, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.dn, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.dm, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.04974.us
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !10
  %i.co = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.cn, ptr %i.co, align 8, !tbaa !10
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.04974.us
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !10
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  store double %i.cq, ptr %i.cr, align 8, !tbaa !10
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.04974.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !10
  %i.cu = getelementptr i8, ptr %i.co, i64 16
  store double %i.ct, ptr %i.cu, align 8, !tbaa !10
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !10
  %i.cx = getelementptr i8, ptr %i.co, i64 24
  store double %i.cw, ptr %i.cx, align 8, !tbaa !10
  %i.cy = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !10
  %i.db = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 32
  store double %i.da, ptr %i.dc, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.cy
  %i.de = load double, ptr %i.dd, align 8, !tbaa !10
  %i.df = getelementptr i8, ptr %i.db, i64 40
  store double %i.de, ptr %i.df, align 8, !tbaa !10
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cy
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !10
  %i.di = getelementptr i8, ptr %i.db, i64 48
  store double %i.dh, ptr %i.di, align 8, !tbaa !10
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cy
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !10
  %i.dl = getelementptr i8, ptr %i.db, i64 56
  store double %i.dk, ptr %i.dl, align 8, !tbaa !10
  %i.dm = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.dn = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !309

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.bn, %middle.block ], [ %.lcssa166.unr, %scalar.ph.prol.loopexit ], [ %i.dm, %scalar.ph ]
  %i.do = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.dp = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %i.c
  br i1 %i.dq, label %.lr.ph.us, label %.preheader, !llvm.loop !310

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.dr = add nsw i64 %smax, -4
  %i.ds = lshr exact i64 %i.dr, 2
  %i.dt = mul i64 %i.ds, %invariant.op
  %i.du = shl i64 %5, 2
  %i.dv = add i64 %i.dt, %i.du
  %i.dw = shl i64 %3, 2
  %i.dx = sub i64 %i.dv, %i.dw
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.dx, %.lr.ph78.split ], [ %i.do, %._crit_edge.us ]
  %i.dy = icmp slt i64 %i.c, %4
  br i1 %i.dy, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.dz = load ptr, ptr %2, align 8, !tbaa !130   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !131 ; 3 uses
  %i.ec = icmp sgt i64 %3, 0
  %i.ed = add i64 %3, %6
  %i.ee = sub i64 %5, %i.ed
  br i1 %i.ec, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.ef = ptrtoaddr ptr %i.dz to i64
  %i.eg = mul i64 %i.eb, -8
  %i.eh = mul i64 %i.eb, %i.b
  %i.ei = shl i64 %i.eh, 5
  %i.ej = add i64 %i.ei, %i.ef
  %i.ek = sub i64 %i.a, %i.ej
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
  %.04883 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fi, %._crit_edge ] ; 2 uses
  %.282 = phi i64 [ %.051.lcssa, %.lr.ph.preheader ], [ %i.fh, %._crit_edge ]
  %i.el = add i64 %.282, %6                       ; 5 uses
  %i.em = mul nsw i64 %i.eb, %.04883
  %i.en = getelementptr [8 x i8], ptr %i.dz, i64 %i.em ; 6 uses
  br i1 %min.iters.check152, label %scalar.ph151.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph
  %i.eo = mul i64 %indvar, %i.eg
  %i.ep = add i64 %i.ek, %i.eo
  %i.eq = shl i64 %i.el, 3
  %i.er = add i64 %i.ep, %i.eq
  %i.es = add i64 %i.er, -1
  %diff.check = icmp ult i64 %i.es, 31
  br i1 %diff.check, label %scalar.ph151.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck153
  %i.et = add i64 %i.el, %n.vec155                ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %1, i64 %i.el
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index157 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
end_hunk_0
