Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_pcg?download=true
inline.NumInlined: 27367
inline.NumDeleted: 13763
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll:bb.a
  br i1 %i.bc, label %.epil.preheader123, label %.preheader62.us.new

.preheader62.us.new:                              ; preds = %.preheader62.us, %.preheader62.us.new
  %.05373.us = phi i64 [ %i.bz, %.preheader62.us.new ], [ 0, %.preheader62.us ] ; 3 uses
  %.372.us = phi i64 [ %i.by, %.preheader62.us.new ], [ %.25874.us, %.preheader62.us ] ; 3 uses
  %niter129 = phi i64 [ %niter129.next.1, %.preheader62.us.new ], [ 0, %.preheader62.us ]
  %i.bi = load ptr, ptr %2, align 8, !tbaa !589
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !591
  %i.bk = mul nsw i64 %i.bj, %.05373.us
  %i.bl = getelementptr [8 x i8], ptr %i.bi, i64 %.175.us
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load <2 x double>, ptr %i.bm, align 1, !tbaa !17
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us
  store <2 x double> %i.bn, ptr %i.bo, align 16, !tbaa !17
  %i.bp = or disjoint i64 %.05373.us, 1
  %i.bq = load ptr, ptr %2, align 8, !tbaa !589
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !591
  %i.bs = mul nsw i64 %i.br, %i.bp
  %i.bt = getelementptr [8 x i8], ptr %i.bq, i64 %.175.us
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load <2 x double>, ptr %i.bu, align 1, !tbaa !17
  %i.bw = getelementptr [8 x i8], ptr %1, i64 %.372.us
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store <2 x double> %i.bv, ptr %i.bx, align 16, !tbaa !17
  %i.by = add nsw i64 %.372.us, 4                 ; 3 uses
  %i.bz = add nuw nsw i64 %.05373.us, 2           ; 2 uses
  %niter129.next.1 = add nuw nsw i64 %niter129, 2 ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %._crit_edge.us78.unr-lcssa, label %.preheader62.us.new, !llvm.loop !1013

._crit_edge.us78.unr-lcssa:                       ; preds = %.preheader62.us.new
  br i1 %lcmp.mod125.not, label %._crit_edge.us78, label %.epil.preheader123

