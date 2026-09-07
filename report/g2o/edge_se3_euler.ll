Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_euler?download=true
inline.NumInlined: 5314
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.gt = getelementptr [8 x i8], ptr %4, i64 %.0322.us
  store ptr %i.gt, ptr %15, align 8
  store i64 %6, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %.sroa.speculated218.us, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ab unwind label %.split337.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.gu = add nsw i64 %.0322.us, %.sroa.speculated243 ; 2 uses
  %i.gv = icmp slt i64 %i.gu, %0
  br i1 %i.gv, label %bb.y, label %.loopexit.us, !llvm.loop !298

.loopexit.us:                                     ; preds = %bb.ac
  %indvars.iv.next = sub i64 %indvars.iv, %i.b
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph314.us, !llvm.loop !299

.lr.ph.us330:                                     ; preds = %._crit_edge315.us
  %i.gw = mul nsw i64 %.0132323.us, %3
  %invariant.gep.us331 = getelementptr [8 x i8], ptr %2, i64 %i.gw
  br label %bb.y

.split.us.split.us:                               ; preds = %._crit_edge305.split.us.us
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.split317.us.split.us:                            ; preds = %bb.u
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

.split320.us.split.us:                            ; preds = %bb.v
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body

.split.us334:                                     ; preds = %bb.z
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.split337.us:                                     ; preds = %bb.aa
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit:                                        ; preds = %bb.an
  %i.hc = sub nsw i64 %0, %i.hh
  %.sroa.speculated218 = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.hc)
  %i.hd = add nsw i64 %i.hh, %i.b                 ; 2 uses
  %i.he = icmp slt i64 %i.hd, %0
  br i1 %i.he, label %.lr.ph, label %._crit_edge, !llvm.loop !299

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge315.us, %.lr.ph325.split.preheader, %bb.r, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.ag, label %bb.ad, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.ad:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ae) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.ad
  br i1 %i.s, label %bb.ae, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.ae:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.ae
  ret void

bb.af:                                            ; preds = %bb.g
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

bb.ag:                                            ; preds = %bb.k
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

.lr.ph:                                           ; preds = %.lr.ph325.split.preheader, %.loopexit
  %i.hh = phi i64 [ %i.hd, %.loopexit ], [ %i.b, %.lr.ph325.split.preheader ] ; 4 uses
  %.sroa.speculated218374 = phi i64 [ %.sroa.speculated218, %.loopexit ], [ %i.b, %.lr.ph325.split.preheader ] ; 2 uses
  %.0132323373 = phi i64 [ %i.hh, %.loopexit ], [ 0, %.lr.ph325.split.preheader ]
  %i.hi = mul nsw i64 %.0132323373, %3
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.hi
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.an
  %.0322 = phi i64 [ %i.hh, %.lr.ph ], [ %i.ho, %bb.an ] ; 4 uses
  %i.hj = sub nsw i64 %0, %.0322
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.hj, i64 %.sroa.speculated243) ; 3 uses
  %i.hk = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.hk, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0322
  store ptr %gep, ptr %14, align 8
  store i64 %3, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated218374, i64 noundef %.sroa.speculated, i64 noundef 0, i64 noundef 0)
          to label %bb.aj unwind label %.split

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.hl = getelementptr [8 x i8], ptr %4, i64 %.0322
  store ptr %i.hl, ptr %15, align 8
  store i64 %6, ptr %i.au, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated, i64 noundef %.sroa.speculated218374, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ak unwind label %.split337

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.an

