Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4377
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.bv = icmp slt i64 %i.bt, %2
  br i1 %i.bv, label %bb.p, label %..loopexit177_crit_edge.split.us200, !llvm.loop !757

..loopexit177_crit_edge.split.us200:              ; preds = %.loopexit.us
  %i.bw = icmp slt i64 %i.bq, %0
  br i1 %i.bw, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !758

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
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !779
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
  %scevgep260 = getelementptr i8, ptr %1, i64 %i.j
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
  %min.iters.check331 = icmp ult i64 %3, 4
  %n.vec334 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n341 = icmp eq i64 %3, %n.vec334
  %xtraiter359 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br label %.preheader

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %._crit_edge160
  %indvar = phi i64 [ 0, %.lr.ph166.preheader ], [ %indvar.next, %._crit_edge160 ] ; 2 uses
  %.1164 = phi i64 [ 0, %.lr.ph166.preheader ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %.1133162 = phi i64 [ 0, %.lr.ph166.preheader ], [ %i.fh, %._crit_edge160 ] ; 9 uses
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
  br i1 %i.ax, label %.preheader140.us, label %.preheader141, !llvm.loop !759

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
  %i.by = sub i64 %i.bv, %i.bx
  %i.bz = getelementptr i8, ptr %scevgep260, i64 %i.by ; 4 uses
  %i.ca = shl i64 %indvar, 5                      ; 4 uses
  %i.cb = mul i64 %i.ba, %i.ca                    ; 2 uses
  %i.cc = shl i64 %.0128.lcssa, 3                 ; 4 uses
  %i.cd = getelementptr i8, ptr %i.az, i64 %i.cb
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.az, i64 %i.cb
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.i
  %i.ch = or disjoint i64 %i.ca, 8
  %i.ci = mul i64 %i.ba, %i.ch                    ; 2 uses
  %i.cj = getelementptr i8, ptr %i.az, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.az, i64 %i.ci
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.i
  %i.cn = or disjoint i64 %i.ca, 16
  %i.co = mul i64 %i.ba, %i.cn                    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.az, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cc
  %i.cr = getelementptr i8, ptr %i.az, i64 %i.co
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.i
  %7 = or disjoint i64 %i.ca, 24
  %i.ct = mul i64 %i.ba, %7                       ; 2 uses
  %i.cu = getelementptr i8, ptr %i.az, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cc
  %i.cw = getelementptr i8, ptr %i.az, i64 %i.ct
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.i
  %bound0 = icmp ult ptr %i.bw, %i.cg
  %bound1 = icmp ult ptr %i.ce, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  %bound0261 = icmp ult ptr %i.bw, %i.cm
  %bound1262 = icmp ult ptr %i.ck, %i.bz
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx = or i1 %found.conflict, %found.conflict263
  %bound0264 = icmp ult ptr %i.bw, %i.cs
  %bound1265 = icmp ult ptr %i.cq, %i.bz
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx, %found.conflict266
  %bound0268 = icmp ult ptr %i.bw, %i.cx
  %bound1269 = icmp ult ptr %i.cv, %i.bz
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  br i1 %conflict.rdx271, label %.loopexit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, -2                      ; 4 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = add i64 %.2.lcssa, %i.cy                ; 2 uses
  %i.da = add i64 %.0128.lcssa, %n.vec
  %i.db = getelementptr [8 x i8], ptr %i.az, i64 %.0128.lcssa
  %i.dc = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dd = getelementptr [8 x i8], ptr %i.db, i64 %index ; 4 uses
  %i.de = getelementptr [8 x i8], ptr %i.dd, i64 %i.bb
  %wide.load = load <2 x double>, ptr %i.de, align 8, !tbaa !42, !alias.scope !780
  %i.df = getelementptr [8 x i8], ptr %i.dd, i64 %i.bd
  %wide.load272 = load <2 x double>, ptr %i.df, align 8, !tbaa !42, !alias.scope !781
  %i.dg = getelementptr [8 x i8], ptr %i.dd, i64 %i.bf
  %wide.load273 = load <2 x double>, ptr %i.dg, align 8, !tbaa !42, !alias.scope !782
  %i.dh = getelementptr [8 x i8], ptr %i.dd, i64 %i.bh
  %wide.load274 = load <2 x double>, ptr %i.dh, align 8, !tbaa !42, !alias.scope !783
  %.idx = shl i64 %index, 5
  %i.di = getelementptr i8, ptr %i.dc, i64 %.idx
  %i.dj = shufflevector <2 x double> %wide.load, <2 x double> %wide.load272, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dk = shufflevector <2 x double> %wide.load273, <2 x double> %wide.load274, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.dj, <4 x double> %i.dk, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.di, align 8, !tbaa !42, !alias.scope !784, !noalias !785
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !766

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge160, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader139.preheader, %middle.block
  %.4159.ph = phi i64 [ %.2.lcssa, %vector.memcheck ], [ %.2.lcssa, %vector.scevcheck ], [ %.2.lcssa, %.preheader139.preheader ], [ %i.cz, %middle.block ] ; 3 uses
  %.2130157.ph = phi i64 [ %.0128.lcssa, %vector.memcheck ], [ %.0128.lcssa, %vector.scevcheck ], [ %.0128.lcssa, %.preheader139.preheader ], [ %i.da, %middle.block ] ; 5 uses
  %i.dm = sub i64 %3, %.2130157.ph
  %.neg = add i64 %.2130157.ph, 1
  %xtraiter = and i64 %i.dm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.prol.loopexit, label %.loopexit.prol

.loopexit.prol:                                   ; preds = %.loopexit.preheader
  %i.dn = getelementptr [8 x i8], ptr %i.az, i64 %.2130157.ph ; 4 uses
  %i.do = add nsw i64 %.4159.ph, 4                ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %i.dn, i64 %i.bb
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !42
  %i.dr = getelementptr [8 x i8], ptr %i.dn, i64 %i.bd
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !42
  %i.dt = getelementptr [8 x i8], ptr %i.dn, i64 %i.bf
  %i.du = load double, ptr %i.dt, align 8, !tbaa !42
  %i.dv = getelementptr [8 x i8], ptr %i.dn, i64 %i.bh
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !42
  %i.dx = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.ph ; 4 uses
  store double %i.dq, ptr %i.dx, align 8, !tbaa !42
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  store double %i.ds, ptr %i.dy, align 8, !tbaa !42
  %i.dz = getelementptr i8, ptr %i.dx, i64 16
  store double %i.du, ptr %i.dz, align 8, !tbaa !42
  %i.ea = getelementptr i8, ptr %i.dx, i64 24
  store double %i.dw, ptr %i.ea, align 8, !tbaa !42
  %i.eb = add nuw nsw i64 %.2130157.ph, 1
  br label %.loopexit.prol.loopexit

.loopexit.prol.loopexit:                          ; preds = %.loopexit.prol, %.loopexit.preheader
  %.lcssa352.unr = phi i64 [ poison, %.loopexit.preheader ], [ %i.do, %.loopexit.prol ]
  %.4159.unr = phi i64 [ %.4159.ph, %.loopexit.preheader ], [ %i.do, %.loopexit.prol ]
  %.2130157.unr = phi i64 [ %.2130157.ph, %.loopexit.preheader ], [ %i.eb, %.loopexit.prol ]
  %i.ec = icmp eq i64 %3, %.neg
  br i1 %i.ec, label %._crit_edge160, label %.loopexit

.loopexit:                                        ; preds = %.loopexit.prol.loopexit, %.loopexit
  %.4159 = phi i64 [ %i.es, %.loopexit ], [ %.4159.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %.2130157 = phi i64 [ %i.fg, %.loopexit ], [ %.2130157.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %i.ed = getelementptr [8 x i8], ptr %i.az, i64 %.2130157 ; 4 uses
  %i.ee = getelementptr [8 x i8], ptr %i.ed, i64 %i.bb
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !42
  %i.eg = getelementptr [8 x i8], ptr %i.ed, i64 %i.bd
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !42
  %i.ei = getelementptr [8 x i8], ptr %i.ed, i64 %i.bf
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !42
  %i.ek = getelementptr [8 x i8], ptr %i.ed, i64 %i.bh
  %i.el = load double, ptr %i.ek, align 8, !tbaa !42
  %i.em = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  store double %i.ef, ptr %i.em, align 8, !tbaa !42
  %i.en = getelementptr i8, ptr %i.em, i64 8
  store double %i.eh, ptr %i.en, align 8, !tbaa !42
  %i.eo = getelementptr i8, ptr %i.em, i64 16
  store double %i.ej, ptr %i.eo, align 8, !tbaa !42
  %i.ep = getelementptr i8, ptr %i.em, i64 24
  store double %i.el, ptr %i.ep, align 8, !tbaa !42
  %i.eq = getelementptr [8 x i8], ptr %i.az, i64 %.2130157
  %i.er = getelementptr i8, ptr %i.eq, i64 8      ; 4 uses
  %i.es = add nsw i64 %.4159, 8                   ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %i.er, i64 %i.bb
  %i.eu = load double, ptr %i.et, align 8, !tbaa !42
  %i.ev = getelementptr [8 x i8], ptr %i.er, i64 %i.bd
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !42
  %i.ex = getelementptr [8 x i8], ptr %i.er, i64 %i.bf
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !42
  %i.ez = getelementptr [8 x i8], ptr %i.er, i64 %i.bh
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !42
  %i.fb = getelementptr [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 32
  store double %i.eu, ptr %i.fc, align 8, !tbaa !42
  %i.fd = getelementptr i8, ptr %i.fb, i64 40
  store double %i.ew, ptr %i.fd, align 8, !tbaa !42
  %i.fe = getelementptr i8, ptr %i.fb, i64 48
  store double %i.ey, ptr %i.fe, align 8, !tbaa !42
  %i.ff = getelementptr i8, ptr %i.fb, i64 56
  store double %i.fa, ptr %i.ff, align 8, !tbaa !42
  %i.fg = add nuw nsw i64 %.2130157, 2            ; 2 uses
  %exitcond190.not.1 = icmp eq i64 %i.fg, %3
  br i1 %exitcond190.not.1, label %._crit_edge160, label %.loopexit, !llvm.loop !767

._crit_edge160:                                   ; preds = %.loopexit.prol.loopexit, %.loopexit, %middle.block, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %i.cz, %middle.block ], [ %.lcssa352.unr, %.loopexit.prol.loopexit ], [ %i.es, %.loopexit ] ; 2 uses
  %i.fh = add i64 %.1133162, 4                    ; 3 uses
  %i.fi = icmp slt i64 %i.fh, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fi, label %.lr.ph166, label %._crit_edge167, !llvm.loop !768

._crit_edge167:                                   ; preds = %._crit_edge160, %bb.a
  %.1133.lcssa = phi i64 [ 0, %bb.a ], [ %i.fh, %._crit_edge160 ] ; 5 uses
  %.1.lcssa = phi i64 [ 0, %bb.a ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %i.fj = sub i64 %4, %.1133.lcssa
  %i.fk = srem i64 %i.fj, 2
  %i.fl = sub i64 %4, %i.fk                       ; 2 uses
  %i.fm = icmp slt i64 %.1133.lcssa, %i.fl
  br i1 %i.fm, label %.lr.ph166.1.preheader, label %._crit_edge167.1

.lr.ph166.1.preheader:                            ; preds = %._crit_edge167
  %scevgep277 = getelementptr i8, ptr %1, i64 8
  %i.fn = shl i64 %.1133.lcssa, 3                 ; 2 uses
  %8 = add i64 %i.fn, 8
  %9 = shl i64 %3, 3                              ; 2 uses
  %i.fo = shl i64 %3, 4
  %scevgep302 = getelementptr i8, ptr %1, i64 %i.fo
  br label %.lr.ph166.1

.lr.ph166.1:                                      ; preds = %.lr.ph166.1.preheader, %._crit_edge160.1
  %indvar300 = phi i64 [ 0, %.lr.ph166.1.preheader ], [ %indvar.next301, %._crit_edge160.1 ] ; 2 uses
  %.1164.1 = phi i64 [ %.1.lcssa, %.lr.ph166.1.preheader ], [ %.4.lcssa.1, %._crit_edge160.1 ] ; 2 uses
  %.1133162.1 = phi i64 [ %.1133.lcssa, %.lr.ph166.1.preheader ], [ %i.jc, %._crit_edge160.1 ] ; 5 uses
  br i1 %i.d, label %.preheader140.us.preheader.1, label %.preheader141.1

.preheader140.us.preheader.1:                     ; preds = %.lr.ph166.1
  %i.fp = add nsw i64 %.1133162.1, 1
  br label %.preheader140.us.1

.preheader140.us.1:                               ; preds = %.preheader140.us.1, %.preheader140.us.preheader.1
  %.2146.us.1 = phi i64 [ %i.gd, %.preheader140.us.1 ], [ %.1164.1, %.preheader140.us.preheader.1 ] ; 2 uses
  %.0128145.us.1 = phi i64 [ %i.ge, %.preheader140.us.1 ], [ 0, %.preheader140.us.preheader.1 ] ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us.1 ; 2 uses
  %i.fr = load ptr, ptr %2, align 8, !tbaa !182
  %i.fs = load i64, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.ft = getelementptr [8 x i8], ptr %i.fr, i64 %.0128145.us.1 ; 2 uses
  %i.fu = mul nsw i64 %i.fs, %.1133162.1
  %i.fv = getelementptr [8 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load <2 x double>, ptr %i.fv, align 1, !tbaa !24 ; 2 uses
  %i.fx = mul nsw i64 %i.fs, %i.fp
  %i.fy = getelementptr [8 x i8], ptr %i.ft, i64 %i.fx
  %i.fz = load <2 x double>, ptr %i.fy, align 1, !tbaa !24 ; 2 uses
  %i.ga = shufflevector <2 x double> %i.fw, <2 x double> %i.fz, <2 x i32> <i32 1, i32 3>
  %i.gb = shufflevector <2 x double> %i.fw, <2 x double> %i.fz, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.gb, ptr %i.fq, align 16, !tbaa !24
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <2 x double> %i.ga, ptr %i.gc, align 16, !tbaa !24
  %i.gd = add nsw i64 %.2146.us.1, 4              ; 2 uses
  %i.ge = add nuw nsw i64 %.0128145.us.1, 2       ; 3 uses
  %i.gf = icmp slt i64 %i.ge, %i.c
  br i1 %i.gf, label %.preheader140.us.1, label %.preheader141.1, !llvm.loop !759

.preheader141.1:                                  ; preds = %.preheader140.us.1, %.lr.ph166.1
  %.0128.lcssa.1 = phi i64 [ 0, %.lr.ph166.1 ], [ %i.ge, %.preheader140.us.1 ] ; 10 uses
  %.2.lcssa.1 = phi i64 [ %.1164.1, %.lr.ph166.1 ], [ %i.gd, %.preheader140.us.1 ] ; 8 uses
  %i.gg = icmp slt i64 %.0128.lcssa.1, %3
  br i1 %i.gg, label %.preheader139.preheader.1, label %._crit_edge160.1

.preheader139.preheader.1:                        ; preds = %.preheader141.1
  %i.gh = load ptr, ptr %2, align 8, !tbaa !182   ; 8 uses
  %i.gi = load i64, ptr %i.e, align 8, !tbaa !183 ; 4 uses
  %i.gj = mul nsw i64 %i.gi, %.1133162.1          ; 4 uses
  %i.gk = add nsw i64 %.1133162.1, 1
  %i.gl = mul nsw i64 %i.gi, %i.gk                ; 4 uses
  %i.gm = sub i64 %3, %.0128.lcssa.1              ; 3 uses
  %min.iters.check304 = icmp ult i64 %i.gm, 42
  br i1 %min.iters.check304, label %.loopexit.1.preheader, label %vector.scevcheck276

vector.scevcheck276:                              ; preds = %.preheader139.preheader.1
  %i.gn = xor i64 %.0128.lcssa.1, -1
  %i.go = add i64 %3, %i.gn                       ; 2 uses
  %i.gp = shl i64 %.2.lcssa.1, 3
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.gp ; 2 uses
  %mul.result280 = shl i64 %i.go, 4
  %mul.overflow281 = icmp ugt i64 %i.go, 1152921504606846975
  %i.gq = getelementptr i8, ptr %scevgep278, i64 %mul.result280
  %i.gr = icmp ult ptr %i.gq, %scevgep278
  %i.gs = or i1 %i.gr, %mul.overflow281
  br i1 %i.gs, label %.loopexit.1.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %vector.scevcheck276
  %i.gt = shl i64 %.2.lcssa.1, 3                  ; 2 uses
  %i.gu = getelementptr i8, ptr %1, i64 %i.gt     ; 2 uses
  %i.gv = shl i64 %.0128.lcssa.1, 4
  %i.gw = sub i64 %i.gt, %i.gv
  %i.gx = getelementptr i8, ptr %scevgep302, i64 %i.gw ; 2 uses
  %i.gy = shl i64 %indvar300, 4                   ; 2 uses
  %i.gz = add i64 %i.fn, %i.gy
  %i.ha = mul i64 %i.gi, %i.gz                    ; 2 uses
  %i.hb = shl i64 %.0128.lcssa.1, 3               ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gh, i64 %i.ha
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.hb
  %i.he = getelementptr i8, ptr %i.gh, i64 %i.ha
  %i.hf = getelementptr i8, ptr %i.he, i64 %9
  %i.hg = add i64 %8, %i.gy
  %i.hh = mul i64 %i.gi, %i.hg                    ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gh, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 %i.hb
  %i.hk = getelementptr i8, ptr %i.gh, i64 %i.hh
  %i.hl = getelementptr i8, ptr %i.hk, i64 %9
  %bound0306 = icmp ult ptr %i.gu, %i.hf
  %bound1307 = icmp ult ptr %i.hd, %i.gx
  %found.conflict308 = and i1 %bound0306, %bound1307
  %bound0309 = icmp ult ptr %i.gu, %i.hl
  %bound1310 = icmp ult ptr %i.hj, %i.gx
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %found.conflict308, %found.conflict311
  br i1 %conflict.rdx312, label %.loopexit.1.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck305
  %n.vec314 = and i64 %i.gm, -2                   ; 4 uses
  %i.hm = shl i64 %n.vec314, 1
  %i.hn = add i64 %.2.lcssa.1, %i.hm              ; 2 uses
  %i.ho = add i64 %.0128.lcssa.1, %n.vec314
  %i.hp = getelementptr [8 x i8], ptr %i.gh, i64 %.0128.lcssa.1
  %i.hq = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa.1
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next320, %vector.body315 ] ; 3 uses
  %i.hr = getelementptr [8 x i8], ptr %i.hp, i64 %index316 ; 2 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %i.gj
  %wide.load317 = load <2 x double>, ptr %i.hs, align 8, !tbaa !42, !alias.scope !786
  %.idx344 = shl i64 %index316, 4
  %i.ht = getelementptr i8, ptr %i.hq, i64 %.idx344
  %i.hu = getelementptr [8 x i8], ptr %i.hr, i64 %i.gl
  %wide.load318 = load <2 x double>, ptr %i.hu, align 8, !tbaa !42, !alias.scope !787
  %interleaved.vec319 = shufflevector <2 x double> %wide.load317, <2 x double> %wide.load318, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec319, ptr %i.ht, align 8, !tbaa !42, !alias.scope !788, !noalias !789
  %index.next320 = add nuw i64 %index316, 2       ; 2 uses
  %i.hv = icmp eq i64 %index.next320, %n.vec314
  br i1 %i.hv, label %middle.block321, label %vector.body315, !llvm.loop !773

middle.block321:                                  ; preds = %vector.body315
  %cmp.n322 = icmp eq i64 %i.gm, %n.vec314
  br i1 %cmp.n322, label %._crit_edge160.1, label %.loopexit.1.preheader

.loopexit.1.preheader:                            ; preds = %vector.memcheck305, %vector.scevcheck276, %.preheader139.preheader.1, %middle.block321
  %.4159.1.ph = phi i64 [ %.2.lcssa.1, %vector.memcheck305 ], [ %.2.lcssa.1, %vector.scevcheck276 ], [ %.2.lcssa.1, %.preheader139.preheader.1 ], [ %i.hn, %middle.block321 ] ; 4 uses
  %.2130157.1.ph = phi i64 [ %.0128.lcssa.1, %vector.memcheck305 ], [ %.0128.lcssa.1, %vector.scevcheck276 ], [ %.0128.lcssa.1, %.preheader139.preheader.1 ], [ %i.ho, %middle.block321 ] ; 5 uses
  %i.hw = sub i64 %3, %.2130157.1.ph
  %.neg361 = add i64 %.2130157.1.ph, 1
  %xtraiter357 = and i64 %i.hw, 1
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.loopexit.1.prol.loopexit, label %.loopexit.1.prol

.loopexit.1.prol:                                 ; preds = %.loopexit.1.preheader
  %i.hx = getelementptr [8 x i8], ptr %i.gh, i64 %.2130157.1.ph ; 2 uses
  %i.hy = getelementptr [8 x i8], ptr %i.hx, i64 %i.gj
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !42
  %i.ia = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1.ph
  store double %i.hz, ptr %i.ia, align 8, !tbaa !42
  %i.ib = getelementptr [8 x i8], ptr %i.hx, i64 %i.gl
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !42
  %i.id = add i64 %.4159.1.ph, 2                  ; 2 uses
  %i.ie = getelementptr [8 x i8], ptr %1, i64 %.4159.1.ph
  %i.if = getelementptr i8, ptr %i.ie, i64 8
  store double %i.ic, ptr %i.if, align 8, !tbaa !42
  %i.ig = add nuw nsw i64 %.2130157.1.ph, 1
  br label %.loopexit.1.prol.loopexit

.loopexit.1.prol.loopexit:                        ; preds = %.loopexit.1.prol, %.loopexit.1.preheader
  %.lcssa348.unr = phi i64 [ poison, %.loopexit.1.preheader ], [ %i.id, %.loopexit.1.prol ]
  %.4159.1.unr = phi i64 [ %.4159.1.ph, %.loopexit.1.preheader ], [ %i.id, %.loopexit.1.prol ]
  %.2130157.1.unr = phi i64 [ %.2130157.1.ph, %.loopexit.1.preheader ], [ %i.ig, %.loopexit.1.prol ]
  %i.ih = icmp eq i64 %3, %.neg361
  br i1 %i.ih, label %._crit_edge160.1, label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1
  %.4159.1 = phi i64 [ %i.iy, %.loopexit.1 ], [ %.4159.1.unr, %.loopexit.1.prol.loopexit ] ; 4 uses
  %.2130157.1 = phi i64 [ %i.jb, %.loopexit.1 ], [ %.2130157.1.unr, %.loopexit.1.prol.loopexit ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %i.gh, i64 %.2130157.1 ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %i.ii, i64 %i.gj
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !42
  %i.il = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1
  store double %i.ik, ptr %i.il, align 8, !tbaa !42
  %i.im = getelementptr [8 x i8], ptr %i.ii, i64 %i.gl
  %i.in = load double, ptr %i.im, align 8, !tbaa !42
  %i.io = add i64 %.4159.1, 2                     ; 2 uses
  %i.ip = getelementptr [8 x i8], ptr %1, i64 %.4159.1
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  store double %i.in, ptr %i.iq, align 8, !tbaa !42
  %i.ir = getelementptr [8 x i8], ptr %i.gh, i64 %.2130157.1
  %i.is = getelementptr i8, ptr %i.ir, i64 8      ; 2 uses
  %i.it = getelementptr [8 x i8], ptr %i.is, i64 %i.gj
  %i.iu = load double, ptr %i.it, align 8, !tbaa !42
  %i.iv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.io
  store double %i.iu, ptr %i.iv, align 8, !tbaa !42
  %i.iw = getelementptr [8 x i8], ptr %i.is, i64 %i.gl
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !42
  %i.iy = add i64 %.4159.1, 4                     ; 2 uses
  %i.iz = getelementptr [8 x i8], ptr %1, i64 %i.io
  %i.ja = getelementptr i8, ptr %i.iz, i64 8
  store double %i.ix, ptr %i.ja, align 8, !tbaa !42
  %i.jb = add nuw nsw i64 %.2130157.1, 2          ; 2 uses
  %exitcond190.1.not.1 = icmp eq i64 %i.jb, %3
  br i1 %exitcond190.1.not.1, label %._crit_edge160.1, label %.loopexit.1, !llvm.loop !774

._crit_edge160.1:                                 ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1, %middle.block321, %.preheader141.1
  %.4.lcssa.1 = phi i64 [ %.2.lcssa.1, %.preheader141.1 ], [ %i.hn, %middle.block321 ], [ %.lcssa348.unr, %.loopexit.1.prol.loopexit ], [ %i.iy, %.loopexit.1 ] ; 2 uses
  %i.jc = add i64 %.1133162.1, 2                  ; 3 uses
  %i.jd = icmp slt i64 %i.jc, %i.fl
  %indvar.next301 = add i64 %indvar300, 1
  br i1 %i.jd, label %.lr.ph166.1, label %._crit_edge167.1, !llvm.loop !768

._crit_edge167.1:                                 ; preds = %._crit_edge160.1, %._crit_edge167
  %.1133.lcssa.1 = phi i64 [ %.1133.lcssa, %._crit_edge167 ], [ %i.jc, %._crit_edge160.1 ] ; 3 uses
  %.1.lcssa.1 = phi i64 [ %.1.lcssa, %._crit_edge167 ], [ %.4.lcssa.1, %._crit_edge160.1 ]
  %i.je = icmp slt i64 %.1133.lcssa.1, %4
  %i.jf = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.je, %i.jf
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge180.split

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge176
  %indvar328 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next329, %._crit_edge176 ] ; 2 uses
  %.8179 = phi i64 [ %.1.lcssa.1, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge176 ] ; 5 uses
  %.2134178 = phi i64 [ %.1133.lcssa.1, %.preheader.lr.ph.split ], [ %i.jz, %._crit_edge176 ] ; 2 uses
  %i.jg = mul nsw i64 %i.m, %.2134178
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.jg ; 6 uses
  br i1 %min.iters.check331, label %scalar.ph330.preheader, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.preheader
  %i.jh = mul i64 %indvar328, %i.n
  %i.ji = add i64 %i.r, %i.jh
  %i.jj = shl i64 %.8179, 3
  %i.jk = add i64 %i.ji, %i.jj
  %i.jl = add i64 %i.jk, -1
  %diff.check = icmp ult i64 %i.jl, 31
  br i1 %diff.check, label %scalar.ph330.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck332
  %i.jm = add i64 %.8179, %n.vec334               ; 2 uses
  %i.jn = getelementptr [8 x i8], ptr %1, i64 %.8179
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 3 uses
  %i.jo = getelementptr [8 x i8], ptr %invariant.gep, i64 %index336 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 16
  %wide.load337 = load <2 x double>, ptr %i.jo, align 8, !tbaa !42
  %wide.load338 = load <2 x double>, ptr %i.jp, align 8, !tbaa !42
  %i.jq = getelementptr [8 x i8], ptr %i.jn, i64 %index336 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store <2 x double> %wide.load337, ptr %i.jq, align 8, !tbaa !42
  store <2 x double> %wide.load338, ptr %i.jr, align 8, !tbaa !42
  %index.next339 = add nuw i64 %index336, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.js, label %middle.block340, label %vector.body335, !llvm.loop !775

middle.block340:                                  ; preds = %vector.body335
  br i1 %cmp.n341, label %._crit_edge176, label %scalar.ph330.preheader

scalar.ph330.preheader:                           ; preds = %vector.memcheck332, %.preheader, %middle.block340
  %.0174.ph = phi i64 [ 0, %vector.memcheck332 ], [ 0, %.preheader ], [ %n.vec334, %middle.block340 ] ; 3 uses
  %.9173.ph = phi i64 [ %.8179, %vector.memcheck332 ], [ %.8179, %.preheader ], [ %i.jm, %middle.block340 ] ; 2 uses
  br i1 %lcmp.mod360.not, label %scalar.ph330.prol.loopexit, label %scalar.ph330.prol

scalar.ph330.prol:                                ; preds = %scalar.ph330.preheader, %scalar.ph330.prol
  %.0174.prol = phi i64 [ %i.jw, %scalar.ph330.prol ], [ %.0174.ph, %scalar.ph330.preheader ] ; 2 uses
  %.9173.prol = phi i64 [ %i.ju, %scalar.ph330.prol ], [ %.9173.ph, %scalar.ph330.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph330.prol ], [ 0, %scalar.ph330.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174.prol
  %i.jt = load double, ptr %gep.prol, align 8, !tbaa !42
  %i.ju = add nsw i64 %.9173.prol, 1              ; 3 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173.prol
  store double %i.jt, ptr %i.jv, align 8, !tbaa !42
  %i.jw = add nuw nsw i64 %.0174.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter359
  br i1 %prol.iter.cmp.not, label %scalar.ph330.prol.loopexit, label %scalar.ph330.prol, !llvm.loop !776

scalar.ph330.prol.loopexit:                       ; preds = %scalar.ph330.prol, %scalar.ph330.preheader
  %.lcssa345.unr = phi i64 [ poison, %scalar.ph330.preheader ], [ %i.ju, %scalar.ph330.prol ]
  %.0174.unr = phi i64 [ %.0174.ph, %scalar.ph330.preheader ], [ %i.jw, %scalar.ph330.prol ]
  %.9173.unr = phi i64 [ %.9173.ph, %scalar.ph330.preheader ], [ %i.ju, %scalar.ph330.prol ]
  %i.jx = sub nsw i64 %.0174.ph, %3
  %i.jy = icmp ugt i64 %i.jx, -4
  br i1 %i.jy, label %._crit_edge176, label %scalar.ph330

._crit_edge176:                                   ; preds = %scalar.ph330.prol.loopexit, %scalar.ph330, %middle.block340
  %.lcssa = phi i64 [ %i.jm, %middle.block340 ], [ %.lcssa345.unr, %scalar.ph330.prol.loopexit ], [ %i.km, %scalar.ph330 ]
  %i.jz = add nuw nsw i64 %.2134178, 1            ; 2 uses
  %exitcond191.not = icmp eq i64 %i.jz, %4
  %indvar.next329 = add i64 %indvar328, 1
  br i1 %exitcond191.not, label %._crit_edge180.split, label %.preheader, !llvm.loop !777

scalar.ph330:                                     ; preds = %scalar.ph330.prol.loopexit, %scalar.ph330
  %.0174 = phi i64 [ %i.kp, %scalar.ph330 ], [ %.0174.unr, %scalar.ph330.prol.loopexit ] ; 5 uses
  %.9173 = phi i64 [ %i.km, %scalar.ph330 ], [ %.9173.unr, %scalar.ph330.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %i.ka = load double, ptr %gep, align 8, !tbaa !42
  %i.kb = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173
  store double %i.ka, ptr %i.kb, align 8, !tbaa !42
  %i.kc = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.1 = getelementptr i8, ptr %i.kc, i64 8
  %i.kd = load double, ptr %gep.1, align 8, !tbaa !42
  %i.ke = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  store double %i.kd, ptr %i.kf, align 8, !tbaa !42
  %i.kg = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.2 = getelementptr i8, ptr %i.kg, i64 16
  %i.kh = load double, ptr %gep.2, align 8, !tbaa !42
  %i.ki = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.kj = getelementptr i8, ptr %i.ki, i64 16
  store double %i.kh, ptr %i.kj, align 8, !tbaa !42
  %i.kk = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.3 = getelementptr i8, ptr %i.kk, i64 24
  %i.kl = load double, ptr %gep.3, align 8, !tbaa !42
  %i.km = add nsw i64 %.9173, 4                   ; 2 uses
  %i.kn = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.ko = getelementptr i8, ptr %i.kn, i64 24
  store double %i.kl, ptr %i.ko, align 8, !tbaa !42
  %i.kp = add nuw nsw i64 %.0174, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kp, %3
  br i1 %exitcond.not.3, label %._crit_edge176, label %scalar.ph330, !llvm.loop !778

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
  %7 = shl i64 %i.j, 3                            ; 3 uses
  %8 = or disjoint i64 %7, 24
  %9 = mul i64 %i.g, %8
  %i.l = shl i64 %3, 3                            ; 4 uses
  %i.m = getelementptr i8, ptr %i.e, i64 %9
  %scevgep106 = getelementptr i8, ptr %i.m, i64 %i.l
  %10 = mul i64 %i.g, 24
  %scevgep107 = getelementptr i8, ptr %i.e, i64 %10
  %i.n = or disjoint i64 %7, 16
  %i.o = mul i64 %i.g, %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.o
  %scevgep107.a = getelementptr i8, ptr %i.p, i64 %i.l
  %i.q = shl i64 %i.g, 4
  %scevgep108 = getelementptr i8, ptr %i.e, i64 %i.q
  %i.r = or disjoint i64 %7, 8
  %i.s = mul i64 %i.g, %i.r
  %i.t = getelementptr i8, ptr %i.e, i64 %i.s
  %scevgep109 = getelementptr i8, ptr %i.t, i64 %i.l
  %i.u = shl i64 %i.g, 3
  %scevgep110 = getelementptr i8, ptr %i.e, i64 %i.u
  %i.v = mul i64 %i.g, %i.k
  %11 = shl i64 %i.v, 5
  %scevgep111 = getelementptr i8, ptr %i.e, i64 %11
  %scevgep112 = getelementptr i8, ptr %scevgep111, i64 %i.l
  %i.w = shl i64 %3, 5
  %scevgep113 = getelementptr i8, ptr %1, i64 %i.w
  %i.x = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %i.y = insertelement <4 x ptr> %i.x, ptr %scevgep109, i64 1
  %i.z = insertelement <4 x ptr> %i.y, ptr %scevgep107.a, i64 2
  %i.aa = insertelement <4 x ptr> %i.z, ptr %scevgep106, i64 3
  %i.ab = insertelement <4 x ptr> poison, ptr %i.e, i64 0
  %i.ac = insertelement <4 x ptr> %i.ab, ptr %scevgep110, i64 1
  %i.ad = insertelement <4 x ptr> %i.ac, ptr %scevgep108, i64 2
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep107, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.af = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.do, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.ag = mul nsw i64 %i.g, %.04460.us
  %i.ah = getelementptr [8 x i8], ptr %i.e, i64 %i.ag ; 4 uses
  %i.ai = or disjoint i64 %.04460.us, 1
  %i.aj = mul nsw i64 %i.g, %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.e, i64 %i.aj ; 4 uses
  %i.al = or disjoint i64 %.04460.us, 2
  %i.am = mul nsw i64 %i.g, %i.al
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 3
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ar = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.at = icmp ult ptr %i.as, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ar ; 2 uses
  %i.au = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.av = icmp ult ptr %i.au, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ar ; 2 uses
  %i.aw = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.ax = icmp ult ptr %i.aw, %scevgep84
  %i.ay = or i1 %i.ax, %mul.overflow
  %i.az = or i1 %i.av, %i.at
  %i.ba = or i1 %i.az, %i.ay
  br i1 %i.ba, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bb = shl i64 %.04559.us, 3                   ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  %i.bd = getelementptr i8, ptr %scevgep113, i64 %i.bb
  %i.be = insertelement <4 x ptr> poison, ptr %i.bc, i64 0
  %i.bf = shufflevector <4 x ptr> %i.be, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bg = icmp ult <4 x ptr> %i.bf, %i.aa
  %i.bh = insertelement <4 x ptr> poison, ptr %i.bd, i64 0
  %i.bi = shufflevector <4 x ptr> %i.bh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bj = icmp ult <4 x ptr> %i.ae, %i.bi
  %i.bk = and <4 x i1> %i.bg, %i.bj
  %i.bl = bitcast <4 x i1> %i.bk to i4
  %i.bm = icmp ne i4 %i.bl, 0
  %op.rdx = or i1 %i.bm, %stride.check
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bn = add i64 %.04559.us, %i.af               ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index
  %wide.load = load <2 x double>, ptr %i.bp, align 8, !tbaa !42, !alias.scope !803
  %.idx = shl i64 %index, 5
  %i.bq = getelementptr i8, ptr %i.bo, i64 %.idx
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index
  %wide.load125 = load <2 x double>, ptr %i.br, align 8, !tbaa !42, !alias.scope !804
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load126 = load <2 x double>, ptr %i.bs, align 8, !tbaa !42, !alias.scope !805
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load127 = load <2 x double>, ptr %i.bt, align 8, !tbaa !42, !alias.scope !806
  %i.bu = shufflevector <2 x double> %wide.load, <2 x double> %wide.load125, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = shufflevector <2 x double> %wide.load126, <2 x double> %wide.load127, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bu, <4 x double> %i.bv, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bq, align 8, !tbaa !42, !alias.scope !807, !noalias !808
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !796

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.bn, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.04358.us.ph
  %i.by = load double, ptr %i.bx, align 8, !tbaa !42
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.by, ptr %i.bz, align 8, !tbaa !42
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.04358.us.ph
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !42
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  store double %i.cb, ptr %i.cc, align 8, !tbaa !42
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !42
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  store double %i.ce, ptr %i.cf, align 8, !tbaa !42
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !42
  %i.ci = getelementptr i8, ptr %i.bz, i64 24
  store double %i.ch, ptr %i.ci, align 8, !tbaa !42
  %i.cj = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.ck = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa145.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.ck, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %i.cl = icmp eq i64 %3, %.neg
  br i1 %i.cl, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dn, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.dm, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.04358.us
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !42
  %i.co = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cn, ptr %i.co, align 8, !tbaa !42
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.04358.us
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !42
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  store double %i.cq, ptr %i.cr, align 8, !tbaa !42
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !42
  %i.cu = getelementptr i8, ptr %i.co, i64 16
  store double %i.ct, ptr %i.cu, align 8, !tbaa !42
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !42
  %i.cx = getelementptr i8, ptr %i.co, i64 24
  store double %i.cw, ptr %i.cx, align 8, !tbaa !42
  %i.cy = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !42
  %i.db = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 32
  store double %i.da, ptr %i.dc, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cy
  %i.de = load double, ptr %i.dd, align 8, !tbaa !42
  %i.df = getelementptr i8, ptr %i.db, i64 40
  store double %i.de, ptr %i.df, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cy
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !42
  %i.di = getelementptr i8, ptr %i.db, i64 48
  store double %i.dh, ptr %i.di, align 8, !tbaa !42
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cy
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !42
  %i.dl = getelementptr i8, ptr %i.db, i64 56
  store double %i.dk, ptr %i.dl, align 8, !tbaa !42
  %i.dm = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dn = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !797

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.bn, %middle.block ], [ %.lcssa145.unr, %scalar.ph.prol.loopexit ], [ %i.dm, %scalar.ph ] ; 2 uses
  %i.do = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dp = icmp slt i64 %i.do, %i.c
  br i1 %i.dp, label %.lr.ph.us, label %.preheader, !llvm.loop !798

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.dq = icmp slt i64 %i.c, %4
  br i1 %i.dq, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dr = load ptr, ptr %2, align 8, !tbaa !185   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !186 ; 3 uses
  %i.du = icmp sgt i64 %3, 0
  br i1 %i.du, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dv = ptrtoaddr ptr %i.dr to i64
  %i.dw = mul i64 %i.dt, -8
  %i.dx = mul i64 %i.dt, %i.b
  %i.dy = shl i64 %i.dx, 5
  %i.dz = add i64 %i.dy, %i.dv
  %i.ea = sub i64 %i.a, %i.dz
  %min.iters.check131 = icmp ult i64 %3, 4
  %n.vec134 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n141 = icmp eq i64 %3, %n.vec134
  %xtraiter146 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_:bb.a
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = and i64 %i.ag, 2305843009213693948
  store i64 %i.am, ptr %1, align 8, !tbaa !23
  br label %.critedge116

bb.n:                                             ; preds = %bb.l
  %i.an = add nsw i64 %i.aj, 3                    ; 2 uses
  %i.ao = srem i64 %i.an, 4
  %i.ap = sub nsw i64 %i.an, %i.ao
  %.sroa.speculated149 = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ah)
  store i64 %.sroa.speculated149, ptr %1, align 8, !tbaa !23
  br label %.critedge116

bb.o:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.aq = load i64, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.ar = load i64, ptr %2, align 8, !tbaa !23
  %i.as = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = load i64, ptr %0, align 8, !tbaa !23    ; 8 uses
  %.sroa.speculated145 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 %i.as)
  %i.au = icmp slt i64 %.sroa.speculated145, 48
  br i1 %i.au, label %.critedge116, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = add nsw i64 %i.e, -128                  ; 2 uses
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
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep134, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep131, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep129.a, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %scevgep128, i64 3
  %i.al = insertelement <4 x ptr> poison, ptr %i.f, i64 0
  %i.am = insertelement <4 x ptr> %i.al, ptr %scevgep132, i64 1
  %i.an = insertelement <4 x ptr> %i.am, ptr %scevgep130, i64 2
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep129, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.ap = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.ea, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.dz, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.aq = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ar = mul nsw i64 %i.h, %.05076.us
  %i.as = getelementptr [8 x i8], ptr %i.f, i64 %i.ar ; 4 uses
  %i.at = or disjoint i64 %.05076.us, 1
  %i.au = mul nsw i64 %i.h, %i.at
  %i.av = getelementptr [8 x i8], ptr %i.f, i64 %i.au ; 4 uses
  %i.aw = or disjoint i64 %.05076.us, 2
  %i.ax = mul nsw i64 %i.h, %i.aw
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax ; 4 uses
  %i.az = or disjoint i64 %.05076.us, 3
  %i.ba = mul nsw i64 %i.h, %i.az
  %i.bb = getelementptr [8 x i8], ptr %i.f, i64 %i.ba ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.bc = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.be = icmp ult ptr %i.bd, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.bc ; 2 uses
  %i.bf = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.bg = icmp ult ptr %i.bf, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bc ; 2 uses
  %i.bh = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bi = icmp ult ptr %i.bh, %scevgep103
  %i.bj = or i1 %i.bi, %mul.overflow
  %i.bk = or i1 %i.bg, %i.be
  %i.bl = or i1 %i.bk, %i.bj
  br i1 %i.bl, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bm = shl i64 %.05175.us, 3                   ; 2 uses
  %i.bn = getelementptr i8, ptr %scevgep136, i64 %i.bm
  %i.bo = getelementptr i8, ptr %scevgep135, i64 %i.bm
  %i.bp = insertelement <4 x ptr> poison, ptr %i.bn, i64 0
  %i.bq = shufflevector <4 x ptr> %i.bp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.br = icmp ult <4 x ptr> %i.bq, %i.ak
  %i.bs = insertelement <4 x ptr> poison, ptr %i.bo, i64 0
  %i.bt = shufflevector <4 x ptr> %i.bs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bu = icmp ult <4 x ptr> %i.ao, %i.bt
  %i.bv = and <4 x i1> %i.br, %i.bu
  %i.bw = bitcast <4 x i1> %i.bv to i4
  %i.bx = icmp ne i4 %i.bw, 0
  %op.rdx = or i1 %i.bx, %stride.check
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.by = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %1, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index
  %wide.load = load <2 x double>, ptr %i.ca, align 8, !tbaa !42, !alias.scope !1083
  %.idx = shl i64 %index, 5
  %i.cb = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index
  %wide.load148 = load <2 x double>, ptr %i.cc, align 8, !tbaa !42, !alias.scope !1084
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load149 = load <2 x double>, ptr %i.cd, align 8, !tbaa !42, !alias.scope !1085
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load150 = load <2 x double>, ptr %i.ce, align 8, !tbaa !42, !alias.scope !1086
  %i.cf = shufflevector <2 x double> %wide.load, <2 x double> %wide.load148, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cg = shufflevector <2 x double> %wide.load149, <2 x double> %wide.load150, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.cf, <4 x double> %i.cg, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.cb, align 8, !tbaa !42, !alias.scope !1087, !noalias !1088
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !1076

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %vector.scevcheck ], [ %i.aq, %.lr.ph.us ], [ %i.by, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.04974.us.ph
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !42
  %i.ck = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.cj, ptr %i.ck, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.04974.us.ph
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !42
  %i.cn = getelementptr i8, ptr %i.ck, i64 8
  store double %i.cm, ptr %i.cn, align 8, !tbaa !42
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.cp = load double, ptr %i.co, align 8, !tbaa !42
  %i.cq = getelementptr i8, ptr %i.ck, i64 16
  store double %i.cp, ptr %i.cq, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !42
  %i.ct = getelementptr i8, ptr %i.ck, i64 24
  store double %i.cs, ptr %i.ct, align 8, !tbaa !42
  %i.cu = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.cv = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa168.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cu, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.cv, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.cu, %scalar.ph.prol ]
  %i.cw = icmp eq i64 %3, %.neg
  br i1 %i.cw, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.dy, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.dx, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.04974.us
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !42
  %i.cz = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.cy, ptr %i.cz, align 8, !tbaa !42
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.04974.us
  %i.db = load double, ptr %i.da, align 8, !tbaa !42
  %i.dc = getelementptr i8, ptr %i.cz, i64 8
  store double %i.db, ptr %i.dc, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us
  %i.de = load double, ptr %i.dd, align 8, !tbaa !42
  %i.df = getelementptr i8, ptr %i.cz, i64 16
  store double %i.de, ptr %i.df, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !42
  %i.di = getelementptr i8, ptr %i.cz, i64 24
  store double %i.dh, ptr %i.di, align 8, !tbaa !42
  %i.dj = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !42
  %i.dm = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 32
  store double %i.dl, ptr %i.dn, align 8, !tbaa !42
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dj
  %i.dp = load double, ptr %i.do, align 8, !tbaa !42
  %i.dq = getelementptr i8, ptr %i.dm, i64 40
  store double %i.dp, ptr %i.dq, align 8, !tbaa !42
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dj
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !42
  %i.dt = getelementptr i8, ptr %i.dm, i64 48
  store double %i.ds, ptr %i.dt, align 8, !tbaa !42
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dj
  %i.dv = load double, ptr %i.du, align 8, !tbaa !42
  %i.dw = getelementptr i8, ptr %i.dm, i64 56
  store double %i.dv, ptr %i.dw, align 8, !tbaa !42
  %i.dx = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.dy = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dy, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1077

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.by, %middle.block ], [ %.lcssa168.unr, %scalar.ph.prol.loopexit ], [ %i.dx, %scalar.ph ]
  %i.dz = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.ea = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.eb = icmp slt i64 %i.ea, %i.c
  br i1 %i.eb, label %.lr.ph.us, label %.preheader, !llvm.loop !1078

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.ec = add nsw i64 %smax, -4
  %i.ed = lshr exact i64 %i.ec, 2
  %i.ee = mul i64 %i.ed, %invariant.op
  %i.ef = shl i64 %5, 2
  %i.eg = add i64 %i.ee, %i.ef
  %i.eh = shl i64 %3, 2
  %i.ei = sub i64 %i.eg, %i.eh
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.ei, %.lr.ph78.split ], [ %i.dz, %._crit_edge.us ]
  %i.ej = icmp slt i64 %i.c, %4
  br i1 %i.ej, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.ek = load ptr, ptr %2, align 8, !tbaa !195   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !196 ; 3 uses
  %i.en = icmp sgt i64 %3, 0
  %i.eo = add i64 %3, %6
  %i.ep = sub i64 %5, %i.eo
  br i1 %i.en, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.eq = ptrtoaddr ptr %i.ek to i64
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f64
!585 = distinct !{!585, !59}
!586 = distinct !{!586, !62}
!587 = distinct !{!587, !59}
!588 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS6_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS4_KNS6_INS6_INS_9TransposeIS4_EES4_Li0EEES4_Li0EEEEEEESD_Li0EEES4_Li1EEEEENS0_9assign_opIddEELi1EEE", !153, i64 0, !162, i64 8, !156, i64 16, !84, i64 24}
!589 = !{!588, !84, i64 24}
!590 = !{!588, !153, i64 0}
!591 = !{!588, !162, i64 8}
!592 = !{!576}
!593 = !{!160, !84, i64 24}
!594 = !{!578}
!595 = !{!581}
!596 = !{!583}
!597 = distinct !{!597, i1 true, !"_ZNK5Eigen10MatrixBaseINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEEE11lazyProductINSA_IS8_EEEEKNS9_ISG_T_Li1EEERKNS0_ISK_EE"}
!598 = distinct !{!598, !597, !"_ZNK5Eigen10MatrixBaseINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEEE11lazyProductINSA_IS8_EEEEKNS9_ISG_T_Li1EEERKNS0_ISK_EE: argument 0"}
!599 = !{!598}
!600 = distinct !{!600, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!601 = distinct !{!601, !600, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!602 = distinct !{!602, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!603 = distinct !{!603, !602, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!604 = distinct !{!604, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!605 = distinct !{!605, !604, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!606 = distinct !{!606, i1 true, !"_ZNK5Eigen9DenseBaseINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEEE3rowEl"}
!607 = distinct !{!607, !606, !"_ZNK5Eigen9DenseBaseINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEEE3rowEl: argument 0"}
!608 = !{!601}
!609 = !{!603}
!610 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELin1ELi1ELb0ELb1EEE", !163, i64 0, !113, i64 24, !90, i64 32, !90, i64 40, !19, i64 48}
!611 = !{!610, !19, i64 48}
!612 = !{!605}
!613 = !{!607}
!614 = !{!171, !171, i64 0}
!615 = distinct !{!615, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!616 = distinct !{!616, !615, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!617 = distinct !{!617, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!618 = distinct !{!618, !617, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!619 = distinct !{!619, !59}
!620 = distinct !{!620, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!621 = distinct !{!621, !620, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!622 = distinct !{!622, !59}
!623 = distinct !{!623, !59}
!624 = distinct !{!624, !59}
!625 = distinct !{!625, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!626 = distinct !{!626, !625, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!627 = distinct !{!627, !59}
!628 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS4_KNS6_INS6_INS_9TransposeIS4_EES4_Li0EEES4_Li0EEEEEEENSC_ISB_EELi1EEEEENS0_9assign_opIddEELi1EEE", !153, i64 0, !171, i64 8, !156, i64 16, !84, i64 24}
!629 = !{!628, !84, i64 24}
!630 = !{!628, !153, i64 0}
!631 = !{!628, !171, i64 8}
!632 = !{!616}
!633 = !{!618}
!634 = !{!621}
!635 = !{!626}
!636 = distinct !{!636, i1 true, !"_ZNK5Eigen10SolverBaseINS_12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiEEE5solveINS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES3_EEEEKNS_5SolveIS4_T_EERKNS_10MatrixBaseISD_EE"}
!637 = distinct !{!637, !636, !"_ZNK5Eigen10SolverBaseINS_12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiEEE5solveINS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES3_EEEEKNS_5SolveIS4_T_EERKNS_10MatrixBaseISD_EE: argument 0"}
!638 = !{!"p1 _ZTSN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiEE", !15, i64 0}
!639 = !{!638, !638, i64 0}
!640 = !{!637}
!641 = distinct !{!641, !59, !60, !61}
!642 = distinct !{!642, !62}
!643 = distinct !{!643, !59, !60}
!644 = !{!117, !84, i64 0}
!645 = distinct !{!645, i1 true, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_Li0EEEE11lazyProductIS4_EEKNS1_IS6_T_Li1EEERKNS0_IS9_EE"}
!646 = distinct !{!646, !645, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_Li0EEEE11lazyProductIS4_EEKNS1_IS6_T_Li1EEERKNS0_IS9_EE: argument 0"}
!647 = !{!646}
!648 = !{!177, !177, i64 0}
!649 = distinct !{!649, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!650 = distinct !{!650, !649, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!651 = distinct !{!651, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!652 = distinct !{!652, !651, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!653 = distinct !{!653, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!654 = distinct !{!654, !653, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!655 = distinct !{!655, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_Li0EEEE3rowEl"}
!656 = distinct !{!656, !655, !"_ZNK5Eigen9DenseBaseINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_Li0EEEE3rowEl: argument 0"}
!657 = !{!650}
!658 = !{!652}
!659 = !{!654}
!660 = !{!656}
!661 = distinct !{!661, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!662 = distinct !{!662, !661, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!663 = distinct !{!663, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!664 = distinct !{!664, !663, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!665 = distinct !{!665, !62}
!666 = distinct !{!666, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!667 = distinct !{!667, !666, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!668 = distinct !{!668, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!669 = distinct !{!669, !668, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!670 = distinct !{!670, !59, !60, !61}
!671 = distinct !{!671, !59, !61, !60}
!672 = distinct !{!672, !59}
!673 = distinct !{!673, !59}
!674 = distinct !{!674, !62}
!675 = distinct !{!675, !59}
!676 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS6_INS_9TransposeIS4_EES4_Li0EEES4_Li1EEEEENS0_13add_assign_opIddEELi1EEE", !153, i64 0, !177, i64 8, !178, i64 16, !84, i64 24}
!677 = !{!676, !84, i64 24}
!678 = !{!676, !153, i64 0}
!679 = !{!676, !177, i64 8}
!680 = !{!662}
!681 = !{!664}
!682 = !{!667}
!683 = !{!669}
!684 = distinct !{!684, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!685 = distinct !{!685, !684, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!686 = distinct !{!686, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!687 = distinct !{!687, !686, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!688 = distinct !{!688, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl"}
!689 = distinct !{!689, !688, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl: argument 0"}
!690 = distinct !{!690, !59}
!691 = distinct !{!691, !62}
!692 = distinct !{!692, !59}
!693 = distinct !{!693, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!694 = distinct !{!694, !693, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!695 = distinct !{!695, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl"}
!696 = distinct !{!696, !695, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl: argument 0"}
!697 = distinct !{!697, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!698 = distinct !{!698, !697, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!699 = distinct !{!699, !59}
!700 = distinct !{!700, !62}
!701 = distinct !{!701, !59}
!702 = !{!685}
!703 = !{!687}
!704 = !{!689}
!705 = !{!694}
!706 = !{!696}
!707 = !{!698}
!708 = distinct !{!708, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!709 = distinct !{!709, !708, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!710 = distinct !{!710, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl"}
!711 = distinct !{!711, !710, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl: argument 0"}
!712 = distinct !{!712, !59}
!713 = distinct !{!713, !62}
!714 = distinct !{!714, !59}
!715 = distinct !{!715, !59}
!716 = distinct !{!716, !59}
!717 = distinct !{!717, !62}
!718 = distinct !{!718, !62}
!719 = distinct !{!719, !62}
!720 = distinct !{!720, !62}
!721 = distinct !{!721, i1 false, !"LVerDomain"}
!722 = distinct !{!722, !721}
!723 = distinct !{!723, !721}
!724 = distinct !{!724, !721}
!725 = distinct !{!725, !59, !60, !61}
!726 = distinct !{!726, !59, !60}
!727 = !{!"_ZTSN5Eigen7ProductINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES3_Li1EEE", !165, i64 0, !84, i64 8}
!728 = !{!727, !84, i64 8}
!729 = !{!709}
!730 = !{!711}
!731 = !{!722}
!732 = !{!723}
!733 = !{!724}
!734 = !{!723, !722}
!735 = distinct !{!735, !59}
!736 = distinct !{!736, !59}
!737 = distinct !{!737, !59}
!738 = distinct !{!738, !59}
!739 = distinct !{!739, !59}
!740 = distinct !{!740, !59}
!741 = distinct !{!741, !59}
!742 = distinct !{!742, !59}
!743 = distinct !{!743, !59}
!744 = distinct !{!744, !62}
!745 = distinct !{!745, !59}
!746 = distinct !{!746, !59}
!747 = distinct !{!747, !59}
!748 = distinct !{!748, !59}
!749 = !{i64 2153345954}
!750 = !{i64 2153344959}
!751 = !{i64 2153345357}
!752 = !{i64 2153345556}
!753 = !{i64 2153345755}
!754 = distinct !{!754, !59}
!755 = !{i64 2153345158}
!756 = distinct !{!756, !59}
!757 = distinct !{!757, !59}
!758 = distinct !{!758, !59}
!759 = distinct !{!759, !59}
!760 = distinct !{!760, i1 false, !"LVerDomain"}
!761 = distinct !{!761, !760}
!762 = distinct !{!762, !760}
!763 = distinct !{!763, !760}
!764 = distinct !{!764, !760}
!765 = distinct !{!765, !760}
!766 = distinct !{!766, !59, !60, !61}
!767 = distinct !{!767, !59, !60}
!768 = distinct !{!768, !59}
!769 = distinct !{!769, i1 false, !"LVerDomain"}
!770 = distinct !{!770, !769}
!771 = distinct !{!771, !769}
!772 = distinct !{!772, !769}
!773 = distinct !{!773, !59, !60, !61}
!774 = distinct !{!774, !59, !60}
!775 = distinct !{!775, !59, !60, !61}
!776 = distinct !{!776, !62}
!777 = distinct !{!777, !59}
!778 = distinct !{!778, !59, !60}
!779 = !{i64 2155507438}
!780 = !{!761}
!781 = !{!762}
!782 = !{!763}
!783 = !{!764}
!784 = !{!765}
!785 = !{!761, !762, !763, !764}
!786 = !{!770}
!787 = !{!771}
!788 = !{!772}
!789 = !{!770, !771}
!790 = distinct !{!790, i1 false, !"LVerDomain"}
!791 = distinct !{!791, !790}
!792 = distinct !{!792, !790}
!793 = distinct !{!793, !790}
!794 = distinct !{!794, !790}
!795 = distinct !{!795, !790}
!796 = distinct !{!796, !59, !60, !61}
!797 = distinct !{!797, !59, !60}
!798 = distinct !{!798, !59}
!799 = distinct !{!799, !59, !60, !61}
!800 = distinct !{!800, !62}
!801 = distinct !{!801, !59}
!802 = distinct !{!802, !59, !60}
!803 = !{!791}
!804 = !{!792}
!805 = !{!793}
!806 = !{!794}
!807 = !{!795}
!808 = !{!791, !792, !793, !794}
!809 = distinct !{!809, !59}
!810 = distinct !{!810, !59}
!811 = distinct !{!811, !59}
!812 = distinct !{!812, !59}
!813 = distinct !{!813, !59}
!814 = distinct !{!814, !59}
!815 = distinct !{!815, !59}
!816 = distinct !{!816, !59}
!817 = distinct !{!817, !59}
!818 = distinct !{!818, !59}
!819 = distinct !{!819, !59}
!820 = distinct !{!820, !59}
!821 = distinct !{!821, !59}
!822 = distinct !{!822, !59}
!823 = distinct !{!823, !62}
!824 = distinct !{!824, !59}
!825 = !{i64 2155498366}
!826 = !{i64 2155499189}
!827 = !{i64 2155499243}
!828 = !{i64 2155499306}
!829 = !{i64 2155500135}
!830 = !{i64 2155500189}
!831 = !{i64 2155500252}
!832 = !{i64 2155501081}
!833 = !{i64 2155501135}
!834 = !{i64 2155501198}
!835 = !{i64 2155502027}
!836 = !{i64 2155502081}
!837 = !{i64 2155502144}
!838 = !{i64 2155502973}
!839 = !{i64 2155503027}
!840 = !{i64 2155503090}
!841 = !{i64 2155503919}
!842 = !{i64 2155503973}
!843 = !{i64 2155504036}
!844 = !{i64 2155504865}
!845 = !{i64 2155504919}
!846 = !{i64 2155504982}
!847 = !{i64 2155505811}
!848 = !{i64 2155505865}
!849 = !{i64 2155505928}
!850 = !{i64 2155505980}
!851 = !{i64 2155506801}
!852 = !{i64 2155506855}
!853 = !{i64 2155506918}
!854 = !{i64 2155486860}
!855 = !{i64 2155488072}
!856 = !{i64 2155488126}
!857 = !{i64 2155489340}
!858 = !{i64 2155489394}
!859 = !{i64 2155490608}
!860 = !{i64 2155490662}
!861 = !{i64 2155491876}
!862 = !{i64 2155491930}
!863 = !{i64 2155493144}
!864 = !{i64 2155493198}
!865 = !{i64 2155494412}
!866 = !{i64 2155494466}
!867 = !{i64 2155495680}
!868 = !{i64 2155495734}
!869 = !{i64 2155496948}
!870 = !{i64 2155497002}
!871 = !{i64 2155497054}
!872 = !{i64 2155498260}
!873 = !{i64 2155498314}
!874 = distinct !{!874, !59}
!875 = distinct !{!875, !59}
!876 = distinct !{!876, !59}
!877 = distinct !{!877, !59}
!878 = distinct !{!878, !59}
!879 = distinct !{!879, !59}
!880 = distinct !{!880, !59}
!881 = !{i64 2155447148}
!882 = !{i64 2155446968}
!883 = !{i64 2155447021}
!884 = !{i64 2155447088}
!885 = !{i64 2155447206}
!886 = !{i64 2155447262}
!887 = !{i64 2155447821}
!888 = !{i64 2155447887}
!889 = !{i64 2155447950}
!890 = !{i64 2155448515}
!891 = !{i64 2155448581}
!892 = !{i64 2155448644}
!893 = !{i64 2155449209}
!894 = !{i64 2155449275}
!895 = !{i64 2155449338}
!896 = !{i64 2155449903}
!897 = !{i64 2155449969}
!898 = !{i64 2155450032}
!899 = !{i64 2155450597}
!900 = !{i64 2155450663}
!901 = !{i64 2155450726}
!902 = !{i64 2155451291}
!903 = !{i64 2155451357}
!904 = !{i64 2155451420}
!905 = !{i64 2155451985}
!906 = !{i64 2155452051}
!907 = !{i64 2155452114}
!908 = !{i64 2155452679}
!909 = !{i64 2155452745}
!910 = !{i64 2155452808}
!911 = !{i64 2155452872}
!912 = !{i64 2155453429}
!913 = !{i64 2155453495}
!914 = !{i64 2155453558}
!915 = distinct !{!915, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_Li0EEEE3rowEl"}
!916 = distinct !{!916, !915, !"_ZNK5Eigen9DenseBaseINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_Li0EEEE3rowEl: argument 0"}
!917 = distinct !{!917, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl"}
!918 = distinct !{!918, !917, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl: argument 0"}
!919 = !{!916}
!920 = !{!918}
!921 = distinct !{!921, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEELi1ELin1ELb0EEEE3rowEl"}
!922 = distinct !{!922, !921, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEELi1ELin1ELb0EEEE3rowEl: argument 0"}
!923 = distinct !{!923, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!924 = distinct !{!924, !923, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!925 = distinct !{!925, !59}
!926 = !{!922}
!927 = !{!924}
!928 = distinct !{!928, !59}
!929 = distinct !{!929, !59}
!930 = distinct !{!930, !59}
!931 = distinct !{!931, !59}
!932 = distinct !{!932, !59}
!933 = distinct !{!933, !59}
!934 = distinct !{!934, !59}
!935 = distinct !{!935, !59}
!936 = distinct !{!936, !59}
!937 = distinct !{!937, !59, !60, !61}
!938 = distinct !{!938, !62}
!939 = distinct !{!939, !59, !60}
!940 = distinct !{!940, !59}
!941 = distinct !{!941, !59}
!942 = distinct !{!942, !59}
!943 = distinct !{!943, !59}
!944 = distinct !{!944, !59}
!945 = distinct !{!945, !59}
!946 = distinct !{!946, !59}
!947 = distinct !{!947, !59, !60, !61}
!948 = distinct !{!948, !62}
!949 = distinct !{!949, !59}
!950 = distinct !{!950, !59, !60}
!951 = !{i64 2155507024}
!952 = distinct !{!952, !59, !60, !61}
!953 = distinct !{!953, !62}
!954 = distinct !{!954, !59, !60}
!955 = distinct !{!955, !59}
!956 = distinct !{!956, i1 true, !"_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE9subVectorILNS_13DirectionTypeE0EEENSt11conditionalIXeqT_LSB_0EEKNS_5BlockIKS8_Lin1ELi1ELb1EEEKNSD_ISE_Li1ELin1ELb0EEEE4typeEl"}
!957 = distinct !{!957, !956, !"_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE9subVectorILNS_13DirectionTypeE0EEENSt11conditionalIXeqT_LSB_0EEKNS_5BlockIKS8_Lin1ELi1ELb1EEEKNSD_ISE_Li1ELin1ELb0EEEE4typeEl: argument 0"}
!958 = distinct !{!958, !59}
!959 = distinct !{!959, !62}
!960 = distinct !{!960, !59}
!961 = distinct !{!961, !59}
!962 = distinct !{!962, !62}
!963 = distinct !{!963, !62}
!964 = distinct !{!964, !62}
!965 = !{!957}
!966 = !{!"_ZTSN5Eigen8internal13scalar_abs_opIdEE"}
!967 = !{!"_ZTSN5Eigen12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !84, i64 0, !966, i64 8}
!968 = !{!967, !84, i64 0}
!969 = distinct !{!969, !59, !60, !61}
!970 = distinct !{!970, i1 false, !"LVerDomain"}
!971 = distinct !{!971, !970}
!972 = distinct !{!972, !970}
!973 = distinct !{!973, !59, !60, !61}
!974 = distinct !{!974, !59, !60}
!975 = distinct !{!975, !59}
!976 = distinct !{!976, !59, !61, !60}
!977 = distinct !{!977, i1 false, !"LVerDomain"}
!978 = distinct !{!978, !977}
!979 = distinct !{!979, !977}
!980 = distinct !{!980, !59, !60, !61}
!981 = distinct !{!981, !59, !60}
!982 = distinct !{!982, !59}
!983 = distinct !{!983, !59}
!984 = !{!971}
!985 = !{!972}
!986 = !{!218, !218, i64 0}
!987 = !{!224, !224, i64 0}
!988 = !{!225, !225, i64 0}
!989 = !{!978}
!990 = !{!979}
!991 = distinct !{!991, i1 true, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!992 = distinct !{!992, !991, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!993 = distinct !{!993, i1 true, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!994 = distinct !{!994, !993, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!995 = distinct !{!995, i1 false, !"LVerDomain"}
!996 = distinct !{!996, !995}
!997 = distinct !{!997, !995}
!998 = distinct !{!998, !59, !60, !61}
!999 = distinct !{!999, !59, !60}
!1000 = distinct !{!1000, i1 true, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1001 = distinct !{!1001, !1000, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1002 = distinct !{!1002, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8ConstantEllRKd"}
!1003 = distinct !{!1003, !1002, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8ConstantEllRKd: argument 0"}
!1004 = distinct !{!1004, !59, !60, !61}
!1005 = distinct !{!1005, !59, !61, !60}
!1006 = distinct !{!1006, !59, !60, !61}
!1007 = distinct !{!1007, !59, !61, !60}
!1008 = distinct !{!1008, !59}
!1009 = distinct !{!1009, i1 true, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1010 = distinct !{!1010, !1009, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1011 = distinct !{!1011, i1 true, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1012 = distinct !{!1012, !1011, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1013 = distinct !{!1013, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEE3colEl"}
!1014 = distinct !{!1014, !1013, !"_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEE3colEl: argument 0"}
!1015 = distinct !{!1015, i1 true, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_5BlockINSD_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEESA_E4typeEKSL_EERKS5_RKNS_10MatrixBaseISL_EE"}
!1016 = distinct !{!1016, !1015, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_5BlockINSD_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEESA_E4typeEKSL_EERKS5_RKNS_10MatrixBaseISL_EE: argument 0"}
!1017 = distinct !{!1017, i1 false, !"LVerDomain"}
!1018 = distinct !{!1018, !1017}
!1019 = distinct !{!1019, !1017}
!1020 = distinct !{!1020, !59, !60, !61}
!1021 = distinct !{!1021, !59, !60}
!1022 = distinct !{!1022, i1 false, !"LVerDomain"}
!1023 = distinct !{!1023, !1022}
!1024 = distinct !{!1024, !1022}
!1025 = distinct !{!1025, !59, !60, !61}
!1026 = distinct !{!1026, !59, !60}
!1027 = distinct !{!1027, !59}
!1028 = distinct !{!1028, !59}
!1029 = distinct !{!1029, !59}
!1030 = !{!992}
!1031 = !{!232, !232, i64 0}
!1032 = !{!994}
!1033 = !{!996}
!1034 = !{!997}
!1035 = !{!1001}
!1036 = !{!1003}
!1037 = !{!1010}
!1038 = !{!1012}
!1039 = !{!1014}
!1040 = !{!1016}
!1041 = !{!1018}
!1042 = !{!1019}
!1043 = !{!1023}
!1044 = !{!1024}
!1045 = distinct !{!1045, !59}
!1046 = distinct !{!1046, !59}
!1047 = !{!"_ZTSN5Eigen8internal21scalar_score_coeff_opIdEE"}
!1048 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0ELb1EEE", !230, i64 0}
!1049 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEE", !1048, i64 0}
!1050 = !{!"_ZTSN5Eigen8internal9evaluatorIKNS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEE", !1049, i64 0}
!1051 = !{!"_ZTSN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS0_10IndexBasedEdE4DataE", !1047, i64 0, !1050, i64 8}
!1052 = !{!"_ZTSN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS0_10IndexBasedEdEE", !1051, i64 0}
!1053 = !{!"_ZTSN5Eigen8internal9evaluatorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEE", !1052, i64 0}
!1054 = !{!"_ZTSN5Eigen8internal17visitor_evaluatorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEE", !1053, i64 0, !232, i64 32}
!1055 = !{!1054, !232, i64 32}
!1056 = !{!228, !19, i64 8}
!1057 = distinct !{!1057, i1 false, !"LVerDomain"}
!1058 = distinct !{!1058, !1057}
!1059 = distinct !{!1059, !1057}
!1060 = distinct !{!1060, !59, !60, !61}
!1061 = distinct !{!1061, !59, !60}
!1062 = distinct !{!1062, !59}
!1063 = distinct !{!1063, !59}
!1064 = distinct !{!1064, !59}
!1065 = distinct !{!1065, !59}
!1066 = distinct !{!1066, !59}
!1067 = distinct !{!1067, !59}
!1068 = !{!1058}
!1069 = !{!1059}
!1070 = distinct !{!1070, i1 false, !"LVerDomain"}
!1071 = distinct !{!1071, !1070}
!1072 = distinct !{!1072, !1070}
!1073 = distinct !{!1073, !1070}
!1074 = distinct !{!1074, !1070}
!1075 = distinct !{!1075, !1070}
!1076 = distinct !{!1076, !59, !60, !61}
!1077 = distinct !{!1077, !59, !60}
!1078 = distinct !{!1078, !59}
!1079 = distinct !{!1079, !59, !60, !61}
!1080 = distinct !{!1080, !62}
!1081 = distinct !{!1081, !59}
!1082 = distinct !{!1082, !59, !60}
!1083 = !{!1071}
!1084 = !{!1072}
!1085 = !{!1073}
!1086 = !{!1074}
!1087 = !{!1075}
!1088 = !{!1071, !1072, !1073, !1074}
!1089 = distinct !{!1089, i1 true, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1090 = distinct !{!1090, !1089, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1091 = distinct !{!1091, i1 true, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1092 = distinct !{!1092, !1091, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1093 = distinct !{!1093, i1 true, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1094 = distinct !{!1094, !1093, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1095 = distinct !{!1095, !59}
!1096 = distinct !{!1096, !62}
!1097 = distinct !{!1097, i1 true, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1098 = distinct !{!1098, !1097, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1099 = distinct !{!1099, i1 true, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1100 = distinct !{!1100, !1099, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1101 = distinct !{!1101, i1 true, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1102 = distinct !{!1102, !1101, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1103 = distinct !{!1103, !59}
!1104 = distinct !{!1104, !62}
!1105 = !{!1090}
!1106 = !{!1092}
!1107 = !{!1094}
!1108 = !{!1098}
!1109 = !{!1100}
!1110 = !{!1102}
!1111 = distinct !{!1111, i1 true, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1112 = distinct !{!1112, !1111, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1113 = distinct !{!1113, i1 true, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1114 = distinct !{!1114, !1113, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1115 = distinct !{!1115, !59}
!1116 = distinct !{!1116, !62}
!1117 = distinct !{!1117, !59}
!1118 = distinct !{!1118, !59}
!1119 = distinct !{!1119, i1 false, !"LVerDomain"}
!1120 = distinct !{!1120, !1119}
!1121 = distinct !{!1121, !1119}
!1122 = distinct !{!1122, !1119}
!1123 = distinct !{!1123, !59, !60, !61}
!1124 = distinct !{!1124, !59, !60}
!1125 = distinct !{!1125, i1 true, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1126 = distinct !{!1126, !1125, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1127 = distinct !{!1127, i1 true, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1128 = distinct !{!1128, !1127, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1129 = distinct !{!1129, !62}
!1130 = distinct !{!1130, i1 true, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1131 = distinct !{!1131, !1130, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1132 = distinct !{!1132, i1 true, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1133 = distinct !{!1133, !1132, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1134 = distinct !{!1134, !59}
!1135 = distinct !{!1135, !59}
!1136 = distinct !{!1136, !59}
!1137 = distinct !{!1137, !62}
!1138 = distinct !{!1138, !59}
!1139 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EEE", !224, i64 0, !225, i64 8, !226, i64 16, !218, i64 24}
!1140 = !{!1139, !218, i64 24}
!1141 = !{!222, !218, i64 0}
!1142 = !{!1112}
!1143 = !{!222, !218, i64 8}
!1144 = !{!1114}
!1145 = !{!1120}
!1146 = !{!1121}
!1147 = !{!1122}
!1148 = !{!1121, !1120}
!1149 = !{!1139, !224, i64 0}
!1150 = !{!1139, !225, i64 8}
!1151 = !{!1126}
!1152 = !{!1128}
!1153 = !{!1131}
!1154 = !{!1133}
!1155 = distinct !{!1155, !59, !60, !61}
!1156 = distinct !{!1156, !62}
!1157 = distinct !{!1157, !59, !60}
!1158 = !{!"_ZTSN5Eigen9TransposeIKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEE", !218, i64 0}
!1159 = !{!1158, !218, i64 0}
!1160 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi0EEE", !32, i64 0, !122, i64 8, !90, i64 16}
!1161 = !{!1160, !32, i64 0}
!1162 = distinct !{!1162, !59, !60, !61}
!1163 = distinct !{!1163, !59, !61, !60}
!1164 = distinct !{!1164, !59, !60, !61}
!1165 = distinct !{!1165, !59, !60}
!1166 = distinct !{!1166, !59}
!1167 = distinct !{!1167, !59, !60, !61}
!1168 = distinct !{!1168, !62}
!1169 = distinct !{!1169, !59, !60}
!1170 = distinct !{!1170, i1 false, !"LVerDomain"}
!1171 = distinct !{!1171, !1170}
!1172 = distinct !{!1172, !1170}
!1173 = distinct !{!1173, !59, !60, !61}
!1174 = distinct !{!1174, !59, !60}
!1175 = distinct !{!1175, !59}
!1176 = distinct !{!1176, !59}
!1177 = distinct !{!1177, !59}
!1178 = distinct !{!1178, !59}
!1179 = distinct !{!1179, !59}
!1180 = distinct !{!1180, !59}
!1181 = !{!1171}
!1182 = !{!1172}
!1183 = distinct !{!1183, i1 true, !"_ZNK5Eigen9DenseBaseINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEEE3rowEl"}
!1184 = distinct !{!1184, !1183, !"_ZNK5Eigen9DenseBaseINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEEE3rowEl: argument 0"}
!1185 = distinct !{!1185, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELin1ELi1ELb0EEEE3colEl"}
!1186 = distinct !{!1186, !1185, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELin1ELi1ELb0EEEE3colEl: argument 0"}
!1187 = distinct !{!1187, !59}
!1188 = !{!1184}
!1189 = !{!1186}
!1190 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEELi0EEE", !32, i64 0, !90, i64 8, !122, i64 16}
!1191 = !{!1190, !32, i64 0}
!1192 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockIKNS2_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEE", !32, i64 0, !90, i64 8, !122, i64 16}
!1193 = !{!1192, !32, i64 0}
!1194 = distinct !{!1194, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSA_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEELi1ELin1ELb0EEEE3rowEl"}
!1195 = distinct !{!1195, !1194, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSA_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEELi1ELin1ELb0EEEE3rowEl: argument 0"}
!1196 = distinct !{!1196, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!1197 = distinct !{!1197, !1196, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!1198 = distinct !{!1198, !59}
!1199 = !{!1195}
!1200 = !{!1197}
!1201 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELin1ELi1ELb0EEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEE", !32, i64 0, !90, i64 8, !122, i64 16}
!1202 = !{!1201, !32, i64 0}
!1203 = distinct !{!1203, !59, !60, !61}
!1204 = distinct !{!1204, !62}
!1205 = distinct !{!1205, !59, !60}
!1206 = distinct !{!1206, !59, !60, !61}
!1207 = distinct !{!1207, !62}
!1208 = distinct !{!1208, !59, !60}
!1209 = distinct !{!1209, !59, !60, !61}
!1210 = distinct !{!1210, !62}
!1211 = distinct !{!1211, !59, !60}
!1212 = !{!135, !84, i64 24}
!1213 = distinct !{!1213, !59}
!1214 = distinct !{!1214, !59}
!1215 = distinct !{!1215, !59}
!1216 = distinct !{!1216, i1 false, !"LVerDomain"}
!1217 = distinct !{!1217, !1216}
!1218 = distinct !{!1218, !1216}
!1219 = distinct !{!1219, !59, !60, !61}
!1220 = distinct !{!1220, !59, !60}
!1221 = distinct !{!1221, !59}
!1222 = distinct !{!1222, !59, !60, !61}
!1223 = distinct !{!1223, !62}
!1224 = distinct !{!1224, !59}
!1225 = distinct !{!1225, !59, !60}
!1226 = !{i64 2155508078}
!1227 = !{!1217}
!1228 = !{!1218}
!1229 = distinct !{!1229, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ProductINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS1_INS1_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEEE3rowEl"}
!1230 = distinct !{!1230, !1229, !"_ZNK5Eigen9DenseBaseINS_7ProductINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS1_INS1_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEEE3rowEl: argument 0"}
!1231 = distinct !{!1231, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl"}
!1232 = distinct !{!1232, !1231, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl: argument 0"}
!1233 = distinct !{!1233, !59}
!1234 = !{!1230}
!1235 = !{!1232}
!1236 = distinct !{!1236, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEESC_Li0EEELi1ELin1ELb0EEEE3rowEl"}
!1237 = distinct !{!1237, !1236, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEESC_Li0EEELi1ELin1ELb0EEEE3rowEl: argument 0"}
!1238 = distinct !{!1238, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!1239 = distinct !{!1239, !1238, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!1240 = distinct !{!1240, !59}
!1241 = !{!1237}
!1242 = !{!1239}
!1243 = distinct !{!1243, i1 true, !"_ZNK5Eigen10MatrixBaseINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEEE11lazyProductINSA_IS8_EEEEKNS9_ISG_T_Li1EEERKNS0_ISK_EE"}
!1244 = distinct !{!1244, !1243, !"_ZNK5Eigen10MatrixBaseINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEEE11lazyProductINSA_IS8_EEEEKNS9_ISG_T_Li1EEERKNS0_ISK_EE: argument 0"}
!1245 = !{!1244}
!1246 = distinct !{!1246, !59, !60, !61}
!1247 = distinct !{!1247, !62}
!1248 = distinct !{!1248, !59, !60}
!1249 = distinct !{!1249, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ProductINS1_INS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS1_INS1_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEES8_Li0EEEE3rowEl"}
!1250 = distinct !{!1250, !1249, !"_ZNK5Eigen9DenseBaseINS_7ProductINS1_INS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS1_INS1_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEES8_Li0EEEE3rowEl: argument 0"}
!1251 = distinct !{!1251, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl"}
!1252 = distinct !{!1252, !1251, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl: argument 0"}
!1253 = distinct !{!1253, !59}
!1254 = !{!1250}
!1255 = !{!1252}
!1256 = distinct !{!1256, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_7ProductINS2_INS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEESC_Li0EEES9_Li0EEELi1ELin1ELb0EEEE3rowEl"}
!1257 = distinct !{!1257, !1256, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_7ProductINS2_INS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEESC_Li0EEES9_Li0EEELi1ELin1ELb0EEEE3rowEl: argument 0"}
!1258 = distinct !{!1258, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!1259 = distinct !{!1259, !1258, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!1260 = distinct !{!1260, !59}
!1261 = !{!1257}
!1262 = !{!1259}
!1263 = distinct !{!1263, i1 true, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS1_INS1_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEEE11lazyProductIS8_EEKNS1_ISH_T_Li1EEERKNS0_ISK_EE"}
!1264 = distinct !{!1264, !1263, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS1_INS1_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEEE11lazyProductIS8_EEKNS1_ISH_T_Li1EEERKNS0_ISK_EE: argument 0"}
!1265 = !{!1264}
!1266 = distinct !{!1266, !59, !60, !61}
!1267 = distinct !{!1267, !62}
!1268 = distinct !{!1268, !59, !60}
!1269 = distinct !{!1269, !59, !60, !61}
!1270 = distinct !{!1270, !62}
!1271 = distinct !{!1271, !59, !60}
!1272 = distinct !{!1272, !59, !60, !61}
!1273 = distinct !{!1273, !62}
!1274 = distinct !{!1274, !59, !60}
!1275 = !{!"_ZTSN5Eigen7ProductINS0_INS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES3_Li0EEENS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS3_KNS0_IS3_S3_Li0EEEEELi0EEE", !114, i64 0, !239, i64 16}
!1276 = !{!"_ZTSN5Eigen13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS7_INS_9TransposeIS5_EES5_Li0EEENS0_INS1_20scalar_difference_opIddEES6_KNS7_IS5_S5_Li0EEEEELi0EEEEE", !84, i64 0, !1275, i64 8, !98, i64 56}
!1277 = !{!1276, !84, i64 0}
!1278 = distinct !{!1278, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!1279 = distinct !{!1279, !1278, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!1280 = distinct !{!1280, i1 true, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductIS6_S6_Li0EEEEEE3colEl"}
!1281 = distinct !{!1281, !1280, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductIS6_S6_Li0EEEEEE3colEl: argument 0"}
!1282 = distinct !{!1282, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!1283 = distinct !{!1283, !1282, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!1284 = distinct !{!1284, i1 true, !"_ZNK5Eigen9DenseBaseINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_Li0EEEE3rowEl"}
!1285 = distinct !{!1285, !1284, !"_ZNK5Eigen9DenseBaseINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_Li0EEEE3rowEl: argument 0"}
!1286 = !{!1279}
!1287 = !{!1281}
!1288 = !{!1283}
end_hunk_2