.epil.preheader123:                               ; preds = %._crit_edge.us78.unr-lcssa, %.preheader62.us
  %.05373.us.epil.init = phi i64 [ 0, %.preheader62.us ], [ %i.bz, %._crit_edge.us78.unr-lcssa ]
  %.372.us.epil.init = phi i64 [ %.25874.us, %.preheader62.us ], [ %i.by, %._crit_edge.us78.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.ca = load ptr, ptr %2, align 8, !tbaa !589
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !591
  %i.cc = mul nsw i64 %i.cb, %.05373.us.epil.init
  %i.cd = getelementptr [8 x i8], ptr %i.ca, i64 %.175.us
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !17
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us.epil.init
  store <2 x double> %i.cf, ptr %i.cg, align 16, !tbaa !17
  %i.ch = add nsw i64 %.372.us.epil.init, 2
  br label %._crit_edge.us78

._crit_edge.us78:                                 ; preds = %._crit_edge.us78.unr-lcssa, %.epil.preheader123
  %.lcssa117 = phi i64 [ %i.by, %._crit_edge.us78.unr-lcssa ], [ %i.ch, %.epil.preheader123 ] ; 2 uses
  %i.ci = add nuw nsw i64 %.175.us, 2             ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %i.g
  br i1 %i.cj, label %.preheader62.us, label %.preheader61, !llvm.loop !1014

.preheader61:                                     ; preds = %._crit_edge.us78, %.preheader62.preheader, %.preheader63
  %.258.lcssa = phi i64 [ %.056.lcssa, %.preheader63 ], [ %.056.lcssa, %.preheader62.preheader ], [ %.lcssa117, %._crit_edge.us78 ]
  %.1.lcssa = phi i64 [ %.055.lcssa, %.preheader63 ], [ %i.bh, %.preheader62.preheader ], [ %i.ci, %._crit_edge.us78 ] ; 3 uses
  %i.ck = icmp slt i64 %.1.lcssa, %4
  %i.cl = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge86.split

.preheader.lr.ph.split:                           ; preds = %.preheader61
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !591 ; 6 uses
  %min.iters.check = icmp ugt i64 %3, 5
  %ident.check.not = icmp eq i64 %i.cp, 1
  %or.cond115 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter130 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.285 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %i.dn, %._crit_edge ] ; 2 uses
  %.484 = phi i64 [ %.258.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cn, i64 %.285 ; 6 uses
  br i1 %or.cond115, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader
  %i.cr = add i64 %.1.lcssa, %indvar
  %i.cs = shl i64 %i.cr, 3
  %i.ct = add i64 %i.cs, %i.co
  %i.cu = sub i64 %i.a, %i.ct
  %i.cv = shl i64 %.484, 3
  %i.cw = add i64 %i.cu, %i.cv
  %i.cx = add i64 %i.cw, -1
  %diff.check = icmp ult i64 %i.cx, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cy = add i64 %.484, %n.vec                   ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %1, i64 %.484
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr [8 x i8], ptr %i.cq, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !90
  %wide.load113 = load <2 x double>, ptr %i.db, align 8, !tbaa !90
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load, ptr %i.dc, align 8, !tbaa !90
  store <2 x double> %wide.load113, ptr %i.dd, align 8, !tbaa !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1015

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.083.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.582.ph = phi i64 [ %.484, %vector.memcheck ], [ %.484, %.preheader ], [ %i.cy, %middle.block ] ; 2 uses
  br i1 %lcmp.mod131.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.083.prol = phi i64 [ %i.dk, %scalar.ph.prol ], [ %.083.ph, %scalar.ph.preheader ] ; 2 uses
  %.582.prol = phi i64 [ %i.di, %scalar.ph.prol ], [ %.582.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.df = mul nsw i64 %i.cp, %.083.prol
  %i.dg = getelementptr [8 x i8], ptr %i.cq, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !90
  %i.di = add nsw i64 %.582.prol, 1               ; 3 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %1, i64 %.582.prol
  store double %i.dh, ptr %i.dj, align 8, !tbaa !90
  %i.dk = add nuw nsw i64 %.083.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter130
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1016

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa116.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.di, %scalar.ph.prol ]
  %.083.unr = phi i64 [ %.083.ph, %scalar.ph.preheader ], [ %i.dk, %scalar.ph.prol ]
  %.582.unr = phi i64 [ %.582.ph, %scalar.ph.preheader ], [ %i.di, %scalar.ph.prol ]
  %i.dl = sub nsw i64 %.083.ph, %3
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.cy, %middle.block ], [ %.lcssa116.unr, %scalar.ph.prol.loopexit ], [ %i.ei, %scalar.ph ]
  %i.dn = add nuw nsw i64 %.285, 1                ; 2 uses
  %exitcond97.not = icmp eq i64 %i.dn, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond97.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !1017

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.083 = phi i64 [ %i.el, %scalar.ph ], [ %.083.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.582 = phi i64 [ %i.ei, %scalar.ph ], [ %.582.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.do = mul nsw i64 %i.cp, %.083
  %i.dp = getelementptr [8 x i8], ptr %i.cq, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !90
  %i.dr = getelementptr inbounds [8 x i8], ptr %1, i64 %.582
  store double %i.dq, ptr %i.dr, align 8, !tbaa !90
  %i.ds = add nuw nsw i64 %.083, 1
  %i.dt = mul nsw i64 %i.cp, %i.ds
  %i.du = getelementptr [8 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !90
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store double %i.dv, ptr %i.dx, align 8, !tbaa !90
  %i.dy = add nuw nsw i64 %.083, 2
  %i.dz = mul nsw i64 %i.cp, %i.dy
  %i.ea = getelementptr [8 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !90
  %i.ec = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  store double %i.eb, ptr %i.ed, align 8, !tbaa !90
  %i.ee = add nuw nsw i64 %.083, 3
  %i.ef = mul nsw i64 %i.cp, %i.ee
  %i.eg = getelementptr [8 x i8], ptr %i.cq, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !90
  %i.ei = add nsw i64 %.582, 4                    ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  store double %i.eh, ptr %i.ek, align 8, !tbaa !90
  %i.el = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond96.not.3 = icmp eq i64 %i.el, %3
  br i1 %exitcond96.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1018

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, double noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #26 comdat align 2 {
bb.a:
  %12 = alloca %"struct.Eigen::internal::lhs_process_one_packet", align 1 ; 3 uses
  %i.a = icmp eq i64 %8, -1
  %spec.select = select i1 %i.a, i64 %5, i64 %8   ; 11 uses
  %i.b = icmp eq i64 %9, -1
  %.0249 = select i1 %i.b, i64 %5, i64 %9         ; 6 uses
  %i.c = sdiv i64 %6, 4
  %i.d = shl nsw i64 %i.c, 2                      ; 14 uses
  %i.e = sdiv i64 %4, 4
  %i.f = shl nsw i64 %i.e, 2                      ; 6 uses
  %i.g = sub nsw i64 %4, %i.f
  %i.h = sdiv i64 %i.g, 2
  %i.i = shl nsw i64 %i.h, 1
  %i.j = add nsw i64 %i.i, %i.f                   ; 3 uses
  %i.k = sub nsw i64 %4, %i.j
  %i.l = sdiv i64 %i.k, 2
  %i.m = shl nsw i64 %i.l, 1
  %i.n = add nsw i64 %i.m, %i.j                   ; 2 uses
  %i.o = sub nsw i64 %4, %i.n
  %i.p = sdiv i64 %i.o, 2
  %i.q = shl nsw i64 %i.p, 1
  %i.r = add nsw i64 %i.q, %i.n                   ; 7 uses
  %i.s = and i64 %5, -8                           ; 7 uses
  %i.t = shl i64 %5, 5                            ; 2 uses
  %i.u = sub i64 32640, %i.t
  %i.v = udiv i64 %i.u, %i.t
  %.sroa.speculated613 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = shl nuw nsw i64 %.sroa.speculated613, 2
  %i.x = icmp sgt i64 %4, 3
  br i1 %i.x, label %.lr.ph772, label %._crit_edge773

.lr.ph772:                                        ; preds = %bb.a
  %i.y = icmp sgt i64 %6, 3
  %.idx259 = shl i64 %10, 5
  %invariant.gep = getelementptr i8, ptr %2, i64 %.idx259 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.idx260 = shl i64 %11, 5
  %invariant.gep715 = getelementptr i8, ptr %3, i64 %.idx260
  %i.aa = icmp sgt i64 %5, 7                      ; 2 uses
  %.not = icmp eq i64 %i.s, %5                    ; 3 uses
  %i.ab = insertelement <2 x double> poison, double %7, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 13 uses
  %13 = icmp slt i64 %i.d, %6
  %invariant.gep737 = getelementptr [8 x i8], ptr %3, i64 %11 ; 2 uses
  %i.ad = fmul <2 x double> %i.ac, zeroinitializer ; 2 uses
  br label %bb.b

.loopexit670:                                     ; preds = %._crit_edge741.split.split.us.us.us, %._crit_edge741.split.split.us763, %._crit_edge741.split.us.us.us, %.preheader669
  %i.ae = icmp slt i64 %i.cp, %i.f
  br i1 %i.ae, label %bb.b, label %._crit_edge773, !llvm.loop !1019

._crit_edge773:                                   ; preds = %.loopexit670, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, double noundef %7, i64 noundef %i.f, i64 noundef %i.j, i64 noundef %spec.select, i64 noundef %.0249, i64 noundef %10, i64 noundef %11, i32 noundef 4, i64 noundef %i.s, i64 noundef 8, i64 noundef %6, i64 noundef %5, i64 noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %i.af = icmp slt i64 %i.r, %4
  br i1 %i.af, label %.preheader664, label %.loopexit

.preheader664:                                    ; preds = %._crit_edge773
  %i.ag = icmp sgt i64 %6, 3
  br i1 %i.ag, label %.preheader663.lr.ph.split, label %.preheader662

.preheader663.lr.ph.split:                        ; preds = %.preheader664
  %invariant.gep787 = getelementptr [8 x i8], ptr %2, i64 %10 ; 2 uses
  %.idx = shl i64 %11, 5
  %invariant.gep793 = getelementptr i8, ptr %3, i64 %.idx
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = icmp sgt i64 %5, 0
  %i.aj = load ptr, ptr %1, align 8, !tbaa !988   ; 2 uses
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !990 ; 8 uses
  br i1 %i.ai, label %.preheader663.us.preheader, label %.preheader663

.preheader663.us.preheader:                       ; preds = %.preheader663.lr.ph.split
  %xtraiter = and i64 %5, 1
  %i.al = icmp eq i64 %5, 1
  %unroll_iter = and i64 %5, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod987 = trunc i64 %5 to i1
  br label %.preheader663.us

.preheader663.us:                                 ; preds = %.preheader663.us.preheader, %._crit_edge791.split.us.us
  %.0231792.us = phi i64 [ %i.cn, %._crit_edge791.split.us.us ], [ 0, %.preheader663.us.preheader ] ; 6 uses
  %i.am = mul nsw i64 %.0231792.us, %.0249
  %gep794.us = getelementptr [8 x i8], ptr %invariant.gep793, i64 %i.am ; 2 uses
  %i.an = mul nsw i64 %i.ak, %.0231792.us
  %i.ao = or disjoint i64 %.0231792.us, 1
  %i.ap = mul nsw i64 %i.ak, %i.ao
  %i.aq = or disjoint i64 %.0231792.us, 2
  %i.ar = mul nsw i64 %i.ak, %i.aq
  %i.as = or disjoint i64 %.0231792.us, 3
  %i.at = mul nsw i64 %i.ak, %i.as
  br label %.lr.ph781.us.us

.lr.ph781.us.us:                                  ; preds = %._crit_edge782.us.us, %.preheader663.us
  %.0230789.us.us = phi i64 [ %i.r, %.preheader663.us ], [ %i.cm, %._crit_edge782.us.us ] ; 3 uses
  %i.au = mul nsw i64 %.0230789.us.us, %spec.select
  %gep788.us.us = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.au ; 4 uses
  call void @llvm.prefetch.p0(ptr %gep788.us.us, i32 0, i32 3, i32 1)
  br i1 %i.al, label %.epil.preheader, label %.lr.ph781.us.us.new

.lr.ph781.us.us.new:                              ; preds = %.lr.ph781.us.us, %.lr.ph781.us.us.new
  %.0228779.us.us = phi i64 [ %i.bn, %.lr.ph781.us.us.new ], [ 0, %.lr.ph781.us.us ] ; 3 uses
  %.0229778.us.us = phi ptr [ %i.bm, %.lr.ph781.us.us.new ], [ %gep794.us, %.lr.ph781.us.us ] ; 3 uses
  %i.av = phi <4 x double> [ %i.bl, %.lr.ph781.us.us.new ], [ zeroinitializer, %.lr.ph781.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph781.us.us.new ], [ 0, %.lr.ph781.us.us ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %gep788.us.us, i64 %.0228779.us.us
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !90
  %i.ay = load <4 x double>, ptr %.0229778.us.us, align 8, !tbaa !90
  %i.az = insertelement <4 x double> poison, double %i.ax, i64 0
  %i.ba = shufflevector <4 x double> %i.az, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bb = fmul <4 x double> %i.ba, %i.ay
  %i.bc = fadd <4 x double> %i.av, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.0229778.us.us, i64 32
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %gep788.us.us, i64 %.0228779.us.us
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !90
  %i.bh = load <4 x double>, ptr %i.bd, align 8, !tbaa !90
  %i.bi = insertelement <4 x double> poison, double %i.bg, i64 0
  %i.bj = shufflevector <4 x double> %i.bi, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bk = fmul <4 x double> %i.bj, %i.bh
  %i.bl = fadd <4 x double> %i.bc, %i.bk          ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0229778.us.us, i64 64 ; 2 uses
  %i.bn = add nuw nsw i64 %.0228779.us.us, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge782.us.us.unr-lcssa, label %.lr.ph781.us.us.new, !llvm.loop !1020

._crit_edge782.us.us.unr-lcssa:                   ; preds = %.lr.ph781.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge782.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge782.us.us.unr-lcssa, %.lr.ph781.us.us
  %.0228779.us.us.epil.init = phi i64 [ 0, %.lr.ph781.us.us ], [ %i.bn, %._crit_edge782.us.us.unr-lcssa ]
  %.0229778.us.us.epil.init = phi ptr [ %gep794.us, %.lr.ph781.us.us ], [ %i.bm, %._crit_edge782.us.us.unr-lcssa ]
  %.epil.init = phi <4 x double> [ zeroinitializer, %.lr.ph781.us.us ], [ %i.bl, %._crit_edge782.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod987)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %gep788.us.us, i64 %.0228779.us.us.epil.init
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !90
  %i.bq = load <4 x double>, ptr %.0229778.us.us.epil.init, align 8, !tbaa !90
  %i.br = insertelement <4 x double> poison, double %i.bp, i64 0
  %i.bs = shufflevector <4 x double> %i.br, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bt = fmul <4 x double> %i.bs, %i.bq
  %i.bu = fadd <4 x double> %.epil.init, %i.bt
  br label %._crit_edge782.us.us

._crit_edge782.us.us:                             ; preds = %._crit_edge782.us.us.unr-lcssa, %.epil.preheader
  %.lcssa956 = phi <4 x double> [ %i.bl, %._crit_edge782.us.us.unr-lcssa ], [ %i.bu, %.epil.preheader ] ; 4 uses
  %i.bv = getelementptr [8 x i8], ptr %i.aj, i64 %.0230789.us.us ; 4 uses
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.an ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !90
  %i.by = extractelement <4 x double> %.lcssa956, i64 0
  %i.bz = call double @llvm.fmuladd.f64(double %7, double %i.by, double %i.bx)
  store double %i.bz, ptr %i.bw, align 8, !tbaa !90
  %i.ca = getelementptr [8 x i8], ptr %i.bv, i64 %i.ap ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !90
  %i.cc = extractelement <4 x double> %.lcssa956, i64 1
  %i.cd = call double @llvm.fmuladd.f64(double %7, double %i.cc, double %i.cb)
  store double %i.cd, ptr %i.ca, align 8, !tbaa !90
  %i.ce = getelementptr [8 x i8], ptr %i.bv, i64 %i.ar ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !90
  %i.cg = extractelement <4 x double> %.lcssa956, i64 2
  %i.ch = call double @llvm.fmuladd.f64(double %7, double %i.cg, double %i.cf)
  store double %i.ch, ptr %i.ce, align 8, !tbaa !90
  %i.ci = getelementptr [8 x i8], ptr %i.bv, i64 %i.at ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !90
  %i.ck = extractelement <4 x double> %.lcssa956, i64 3
  %i.cl = call double @llvm.fmuladd.f64(double %7, double %i.ck, double %i.cj)
  store double %i.cl, ptr %i.ci, align 8, !tbaa !90
  %i.cm = add nsw i64 %.0230789.us.us, 1          ; 2 uses
  %exitcond855.not = icmp eq i64 %i.cm, %4
  br i1 %exitcond855.not, label %._crit_edge791.split.us.us, label %.lr.ph781.us.us, !llvm.loop !1021

._crit_edge791.split.us.us:                       ; preds = %._crit_edge782.us.us
  %i.cn = add nuw nsw i64 %.0231792.us, 4         ; 2 uses
  %i.co = icmp slt i64 %i.cn, %i.d
  br i1 %i.co, label %.preheader663.us, label %.preheader662, !llvm.loop !1022

bb.b:                                             ; preds = %.lr.ph772, %.loopexit670
  %.0247770 = phi i64 [ 0, %.lr.ph772 ], [ %i.cp, %.loopexit670 ] ; 6 uses
  %i.cp = add nuw nsw i64 %.0247770, %i.w         ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.cp) ; 4 uses
  %i.cq = icmp sgt i64 %i.f, %.0247770            ; 2 uses
  %or.cond = select i1 %i.y, i1 %i.cq, i1 false
  br i1 %or.cond, label %.preheader668, label %.preheader669

.preheader669:                                    ; preds = %._crit_edge713, %bb.b
  %brmerge.not = select i1 %13, i1 %i.cq, i1 false
  br i1 %brmerge.not, label %.preheader667.lr.ph.split.us, label %.loopexit670

.preheader667.lr.ph.split.us:                     ; preds = %.preheader669
  br i1 %i.aa, label %.preheader667.us.us, label %.preheader667.lr.ph.split.us.split

.preheader667.us.us:                              ; preds = %.preheader667.lr.ph.split.us, %._crit_edge741.split.us.us.us
  %.0238758.us.us = phi i64 [ %i.hq, %._crit_edge741.split.us.us.us ], [ %i.d, %.preheader667.lr.ph.split.us ] ; 3 uses
  %i.cr = mul nsw i64 %.0238758.us.us, %.0249
  %gep738.us.us = getelementptr [8 x i8], ptr %invariant.gep737, i64 %i.cr
  br label %.lr.ph723.us.us.us

.lr.ph723.us.us.us:                               ; preds = %._crit_edge734.us.us.us, %.preheader667.us.us
  %.0237739.us.us.us = phi i64 [ %.0247770, %.preheader667.us.us ], [ %i.ho, %._crit_edge734.us.us.us ] ; 3 uses
  %i.cs = mul nsw i64 %.0237739.us.us.us, %spec.select
  %gep743.us.us.us = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %gep743.us.us.us, i32 0, i32 3, i32 1)
  %i.ct = load ptr, ptr %1, align 8, !tbaa !988
  %i.cu = load i64, ptr %i.z, align 8, !tbaa !990
  %i.cv = mul nsw i64 %i.cu, %.0238758.us.us
  %i.cw = getelementptr [8 x i8], ptr %i.ct, i64 %.0237739.us.us.us
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cy, i32 0, i32 3, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph723.us.us.us
  %.0233721.us.us.us = phi i64 [ 0, %.lr.ph723.us.us.us ], [ %i.gr, %bb.c ]
  %.0234720.us.us.us = phi ptr [ %gep738.us.us, %.lr.ph723.us.us.us ], [ %i.gp, %bb.c ] ; 9 uses
  %.0235719.us.us.us = phi ptr [ %gep743.us.us.us, %.lr.ph723.us.us.us ], [ %i.gq, %bb.c ] ; 17 uses
  %.0658718.us.us.us = phi <2 x double> [ zeroinitializer, %.lr.ph723.us.us.us ], [ %i.go, %bb.c ]
  %.0660717.us.us.us = phi <2 x double> [ zeroinitializer, %.lr.ph723.us.us.us ], [ %i.gm, %bb.c ]
  tail call void asm sideeffect "#begin gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1023
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1024
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1025
  %i.cz = load <2 x double>, ptr %.0235719.us.us.us, align 16, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 16
  %i.db = load <2 x double>, ptr %i.da, align 16, !tbaa !17
  %i.dc = load double, ptr %.0234720.us.us.us, align 8, !tbaa !90
  %i.dd = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = fmul <2 x double> %i.cz, %i.de
  %i.dg = fadd <2 x double> %.0660717.us.us.us, %i.df
  %i.dh = fmul <2 x double> %i.db, %i.de
  %i.di = fadd <2 x double> %.0658718.us.us.us, %i.dh
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1026
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1027
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1028
  %i.dj = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 32
  %i.dk = load <2 x double>, ptr %i.dj, align 16, !tbaa !17
  %i.dl = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 48
  %i.dm = load <2 x double>, ptr %i.dl, align 16, !tbaa !17
  %i.dn = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 8
  %i.do = load double, ptr %i.dn, align 8, !tbaa !90
  %i.dp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = fmul <2 x double> %i.dk, %i.dq
  %i.ds = fadd <2 x double> %i.dg, %i.dr
  %i.dt = fmul <2 x double> %i.dm, %i.dq
  %i.du = fadd <2 x double> %i.di, %i.dt
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1029
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1030
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1031
  %i.dv = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 64
  %i.dw = load <2 x double>, ptr %i.dv, align 16, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 80
  %i.dy = load <2 x double>, ptr %i.dx, align 16, !tbaa !17
  %i.dz = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 16
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !90
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = fmul <2 x double> %i.dw, %i.ec
  %i.ee = fadd <2 x double> %i.ds, %i.ed
  %i.ef = fmul <2 x double> %i.dy, %i.ec
  %i.eg = fadd <2 x double> %i.du, %i.ef
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1032
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1033
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1034
  %i.eh = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 96
  %i.ei = load <2 x double>, ptr %i.eh, align 16, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 112
  %i.ek = load <2 x double>, ptr %i.ej, align 16, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 24
  %i.em = load double, ptr %i.el, align 8, !tbaa !90
  %i.en = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = fmul <2 x double> %i.ei, %i.eo
  %i.eq = fadd <2 x double> %i.ee, %i.ep
  %i.er = fmul <2 x double> %i.ek, %i.eo
  %i.es = fadd <2 x double> %i.eg, %i.er
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1035
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1036
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1037
  %i.et = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 128
  %i.eu = load <2 x double>, ptr %i.et, align 16, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 144
  %i.ew = load <2 x double>, ptr %i.ev, align 16, !tbaa !17
  %i.ex = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 32
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !90
  %i.ez = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fb = fmul <2 x double> %i.eu, %i.fa
  %i.fc = fadd <2 x double> %i.eq, %i.fb
  %i.fd = fmul <2 x double> %i.ew, %i.fa
  %i.fe = fadd <2 x double> %i.es, %i.fd
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1038
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1039
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1040
  %i.ff = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 160
  %i.fg = load <2 x double>, ptr %i.ff, align 16, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 176
  %i.fi = load <2 x double>, ptr %i.fh, align 16, !tbaa !17
  %i.fj = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 40
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !90
  %i.fl = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = fmul <2 x double> %i.fg, %i.fm
  %i.fo = fadd <2 x double> %i.fc, %i.fn
  %i.fp = fmul <2 x double> %i.fi, %i.fm
  %i.fq = fadd <2 x double> %i.fe, %i.fp
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1041
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1042
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1043
  %i.fr = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 192
  %i.fs = load <2 x double>, ptr %i.fr, align 16, !tbaa !17
  %i.ft = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 208
  %i.fu = load <2 x double>, ptr %i.ft, align 16, !tbaa !17
  %i.fv = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 48
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !90
  %i.fx = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fz = fmul <2 x double> %i.fs, %i.fy
  %i.ga = fadd <2 x double> %i.fo, %i.fz
  %i.gb = fmul <2 x double> %i.fu, %i.fy
  %i.gc = fadd <2 x double> %i.fq, %i.gb
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1044
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1045
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1046
  %i.gd = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 224
  %i.ge = load <2 x double>, ptr %i.gd, align 16, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 240
  %i.gg = load <2 x double>, ptr %i.gf, align 16, !tbaa !17
  %i.gh = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 56
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !90
  %i.gj = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gl = fmul <2 x double> %i.ge, %i.gk
  %i.gm = fadd <2 x double> %i.ga, %i.gl          ; 3 uses
  %i.gn = fmul <2 x double> %i.gg, %i.gk
  %i.go = fadd <2 x double> %i.gc, %i.gn          ; 3 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1047
  %i.gp = getelementptr inbounds nuw i8, ptr %.0234720.us.us.us, i64 64 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0235719.us.us.us, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1048
  %i.gr = add nuw nsw i64 %.0233721.us.us.us, 8   ; 2 uses
  %i.gs = icmp slt i64 %i.gr, %i.s
  br i1 %i.gs, label %bb.c, label %..preheader665_crit_edge.us.us.us, !llvm.loop !1049

.lr.ph733.us.us.us:                               ; preds = %..preheader665_crit_edge.us.us.us, %.lr.ph733.us.us.us
  %.0232732.us.us.us = phi i64 [ %i.hf, %.lr.ph733.us.us.us ], [ %i.s, %..preheader665_crit_edge.us.us.us ]
  %.1731.us.us.us = phi ptr [ %i.hd, %.lr.ph733.us.us.us ], [ %i.gp, %..preheader665_crit_edge.us.us.us ] ; 2 uses
  %.1236730.us.us.us = phi ptr [ %i.he, %.lr.ph733.us.us.us ], [ %i.gq, %..preheader665_crit_edge.us.us.us ] ; 3 uses
  %.1659729.us.us.us = phi <2 x double> [ %i.hc, %.lr.ph733.us.us.us ], [ %i.go, %..preheader665_crit_edge.us.us.us ]
  %.1661728.us.us.us = phi <2 x double> [ %i.ha, %.lr.ph733.us.us.us ], [ %i.gm, %..preheader665_crit_edge.us.us.us ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1050
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1051
  %i.gt = load <2 x double>, ptr %.1236730.us.us.us, align 16, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %.1236730.us.us.us, i64 16
  %i.gv = load <2 x double>, ptr %i.gu, align 16, !tbaa !17
  %i.gw = load double, ptr %.1731.us.us.us, align 8, !tbaa !90
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = fmul <2 x double> %i.gt, %i.gy
  %i.ha = fadd <2 x double> %.1661728.us.us.us, %i.gz ; 2 uses
  %i.hb = fmul <2 x double> %i.gv, %i.gy
  %i.hc = fadd <2 x double> %.1659729.us.us.us, %i.hb ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !1052
  %i.hd = getelementptr inbounds nuw i8, ptr %.1731.us.us.us, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %.1236730.us.us.us, i64 32
  %i.hf = add nuw nsw i64 %.0232732.us.us.us, 1   ; 2 uses
  %i.hg = icmp slt i64 %i.hf, %5
  br i1 %i.hg, label %.lr.ph733.us.us.us, label %._crit_edge734.us.us.us, !llvm.loop !1053

._crit_edge734.us.us.us:                          ; preds = %.lr.ph733.us.us.us, %..preheader665_crit_edge.us.us.us
  %.1661.lcssa.us.us.us = phi <2 x double> [ %i.gm, %..preheader665_crit_edge.us.us.us ], [ %i.ha, %.lr.ph733.us.us.us ]
  %.1659.lcssa.us.us.us = phi <2 x double> [ %i.go, %..preheader665_crit_edge.us.us.us ], [ %i.hc, %.lr.ph733.us.us.us ]
  %i.hh = load <2 x double>, ptr %i.cx, align 1, !tbaa !17
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.hj = load <2 x double>, ptr %i.hi, align 1, !tbaa !17
  %i.hk = fmul <2 x double> %i.ac, %.1661.lcssa.us.us.us
  %i.hl = fadd <2 x double> %i.hk, %i.hh
  %i.hm = fmul <2 x double> %i.ac, %.1659.lcssa.us.us.us
  %i.hn = fadd <2 x double> %i.hm, %i.hj
  store <2 x double> %i.hl, ptr %i.cx, align 1, !tbaa !17
  store <2 x double> %i.hn, ptr %i.hi, align 1, !tbaa !17
  %i.ho = add nuw nsw i64 %.0237739.us.us.us, 4   ; 2 uses
  %i.hp = icmp slt i64 %i.ho, %.sroa.speculated
  br i1 %i.hp, label %.lr.ph723.us.us.us, label %._crit_edge741.split.us.us.us, !llvm.loop !1054

..preheader665_crit_edge.us.us.us:                ; preds = %bb.c
  br i1 %.not, label %._crit_edge734.us.us.us, label %.lr.ph733.us.us.us

end_hunk_0