.split:                                           ; preds = %bb.ai
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.split.us334, %.split
  %.us-phi335 = phi { ptr, i32 } [ %i.hm, %.split ], [ %i.ha, %.split.us334 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.body

.split337:                                        ; preds = %bb.aj
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.split337.us, %.split337
  %.us-phi338 = phi { ptr, i32 } [ %i.hn, %.split337 ], [ %i.hb, %.split337.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.body

bb.an:                                            ; preds = %bb.ak, %bb.ah
  %i.ho = add nsw i64 %.0322, %.sroa.speculated243 ; 2 uses
  %i.hp = icmp slt i64 %i.ho, %0
  br i1 %i.hp, label %bb.ah, label %.loopexit, !llvm.loop !298

.body:                                            ; preds = %.split.us.split.us, %.split320.us.split.us, %.split317.us.split.us, %bb.am, %bb.al, %bb.p
  %.pn161.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %.us-phi335, %bb.al ], [ %i.gy, %.split317.us.split.us ], [ %.us-phi338, %bb.am ], [ %i.gx, %.split.us.split.us ], [ %i.gz, %.split320.us.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.ag, label %bb.ao, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

bb.ao:                                            ; preds = %.body
  call void @free(ptr noundef %i.ae) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202: ; preds = %.body, %bb.ao, %bb.ag, %bb.af
  %.pn161.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.af ], [ %i.hg, %bb.ag ], [ %.pn161.pn.pn.pn, %bb.ao ], [ %.pn161.pn.pn.pn, %.body ]
  br i1 %i.s, label %bb.ap, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

bb.ap:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202
  call void @free(ptr noundef %i.q) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202, %bb.ap
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
  %i.r = shl i64 %6, 5
  %scevgep104 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = add i64 %6, %3
  %i.t = shl i64 %i.s, 5
  %scevgep106 = getelementptr i8, ptr %1, i64 %i.t
  %i.u = mul i64 %i.h, 24
  %scevgep108 = getelementptr i8, ptr %i.f, i64 %i.u
  %smax109 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.v = add nsw i64 %smax109, -4                 ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = shl i64 %i.v, 3                          ; 3 uses
  %i.y = or disjoint i64 %i.x, 24
  %i.z = mul i64 %i.h, %i.y
  %i.aa = shl i64 %3, 3                           ; 4 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 %i.z
  %scevgep110 = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ac = shl i64 %i.h, 4
  %scevgep111 = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ad = or disjoint i64 %i.x, 16
  %i.ae = mul i64 %i.h, %i.ad
  %i.af = getelementptr i8, ptr %i.f, i64 %i.ae
  %scevgep112 = getelementptr i8, ptr %i.af, i64 %i.aa
  %i.ag = shl i64 %i.h, 3
  %scevgep113 = getelementptr i8, ptr %i.f, i64 %i.ag
  %i.ah = or disjoint i64 %i.x, 8
  %i.ai = mul i64 %i.h, %i.ah
  %i.aj = getelementptr i8, ptr %i.f, i64 %i.ai
  %scevgep114 = getelementptr i8, ptr %i.aj, i64 %i.aa
  %i.ak = mul i64 %i.h, %i.w
  %i.al = shl i64 %i.ak, 5
  %i.am = getelementptr i8, ptr %i.f, i64 %i.al
  %scevgep115 = getelementptr i8, ptr %i.am, i64 %i.aa
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check119 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.an = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.do, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.dn, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.ao = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ap = mul nsw i64 %i.h, %.05076.us
  %i.aq = getelementptr [8 x i8], ptr %i.f, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.05076.us, 1
  %i.as = mul nsw i64 %i.h, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.f, i64 %i.as ; 4 uses
  %i.au = or disjoint i64 %.05076.us, 2
  %i.av = mul nsw i64 %i.h, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.f, i64 %i.av ; 4 uses
  %i.ax = or disjoint i64 %.05076.us, 3
  %i.ay = mul nsw i64 %i.h, %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.f, i64 %i.ay ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ba = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.bc = icmp ult ptr %i.bb, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.ba ; 2 uses
  %i.bd = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.be = icmp ult ptr %i.bd, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.ba ; 2 uses
  %i.bf = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bg = icmp ult ptr %i.bf, %scevgep103
  %i.bh = or i1 %i.bg, %mul.overflow
  %i.bi = or i1 %i.be, %i.bc
  %i.bj = or i1 %i.bi, %i.bh
  br i1 %i.bj, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bk = shl i64 %.05175.us, 3                   ; 2 uses
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.bk ; 4 uses
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.bk ; 4 uses
  %bound0 = icmp ult ptr %scevgep105, %scevgep110
  %bound1 = icmp ult ptr %scevgep108, %scevgep107
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %scevgep105, %scevgep112
  %bound1117 = icmp ult ptr %scevgep111, %scevgep107
  %found.conflict118 = and i1 %bound0116, %bound1117
  %i.bl = or i1 %found.conflict118, %stride.check119
  %conflict.rdx = or i1 %found.conflict, %i.bl
  %bound0120 = icmp ult ptr %scevgep105, %scevgep114
  %bound1121 = icmp ult ptr %scevgep113, %scevgep107
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx124 = or i1 %found.conflict122, %conflict.rdx
  %bound0125 = icmp ult ptr %scevgep105, %scevgep115
  %bound1126 = icmp ult ptr %i.f, %scevgep107
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx129 = or i1 %found.conflict127, %conflict.rdx124
  br i1 %conflict.rdx129, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bm = add i64 %i.ao, %i.an                    ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %1, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load = load <2 x double>, ptr %i.bo, align 8, !tbaa !10, !alias.scope !316
  %.idx = shl i64 %index, 5
  %i.bp = getelementptr i8, ptr %i.bn, i64 %.idx
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load130 = load <2 x double>, ptr %i.bq, align 8, !tbaa !10, !alias.scope !317
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load131 = load <2 x double>, ptr %i.br, align 8, !tbaa !10, !alias.scope !318
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index
  %wide.load132 = load <2 x double>, ptr %i.bs, align 8, !tbaa !10, !alias.scope !319
  %i.bt = shufflevector <2 x double> %wide.load, <2 x double> %wide.load130, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bu = shufflevector <2 x double> %wide.load131, <2 x double> %wide.load132, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bt, <4 x double> %i.bu, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bp, align 8, !tbaa !10, !alias.scope !320, !noalias !321
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.ao, %vector.memcheck ], [ %i.ao, %vector.scevcheck ], [ %i.ao, %.lr.ph.us ], [ %i.bm, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04974.us.ph
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !10
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.bx, ptr %i.by, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04974.us.ph
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !10
  %i.cb = getelementptr i8, ptr %i.by, i64 8
  store double %i.ca, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04974.us.ph
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !10
  %i.ce = getelementptr i8, ptr %i.by, i64 16
  store double %i.cd, ptr %i.ce, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.04974.us.ph
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !10
  %i.ch = getelementptr i8, ptr %i.by, i64 24
  store double %i.cg, ptr %i.ch, align 8, !tbaa !10
  %i.ci = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.cj = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa149.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ci, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.ci, %scalar.ph.prol ]
  %i.ck = icmp eq i64 %3, %.neg
  br i1 %i.ck, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.dm, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.dl, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04974.us
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !10
  %i.cn = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.cm, ptr %i.cn, align 8, !tbaa !10
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04974.us
  %i.cp = load double, ptr %i.co, align 8, !tbaa !10
  %i.cq = getelementptr i8, ptr %i.cn, i64 8
  store double %i.cp, ptr %i.cq, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04974.us
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !10
  %i.ct = getelementptr i8, ptr %i.cn, i64 16
  store double %i.cs, ptr %i.ct, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.04974.us
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !10
  %i.cw = getelementptr i8, ptr %i.cn, i64 24
  store double %i.cv, ptr %i.cw, align 8, !tbaa !10
  %i.cx = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !10
  %i.da = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.db = getelementptr i8, ptr %i.da, i64 32
  store double %i.cz, ptr %i.db, align 8, !tbaa !10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cx
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !10
  %i.de = getelementptr i8, ptr %i.da, i64 40
  store double %i.dd, ptr %i.de, align 8, !tbaa !10
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cx
  %i.dg = load double, ptr %i.df, align 8, !tbaa !10
  %i.dh = getelementptr i8, ptr %i.da, i64 48
  store double %i.dg, ptr %i.dh, align 8, !tbaa !10
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cx
  %i.dj = load double, ptr %i.di, align 8, !tbaa !10
  %i.dk = getelementptr i8, ptr %i.da, i64 56
  store double %i.dj, ptr %i.dk, align 8, !tbaa !10
  %i.dl = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.dm = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dm, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !309

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.bm, %middle.block ], [ %.lcssa149.unr, %scalar.ph.prol.loopexit ], [ %i.dl, %scalar.ph ]
  %i.dn = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.do = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.dp = icmp slt i64 %i.do, %i.c
  br i1 %i.dp, label %.lr.ph.us, label %.preheader, !llvm.loop !310

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.dq = add nsw i64 %smax, -4
  %i.dr = lshr exact i64 %i.dq, 2
  %7 = mul i64 %i.dr, %invariant.op
  %8 = shl i64 %5, 2
  %i.ds = add i64 %7, %8
  %9 = shl i64 %3, 2
  %10 = sub i64 %i.ds, %9
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %10, %.lr.ph78.split ], [ %i.dn, %._crit_edge.us ]
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
  %i.eb = mul i64 %i.dw, %i.b
  %i.ec = shl i64 %i.eb, 5
  %i.ed = add i64 %i.ec, %i.ea
  %i.ee = sub i64 %i.a, %i.ed
  %i.ef = mul i64 %i.dw, -8
  %min.iters.check136 = icmp ult i64 %3, 4
  %n.vec138 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n145 = icmp eq i64 %3, %n.vec138
  %xtraiter151 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
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
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph
  %i.ej = mul i64 %i.ef, %indvar
  %i.ek = add i64 %i.ee, %i.ej
  %i.el = shl i64 %i.eg, 3
  %i.em = add i64 %i.ek, %i.el
  %i.en = add i64 %i.em, -1
  %diff.check = icmp ult i64 %i.en, 31
  br i1 %diff.check, label %scalar.ph135.preheader, label %vector.ph137

vector.ph137:                                     ; preds = %vector.memcheck134
  %i.eo = add i64 %i.eg, %n.vec138                ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %1, i64 %i.eg
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next143, %vector.body139 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index140 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load141 = load <2 x double>, ptr %i.eq, align 8, !tbaa !10
  %wide.load142 = load <2 x double>, ptr %i.er, align 8, !tbaa !10
  %i.es = getelementptr [8 x i8], ptr %i.ep, i64 %index140 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x double> %wide.load141, ptr %i.es, align 8, !tbaa !10
  store <2 x double> %wide.load142, ptr %i.et, align 8, !tbaa !10
  %index.next143 = add nuw i64 %index140, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.eu, label %middle.block144, label %vector.body139, !llvm.loop !311

middle.block144:                                  ; preds = %vector.body139
  br i1 %cmp.n145, label %._crit_edge, label %scalar.ph135.preheader

scalar.ph135.preheader:                           ; preds = %vector.memcheck134, %.lr.ph, %middle.block144
  %.081.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph ], [ %n.vec138, %middle.block144 ] ; 3 uses
  %.380.ph = phi i64 [ %i.eg, %vector.memcheck134 ], [ %i.eg, %.lr.ph ], [ %i.eo, %middle.block144 ] ; 2 uses
  br i1 %lcmp.mod152.not, label %scalar.ph135.prol.loopexit, label %scalar.ph135.prol

scalar.ph135.prol:                                ; preds = %scalar.ph135.preheader, %scalar.ph135.prol
  %.081.prol = phi i64 [ %i.ez, %scalar.ph135.prol ], [ %.081.ph, %scalar.ph135.preheader ] ; 2 uses
  %.380.prol = phi i64 [ %i.ey, %scalar.ph135.prol ], [ %.380.ph, %scalar.ph135.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph135.prol ], [ 0, %scalar.ph135.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.081.prol
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !10
  %i.ex = getelementptr inbounds [8 x i8], ptr %1, i64 %.380.prol
  store double %i.ew, ptr %i.ex, align 8, !tbaa !10
  %i.ey = add nsw i64 %.380.prol, 1               ; 3 uses
  %i.ez = add nuw nsw i64 %.081.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter151
  br i1 %prol.iter.cmp.not, label %scalar.ph135.prol.loopexit, label %scalar.ph135.prol, !llvm.loop !312

scalar.ph135.prol.loopexit:                       ; preds = %scalar.ph135.prol, %scalar.ph135.preheader
  %.lcssa148.unr = phi i64 [ poison, %scalar.ph135.preheader ], [ %i.ey, %scalar.ph135.prol ]
  %.081.unr = phi i64 [ %.081.ph, %scalar.ph135.preheader ], [ %i.ez, %scalar.ph135.prol ]
  %.380.unr = phi i64 [ %.380.ph, %scalar.ph135.preheader ], [ %i.ey, %scalar.ph135.prol ]
  %i.fa = sub nsw i64 %.081.ph, %3
  %i.fb = icmp ugt i64 %i.fa, -4
  br i1 %i.fb, label %._crit_edge, label %scalar.ph135

._crit_edge:                                      ; preds = %scalar.ph135.prol.loopexit, %scalar.ph135, %middle.block144
  %.lcssa = phi i64 [ %i.eo, %middle.block144 ], [ %.lcssa148.unr, %scalar.ph135.prol.loopexit ], [ %i.fw, %scalar.ph135 ]
  %i.fc = add nsw i64 %i.dz, %.lcssa
  %i.fd = add nsw i64 %.04883, 1                  ; 2 uses
  %exitcond90.not = icmp eq i64 %i.fd, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond90.not, label %._crit_edge85.split, label %.lr.ph, !llvm.loop !313

scalar.ph135:                                     ; preds = %scalar.ph135.prol.loopexit, %scalar.ph135
  %.081 = phi i64 [ %i.fx, %scalar.ph135 ], [ %.081.unr, %scalar.ph135.prol.loopexit ] ; 5 uses
  %.380 = phi i64 [ %i.fw, %scalar.ph135 ], [ %.380.unr, %scalar.ph135.prol.loopexit ] ; 5 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.081
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !10
  %i.fg = getelementptr inbounds [8 x i8], ptr %1, i64 %.380
  store double %i.ff, ptr %i.fg, align 8, !tbaa !10
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.081
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !10
  %i.fk = getelementptr [8 x i8], ptr %1, i64 %.380
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  store double %i.fj, ptr %i.fl, align 8, !tbaa !10
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.081
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !10
  %i.fp = getelementptr [8 x i8], ptr %1, i64 %.380
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  store double %i.fo, ptr %i.fq, align 8, !tbaa !10
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.081
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !10
  %i.fu = getelementptr [8 x i8], ptr %1, i64 %.380
  %i.fv = getelementptr i8, ptr %i.fu, i64 24
  store double %i.ft, ptr %i.fv, align 8, !tbaa !10
  %i.fw = add nsw i64 %.380, 4                    ; 2 uses
  %i.fx = add nuw nsw i64 %.081, 4                ; 2 uses
  %exitcond89.not.3 = icmp eq i64 %i.fx, %3
  br i1 %exitcond89.not.3, label %._crit_edge, label %scalar.ph135, !llvm.loop !314
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !330
  %i.b = sdiv i64 %4, 4
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = sub nsw i64 %4, %i.c
  %i.e = sdiv i64 %i.d, 2
  %i.f = shl nsw i64 %i.e, 1
  %i.g = add i64 %i.f, %i.c                       ; 3 uses
  %i.h = icmp sgt i64 %4, 3
  br i1 %i.h, label %.preheader64.lr.ph, label %.preheader63

.preheader64.lr.ph:                               ; preds = %bb.a
  %i.i = icmp sgt i64 %3, 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %i.i, label %.preheader64.us.preheader, label %.preheader64.preheader

.preheader64.us.preheader:                        ; preds = %.preheader64.lr.ph
  %xtraiter = and i64 %3, 1
  %i.k = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i64 %3 to i1
  br label %.preheader64.us

.preheader64.preheader:                           ; preds = %.preheader64.lr.ph
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  br label %.preheader63

.preheader64.us:                                  ; preds = %.preheader64.us.preheader, %._crit_edge.us
  %.05568.us = phi i64 [ %i.ax, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 4 uses
  %.05667.us = phi i64 [ %.lcssa119, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader64.us.new

.preheader64.us.new:                              ; preds = %.preheader64.us, %.preheader64.us.new
  %.05466.us = phi i64 [ %i.ak, %.preheader64.us.new ], [ 0, %.preheader64.us ] ; 3 uses
  %.15765.us = phi i64 [ %i.aj, %.preheader64.us.new ], [ %.05667.us, %.preheader64.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader64.us.new ], [ 0, %.preheader64.us ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !332
  %i.m = load i64, ptr %i.j, align 8, !tbaa !333
  %i.n = mul nsw i64 %i.m, %.05466.us             ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %.05568.us ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !11
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.n
  %i.t = load <2 x double>, ptr %i.s, align 1, !tbaa !11
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %.15765.us ; 2 uses
  store <2 x double> %i.q, ptr %i.u, align 16, !tbaa !11
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x double> %i.t, ptr %i.v, align 16, !tbaa !11
  %i.w = or disjoint i64 %.05466.us, 1
  %i.x = load ptr, ptr %2, align 8, !tbaa !332
  %i.y = load i64, ptr %i.j, align 8, !tbaa !333
  %i.z = mul nsw i64 %i.y, %i.w                   ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %.05568.us ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !11
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !11
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %.15765.us ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
end_hunk_0
