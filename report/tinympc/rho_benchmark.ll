Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/rho_benchmark?download=true
inline.NumInlined: 3320
inline.NumDeleted: 1437
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 56
begin_hunk_0_@__gxx_personality_v0
declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_Z17compute_residualsP10RhoAdapterPdS1_S1_S1_(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Product.59", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::Product.59", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::Product.80", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.a, ptr %8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_S3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NSt9enable_ifIXsr25evaluator_assume_aliasingISA_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !17   ; 8 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !17   ; 8 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.r, %i.n
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sdiv i64 9223372036854775807, %i.n
  %i.u = icmp sgt i64 %i.l, %i.t
  br i1 %i.u, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.v = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.w = mul nsw i64 %i.n, %i.l
  call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.w, i64 noundef %i.l, i64 noundef %i.n)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !13
  %.pre20.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.x = phi i64 [ %.pre20.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.n, %bb.a ]
  %i.y = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.l, %bb.a ]
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !17   ; 8 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ab = mul nsw i64 %i.y, %i.x                  ; 7 uses
  %i.ac = sdiv i64 %i.ab, 2
  %i.ad = shl nsw i64 %i.ac, 1                    ; 7 uses
  %i.ae = icmp sgt i64 %i.ab, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.af = icmp slt i64 %i.ad, %i.ab
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ag = sub i64 %i.ab, %i.ad                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ag, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader345, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.ah = sub i64 %i.h, %i.aa
  %diff.check = icmp ugt i64 %i.ah, -32
  %i.ai = sub i64 %i.j, %i.aa
  %diff.check298.a = icmp ugt i64 %i.ai, -32
  %conflict.rdx = or i1 %diff.check, %diff.check298.a
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader345, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -4                      ; 3 uses
  %i.aj = add i64 %i.ad, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add i64 %i.ad, %index                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ak ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !19
  %wide.load299 = load <2 x double>, ptr %i.ao, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load300 = load <2 x double>, ptr %i.an, align 8, !tbaa !19
  %wide.load301 = load <2 x double>, ptr %i.ap, align 8, !tbaa !19
  %i.aq = fsub <2 x double> %wide.load, %wide.load300
  %i.ar = fsub <2 x double> %wide.load299, %wide.load301
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %i.aq, ptr %i.al, align 8, !tbaa !19
  store <2 x double> %i.ar, ptr %i.as, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader345

.lr.ph.i.i.i.i.i.i.i.i.i.preheader345:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ] ; 4 uses
  %i.au = sub i64 %i.ab, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader345, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader345 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader345 ]
  %i.av = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !19
  %i.az = load double, ptr %i.ax, align 8, !tbaa !19
  %i.ba = fsub double %i.ay, %i.az
  store double %i.ba, ptr %i.av, align 8, !tbaa !19
  %i.bb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !221

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader345
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader345 ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bc = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.ab
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bh = load double, ptr %i.bf, align 8, !tbaa !19
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !19
  %i.bj = fsub double %i.bh, %i.bi
  store double %i.bj, ptr %i.be, align 8, !tbaa !19
  %i.bk = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bk
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bk
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !19
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !19
  %i.bq = fsub double %i.bo, %i.bp
  store double %i.bq, ptr %i.bl, align 8, !tbaa !19
  %i.br = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.br
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.br
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !19
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !19
  %i.bx = fsub double %i.bv, %i.bw
  store double %i.bx, ptr %i.bs, align 8, !tbaa !19
  %i.by = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 3 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.by
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.by
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.by
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !19
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !19
  %i.ce = fsub double %i.cc, %i.cd
  store double %i.ce, ptr %i.bz, align 8, !tbaa !19
  %i.cf = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cf, %i.ab
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !222

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.011.i.i.i.i.i.i.i.i
  %i.ci = load <2 x double>, ptr %i.ch, align 16, !tbaa !58
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i.i.i.i
  %i.ck = load <2 x double>, ptr %i.cj, align 16, !tbaa !58
  %i.cl = fsub <2 x double> %i.ci, %i.ck
  store <2 x double> %i.cl, ptr %i.cg, align 16, !tbaa !58
  %i.cm = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cn = icmp slt i64 %i.cm, %i.ad
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !223

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !17  ; 8 uses
  %i.cp = load i64, ptr %i.o, align 8, !tbaa !13
  %i.cq = load i64, ptr %i.q, align 8, !tbaa !16
  %i.cr = mul nsw i64 %i.cq, %i.cp                ; 9 uses
  %i.cs = sdiv i64 %i.cr, 4
  %i.ct = shl nsw i64 %i.cs, 2                    ; 3 uses
  %i.cu = sdiv i64 %i.cr, 2
  %i.cv = shl nsw i64 %i.cu, 1                    ; 6 uses
  %.off.i.i.i.i = add i64 %i.cr, 1
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 3
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.cw = load <2 x double>, ptr %i.co, align 16, !tbaa !58
  %i.cx = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cw) ; 3 uses
  %i.cy = icmp sgt i64 %i.cr, 3
  br i1 %i.cy, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.da = load <2 x double>, ptr %i.cz, align 16, !tbaa !58
  %i.db = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.da) ; 2 uses
  %i.dc = icmp samesign ugt i64 %i.cr, 7
  br i1 %i.dc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.db, %bb.f ], [ %i.dm, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.cx, %bb.f ], [ %i.di, %.lr.ph.i.i.i.i ]
  %i.dd = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %.075.lcssa.i.i.i.i, <2 x double> %.072.lcssa.i.i.i.i) ; 2 uses
  %i.de = icmp sgt i64 %i.cv, %i.ct
  br i1 %i.de, label %bb.g, label %bb.h

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.054.in79.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.f ] ; 2 uses
  %.07278.i.i.i.i = phi <2 x double> [ %i.di, %.lr.ph.i.i.i.i ], [ %i.cx, %bb.f ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.db, %bb.f ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.054.in79.i.i.i.i ; 2 uses
  %i.dg = load <2 x double>, ptr %i.df, align 16, !tbaa !58
  %i.dh = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dg)
  %i.di = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dh, <2 x double> %.07278.i.i.i.i) ; 2 uses
  %i.dj = getelementptr i8, ptr %i.df, i64 16
  %i.dk = load <2 x double>, ptr %i.dj, align 16, !tbaa !58
  %i.dl = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dk)
  %i.dm = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dl, <2 x double> %.07577.i.i.i.i) ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.054.in79.i.i.i.i, 4 ; 2 uses
  %i.dn = icmp slt i64 %.054.i.i.i.i, %i.ct
  br i1 %i.dn, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !224

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ct
  %i.dp = load <2 x double>, ptr %i.do, align 16, !tbaa !58
  %i.dq = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dp)
  %i.dr = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dq, <2 x double> %i.dd)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i, %bb.e
  %.274.i.i.i.i = phi <2 x double> [ %i.cx, %bb.e ], [ %i.dr, %bb.g ], [ %i.dd, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 1 ; 2 uses
  %i.ds = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.dt = select i1 %i.ds, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 4 uses
  %i.du = icmp slt i64 %i.cv, %i.cr
  br i1 %i.du, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.h
  %.neg = or disjoint i64 %i.cv, 1
  %xtraiter346.a = and i64 %i.cr, 1
  %lcmp.mod347.not.a = icmp eq i64 %xtraiter346.a, 0
  br i1 %lcmp.mod347.not.a, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cv
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !19
  %i.dx = call noundef double @llvm.fabs.f64(double %i.dw) ; 2 uses
  %i.dy = fcmp olt double %i.dt, %i.dx
  %i.dz = select i1 %i.dy, double %i.dx, double %i.dt ; 2 uses
  %i.ea = or disjoint i64 %i.cv, 1
  br label %.lr.ph85.i.i.i.i.prol.loopexit

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa342.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.dz, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.cv, %.lr.ph85.i.i.i.i.preheader ], [ %i.ea, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.dt, %.lr.ph85.i.i.i.i.preheader ], [ %i.dz, %.lr.ph85.i.i.i.i.prol ]
  %i.eb = icmp eq i64 %i.cr, %.neg
  br i1 %i.eb, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.en, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i = phi double [ %i.em, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.co, i64 %.05283.i.i.i.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !19
  %i.ee = call noundef double @llvm.fabs.f64(double %i.ed) ; 2 uses
  %i.ef = fcmp olt double %.182.i.i.i.i, %i.ee
  %i.eg = select i1 %i.ef, double %i.ee, double %.182.i.i.i.i ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.co, i64 %.05283.i.i.i.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !19
  %i.ek = call noundef double @llvm.fabs.f64(double %i.ej) ; 2 uses
  %i.el = fcmp olt double %i.eg, %i.ek
  %i.em = select i1 %i.el, double %i.ek, double %i.eg ; 2 uses
  %i.en = add nsw i64 %.05283.i.i.i.i, 2          ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.en, %i.cr
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !225

bb.i:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.eo = load double, ptr %i.co, align 8, !tbaa !19
  %i.ep = call noundef double @llvm.fabs.f64(double %i.eo)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.h, %bb.i
  %.3.i.i.i.i = phi double [ %i.dt, %bb.h ], [ %i.ep, %bb.i ], [ %.lcssa342.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.em, %.lr.ph85.i.i.i.i ]
  store double %.3.i.i.i.i, ptr %1, align 8, !tbaa !19
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !17  ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.es = load i64, ptr %i.er, align 8, !tbaa !13
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !16
  %i.ev = mul nsw i64 %i.eu, %i.es                ; 9 uses
  %i.ew = sdiv i64 %i.ev, 4
  %i.ex = shl nsw i64 %i.ew, 2                    ; 3 uses
  %i.ey = sdiv i64 %i.ev, 2
  %i.ez = shl nsw i64 %i.ey, 1                    ; 6 uses
  %.off.i.i.i.i27 = add i64 %i.ev, 1
  %.not.i.i.i.i28 = icmp ult i64 %.off.i.i.i.i27, 3
  br i1 %.not.i.i.i.i28, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit
  %i.fa = load <2 x double>, ptr %i.eq, align 16, !tbaa !58
  %i.fb = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fa) ; 3 uses
  %i.fc = icmp sgt i64 %i.ev, 3
  br i1 %i.fc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fe = load <2 x double>, ptr %i.fd, align 16, !tbaa !58
  %i.ff = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fe) ; 2 uses
  %i.fg = icmp samesign ugt i64 %i.ev, 7
  br i1 %i.fg, label %.lr.ph.i.i.i.i40, label %._crit_edge.i.i.i.i37

._crit_edge.i.i.i.i37:                            ; preds = %.lr.ph.i.i.i.i40, %bb.k
  %.075.lcssa.i.i.i.i38 = phi <2 x double> [ %i.ff, %bb.k ], [ %i.fq, %.lr.ph.i.i.i.i40 ]
  %.072.lcssa.i.i.i.i39 = phi <2 x double> [ %i.fb, %bb.k ], [ %i.fm, %.lr.ph.i.i.i.i40 ]
  %i.fh = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %.075.lcssa.i.i.i.i38, <2 x double> %.072.lcssa.i.i.i.i39) ; 2 uses
  %i.fi = icmp sgt i64 %i.ez, %i.ex
  br i1 %i.fi, label %bb.l, label %bb.m

.lr.ph.i.i.i.i40:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i40
  %.054.in79.i.i.i.i42 = phi i64 [ %.054.i.i.i.i45, %.lr.ph.i.i.i.i40 ], [ 4, %bb.k ] ; 2 uses
  %.07278.i.i.i.i43 = phi <2 x double> [ %i.fm, %.lr.ph.i.i.i.i40 ], [ %i.fb, %bb.k ]
  %.07577.i.i.i.i44 = phi <2 x double> [ %i.fq, %.lr.ph.i.i.i.i40 ], [ %i.ff, %bb.k ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.054.in79.i.i.i.i42 ; 2 uses
  %i.fk = load <2 x double>, ptr %i.fj, align 16, !tbaa !58
  %i.fl = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fk)
  %i.fm = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fl, <2 x double> %.07278.i.i.i.i43) ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fj, i64 16
  %i.fo = load <2 x double>, ptr %i.fn, align 16, !tbaa !58
  %i.fp = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fo)
  %i.fq = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fp, <2 x double> %.07577.i.i.i.i44) ; 2 uses
  %.054.i.i.i.i45 = add nuw nsw i64 %.054.in79.i.i.i.i42, 4 ; 2 uses
  %i.fr = icmp slt i64 %.054.i.i.i.i45, %i.ex
  br i1 %i.fr, label %.lr.ph.i.i.i.i40, label %._crit_edge.i.i.i.i37, !llvm.loop !224

bb.l:                                             ; preds = %._crit_edge.i.i.i.i37
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ex
  %i.ft = load <2 x double>, ptr %i.fs, align 16, !tbaa !58
  %i.fu = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ft)
  %i.fv = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fu, <2 x double> %i.fh)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i37, %bb.j
  %.274.i.i.i.i29 = phi <2 x double> [ %i.fb, %bb.j ], [ %i.fv, %bb.l ], [ %i.fh, %._crit_edge.i.i.i.i37 ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i30 = extractelement <2 x double> %.274.i.i.i.i29, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i31 = extractelement <2 x double> %.274.i.i.i.i29, i64 1 ; 2 uses
  %i.fw = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i30, %.sroa.0.8.vec.extract.i.i.i.i.i.i31
  %i.fx = select i1 %i.fw, double %.sroa.0.8.vec.extract.i.i.i.i.i.i31, double %.sroa.0.0.vec.extract.i.i.i.i.i.i30 ; 4 uses
  %i.fy = icmp slt i64 %i.ez, %i.ev
  br i1 %i.fy, label %.lr.ph85.i.i.i.i33.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit46

.lr.ph85.i.i.i.i33.preheader:                     ; preds = %bb.m
  %.neg370.a = or disjoint i64 %i.ez, 1
  %xtraiter349.a = and i64 %i.ev, 1
  %lcmp.mod350.not.a = icmp eq i64 %xtraiter349.a, 0
  br i1 %lcmp.mod350.not.a, label %.lr.ph85.i.i.i.i33.prol.loopexit, label %.lr.ph85.i.i.i.i33.prol

.lr.ph85.i.i.i.i33.prol:                          ; preds = %.lr.ph85.i.i.i.i33.preheader
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ez
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !19
  %i.gb = call noundef double @llvm.fabs.f64(double %i.ga) ; 2 uses
  %i.gc = fcmp olt double %i.fx, %i.gb
  %i.gd = select i1 %i.gc, double %i.gb, double %i.fx ; 2 uses
  %i.ge = or disjoint i64 %i.ez, 1
  br label %.lr.ph85.i.i.i.i33.prol.loopexit

.lr.ph85.i.i.i.i33.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i33.prol, %.lr.ph85.i.i.i.i33.preheader
  %.lcssa339.unr = phi double [ poison, %.lr.ph85.i.i.i.i33.preheader ], [ %i.gd, %.lr.ph85.i.i.i.i33.prol ]
  %.05283.i.i.i.i34.unr = phi i64 [ %i.ez, %.lr.ph85.i.i.i.i33.preheader ], [ %i.ge, %.lr.ph85.i.i.i.i33.prol ]
  %.182.i.i.i.i35.unr = phi double [ %i.fx, %.lr.ph85.i.i.i.i33.preheader ], [ %i.gd, %.lr.ph85.i.i.i.i33.prol ]
  %i.gf = icmp eq i64 %i.ev, %.neg370.a
  br i1 %i.gf, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit46, label %.lr.ph85.i.i.i.i33

.lr.ph85.i.i.i.i33:                               ; preds = %.lr.ph85.i.i.i.i33.prol.loopexit, %.lr.ph85.i.i.i.i33
  %.05283.i.i.i.i34 = phi i64 [ %i.gr, %.lr.ph85.i.i.i.i33 ], [ %.05283.i.i.i.i34.unr, %.lr.ph85.i.i.i.i33.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i35 = phi double [ %i.gq, %.lr.ph85.i.i.i.i33 ], [ %.182.i.i.i.i35.unr, %.lr.ph85.i.i.i.i33.prol.loopexit ] ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %.05283.i.i.i.i34
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !19
  %i.gi = call noundef double @llvm.fabs.f64(double %i.gh) ; 2 uses
  %i.gj = fcmp olt double %.182.i.i.i.i35, %i.gi
  %i.gk = select i1 %i.gj, double %i.gi, double %.182.i.i.i.i35 ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.eq, i64 %.05283.i.i.i.i34
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !19
  %i.go = call noundef double @llvm.fabs.f64(double %i.gn) ; 2 uses
  %i.gp = fcmp olt double %i.gk, %i.go
  %i.gq = select i1 %i.gp, double %i.go, double %i.gk ; 2 uses
  %i.gr = add nsw i64 %.05283.i.i.i.i34, 2        ; 2 uses
  %exitcond.not.i.i.i.i36.1 = icmp eq i64 %i.gr, %i.ev
  br i1 %exitcond.not.i.i.i.i36.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit46, label %.lr.ph85.i.i.i.i33, !llvm.loop !225

bb.n:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit
  %i.gs = load double, ptr %i.eq, align 8, !tbaa !19
  %i.gt = call noundef double @llvm.fabs.f64(double %i.gs)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit46

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit46: ; preds = %.lr.ph85.i.i.i.i33.prol.loopexit, %.lr.ph85.i.i.i.i33, %bb.m, %bb.n
  %.3.i.i.i.i32 = phi double [ %i.fx, %bb.m ], [ %i.gt, %bb.n ], [ %.lcssa339.unr, %.lr.ph85.i.i.i.i33.prol.loopexit ], [ %i.gq, %.lr.ph85.i.i.i.i33 ] ; 2 uses
  %i.gu = load ptr, ptr %i.e, align 8, !tbaa !17  ; 8 uses
  %i.gv = load i64, ptr %i.k, align 8, !tbaa !13
  %i.gw = load i64, ptr %i.m, align 8, !tbaa !16
  %i.gx = mul nsw i64 %i.gw, %i.gv                ; 9 uses
  %i.gy = sdiv i64 %i.gx, 4
  %i.gz = shl nsw i64 %i.gy, 2                    ; 3 uses
  %i.ha = sdiv i64 %i.gx, 2
  %i.hb = shl nsw i64 %i.ha, 1                    ; 6 uses
  %.off.i.i.i.i47 = add i64 %i.gx, 1
  %.not.i.i.i.i48 = icmp ult i64 %.off.i.i.i.i47, 3
  br i1 %.not.i.i.i.i48, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit46
  %i.hc = load <2 x double>, ptr %i.gu, align 16, !tbaa !58
  %i.hd = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hc) ; 3 uses
  %i.he = icmp sgt i64 %i.gx, 3
  br i1 %i.he, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.hg = load <2 x double>, ptr %i.hf, align 16, !tbaa !58
  %i.hh = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hg) ; 2 uses
  %i.hi = icmp samesign ugt i64 %i.gx, 7
  br i1 %i.hi, label %.lr.ph.i.i.i.i60, label %._crit_edge.i.i.i.i57

._crit_edge.i.i.i.i57:                            ; preds = %.lr.ph.i.i.i.i60, %bb.p
  %.075.lcssa.i.i.i.i58 = phi <2 x double> [ %i.hh, %bb.p ], [ %i.hs, %.lr.ph.i.i.i.i60 ]
  %.072.lcssa.i.i.i.i59 = phi <2 x double> [ %i.hd, %bb.p ], [ %i.ho, %.lr.ph.i.i.i.i60 ]
  %i.hj = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %.075.lcssa.i.i.i.i58, <2 x double> %.072.lcssa.i.i.i.i59) ; 2 uses
  %i.hk = icmp sgt i64 %i.hb, %i.gz
  br i1 %i.hk, label %bb.q, label %bb.r

.lr.ph.i.i.i.i60:                                 ; preds = %bb.p, %.lr.ph.i.i.i.i60
  %.054.in79.i.i.i.i62 = phi i64 [ %.054.i.i.i.i65, %.lr.ph.i.i.i.i60 ], [ 4, %bb.p ] ; 2 uses
  %.07278.i.i.i.i63 = phi <2 x double> [ %i.ho, %.lr.ph.i.i.i.i60 ], [ %i.hd, %bb.p ]
  %.07577.i.i.i.i64 = phi <2 x double> [ %i.hs, %.lr.ph.i.i.i.i60 ], [ %i.hh, %bb.p ]
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.054.in79.i.i.i.i62 ; 2 uses
  %i.hm = load <2 x double>, ptr %i.hl, align 16, !tbaa !58
  %i.hn = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hm)
  %i.ho = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hn, <2 x double> %.07278.i.i.i.i63) ; 2 uses
  %i.hp = getelementptr i8, ptr %i.hl, i64 16
  %i.hq = load <2 x double>, ptr %i.hp, align 16, !tbaa !58
  %i.hr = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hq)
  %i.hs = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hr, <2 x double> %.07577.i.i.i.i64) ; 2 uses
  %.054.i.i.i.i65 = add nuw nsw i64 %.054.in79.i.i.i.i62, 4 ; 2 uses
  %i.ht = icmp slt i64 %.054.i.i.i.i65, %i.gz
  br i1 %i.ht, label %.lr.ph.i.i.i.i60, label %._crit_edge.i.i.i.i57, !llvm.loop !224

bb.q:                                             ; preds = %._crit_edge.i.i.i.i57
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gz
  %i.hv = load <2 x double>, ptr %i.hu, align 16, !tbaa !58
  %i.hw = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hv)
  %i.hx = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hw, <2 x double> %i.hj)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i57, %bb.o
  %.274.i.i.i.i49 = phi <2 x double> [ %i.hd, %bb.o ], [ %i.hx, %bb.q ], [ %i.hj, %._crit_edge.i.i.i.i57 ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i50 = extractelement <2 x double> %.274.i.i.i.i49, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i51 = extractelement <2 x double> %.274.i.i.i.i49, i64 1 ; 2 uses
  %i.hy = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i50, %.sroa.0.8.vec.extract.i.i.i.i.i.i51
  %i.hz = select i1 %i.hy, double %.sroa.0.8.vec.extract.i.i.i.i.i.i51, double %.sroa.0.0.vec.extract.i.i.i.i.i.i50 ; 4 uses
  %i.ia = icmp slt i64 %i.hb, %i.gx
  br i1 %i.ia, label %.lr.ph85.i.i.i.i53.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit66

.lr.ph85.i.i.i.i53.preheader:                     ; preds = %bb.r
  %.neg371 = or disjoint i64 %i.hb, 1
  %xtraiter352.a = and i64 %i.gx, 1
  %lcmp.mod353.not.a = icmp eq i64 %xtraiter352.a, 0
  br i1 %lcmp.mod353.not.a, label %.lr.ph85.i.i.i.i53.prol.loopexit, label %.lr.ph85.i.i.i.i53.prol

.lr.ph85.i.i.i.i53.prol:                          ; preds = %.lr.ph85.i.i.i.i53.preheader
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.hb
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !19
  %i.id = call noundef double @llvm.fabs.f64(double %i.ic) ; 2 uses
  %i.ie = fcmp olt double %i.hz, %i.id
  %i.if = select i1 %i.ie, double %i.id, double %i.hz ; 2 uses
  %i.ig = or disjoint i64 %i.hb, 1
  br label %.lr.ph85.i.i.i.i53.prol.loopexit

.lr.ph85.i.i.i.i53.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i53.prol, %.lr.ph85.i.i.i.i53.preheader
  %.lcssa336.unr = phi double [ poison, %.lr.ph85.i.i.i.i53.preheader ], [ %i.if, %.lr.ph85.i.i.i.i53.prol ]
  %.05283.i.i.i.i54.unr = phi i64 [ %i.hb, %.lr.ph85.i.i.i.i53.preheader ], [ %i.ig, %.lr.ph85.i.i.i.i53.prol ]
  %.182.i.i.i.i55.unr = phi double [ %i.hz, %.lr.ph85.i.i.i.i53.preheader ], [ %i.if, %.lr.ph85.i.i.i.i53.prol ]
  %i.ih = icmp eq i64 %i.gx, %.neg371
  br i1 %i.ih, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit66, label %.lr.ph85.i.i.i.i53

.lr.ph85.i.i.i.i53:                               ; preds = %.lr.ph85.i.i.i.i53.prol.loopexit, %.lr.ph85.i.i.i.i53
  %.05283.i.i.i.i54 = phi i64 [ %i.it, %.lr.ph85.i.i.i.i53 ], [ %.05283.i.i.i.i54.unr, %.lr.ph85.i.i.i.i53.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i55 = phi double [ %i.is, %.lr.ph85.i.i.i.i53 ], [ %.182.i.i.i.i55.unr, %.lr.ph85.i.i.i.i53.prol.loopexit ] ; 2 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %.05283.i.i.i.i54
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !19
  %i.ik = call noundef double @llvm.fabs.f64(double %i.ij) ; 2 uses
  %i.il = fcmp olt double %.182.i.i.i.i55, %i.ik
  %i.im = select i1 %i.il, double %i.ik, double %.182.i.i.i.i55 ; 2 uses
  %i.in = getelementptr [8 x i8], ptr %i.gu, i64 %.05283.i.i.i.i54
  %i.io = getelementptr i8, ptr %i.in, i64 8
  %i.ip = load double, ptr %i.io, align 8, !tbaa !19
  %i.iq = call noundef double @llvm.fabs.f64(double %i.ip) ; 2 uses
  %i.ir = fcmp olt double %i.im, %i.iq
  %i.is = select i1 %i.ir, double %i.iq, double %i.im ; 2 uses
  %i.it = add nsw i64 %.05283.i.i.i.i54, 2        ; 2 uses
  %exitcond.not.i.i.i.i56.1 = icmp eq i64 %i.it, %i.gx
  br i1 %exitcond.not.i.i.i.i56.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit66, label %.lr.ph85.i.i.i.i53, !llvm.loop !225

bb.s:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit46
  %i.iu = load double, ptr %i.gu, align 8, !tbaa !19
  %i.iv = call noundef double @llvm.fabs.f64(double %i.iu)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit66

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit66: ; preds = %.lr.ph85.i.i.i.i53.prol.loopexit, %.lr.ph85.i.i.i.i53, %bb.r, %bb.s
  %.3.i.i.i.i52 = phi double [ %i.hz, %bb.r ], [ %i.iv, %bb.s ], [ %.lcssa336.unr, %.lr.ph85.i.i.i.i53.prol.loopexit ], [ %i.is, %.lr.ph85.i.i.i.i53 ] ; 2 uses
  %i.iw = fcmp olt double %.3.i.i.i.i32, %.3.i.i.i.i52
  %.sroa.speculated170 = select i1 %i.iw, double %.3.i.i.i.i52, double %.3.i.i.i.i32
  store double %.sroa.speculated170, ptr %3, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ix, ptr %9, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_S3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NSt9enable_ifIXsr25evaluator_assume_aliasingISA_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.a, ptr %10, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ja, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIS3_EES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NSt9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.jf = load ptr, ptr %i.iz, align 8, !tbaa !17 ; 6 uses
  %i.jg = ptrtoaddr ptr %i.jf to i64
  %i.jh = load ptr, ptr %i.jd, align 8, !tbaa !17 ; 6 uses
  %i.ji = ptrtoaddr ptr %i.jh to i64
  %i.jj = load ptr, ptr %i.jc, align 8, !tbaa !17 ; 6 uses
  %i.jk = ptrtoaddr ptr %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !13 ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !16 ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !13
  %.not.i.i = icmp eq i64 %i.jq, %i.jm
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.js = load i64, ptr %i.jr, align 8
  %.not8.i.i = icmp eq i64 %i.js, %i.jo
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not8.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit66
  %i.jt = icmp eq i64 %i.jo, 0
  br i1 %i.jt, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ju = sdiv i64 9223372036854775807, %i.jo
  %i.jv = icmp sgt i64 %i.jm, %i.ju
  br i1 %i.jv, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.u
  %i.jw = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jw, align 8, !tbaa !15
  call void @__cxa_throw(ptr nonnull %i.jw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.u, %bb.t
  %i.jx = mul nsw i64 %i.jo, %i.jm
  call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.je, i64 noundef %i.jx, i64 noundef %i.jm, i64 noundef %i.jo)
  %.pre.i = load i64, ptr %i.jp, align 8, !tbaa !13
  %.pre21.i = load i64, ptr %i.jr, align 8, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit66
  %i.jy = phi i64 [ %.pre21.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %i.jo, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit66 ]
  %i.jz = phi i64 [ %.pre.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %i.jm, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit66 ]
  %i.ka = load ptr, ptr %i.je, align 8, !tbaa !17 ; 6 uses
  %i.kb = ptrtoaddr ptr %i.ka to i64              ; 3 uses
  %i.kc = mul nsw i64 %i.jz, %i.jy                ; 7 uses
  %i.kd = sdiv i64 %i.kc, 2
  %i.ke = shl nsw i64 %i.kd, 1                    ; 7 uses
  %i.kf = icmp sgt i64 %i.kc, 1
  br i1 %i.kf, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.v
  %i.kg = icmp slt i64 %i.ke, %i.kc
  br i1 %i.kg, label %.lr.ph.i.i.i.preheader, label %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IS6_KS3_S7_EES7_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.kh = sub i64 %i.kc, %i.ke                    ; 3 uses
  %min.iters.check309 = icmp ult i64 %i.kh, 12
  br i1 %min.iters.check309, label %.lr.ph.i.i.i.preheader335, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ki = sub i64 %i.jg, %i.kb
  %diff.check303 = icmp ugt i64 %i.ki, -32
  %i.kj = sub i64 %i.ji, %i.kb
  %diff.check304 = icmp ugt i64 %i.kj, -32
  %conflict.rdx305 = or i1 %diff.check303, %diff.check304
  %i.kk = sub i64 %i.jk, %i.kb
  %diff.check306 = icmp ugt i64 %i.kk, -32
  %conflict.rdx307 = or i1 %conflict.rdx305, %diff.check306
  br i1 %conflict.rdx307, label %.lr.ph.i.i.i.preheader335, label %vector.ph310

vector.ph310:                                     ; preds = %vector.memcheck302
  %n.vec311 = and i64 %i.kh, -4                   ; 3 uses
  %i.kl = add i64 %i.ke, %n.vec311
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph310
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next320, %vector.body312 ] ; 2 uses
  %i.km = add i64 %i.ke, %index313                ; 4 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.km ; 2 uses
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.km ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %wide.load314 = load <2 x double>, ptr %i.ko, align 8, !tbaa !19
  %wide.load315 = load <2 x double>, ptr %i.kq, align 8, !tbaa !19
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %wide.load316 = load <2 x double>, ptr %i.kp, align 8, !tbaa !19
  %wide.load317 = load <2 x double>, ptr %i.kr, align 8, !tbaa !19
  %i.ks = fadd <2 x double> %wide.load314, %wide.load316
  %i.kt = fadd <2 x double> %wide.load315, %wide.load317
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %i.km ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %wide.load318 = load <2 x double>, ptr %i.ku, align 8, !tbaa !19
  %wide.load319 = load <2 x double>, ptr %i.kv, align 8, !tbaa !19
  %i.kw = fadd <2 x double> %i.ks, %wide.load318
  %i.kx = fadd <2 x double> %i.kt, %wide.load319
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store <2 x double> %i.kw, ptr %i.kn, align 8, !tbaa !19
  store <2 x double> %i.kx, ptr %i.ky, align 8, !tbaa !19
  %index.next320 = add nuw i64 %index313, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next320, %n.vec311
  br i1 %i.kz, label %middle.block321, label %vector.body312, !llvm.loop !226

middle.block321:                                  ; preds = %vector.body312
  %cmp.n322 = icmp eq i64 %i.kh, %n.vec311
  br i1 %cmp.n322, label %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IS6_KS3_S7_EES7_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.preheader335

.lr.ph.i.i.i.preheader335:                        ; preds = %vector.memcheck302, %.lr.ph.i.i.i.preheader, %middle.block321
  %.05.i.i.i.ph = phi i64 [ %i.ke, %vector.memcheck302 ], [ %i.ke, %.lr.ph.i.i.i.preheader ], [ %i.kl, %middle.block321 ] ; 8 uses
  %i.la = sub i64 %i.kc, %.05.i.i.i.ph
  %.neg372 = add i64 %.05.i.i.i.ph, 1
  %xtraiter355.a = and i64 %i.la, 1
  %lcmp.mod356.not.a = icmp eq i64 %xtraiter355.a, 0
  br i1 %lcmp.mod356.not.a, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader335
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %.05.i.i.i.ph
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %.05.i.i.i.ph
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %.05.i.i.i.ph
  %i.le = load double, ptr %i.lc, align 8, !tbaa !19
  %i.lf = load double, ptr %i.ld, align 8, !tbaa !19
  %i.lg = fadd double %i.le, %i.lf
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %.05.i.i.i.ph
  %i.li = load double, ptr %i.lh, align 8, !tbaa !19
  %i.lj = fadd double %i.lg, %i.li
  store double %i.lj, ptr %i.lb, align 8, !tbaa !19
  %i.lk = add nsw i64 %.05.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader335
  %.05.i.i.i.unr = phi i64 [ %.05.i.i.i.ph, %.lr.ph.i.i.i.preheader335 ], [ %i.lk, %.lr.ph.i.i.i.prol ]
  %i.ll = icmp eq i64 %i.kc, %.neg372
  br i1 %i.ll, label %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IS6_KS3_S7_EES7_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.mf, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %.05.i.i.i
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %.05.i.i.i
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %.05.i.i.i
  %i.lp = load double, ptr %i.ln, align 8, !tbaa !19
  %i.lq = load double, ptr %i.lo, align 8, !tbaa !19
  %i.lr = fadd double %i.lp, %i.lq
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %.05.i.i.i
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !19
  %i.lu = fadd double %i.lr, %i.lt
  store double %i.lu, ptr %i.lm, align 8, !tbaa !19
  %i.lv = add nsw i64 %.05.i.i.i, 1               ; 4 uses
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.lv
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.lv
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.lv
  %i.lz = load double, ptr %i.lx, align 8, !tbaa !19
  %i.ma = load double, ptr %i.ly, align 8, !tbaa !19
  %i.mb = fadd double %i.lz, %i.ma
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %i.lv
  %i.md = load double, ptr %i.mc, align 8, !tbaa !19
  %i.me = fadd double %i.mb, %i.md
  store double %i.me, ptr %i.lw, align 8, !tbaa !19
  %i.mf = add nsw i64 %.05.i.i.i, 2               ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.mf, %i.kc
  br i1 %exitcond.not.i.i.i.1, label %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IS6_KS3_S7_EES7_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i, !llvm.loop !227

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %i.mp, %.lr.ph.i.i ], [ 0, %bb.v ] ; 5 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.011.i.i
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.011.i.i
  %i.mi = load <2 x double>, ptr %i.mh, align 16, !tbaa !58
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %.011.i.i
  %i.mk = load <2 x double>, ptr %i.mj, align 16, !tbaa !58
  %i.ml = fadd <2 x double> %i.mi, %i.mk
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %.011.i.i
  %i.mn = load <2 x double>, ptr %i.mm, align 16, !tbaa !58
  %i.mo = fadd <2 x double> %i.ml, %i.mn
  store <2 x double> %i.mo, ptr %i.mg, align 16, !tbaa !58
  %i.mp = add nuw nsw i64 %.011.i.i, 2            ; 2 uses
  %i.mq = icmp slt i64 %i.mp, %i.ke
  br i1 %i.mq, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !228

_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IS6_KS3_S7_EES7_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block321, %._crit_edge.i.i
  %i.mr = load ptr, ptr %i.je, align 8, !tbaa !17 ; 8 uses
  %i.ms = load i64, ptr %i.jp, align 8, !tbaa !13
  %i.mt = load i64, ptr %i.jr, align 8, !tbaa !16
  %i.mu = mul nsw i64 %i.mt, %i.ms                ; 9 uses
  %i.mv = sdiv i64 %i.mu, 4
  %i.mw = shl nsw i64 %i.mv, 2                    ; 3 uses
  %i.mx = sdiv i64 %i.mu, 2
  %i.my = shl nsw i64 %i.mx, 1                    ; 6 uses
  %.off.i.i.i.i71 = add i64 %i.mu, 1
  %.not.i.i.i.i72 = icmp ult i64 %.off.i.i.i.i71, 3
  br i1 %.not.i.i.i.i72, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IS6_KS3_S7_EES7_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit
  %i.mz = load <2 x double>, ptr %i.mr, align 16, !tbaa !58
  %i.na = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.mz) ; 3 uses
  %i.nb = icmp sgt i64 %i.mu, 3
  br i1 %i.nb, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.nd = load <2 x double>, ptr %i.nc, align 16, !tbaa !58
  %i.ne = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nd) ; 2 uses
  %i.nf = icmp samesign ugt i64 %i.mu, 7
  br i1 %i.nf, label %.lr.ph.i.i.i.i84, label %._crit_edge.i.i.i.i81

._crit_edge.i.i.i.i81:                            ; preds = %.lr.ph.i.i.i.i84, %bb.x
  %.075.lcssa.i.i.i.i82 = phi <2 x double> [ %i.ne, %bb.x ], [ %i.np, %.lr.ph.i.i.i.i84 ]
  %.072.lcssa.i.i.i.i83 = phi <2 x double> [ %i.na, %bb.x ], [ %i.nl, %.lr.ph.i.i.i.i84 ]
  %i.ng = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %.075.lcssa.i.i.i.i82, <2 x double> %.072.lcssa.i.i.i.i83) ; 2 uses
  %i.nh = icmp sgt i64 %i.my, %i.mw
  br i1 %i.nh, label %bb.y, label %bb.z

.lr.ph.i.i.i.i84:                                 ; preds = %bb.x, %.lr.ph.i.i.i.i84
  %.054.in79.i.i.i.i86 = phi i64 [ %.054.i.i.i.i89, %.lr.ph.i.i.i.i84 ], [ 4, %bb.x ] ; 2 uses
  %.07278.i.i.i.i87 = phi <2 x double> [ %i.nl, %.lr.ph.i.i.i.i84 ], [ %i.na, %bb.x ]
  %.07577.i.i.i.i88 = phi <2 x double> [ %i.np, %.lr.ph.i.i.i.i84 ], [ %i.ne, %bb.x ]
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %.054.in79.i.i.i.i86 ; 2 uses
  %i.nj = load <2 x double>, ptr %i.ni, align 16, !tbaa !58
  %i.nk = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nj)
  %i.nl = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.nk, <2 x double> %.07278.i.i.i.i87) ; 2 uses
  %i.nm = getelementptr i8, ptr %i.ni, i64 16
  %i.nn = load <2 x double>, ptr %i.nm, align 16, !tbaa !58
  %i.no = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nn)
  %i.np = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.no, <2 x double> %.07577.i.i.i.i88) ; 2 uses
  %.054.i.i.i.i89 = add nuw nsw i64 %.054.in79.i.i.i.i86, 4 ; 2 uses
  %i.nq = icmp slt i64 %.054.i.i.i.i89, %i.mw
  br i1 %i.nq, label %.lr.ph.i.i.i.i84, label %._crit_edge.i.i.i.i81, !llvm.loop !224

bb.y:                                             ; preds = %._crit_edge.i.i.i.i81
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mw
  %i.ns = load <2 x double>, ptr %i.nr, align 16, !tbaa !58
  %i.nt = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ns)
  %i.nu = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.nt, <2 x double> %i.ng)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i81, %bb.w
  %.274.i.i.i.i73 = phi <2 x double> [ %i.na, %bb.w ], [ %i.nu, %bb.y ], [ %i.ng, %._crit_edge.i.i.i.i81 ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i74 = extractelement <2 x double> %.274.i.i.i.i73, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i75 = extractelement <2 x double> %.274.i.i.i.i73, i64 1 ; 2 uses
  %i.nv = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i74, %.sroa.0.8.vec.extract.i.i.i.i.i.i75
  %i.nw = select i1 %i.nv, double %.sroa.0.8.vec.extract.i.i.i.i.i.i75, double %.sroa.0.0.vec.extract.i.i.i.i.i.i74 ; 4 uses
  %i.nx = icmp slt i64 %i.my, %i.mu
  br i1 %i.nx, label %.lr.ph85.i.i.i.i77.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit90

.lr.ph85.i.i.i.i77.preheader:                     ; preds = %bb.z
  %.neg373 = or disjoint i64 %i.my, 1
  %xtraiter358.a = and i64 %i.mu, 1
  %lcmp.mod359.not.a = icmp eq i64 %xtraiter358.a, 0
  br i1 %lcmp.mod359.not.a, label %.lr.ph85.i.i.i.i77.prol.loopexit, label %.lr.ph85.i.i.i.i77.prol

.lr.ph85.i.i.i.i77.prol:                          ; preds = %.lr.ph85.i.i.i.i77.preheader
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.mr, i64 %i.my
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !19
  %i.oa = call noundef double @llvm.fabs.f64(double %i.nz) ; 2 uses
  %i.ob = fcmp olt double %i.nw, %i.oa
  %i.oc = select i1 %i.ob, double %i.oa, double %i.nw ; 2 uses
  %i.od = or disjoint i64 %i.my, 1
  br label %.lr.ph85.i.i.i.i77.prol.loopexit

.lr.ph85.i.i.i.i77.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i77.prol, %.lr.ph85.i.i.i.i77.preheader
  %.lcssa332.unr = phi double [ poison, %.lr.ph85.i.i.i.i77.preheader ], [ %i.oc, %.lr.ph85.i.i.i.i77.prol ]
  %.05283.i.i.i.i78.unr = phi i64 [ %i.my, %.lr.ph85.i.i.i.i77.preheader ], [ %i.od, %.lr.ph85.i.i.i.i77.prol ]
  %.182.i.i.i.i79.unr = phi double [ %i.nw, %.lr.ph85.i.i.i.i77.preheader ], [ %i.oc, %.lr.ph85.i.i.i.i77.prol ]
  %i.oe = icmp eq i64 %i.mu, %.neg373
  br i1 %i.oe, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit90, label %.lr.ph85.i.i.i.i77

.lr.ph85.i.i.i.i77:                               ; preds = %.lr.ph85.i.i.i.i77.prol.loopexit, %.lr.ph85.i.i.i.i77
  %.05283.i.i.i.i78 = phi i64 [ %i.oq, %.lr.ph85.i.i.i.i77 ], [ %.05283.i.i.i.i78.unr, %.lr.ph85.i.i.i.i77.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i79 = phi double [ %i.op, %.lr.ph85.i.i.i.i77 ], [ %.182.i.i.i.i79.unr, %.lr.ph85.i.i.i.i77.prol.loopexit ] ; 2 uses
  %i.of = getelementptr inbounds [8 x i8], ptr %i.mr, i64 %.05283.i.i.i.i78
  %i.og = load double, ptr %i.of, align 8, !tbaa !19
  %i.oh = call noundef double @llvm.fabs.f64(double %i.og) ; 2 uses
  %i.oi = fcmp olt double %.182.i.i.i.i79, %i.oh
  %i.oj = select i1 %i.oi, double %i.oh, double %.182.i.i.i.i79 ; 2 uses
  %i.ok = getelementptr [8 x i8], ptr %i.mr, i64 %.05283.i.i.i.i78
  %i.ol = getelementptr i8, ptr %i.ok, i64 8
  %i.om = load double, ptr %i.ol, align 8, !tbaa !19
  %i.on = call noundef double @llvm.fabs.f64(double %i.om) ; 2 uses
  %i.oo = fcmp olt double %i.oj, %i.on
  %i.op = select i1 %i.oo, double %i.on, double %i.oj ; 2 uses
  %i.oq = add nsw i64 %.05283.i.i.i.i78, 2        ; 2 uses
  %exitcond.not.i.i.i.i80.1 = icmp eq i64 %i.oq, %i.mu
  br i1 %exitcond.not.i.i.i.i80.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit90, label %.lr.ph85.i.i.i.i77, !llvm.loop !225

bb.aa:                                            ; preds = %_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IS6_KS3_S7_EES7_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit
  %i.or = load double, ptr %i.mr, align 8, !tbaa !19
  %i.os = call noundef double @llvm.fabs.f64(double %i.or)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit90

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit90: ; preds = %.lr.ph85.i.i.i.i77.prol.loopexit, %.lr.ph85.i.i.i.i77, %bb.z, %bb.aa
  %.3.i.i.i.i76 = phi double [ %i.nw, %bb.z ], [ %i.os, %bb.aa ], [ %.lcssa332.unr, %.lr.ph85.i.i.i.i77.prol.loopexit ], [ %i.op, %.lr.ph85.i.i.i.i77 ]
  store double %.3.i.i.i.i76, ptr %2, align 8, !tbaa !19
  %i.ot = load ptr, ptr %i.iz, align 8, !tbaa !17 ; 8 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !13
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !16
  %i.oy = mul nsw i64 %i.ox, %i.ov                ; 9 uses
  %i.oz = sdiv i64 %i.oy, 4
  %i.pa = shl nsw i64 %i.oz, 2                    ; 3 uses
  %i.pb = sdiv i64 %i.oy, 2
  %i.pc = shl nsw i64 %i.pb, 1                    ; 6 uses
  %.off.i.i.i.i91 = add i64 %i.oy, 1
  %.not.i.i.i.i92 = icmp ult i64 %.off.i.i.i.i91, 3
  br i1 %.not.i.i.i.i92, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit90
  %i.pd = load <2 x double>, ptr %i.ot, align 16, !tbaa !58
  %i.pe = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pd) ; 3 uses
  %i.pf = icmp sgt i64 %i.oy, 3
  br i1 %i.pf, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ph = load <2 x double>, ptr %i.pg, align 16, !tbaa !58
  %i.pi = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ph) ; 2 uses
  %i.pj = icmp samesign ugt i64 %i.oy, 7
  br i1 %i.pj, label %.lr.ph.i.i.i.i104, label %._crit_edge.i.i.i.i101

._crit_edge.i.i.i.i101:                           ; preds = %.lr.ph.i.i.i.i104, %bb.ac
  %.075.lcssa.i.i.i.i102 = phi <2 x double> [ %i.pi, %bb.ac ], [ %i.pt, %.lr.ph.i.i.i.i104 ]
  %.072.lcssa.i.i.i.i103 = phi <2 x double> [ %i.pe, %bb.ac ], [ %i.pp, %.lr.ph.i.i.i.i104 ]
  %i.pk = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %.075.lcssa.i.i.i.i102, <2 x double> %.072.lcssa.i.i.i.i103) ; 2 uses
  %i.pl = icmp sgt i64 %i.pc, %i.pa
  br i1 %i.pl, label %bb.ad, label %bb.ae

.lr.ph.i.i.i.i104:                                ; preds = %bb.ac, %.lr.ph.i.i.i.i104
  %.054.in79.i.i.i.i106 = phi i64 [ %.054.i.i.i.i109, %.lr.ph.i.i.i.i104 ], [ 4, %bb.ac ] ; 2 uses
  %.07278.i.i.i.i107 = phi <2 x double> [ %i.pp, %.lr.ph.i.i.i.i104 ], [ %i.pe, %bb.ac ]
  %.07577.i.i.i.i108 = phi <2 x double> [ %i.pt, %.lr.ph.i.i.i.i104 ], [ %i.pi, %bb.ac ]
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %.054.in79.i.i.i.i106 ; 2 uses
  %i.pn = load <2 x double>, ptr %i.pm, align 16, !tbaa !58
  %i.po = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pn)
  %i.pp = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.po, <2 x double> %.07278.i.i.i.i107) ; 2 uses
  %i.pq = getelementptr i8, ptr %i.pm, i64 16
  %i.pr = load <2 x double>, ptr %i.pq, align 16, !tbaa !58
  %i.ps = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pr)
  %i.pt = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ps, <2 x double> %.07577.i.i.i.i108) ; 2 uses
  %.054.i.i.i.i109 = add nuw nsw i64 %.054.in79.i.i.i.i106, 4 ; 2 uses
  %i.pu = icmp slt i64 %.054.i.i.i.i109, %i.pa
  br i1 %i.pu, label %.lr.ph.i.i.i.i104, label %._crit_edge.i.i.i.i101, !llvm.loop !224

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i101
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.pa
  %i.pw = load <2 x double>, ptr %i.pv, align 16, !tbaa !58
  %i.px = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pw)
  %i.py = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.px, <2 x double> %i.pk)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i.i101, %bb.ab
  %.274.i.i.i.i93 = phi <2 x double> [ %i.pe, %bb.ab ], [ %i.py, %bb.ad ], [ %i.pk, %._crit_edge.i.i.i.i101 ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i94 = extractelement <2 x double> %.274.i.i.i.i93, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i95 = extractelement <2 x double> %.274.i.i.i.i93, i64 1 ; 2 uses
  %i.pz = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i94, %.sroa.0.8.vec.extract.i.i.i.i.i.i95
  %i.qa = select i1 %i.pz, double %.sroa.0.8.vec.extract.i.i.i.i.i.i95, double %.sroa.0.0.vec.extract.i.i.i.i.i.i94 ; 4 uses
  %i.qb = icmp slt i64 %i.pc, %i.oy
  br i1 %i.qb, label %.lr.ph85.i.i.i.i97.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit110

.lr.ph85.i.i.i.i97.preheader:                     ; preds = %bb.ae
  %.neg374 = or disjoint i64 %i.pc, 1
  %xtraiter361.a = and i64 %i.oy, 1
  %lcmp.mod362.not.a = icmp eq i64 %xtraiter361.a, 0
  br i1 %lcmp.mod362.not.a, label %.lr.ph85.i.i.i.i97.prol.loopexit, label %.lr.ph85.i.i.i.i97.prol

.lr.ph85.i.i.i.i97.prol:                          ; preds = %.lr.ph85.i.i.i.i97.preheader
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %i.pc
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !19
  %i.qe = call noundef double @llvm.fabs.f64(double %i.qd) ; 2 uses
  %i.qf = fcmp olt double %i.qa, %i.qe
  %i.qg = select i1 %i.qf, double %i.qe, double %i.qa ; 2 uses
  %i.qh = or disjoint i64 %i.pc, 1
  br label %.lr.ph85.i.i.i.i97.prol.loopexit

.lr.ph85.i.i.i.i97.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i97.prol, %.lr.ph85.i.i.i.i97.preheader
  %.lcssa329.unr = phi double [ poison, %.lr.ph85.i.i.i.i97.preheader ], [ %i.qg, %.lr.ph85.i.i.i.i97.prol ]
  %.05283.i.i.i.i98.unr = phi i64 [ %i.pc, %.lr.ph85.i.i.i.i97.preheader ], [ %i.qh, %.lr.ph85.i.i.i.i97.prol ]
  %.182.i.i.i.i99.unr = phi double [ %i.qa, %.lr.ph85.i.i.i.i97.preheader ], [ %i.qg, %.lr.ph85.i.i.i.i97.prol ]
  %i.qi = icmp eq i64 %i.oy, %.neg374
  br i1 %i.qi, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit110, label %.lr.ph85.i.i.i.i97

.lr.ph85.i.i.i.i97:                               ; preds = %.lr.ph85.i.i.i.i97.prol.loopexit, %.lr.ph85.i.i.i.i97
  %.05283.i.i.i.i98 = phi i64 [ %i.qu, %.lr.ph85.i.i.i.i97 ], [ %.05283.i.i.i.i98.unr, %.lr.ph85.i.i.i.i97.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i99 = phi double [ %i.qt, %.lr.ph85.i.i.i.i97 ], [ %.182.i.i.i.i99.unr, %.lr.ph85.i.i.i.i97.prol.loopexit ] ; 2 uses
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %.05283.i.i.i.i98
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !19
  %i.ql = call noundef double @llvm.fabs.f64(double %i.qk) ; 2 uses
  %i.qm = fcmp olt double %.182.i.i.i.i99, %i.ql
  %i.qn = select i1 %i.qm, double %i.ql, double %.182.i.i.i.i99 ; 2 uses
  %i.qo = getelementptr [8 x i8], ptr %i.ot, i64 %.05283.i.i.i.i98
  %i.qp = getelementptr i8, ptr %i.qo, i64 8
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !19
  %i.qr = call noundef double @llvm.fabs.f64(double %i.qq) ; 2 uses
  %i.qs = fcmp olt double %i.qn, %i.qr
  %i.qt = select i1 %i.qs, double %i.qr, double %i.qn ; 2 uses
  %i.qu = add nsw i64 %.05283.i.i.i.i98, 2        ; 2 uses
  %exitcond.not.i.i.i.i100.1 = icmp eq i64 %i.qu, %i.oy
  br i1 %exitcond.not.i.i.i.i100.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit110, label %.lr.ph85.i.i.i.i97, !llvm.loop !225

bb.af:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit90
  %i.qv = load double, ptr %i.ot, align 8, !tbaa !19
  %i.qw = call noundef double @llvm.fabs.f64(double %i.qv)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit110

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit110: ; preds = %.lr.ph85.i.i.i.i97.prol.loopexit, %.lr.ph85.i.i.i.i97, %bb.ae, %bb.af
  %.3.i.i.i.i96 = phi double [ %i.qa, %bb.ae ], [ %i.qw, %bb.af ], [ %.lcssa329.unr, %.lr.ph85.i.i.i.i97.prol.loopexit ], [ %i.qt, %.lr.ph85.i.i.i.i97 ] ; 2 uses
  %i.qx = load ptr, ptr %i.jc, align 8, !tbaa !17 ; 8 uses
  %i.qy = load i64, ptr %i.jl, align 8, !tbaa !13
  %i.qz = load i64, ptr %i.jn, align 8, !tbaa !16
  %i.ra = mul nsw i64 %i.qz, %i.qy                ; 9 uses
  %i.rb = sdiv i64 %i.ra, 4
  %i.rc = shl nsw i64 %i.rb, 2                    ; 3 uses
  %i.rd = sdiv i64 %i.ra, 2
  %i.re = shl nsw i64 %i.rd, 1                    ; 6 uses
  %.off.i.i.i.i111 = add i64 %i.ra, 1
  %.not.i.i.i.i112 = icmp ult i64 %.off.i.i.i.i111, 3
  br i1 %.not.i.i.i.i112, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit110
  %i.rf = load <2 x double>, ptr %i.qx, align 16, !tbaa !58
  %i.rg = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.rf) ; 3 uses
  %i.rh = icmp sgt i64 %i.ra, 3
  br i1 %i.rh, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.rj = load <2 x double>, ptr %i.ri, align 16, !tbaa !58
  %i.rk = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.rj) ; 2 uses
  %i.rl = icmp samesign ugt i64 %i.ra, 7
  br i1 %i.rl, label %.lr.ph.i.i.i.i124, label %._crit_edge.i.i.i.i121

._crit_edge.i.i.i.i121:                           ; preds = %.lr.ph.i.i.i.i124, %bb.ah
  %.075.lcssa.i.i.i.i122 = phi <2 x double> [ %i.rk, %bb.ah ], [ %i.rv, %.lr.ph.i.i.i.i124 ]
  %.072.lcssa.i.i.i.i123 = phi <2 x double> [ %i.rg, %bb.ah ], [ %i.rr, %.lr.ph.i.i.i.i124 ]
  %i.rm = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %.075.lcssa.i.i.i.i122, <2 x double> %.072.lcssa.i.i.i.i123) ; 2 uses
  %i.rn = icmp sgt i64 %i.re, %i.rc
  br i1 %i.rn, label %bb.ai, label %bb.aj

.lr.ph.i.i.i.i124:                                ; preds = %bb.ah, %.lr.ph.i.i.i.i124
  %.054.in79.i.i.i.i126 = phi i64 [ %.054.i.i.i.i129, %.lr.ph.i.i.i.i124 ], [ 4, %bb.ah ] ; 2 uses
  %.07278.i.i.i.i127 = phi <2 x double> [ %i.rr, %.lr.ph.i.i.i.i124 ], [ %i.rg, %bb.ah ]
  %.07577.i.i.i.i128 = phi <2 x double> [ %i.rv, %.lr.ph.i.i.i.i124 ], [ %i.rk, %bb.ah ]
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %.054.in79.i.i.i.i126 ; 2 uses
  %i.rp = load <2 x double>, ptr %i.ro, align 16, !tbaa !58
  %i.rq = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.rp)
  %i.rr = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.rq, <2 x double> %.07278.i.i.i.i127) ; 2 uses
  %i.rs = getelementptr i8, ptr %i.ro, i64 16
  %i.rt = load <2 x double>, ptr %i.rs, align 16, !tbaa !58
  %i.ru = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.rt)
  %i.rv = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ru, <2 x double> %.07577.i.i.i.i128) ; 2 uses
  %.054.i.i.i.i129 = add nuw nsw i64 %.054.in79.i.i.i.i126, 4 ; 2 uses
  %i.rw = icmp slt i64 %.054.i.i.i.i129, %i.rc
  br i1 %i.rw, label %.lr.ph.i.i.i.i124, label %._crit_edge.i.i.i.i121, !llvm.loop !224

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i121
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %i.rc
  %i.ry = load <2 x double>, ptr %i.rx, align 16, !tbaa !58
  %i.rz = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ry)
  %i.sa = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.rz, <2 x double> %i.rm)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i.i.i.i121, %bb.ag
  %.274.i.i.i.i113 = phi <2 x double> [ %i.rg, %bb.ag ], [ %i.sa, %bb.ai ], [ %i.rm, %._crit_edge.i.i.i.i121 ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i114 = extractelement <2 x double> %.274.i.i.i.i113, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i115 = extractelement <2 x double> %.274.i.i.i.i113, i64 1 ; 2 uses
  %i.sb = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i114, %.sroa.0.8.vec.extract.i.i.i.i.i.i115
  %i.sc = select i1 %i.sb, double %.sroa.0.8.vec.extract.i.i.i.i.i.i115, double %.sroa.0.0.vec.extract.i.i.i.i.i.i114 ; 4 uses
  %i.sd = icmp slt i64 %i.re, %i.ra
  br i1 %i.sd, label %.lr.ph85.i.i.i.i117.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit130

.lr.ph85.i.i.i.i117.preheader:                    ; preds = %bb.aj
  %.neg375 = or disjoint i64 %i.re, 1
  %xtraiter364 = and i64 %i.ra, 1
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %.lr.ph85.i.i.i.i117.prol.loopexit, label %.lr.ph85.i.i.i.i117.prol

.lr.ph85.i.i.i.i117.prol:                         ; preds = %.lr.ph85.i.i.i.i117.preheader
  %i.se = getelementptr inbounds [8 x i8], ptr %i.qx, i64 %i.re
  %i.sf = load double, ptr %i.se, align 8, !tbaa !19
  %i.sg = call noundef double @llvm.fabs.f64(double %i.sf) ; 2 uses
  %i.sh = fcmp olt double %i.sc, %i.sg
  %i.si = select i1 %i.sh, double %i.sg, double %i.sc ; 2 uses
  %i.sj = or disjoint i64 %i.re, 1
  br label %.lr.ph85.i.i.i.i117.prol.loopexit

.lr.ph85.i.i.i.i117.prol.loopexit:                ; preds = %.lr.ph85.i.i.i.i117.prol, %.lr.ph85.i.i.i.i117.preheader
  %.lcssa326.unr = phi double [ poison, %.lr.ph85.i.i.i.i117.preheader ], [ %i.si, %.lr.ph85.i.i.i.i117.prol ]
  %.05283.i.i.i.i118.unr = phi i64 [ %i.re, %.lr.ph85.i.i.i.i117.preheader ], [ %i.sj, %.lr.ph85.i.i.i.i117.prol ]
  %.182.i.i.i.i119.unr = phi double [ %i.sc, %.lr.ph85.i.i.i.i117.preheader ], [ %i.si, %.lr.ph85.i.i.i.i117.prol ]
  %i.sk = icmp eq i64 %i.ra, %.neg375
  br i1 %i.sk, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit130, label %.lr.ph85.i.i.i.i117

.lr.ph85.i.i.i.i117:                              ; preds = %.lr.ph85.i.i.i.i117.prol.loopexit, %.lr.ph85.i.i.i.i117
  %.05283.i.i.i.i118 = phi i64 [ %i.sw, %.lr.ph85.i.i.i.i117 ], [ %.05283.i.i.i.i118.unr, %.lr.ph85.i.i.i.i117.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i119 = phi double [ %i.sv, %.lr.ph85.i.i.i.i117 ], [ %.182.i.i.i.i119.unr, %.lr.ph85.i.i.i.i117.prol.loopexit ] ; 2 uses
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.qx, i64 %.05283.i.i.i.i118
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !19
  %i.sn = call noundef double @llvm.fabs.f64(double %i.sm) ; 2 uses
  %i.so = fcmp olt double %.182.i.i.i.i119, %i.sn
  %i.sp = select i1 %i.so, double %i.sn, double %.182.i.i.i.i119 ; 2 uses
  %i.sq = getelementptr [8 x i8], ptr %i.qx, i64 %.05283.i.i.i.i118
  %i.sr = getelementptr i8, ptr %i.sq, i64 8
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !19
  %i.st = call noundef double @llvm.fabs.f64(double %i.ss) ; 2 uses
  %i.su = fcmp olt double %i.sp, %i.st
  %i.sv = select i1 %i.su, double %i.st, double %i.sp ; 2 uses
  %i.sw = add nsw i64 %.05283.i.i.i.i118, 2       ; 2 uses
  %exitcond.not.i.i.i.i120.1 = icmp eq i64 %i.sw, %i.ra
  br i1 %exitcond.not.i.i.i.i120.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit130, label %.lr.ph85.i.i.i.i117, !llvm.loop !225

bb.ak:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit110
  %i.sx = load double, ptr %i.qx, align 8, !tbaa !19
  %i.sy = call noundef double @llvm.fabs.f64(double %i.sx)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit130

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit130: ; preds = %.lr.ph85.i.i.i.i117.prol.loopexit, %.lr.ph85.i.i.i.i117, %bb.aj, %bb.ak
  %.3.i.i.i.i116 = phi double [ %i.sc, %bb.aj ], [ %i.sy, %bb.ak ], [ %.lcssa326.unr, %.lr.ph85.i.i.i.i117.prol.loopexit ], [ %i.sv, %.lr.ph85.i.i.i.i117 ] ; 2 uses
  %i.sz = load ptr, ptr %i.jd, align 8, !tbaa !17 ; 8 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !13
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !16
  %i.te = mul nsw i64 %i.td, %i.tb                ; 9 uses
  %i.tf = sdiv i64 %i.te, 4
  %i.tg = shl nsw i64 %i.tf, 2                    ; 3 uses
  %i.th = sdiv i64 %i.te, 2
  %i.ti = shl nsw i64 %i.th, 1                    ; 6 uses
  %.off.i.i.i.i132 = add i64 %i.te, 1
  %.not.i.i.i.i133 = icmp ult i64 %.off.i.i.i.i132, 3
  br i1 %.not.i.i.i.i133, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit130
  %i.tj = load <2 x double>, ptr %i.sz, align 16, !tbaa !58
  %i.tk = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.tj) ; 3 uses
  %i.tl = icmp sgt i64 %i.te, 3
  br i1 %i.tl, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tn = load <2 x double>, ptr %i.tm, align 16, !tbaa !58
  %i.to = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.tn) ; 2 uses
  %i.tp = icmp samesign ugt i64 %i.te, 7
  br i1 %i.tp, label %.lr.ph.i.i.i.i145, label %._crit_edge.i.i.i.i142

._crit_edge.i.i.i.i142:                           ; preds = %.lr.ph.i.i.i.i145, %bb.am
  %.075.lcssa.i.i.i.i143 = phi <2 x double> [ %i.to, %bb.am ], [ %i.tz, %.lr.ph.i.i.i.i145 ]
  %.072.lcssa.i.i.i.i144 = phi <2 x double> [ %i.tk, %bb.am ], [ %i.tv, %.lr.ph.i.i.i.i145 ]
  %i.tq = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %.075.lcssa.i.i.i.i143, <2 x double> %.072.lcssa.i.i.i.i144) ; 2 uses
  %i.tr = icmp sgt i64 %i.ti, %i.tg
  br i1 %i.tr, label %bb.an, label %bb.ao

.lr.ph.i.i.i.i145:                                ; preds = %bb.am, %.lr.ph.i.i.i.i145
  %.054.in79.i.i.i.i147 = phi i64 [ %.054.i.i.i.i150, %.lr.ph.i.i.i.i145 ], [ 4, %bb.am ] ; 2 uses
  %.07278.i.i.i.i148 = phi <2 x double> [ %i.tv, %.lr.ph.i.i.i.i145 ], [ %i.tk, %bb.am ]
  %.07577.i.i.i.i149 = phi <2 x double> [ %i.tz, %.lr.ph.i.i.i.i145 ], [ %i.to, %bb.am ]
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %.054.in79.i.i.i.i147 ; 2 uses
  %i.tt = load <2 x double>, ptr %i.ts, align 16, !tbaa !58
  %i.tu = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.tt)
  %i.tv = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.tu, <2 x double> %.07278.i.i.i.i148) ; 2 uses
  %i.tw = getelementptr i8, ptr %i.ts, i64 16
  %i.tx = load <2 x double>, ptr %i.tw, align 16, !tbaa !58
  %i.ty = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.tx)
  %i.tz = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ty, <2 x double> %.07577.i.i.i.i149) ; 2 uses
  %.054.i.i.i.i150 = add nuw nsw i64 %.054.in79.i.i.i.i147, 4 ; 2 uses
  %i.ua = icmp slt i64 %.054.i.i.i.i150, %i.tg
  br i1 %i.ua, label %.lr.ph.i.i.i.i145, label %._crit_edge.i.i.i.i142, !llvm.loop !224

bb.an:                                            ; preds = %._crit_edge.i.i.i.i142
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %i.tg
  %i.uc = load <2 x double>, ptr %i.ub, align 16, !tbaa !58
  %i.ud = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.uc)
  %i.ue = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ud, <2 x double> %i.tq)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i.i.i.i142, %bb.al
  %.274.i.i.i.i134 = phi <2 x double> [ %i.tk, %bb.al ], [ %i.ue, %bb.an ], [ %i.tq, %._crit_edge.i.i.i.i142 ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i135 = extractelement <2 x double> %.274.i.i.i.i134, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i136 = extractelement <2 x double> %.274.i.i.i.i134, i64 1 ; 2 uses
  %i.uf = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i135, %.sroa.0.8.vec.extract.i.i.i.i.i.i136
  %i.ug = select i1 %i.uf, double %.sroa.0.8.vec.extract.i.i.i.i.i.i136, double %.sroa.0.0.vec.extract.i.i.i.i.i.i135 ; 4 uses
  %i.uh = icmp slt i64 %i.ti, %i.te
  br i1 %i.uh, label %.lr.ph85.i.i.i.i138.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit151

.lr.ph85.i.i.i.i138.preheader:                    ; preds = %bb.ao
  %.neg376 = or disjoint i64 %i.ti, 1
  %xtraiter367 = and i64 %i.te, 1
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %.lr.ph85.i.i.i.i138.prol.loopexit, label %.lr.ph85.i.i.i.i138.prol

.lr.ph85.i.i.i.i138.prol:                         ; preds = %.lr.ph85.i.i.i.i138.preheader
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %i.ti
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !19
  %i.uk = call noundef double @llvm.fabs.f64(double %i.uj) ; 2 uses
  %i.ul = fcmp olt double %i.ug, %i.uk
  %i.um = select i1 %i.ul, double %i.uk, double %i.ug ; 2 uses
  %i.un = or disjoint i64 %i.ti, 1
  br label %.lr.ph85.i.i.i.i138.prol.loopexit

.lr.ph85.i.i.i.i138.prol.loopexit:                ; preds = %.lr.ph85.i.i.i.i138.prol, %.lr.ph85.i.i.i.i138.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i138.preheader ], [ %i.um, %.lr.ph85.i.i.i.i138.prol ]
  %.05283.i.i.i.i139.unr = phi i64 [ %i.ti, %.lr.ph85.i.i.i.i138.preheader ], [ %i.un, %.lr.ph85.i.i.i.i138.prol ]
  %.182.i.i.i.i140.unr = phi double [ %i.ug, %.lr.ph85.i.i.i.i138.preheader ], [ %i.um, %.lr.ph85.i.i.i.i138.prol ]
  %i.uo = icmp eq i64 %i.te, %.neg376
  br i1 %i.uo, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit151, label %.lr.ph85.i.i.i.i138

.lr.ph85.i.i.i.i138:                              ; preds = %.lr.ph85.i.i.i.i138.prol.loopexit, %.lr.ph85.i.i.i.i138
  %.05283.i.i.i.i139 = phi i64 [ %i.va, %.lr.ph85.i.i.i.i138 ], [ %.05283.i.i.i.i139.unr, %.lr.ph85.i.i.i.i138.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i140 = phi double [ %i.uz, %.lr.ph85.i.i.i.i138 ], [ %.182.i.i.i.i140.unr, %.lr.ph85.i.i.i.i138.prol.loopexit ] ; 2 uses
  %i.up = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %.05283.i.i.i.i139
  %i.uq = load double, ptr %i.up, align 8, !tbaa !19
  %i.ur = call noundef double @llvm.fabs.f64(double %i.uq) ; 2 uses
  %i.us = fcmp olt double %.182.i.i.i.i140, %i.ur
  %i.ut = select i1 %i.us, double %i.ur, double %.182.i.i.i.i140 ; 2 uses
  %i.uu = getelementptr [8 x i8], ptr %i.sz, i64 %.05283.i.i.i.i139
  %i.uv = getelementptr i8, ptr %i.uu, i64 8
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !19
  %i.ux = call noundef double @llvm.fabs.f64(double %i.uw) ; 2 uses
  %i.uy = fcmp olt double %i.ut, %i.ux
  %i.uz = select i1 %i.uy, double %i.ux, double %i.ut ; 2 uses
  %i.va = add nsw i64 %.05283.i.i.i.i139, 2       ; 2 uses
  %exitcond.not.i.i.i.i141.1 = icmp eq i64 %i.va, %i.te
  br i1 %exitcond.not.i.i.i.i141.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit151, label %.lr.ph85.i.i.i.i138, !llvm.loop !225

bb.ap:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit130
  %i.vb = load double, ptr %i.sz, align 8, !tbaa !19
  %i.vc = call noundef double @llvm.fabs.f64(double %i.vb)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit151

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8maxCoeffEv.exit151: ; preds = %.lr.ph85.i.i.i.i138.prol.loopexit, %.lr.ph85.i.i.i.i138, %bb.ao, %bb.ap
  %.3.i.i.i.i137 = phi double [ %i.ug, %bb.ao ], [ %i.vc, %bb.ap ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i138.prol.loopexit ], [ %i.uz, %.lr.ph85.i.i.i.i138 ] ; 2 uses
  %i.vd = fcmp olt double %.3.i.i.i.i96, %.3.i.i.i.i116
  %.sroa.speculated155 = select i1 %i.vd, double %.3.i.i.i.i116, double %.3.i.i.i.i96 ; 2 uses
  %i.ve = fcmp olt double %.sroa.speculated155, %.3.i.i.i.i137
  %.sroa.speculated = select i1 %i.ve, double %.3.i.i.i.i137, double %.sroa.speculated155
  store double %.sroa.speculated, ptr %4, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef double @_Z11predict_rhoP10RhoAdapterddddd(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = insertelement <2 x double> poison, double %3, i64 0
  %i.b = insertelement <2 x double> %i.a, double %4, i64 1
  %i.c = fadd <2 x double> %i.b, splat (double 1.000000e-10)
  %i.d = insertelement <2 x double> poison, double %1, i64 0
  %i.e = insertelement <2 x double> %i.d, double %2, i64 1
  %i.f = fdiv <2 x double> %i.e, %i.c             ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 1
  %i.h = fadd double %i.g, 1.000000e-10
  %i.i = extractelement <2 x double> %i.f, i64 0
  %i.j = fdiv double %i.i, %i.h
  %i.k = tail call double @sqrt(double noundef %i.j) #22
  %i.l = fmul double %5, %i.k                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !63, !range !27, !noundef !28
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load double, ptr %0, align 8, !tbaa !19  ; 2 uses
  %i.q = fcmp olt double %i.l, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !19 ; 2 uses
  %i.t = select i1 %i.q, double %i.p, double %i.l ; 2 uses
  %i.u = fcmp olt double %i.s, %i.t
  %i.v = select i1 %i.u, double %i.s, double %i.t
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %i.v, %bb.b ], [ %i.l, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z32update_matrices_with_derivativesP9TinyCached(ptr noundef %0, double noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !67
  %i.b = fsub double %1, %i.a                     ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !17   ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %.sroa.716.32.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.b, i64 0 ; 4 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !17   ; 6 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = load i64, ptr %i.e, align 8, !tbaa !13   ; 5 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !16   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.p, %i.l
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sdiv i64 9223372036854775807, %i.l
  %i.s = icmp sgt i64 %i.k, %i.r
  br i1 %i.s, label %.noexc.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.u = mul nsw i64 %i.l, %i.k
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.u, i64 noundef %i.k, i64 noundef %i.l)
  %.pre.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !13
  %.pre23.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !16
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, %bb.a
  %i.v = phi ptr [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i ], [ %i.g, %bb.a ] ; 6 uses
  %i.w = phi i64 [ %.pre23.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i ], [ %i.l, %bb.a ]
  %i.x = phi i64 [ %.pre.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i ], [ %i.k, %bb.a ]
  %i.y = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %i.z = mul nsw i64 %i.x, %i.w                   ; 7 uses
  %i.aa = sdiv i64 %i.z, 2
  %i.ab = shl nsw i64 %i.aa, 1                    ; 7 uses
  %i.ac = icmp sgt i64 %i.z, 1
  br i1 %i.ac, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.d
  %i.ad = shufflevector <2 x double> %.sroa.716.32.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %i.ae = icmp slt i64 %i.ab, %i.z
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS4_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES7_EES7_EEEEEEvRT_RKT0_.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %i.af = sub i64 %i.z, %i.ab                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ag = sub i64 %i.j, %i.y
  %diff.check = icmp ugt i64 %i.ag, -32
  %i.ah = sub i64 %i.h, %i.y
  %diff.check134 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check134
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, -4                      ; 3 uses
  %i.ai = add i64 %i.ab, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIS3_EES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NSt9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE:bb.a
  %i.bl = load ptr, ptr %5, align 8, !tbaa !17
  call void @free(ptr noundef %i.bl) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, %.noexc.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %5, align 8, !tbaa !17
  call void @free(ptr noundef %i.bn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIS3_EES3_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Product.392", align 8 ; 5 uses
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !104, !nonnull !28, !align !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !543, !nonnull !28, !align !68 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %.not = icmp eq i64 %i.j, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not11 = icmp eq i64 %i.l, %i.h
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv i64 9223372036854775807, %i.h
  %i.o = icmp sgt i64 %i.d, %i.n
  br i1 %i.o, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  %i.q = mul nsw i64 %i.h, %i.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.d, i64 noundef %i.h)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !543
  %.pre13 = load i64, ptr %i.i, align 8, !tbaa !13
  %.pre14 = load i64, ptr %i.k, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.r = phi i64 [ %i.h, %bb.a ], [ %.pre14, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 2 uses
  %i.s = phi i64 [ %i.d, %bb.a ], [ %.pre13, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 2 uses
  %i.t = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13   ; 2 uses
  %i.w = add nsw i64 %i.s, %i.v
  %i.x = add nsw i64 %i.w, %i.r
  %i.y = icmp slt i64 %i.x, 20
  %i.z = icmp sgt i64 %i.v, 0
  %or.cond.i = and i1 %i.z, %i.y
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.aa = load ptr, ptr %1, align 8, !tbaa !104, !nonnull !28, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.aa, ptr %3, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.t, ptr %i.ab, align 8
  call void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIKS3_EES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = mul nsw i64 %i.r, %i.s                  ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i: ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !tbaa !17
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !19
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !19
  call void @_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToIS4_EEvRT_RKS5_RKS4_RKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_.exit

_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_.exit: ; preds = %bb.f, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToIS4_EEvRT_RKS5_RKS4_RKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Transpose.330", align 8 ; 8 uses
  %5 = alloca %"class.Eigen::Transpose.338", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::Transpose.464", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Transpose", align 8  ; 4 uses
  %8 = alloca %"class.Eigen::Block", align 8      ; 8 uses
  %9 = alloca %"class.Eigen::Block.230", align 8  ; 8 uses
  %10 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !104    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.n = load ptr, ptr %0, align 8, !tbaa !17, !noalias !562 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13, !noalias !562 ; 2 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !106, !alias.scope !562
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !32, !alias.scope !562
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %0, ptr %i.r, align 8, !tbaa !34, !alias.scope !562
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 %i.p, ptr %i.t, align 8, !tbaa !565, !alias.scope !562
  %i.u = load ptr, ptr %2, align 8, !tbaa !17, !noalias !566 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13, !noalias !566 ; 12 uses
  %i.x = icmp eq i64 %i.f, 1
  br i1 %i.x, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.y = load double, ptr %3, align 8, !tbaa !19
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !17, !noalias !567 ; 11 uses
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = sdiv i64 %i.w, 4
  %i.ac = shl nsw i64 %i.ab, 2                    ; 4 uses
  %i.ad = sdiv i64 %i.w, 2
  %i.ae = shl nsw i64 %i.ad, 1                    ; 6 uses
  %.off.i.i.i.i.i.i = add i64 %i.w, 1
  %.not.i.i.i.i.i11.i = icmp ult i64 %.off.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i11.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load <2 x double>, ptr %i.z, align 1, !tbaa !58
  %i.ag = load <2 x double>, ptr %i.u, align 1, !tbaa !58
  %i.ah = fmul <2 x double> %i.af, %i.ag          ; 3 uses
  %i.ai = icmp sgt i64 %i.w, 3
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load <2 x double>, ptr %i.aj, align 1, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.am = load <2 x double>, ptr %i.al, align 1, !tbaa !58
  %i.an = fmul <2 x double> %i.ak, %i.am          ; 2 uses
  %i.ao = icmp samesign ugt i64 %i.w, 7
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.i
  %.075.lcssa.i.i.i.i.i.i = phi <2 x double> [ %i.an, %bb.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i = phi <2 x double> [ %i.ah, %bb.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i ]
  %i.ap = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i ; 2 uses
  %i.aq = icmp sgt i64 %i.ae, %i.ac
  br i1 %i.aq, label %bb.j, label %bb.k

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %.054.in79.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 4, %bb.i ] ; 4 uses
  %.07278.i.i.i.i.i.i = phi <2 x double> [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %bb.i ]
  %.07577.i.i.i.i.i.i = phi <2 x double> [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %bb.i ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.054.in79.i.i.i.i.i.i
  %i.as = load <2 x double>, ptr %i.ar, align 1, !tbaa !58
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.054.in79.i.i.i.i.i.i
  %i.au = load <2 x double>, ptr %i.at, align 1, !tbaa !58
  %i.av = fmul <2 x double> %i.as, %i.au
  %i.aw = fadd <2 x double> %.07278.i.i.i.i.i.i, %i.av ; 2 uses
  %11 = or disjoint i64 %.054.in79.i.i.i.i.i.i, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %11
  %i.ay = load <2 x double>, ptr %i.ax, align 1, !tbaa !58
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %11
  %i.ba = load <2 x double>, ptr %i.az, align 1, !tbaa !58
  %i.bb = fmul <2 x double> %i.ay, %i.ba
  %i.bc = fadd <2 x double> %.07577.i.i.i.i.i.i, %i.bb ; 2 uses
  %.054.i.i.i.i.i.i = add nuw nsw i64 %.054.in79.i.i.i.i.i.i, 4 ; 2 uses
  %i.bd = icmp slt i64 %.054.i.i.i.i.i.i, %i.ac
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !550

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ac
  %i.bf = load <2 x double>, ptr %i.be, align 1, !tbaa !58
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.bh = load <2 x double>, ptr %i.bg, align 1, !tbaa !58
  %i.bi = fmul <2 x double> %i.bf, %i.bh
  %i.bj = fadd <2 x double> %i.ap, %i.bi
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i, %bb.h
  %.274.i.i.i.i.i.i = phi <2 x double> [ %i.ah, %bb.h ], [ %i.bj, %bb.j ], [ %i.ap, %._crit_edge.i.i.i.i.i.i ]
  %i.bk = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i) ; 3 uses
  %i.bl = icmp slt i64 %i.ae, %i.w
  br i1 %i.bl, label %.lr.ph85.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

.lr.ph85.i.i.i.i.i.i.preheader:                   ; preds = %bb.k
  %i.bm = sub i64 %i.w, %i.ae
  %xtraiter99 = and i64 %i.bm, 3                  ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph85.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.ae, %.lr.ph85.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.prol = phi double [ %i.bs, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.bk, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %prol.iter101 = phi i64 [ %prol.iter101.next, %.lr.ph85.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05283.i.i.i.i.i.i.prol
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !19
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05283.i.i.i.i.i.i.prol
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !19
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = fadd double %.182.i.i.i.i.i.i.prol, %i.br ; 3 uses
  %i.bt = add nsw i64 %.05283.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter101.next = add i64 %prol.iter101, 1   ; 2 uses
  %prol.iter101.cmp.not = icmp eq i64 %prol.iter101.next, %xtraiter99
  br i1 %prol.iter101.cmp.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol, !llvm.loop !551

.lr.ph85.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph85.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.bs, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.bt, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.unr = phi double [ %i.bk, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.bs, %.lr.ph85.i.i.i.i.i.i.prol ]
  %i.bu = sub i64 %i.ae, %i.w
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph85.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph85.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i = phi double [ %i.cw, %.lr.ph85.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ]
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05283.i.i.i.i.i.i
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !19
  %i.by = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05283.i.i.i.i.i.i
  %i.bz = load double, ptr %i.by, align 8, !tbaa !19
  %i.ca = fmul double %i.bx, %i.bz
  %i.cb = fadd double %.182.i.i.i.i.i.i, %i.ca
  %i.cc = add nsw i64 %.05283.i.i.i.i.i.i, 1      ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cc
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !19
  %i.ch = fmul double %i.ce, %i.cg
  %i.ci = fadd double %i.cb, %i.ch
  %i.cj = add nsw i64 %.05283.i.i.i.i.i.i, 2      ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !19
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cj
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !19
  %i.co = fmul double %i.cl, %i.cn
  %i.cp = fadd double %i.ci, %i.co
  %i.cq = add nsw i64 %.05283.i.i.i.i.i.i, 3      ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !19
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cq
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !19
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = fadd double %i.cp, %i.cv                ; 2 uses
  %i.cx = add nsw i64 %.05283.i.i.i.i.i.i, 4      ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.cx, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph85.i.i.i.i.i.i, !llvm.loop !552

bb.l:                                             ; preds = %bb.g
  %i.cy = load double, ptr %i.z, align 8, !tbaa !19
  %i.cz = load double, ptr %i.u, align 8, !tbaa !19
  %i.da = fmul double %i.cy, %i.cz
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i, %bb.l, %bb.k, %bb.f
  %.0.i.i.i.i = phi double [ 0.000000e+00, %bb.f ], [ %i.bk, %bb.k ], [ %i.da, %bb.l ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ], [ %i.cw, %.lr.ph85.i.i.i.i.i.i ]
  %i.db = load double, ptr %i.n, align 8, !tbaa !19
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.y, double %.0.i.i.i.i, double %i.db)
  store double %i.dc, ptr %i.n, align 8, !tbaa !19
  br label %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd.exit

bb.m:                                             ; preds = %bb.e
  %i.dd = ptrtoint ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i64 %i.dd, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.u, ptr %8, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.w, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %2, ptr %.sroa.760.0..sroa_idx, align 8
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.861.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.w, ptr %.sroa.10.0..sroa_idx, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIKS6_Lin1ELi1ELb1EEENS8_IS6_Lin1ELi1ELb1EEEEEvRKT_RKT0_RT1_RKNSI_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

bb.n:                                             ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !13 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.o, label %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i

bb.o:                                             ; preds = %bb.n
  %i.dh = load ptr, ptr %0, align 8, !tbaa !17, !noalias !568 ; 3 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !17, !noalias !569 ; 12 uses
  %i.dj = icmp eq i64 %i.i, 1
  br i1 %i.dj, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.dk = load double, ptr %3, align 8, !tbaa !19
  %i.dl = load ptr, ptr %2, align 8, !tbaa !17, !noalias !570 ; 11 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !13, !noalias !570 ; 10 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = sdiv i64 %i.dn, 4
  %i.dq = shl nsw i64 %i.dp, 2                    ; 4 uses
  %i.dr = sdiv i64 %i.dn, 2
  %i.ds = shl nsw i64 %i.dr, 1                    ; 6 uses
  %.off.i.i.i.i.i.i29 = add i64 %i.dn, 1
  %.not.i.i.i.i.i12.i = icmp ult i64 %.off.i.i.i.i.i.i29, 3
  br i1 %.not.i.i.i.i.i12.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = load <2 x double>, ptr %i.di, align 1, !tbaa !58
  %i.du = load <2 x double>, ptr %i.dl, align 1, !tbaa !58
  %i.dv = fmul <2 x double> %i.dt, %i.du          ; 3 uses
  %i.dw = icmp sgt i64 %i.dn, 3
  br i1 %i.dw, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !58
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ea = load <2 x double>, ptr %i.dz, align 1, !tbaa !58
  %i.eb = fmul <2 x double> %i.dy, %i.ea          ; 2 uses
  %i.ec = icmp samesign ugt i64 %i.dn, 7
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i39, label %._crit_edge.i.i.i.i.i.i36

._crit_edge.i.i.i.i.i.i36:                        ; preds = %.lr.ph.i.i.i.i.i.i39, %bb.s
  %.075.lcssa.i.i.i.i.i.i37 = phi <2 x double> [ %i.eb, %bb.s ], [ %i.eq, %.lr.ph.i.i.i.i.i.i39 ]
  %.072.lcssa.i.i.i.i.i.i38 = phi <2 x double> [ %i.dv, %bb.s ], [ %i.ek, %.lr.ph.i.i.i.i.i.i39 ]
  %i.ed = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i37, %.072.lcssa.i.i.i.i.i.i38 ; 2 uses
  %i.ee = icmp sgt i64 %i.ds, %i.dq
  br i1 %i.ee, label %bb.t, label %bb.u

.lr.ph.i.i.i.i.i.i39:                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i39
  %.054.in79.i.i.i.i.i.i41 = phi i64 [ %.054.i.i.i.i.i.i44, %.lr.ph.i.i.i.i.i.i39 ], [ 4, %bb.s ] ; 4 uses
  %.07278.i.i.i.i.i.i42 = phi <2 x double> [ %i.ek, %.lr.ph.i.i.i.i.i.i39 ], [ %i.dv, %bb.s ]
  %.07577.i.i.i.i.i.i43 = phi <2 x double> [ %i.eq, %.lr.ph.i.i.i.i.i.i39 ], [ %i.eb, %bb.s ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.054.in79.i.i.i.i.i.i41
  %i.eg = load <2 x double>, ptr %i.ef, align 1, !tbaa !58
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.054.in79.i.i.i.i.i.i41
  %i.ei = load <2 x double>, ptr %i.eh, align 1, !tbaa !58
  %i.ej = fmul <2 x double> %i.eg, %i.ei
  %i.ek = fadd <2 x double> %.07278.i.i.i.i.i.i42, %i.ej ; 2 uses
  %12 = or disjoint i64 %.054.in79.i.i.i.i.i.i41, 2 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %12
  %i.em = load <2 x double>, ptr %i.el, align 1, !tbaa !58
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %12
  %i.eo = load <2 x double>, ptr %i.en, align 1, !tbaa !58
  %i.ep = fmul <2 x double> %i.em, %i.eo
  %i.eq = fadd <2 x double> %.07577.i.i.i.i.i.i43, %i.ep ; 2 uses
  %.054.i.i.i.i.i.i44 = add nuw nsw i64 %.054.in79.i.i.i.i.i.i41, 4 ; 2 uses
  %i.er = icmp slt i64 %.054.i.i.i.i.i.i44, %i.dq
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i39, label %._crit_edge.i.i.i.i.i.i36, !llvm.loop !559

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i36
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dq
  %i.et = load <2 x double>, ptr %i.es, align 1, !tbaa !58
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dq
  %i.ev = load <2 x double>, ptr %i.eu, align 1, !tbaa !58
  %i.ew = fmul <2 x double> %i.et, %i.ev
  %i.ex = fadd <2 x double> %i.ed, %i.ew
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i.i36, %bb.r
  %.274.i.i.i.i.i.i30 = phi <2 x double> [ %i.dv, %bb.r ], [ %i.ex, %bb.t ], [ %i.ed, %._crit_edge.i.i.i.i.i.i36 ]
  %i.ey = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i30) ; 3 uses
  %i.ez = icmp slt i64 %i.ds, %i.dn
  br i1 %i.ez, label %.lr.ph85.i.i.i.i.i.i32.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

.lr.ph85.i.i.i.i.i.i32.preheader:                 ; preds = %bb.u
  %i.fa = sub i64 %i.dn, %i.ds
  %xtraiter = and i64 %i.fa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i32.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i32.prol

.lr.ph85.i.i.i.i.i.i32.prol:                      ; preds = %.lr.ph85.i.i.i.i.i.i32.preheader, %.lr.ph85.i.i.i.i.i.i32.prol
  %.05283.i.i.i.i.i.i33.prol = phi i64 [ %i.fh, %.lr.ph85.i.i.i.i.i.i32.prol ], [ %i.ds, %.lr.ph85.i.i.i.i.i.i32.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i34.prol = phi double [ %i.fg, %.lr.ph85.i.i.i.i.i.i32.prol ], [ %i.ey, %.lr.ph85.i.i.i.i.i.i32.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i32.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i32.preheader ]
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05283.i.i.i.i.i.i33.prol
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !19
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05283.i.i.i.i.i.i33.prol
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !19
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = fadd double %.182.i.i.i.i.i.i34.prol, %i.ff ; 3 uses
  %i.fh = add nsw i64 %.05283.i.i.i.i.i.i33.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i32.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i32.prol, !llvm.loop !560

.lr.ph85.i.i.i.i.i.i32.prol.loopexit:             ; preds = %.lr.ph85.i.i.i.i.i.i32.prol, %.lr.ph85.i.i.i.i.i.i32.preheader
  %.lcssa96.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i32.preheader ], [ %i.fg, %.lr.ph85.i.i.i.i.i.i32.prol ]
  %.05283.i.i.i.i.i.i33.unr = phi i64 [ %i.ds, %.lr.ph85.i.i.i.i.i.i32.preheader ], [ %i.fh, %.lr.ph85.i.i.i.i.i.i32.prol ]
  %.182.i.i.i.i.i.i34.unr = phi double [ %i.ey, %.lr.ph85.i.i.i.i.i.i32.preheader ], [ %i.fg, %.lr.ph85.i.i.i.i.i.i32.prol ]
  %i.fi = sub i64 %i.ds, %i.dn
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph85.i.i.i.i.i.i32

.lr.ph85.i.i.i.i.i.i32:                           ; preds = %.lr.ph85.i.i.i.i.i.i32.prol.loopexit, %.lr.ph85.i.i.i.i.i.i32
  %.05283.i.i.i.i.i.i33 = phi i64 [ %i.gl, %.lr.ph85.i.i.i.i.i.i32 ], [ %.05283.i.i.i.i.i.i33.unr, %.lr.ph85.i.i.i.i.i.i32.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i34 = phi double [ %i.gk, %.lr.ph85.i.i.i.i.i.i32 ], [ %.182.i.i.i.i.i.i34.unr, %.lr.ph85.i.i.i.i.i.i32.prol.loopexit ]
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05283.i.i.i.i.i.i33
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !19
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05283.i.i.i.i.i.i33
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !19
  %i.fo = fmul double %i.fl, %i.fn
  %i.fp = fadd double %.182.i.i.i.i.i.i34, %i.fo
  %i.fq = add nsw i64 %.05283.i.i.i.i.i.i33, 1    ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !19
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.fq
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !19
  %i.fv = fmul double %i.fs, %i.fu
  %i.fw = fadd double %i.fp, %i.fv
  %i.fx = add nsw i64 %.05283.i.i.i.i.i.i33, 2    ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !19
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.fx
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !19
  %i.gc = fmul double %i.fz, %i.gb
  %i.gd = fadd double %i.fw, %i.gc
  %i.ge = add nsw i64 %.05283.i.i.i.i.i.i33, 3    ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !19
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ge
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !19
  %i.gj = fmul double %i.gg, %i.gi
  %i.gk = fadd double %i.gd, %i.gj                ; 2 uses
  %i.gl = add nsw i64 %.05283.i.i.i.i.i.i33, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i35.3 = icmp eq i64 %i.gl, %i.dn
  br i1 %exitcond.not.i.i.i.i.i.i35.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph85.i.i.i.i.i.i32, !llvm.loop !561

bb.v:                                             ; preds = %bb.q
  %i.gm = load double, ptr %i.di, align 8, !tbaa !19
  %i.gn = load double, ptr %i.dl, align 8, !tbaa !19
  %i.go = fmul double %i.gm, %i.gn
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i32.prol.loopexit, %.lr.ph85.i.i.i.i.i.i32, %bb.v, %bb.u, %bb.p
  %.0.i.i.i.i31 = phi double [ 0.000000e+00, %bb.p ], [ %i.ey, %bb.u ], [ %i.go, %bb.v ], [ %.lcssa96.unr, %.lr.ph85.i.i.i.i.i.i32.prol.loopexit ], [ %i.gk, %.lr.ph85.i.i.i.i.i.i32 ]
  %i.gp = load double, ptr %i.dh, align 8, !tbaa !19
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.dk, double %.0.i.i.i.i31, double %i.gp)
  store double %i.gq, ptr %i.dh, align 8, !tbaa !19
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

bb.w:                                             ; preds = %bb.o
  %i.gr = ptrtoint ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.di, ptr %6, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.c, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.gr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.748.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %.sroa.949.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.dh, ptr %4, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.l, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.754.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.956.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %2, ptr %5, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIKNS4_IS6_EELi1ELin1ELb1EEEEENS4_INS9_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSN_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.n
  %i.gs = load double, ptr %3, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 16, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i64 %i.df, ptr %i.gt, align 8, !tbaa !83
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %i.l, ptr %i.gu, align 8, !tbaa !84
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.gv, align 8, !tbaa !85
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.gu, i64 noundef 1)
  %i.gw = load i64, ptr %i.gt, align 8, !tbaa !83
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !85 ; 2 uses
  %i.gy = mul nsw i64 %i.gx, %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !87
  %i.ha = load i64, ptr %i.gu, align 8, !tbaa !84
  %i.hb = mul nsw i64 %i.ha, %i.gx
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !88
  %i.hd = load ptr, ptr %1, align 8, !tbaa !104, !nonnull !28, !align !68
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !16
  %i.hg = load i64, ptr %i.h, align 8, !tbaa !16
  %i.hh = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.hi = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.hj = load ptr, ptr %2, align 8, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !13
  %i.hm = load ptr, ptr %0, align 8, !tbaa !17
  %i.hn = load i64, ptr %i.de, align 8, !tbaa !13
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.hf, i64 noundef %i.hg, i64 noundef %i.hh, ptr noundef nonnull %i.hi, i64 noundef %i.hh, ptr noundef nonnull %i.hj, i64 noundef %i.hl, ptr noundef nonnull %i.hm, i64 noundef 1, i64 noundef %i.hn, double noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit unwind label %bb.x

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.ho = load ptr, ptr %10, align 8, !tbaa !89
  call void @free(ptr noundef %i.ho) #22
  %i.hp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !90
  call void @free(ptr noundef %i.hq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit: ; preds = %bb.w, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit, %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd.exit
  ret void

bb.x:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = load ptr, ptr %10, align 8, !tbaa !89
  call void @free(ptr noundef %i.hs) #22
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !90
  call void @free(ptr noundef %i.hu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  resume { ptr, i32 } %i.hr
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIKS3_EES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !591, !nonnull !28, !align !68 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %.not.i = icmp eq i64 %i.l, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %.not8.i = icmp eq i64 %i.n, %i.j
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %i.j, 0
  br i1 %i.o, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sdiv i64 9223372036854775807, %i.j
  %i.q = icmp sgt i64 %i.h, %i.p
  br i1 %i.q, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.s = mul nsw i64 %i.j, %i.h
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %i.h, i64 noundef %i.j)
  %.pr = load i64, ptr %i.m, align 8, !tbaa !16
  %.pre = load i64, ptr %i.k, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.t = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.h, %bb.a ] ; 30 uses
  %i.u = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.j, %bb.a ] ; 13 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !17     ; 13 uses
  %i.w = icmp sgt i64 %i.u, 0
  %i.x = icmp sgt i64 %i.t, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.d
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !17, !noalias !592 ; 11 uses
  %i.z = load i64, ptr %i.f, align 8, !tbaa !13, !noalias !592 ; 33 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = sdiv i64 %i.z, 4
  %i.ac = shl nsw i64 %i.ab, 2                    ; 12 uses
  %i.ad = sdiv i64 %i.z, 2
  %i.ae = shl nsw i64 %i.ad, 1                    ; 22 uses
  %i.af = icmp sgt i64 %i.z, 3
  %i.ag = icmp samesign ugt i64 %i.z, 7
  %i.ah = icmp sgt i64 %i.ae, %i.ac               ; 4 uses
  %i.ai = icmp slt i64 %i.ae, %i.z                ; 3 uses
  br i1 %i.aa, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.split.i
  %i.aj = mul i64 %i.u, %i.t
  %i.ak = shl i64 %i.aj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.ak, i1 false), !tbaa !19
  br label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  %.off.i.i.i.i.i.i.i = add i64 %i.z, 1
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i, 3
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !17, !noalias !593 ; 16 uses
  %i.am = load i64, ptr %i.e, align 8, !tbaa !13, !noalias !593 ; 14 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.us20.i.preheader, label %.preheader.i.preheader

.preheader.us20.i.preheader:                      ; preds = %.preheader.lr.ph.split.split.i
  %i.an = mul i64 %i.u, %i.t
  %i.ao = shl i64 %i.an, 3
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ao ; 2 uses
  %i.ap = shl i64 %i.t, 3                         ; 2 uses
  %scevgep134 = getelementptr i8, ptr %i.al, i64 %i.ap
  %i.aq = add nuw i64 %i.u, 2305843009213693951
  %i.ar = mul i64 %i.z, %i.aq
  %i.as = shl i64 %i.ar, 3
  %i.at = getelementptr i8, ptr %i.y, i64 %i.as
  %scevgep135 = getelementptr i8, ptr %i.at, i64 8
  %min.iters.check = icmp ugt i64 %i.t, 9
  %ident.check.not = icmp eq i64 %i.am, 1
  %or.cond142 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.v, %scevgep134
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0136 = icmp ult ptr %i.v, %scevgep135
  %bound1137 = icmp ult ptr %i.y, %scevgep
  %found.conflict138 = and i1 %bound0136, %bound1137
  %stride.check139 = icmp slt i64 %i.ap, 0
  %i.au = or i1 %found.conflict138, %stride.check139
  %.mask = and i64 %i.z, 1152921504606846976
  %stride.check140 = icmp ne i64 %.mask, 0
  %i.av = or i1 %i.au, %stride.check140
  %conflict.rdx = or i1 %found.conflict, %i.av
  %n.vec = and i64 %i.t, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %xtraiter177 = and i64 %i.t, 1
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br label %.preheader.us20.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.split.i
  br i1 %i.af, label %.preheader.i.preheader.split.us, label %.preheader.i.preheader.split

.preheader.i.preheader.split.us:                  ; preds = %.preheader.i.preheader
  br i1 %i.ag, label %.preheader.i.preheader.split.us.split.us, label %.preheader.i.preheader.split.us.split

.preheader.i.preheader.split.us.split.us:         ; preds = %.preheader.i.preheader.split.us
  br i1 %i.ai, label %.preheader.i.preheader.split.us.split.us.split.us, label %.preheader.i.us.us

.preheader.i.preheader.split.us.split.us.split.us: ; preds = %.preheader.i.preheader.split.us.split.us
  br i1 %i.ah, label %.preheader.i.us.us.us.us.preheader, label %.preheader.i.us.us.us.preheader

.preheader.i.us.us.us.preheader:                  ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.aw = sub nsw i64 %i.z, %i.ae
  %xtraiter171 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  %i.ax = sub nsw i64 %i.ae, %i.z
  %i.ay = icmp ugt i64 %i.ax, -4
  br label %.preheader.i.us.us.us

.preheader.i.us.us.us.us.preheader:               ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.az = sub nsw i64 %i.z, %i.ae
  %xtraiter174 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  %i.ba = sub nsw i64 %i.ae, %i.z
  %i.bb = icmp ugt i64 %i.ba, -4
  br label %.preheader.i.us.us.us.us

.preheader.i.us.us.us.us:                         ; preds = %.preheader.i.us.us.us.us.preheader, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us
  %.0816.i.us.us.us.us = phi i64 [ %i.du, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us ], [ 0, %.preheader.i.us.us.us.us.preheader ] ; 3 uses
  %i.bc = mul nuw nsw i64 %.0816.i.us.us.us.us, %i.z
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bc ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ac
  %i.bg = mul nuw nsw i64 %.0816.i.us.us.us.us, %i.t
  %invariant.gep.i.us.us.us.us = getelementptr [8 x i8], ptr %i.v, i64 %i.bg
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, %.preheader.i.us.us.us.us
  %.011.i.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us.us.us ], [ %i.dt, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.bh = mul nsw i64 %i.am, %.011.i.us.us.us.us.us.us.us.us
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bh ; 10 uses
  %i.bj = load <2 x double>, ptr %i.bi, align 1, !tbaa !58
  %i.bk = load <2 x double>, ptr %i.bd, align 1, !tbaa !58
  %i.bl = fmul <2 x double> %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bn = load <2 x double>, ptr %i.bm, align 1, !tbaa !58
  %i.bo = load <2 x double>, ptr %i.be, align 1, !tbaa !58
  %i.bp = fmul <2 x double> %i.bn, %i.bo
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us:     ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ] ; 4 uses
  %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi <2 x double> [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi <2 x double> [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.br = load <2 x double>, ptr %i.bq, align 1, !tbaa !58
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.bt = load <2 x double>, ptr %i.bs, align 1, !tbaa !58
  %i.bu = fmul <2 x double> %i.br, %i.bt
  %i.bv = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.bu ; 2 uses
  %3 = or disjoint i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %3
  %i.bx = load <2 x double>, ptr %i.bw, align 1, !tbaa !58
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %3
  %i.bz = load <2 x double>, ptr %i.by, align 1, !tbaa !58
  %i.ca = fmul <2 x double> %i.bx, %i.bz
  %i.cb = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.ca ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %i.cc = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.ac
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, !llvm.loop !575

._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cd = fadd <2 x double> %i.cb, %i.bv
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ac
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !58
  %i.cg = load <2 x double>, ptr %i.bf, align 1, !tbaa !58
  %i.ch = fmul <2 x double> %i.cf, %i.cg
  %i.ci = fadd <2 x double> %i.cd, %i.ch
  %i.cj = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ci) ; 2 uses
  br i1 %lcmp.mod175.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol: ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi i64 [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi double [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.cj, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !19
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !19
  %i.co = fmul double %i.cl, %i.cn
  %i.cp = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %i.co ; 3 uses
  %i.cq = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, !llvm.loop !576

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us
  %.lcssa145.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr = phi double [ %i.cj, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  br i1 %i.bb, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us:   ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %i.ds, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi double [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !19
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.cv
  %i.cx = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cx
  %i.db = load double, ptr %i.da, align 8, !tbaa !19
  %i.dc = fmul double %i.cz, %i.db
  %i.dd = fadd double %i.cw, %i.dc
  %i.de = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.de
  %i.di = load double, ptr %i.dh, align 8, !tbaa !19
  %i.dj = fmul double %i.dg, %i.di
  %i.dk = fadd double %i.dd, %i.dj
  %i.dl = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.dl
  %i.dp = load double, ptr %i.do, align 8, !tbaa !19
  %i.dq = fmul double %i.dn, %i.dp
  %i.dr = fadd double %i.dk, %i.dq                ; 2 uses
  %i.ds = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.3 = icmp eq i64 %i.ds, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, !llvm.loop !577

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit
  %.lcssa145 = phi double [ %.lcssa145.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ], [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ]
  %gep.i.us.us.us.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %.011.i.us.us.us.us.us.us.us.us
  store double %.lcssa145, ptr %gep.i.us.us.us.us.us.us.us.us, align 8, !tbaa !19
  %i.dt = add nuw nsw i64 %.011.i.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.us.us.us = icmp eq i64 %i.dt, %i.t
  br i1 %exitcond.not.i.us.us.us.us.us.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us, !llvm.loop !578

._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us
  %i.du = add nuw nsw i64 %.0816.i.us.us.us.us, 1 ; 2 uses
  %exitcond27.not.i.us.us.us.us = icmp eq i64 %i.du, %i.u
  br i1 %exitcond27.not.i.us.us.us.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit, label %.preheader.i.us.us.us.us, !llvm.loop !579

.preheader.i.us.us.us:                            ; preds = %.preheader.i.us.us.us.preheader, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split
  %.0816.i.us.us.us = phi i64 [ %i.gh, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split ], [ 0, %.preheader.i.us.us.us.preheader ] ; 3 uses
  %i.dv = mul nuw nsw i64 %.0816.i.us.us.us, %i.z
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.dv ; 9 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = mul nuw nsw i64 %.0816.i.us.us.us, %i.t
  %invariant.gep.i.us.us.us = getelementptr [8 x i8], ptr %i.v, i64 %i.dy
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us, %.preheader.i.us.us.us
  %.011.i.us.us.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us.us ], [ %i.gg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us ] ; 3 uses
  %i.dz = mul nsw i64 %i.am, %.011.i.us.us.us.us.us.us
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.dz ; 9 uses
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !58
  %i.ec = load <2 x double>, ptr %i.dw, align 1, !tbaa !58
  %i.ed = fmul <2 x double> %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !58
  %i.eg = load <2 x double>, ptr %i.dx, align 1, !tbaa !58
  %i.eh = fmul <2 x double> %i.ef, %i.eg
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us:           ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ] ; 4 uses
  %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us = phi <2 x double> [ %i.en, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us = phi <2 x double> [ %i.et, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.ej = load <2 x double>, ptr %i.ei, align 1, !tbaa !58
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.el = load <2 x double>, ptr %i.ek, align 1, !tbaa !58
  %i.em = fmul <2 x double> %i.ej, %i.el
  %i.en = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.em ; 2 uses
  %4 = or disjoint i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us, 2 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %4
  %i.ep = load <2 x double>, ptr %i.eo, align 1, !tbaa !58
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %4
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !58
  %i.es = fmul <2 x double> %i.ep, %i.er
  %i.et = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.es ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us.us.us = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us, 4 ; 2 uses
  %i.eu = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.ac
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us, !llvm.loop !575

._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.ev = fadd <2 x double> %i.et, %i.en
  %i.ew = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ev) ; 2 uses
  br i1 %lcmp.mod172.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol:    ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.prol = phi i64 [ %i.fd, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ], [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.prol = phi double [ %i.fc, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ], [ %i.ew, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ]
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.prol
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !19
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.prol
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !19
  %i.fb = fmul double %i.ey, %i.fa
  %i.fc = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.prol, %i.fb ; 3 uses
  %i.fd = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol, !llvm.loop !580

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us
  %.lcssa149.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ], [ %i.fc, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.unr = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ], [ %i.fd, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.unr = phi double [ %i.ew, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ], [ %i.fc, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ]
  br i1 %i.ay, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us:         ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us = phi i64 [ %i.gf, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us = phi double [ %i.ge, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !19
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !19
  %i.fi = fmul double %i.ff, %i.fh
  %i.fj = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.fi
  %i.fk = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fk
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !19
  %i.fp = fmul double %i.fm, %i.fo
  %i.fq = fadd double %i.fj, %i.fp
  %i.fr = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us, 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !19
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fr
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !19
  %i.fw = fmul double %i.ft, %i.fv
  %i.fx = fadd double %i.fq, %i.fw
  %i.fy = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !19
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fy
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !19
  %i.gd = fmul double %i.ga, %i.gc
  %i.ge = fadd double %i.fx, %i.gd                ; 2 uses
  %i.gf = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.3 = icmp eq i64 %i.gf, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us, !llvm.loop !577

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit
  %.lcssa149 = phi double [ %.lcssa149.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit ], [ %i.ge, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us ]
  %gep.i.us.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us, i64 %.011.i.us.us.us.us.us.us
  store double %.lcssa149, ptr %gep.i.us.us.us.us.us.us, align 8, !tbaa !19
  %i.gg = add nuw nsw i64 %.011.i.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.us = icmp eq i64 %i.gg, %i.t
  br i1 %exitcond.not.i.us.us.us.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us, !llvm.loop !578

._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us
  %i.gh = add nuw nsw i64 %.0816.i.us.us.us, 1    ; 2 uses
  %exitcond27.not.i.us.us.us = icmp eq i64 %i.gh, %i.u
  br i1 %exitcond27.not.i.us.us.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit, label %.preheader.i.us.us.us, !llvm.loop !579

.preheader.i.us.us:                               ; preds = %.preheader.i.preheader.split.us.split.us, %._crit_edge.split.split.i.split.us.us.split.us.us.split
  %.0816.i.us.us = phi i64 [ %i.hr, %._crit_edge.split.split.i.split.us.us.split.us.us.split ], [ 0, %.preheader.i.preheader.split.us.split.us ] ; 3 uses
  %i.gi = mul nuw nsw i64 %.0816.i.us.us, %i.z
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.gi ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.ac
  %i.gm = mul nuw nsw i64 %.0816.i.us.us, %i.t
  %invariant.gep.i.us.us = getelementptr [8 x i8], ptr %i.v, i64 %i.gm
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us:       ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us, %.preheader.i.us.us
  %.011.i.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %i.hq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us ] ; 3 uses
  %i.gn = mul nsw i64 %i.am, %.011.i.us.us.us.us
  %i.go = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.gn ; 5 uses
  %i.gp = load <2 x double>, ptr %i.go, align 1, !tbaa !58
  %i.gq = load <2 x double>, ptr %i.gj, align 1, !tbaa !58
  %i.gr = fmul <2 x double> %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gt = load <2 x double>, ptr %i.gs, align 1, !tbaa !58
  %i.gu = load <2 x double>, ptr %i.gk, align 1, !tbaa !58
  %i.gv = fmul <2 x double> %i.gt, %i.gu
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us ] ; 4 uses
  %.07278.i.i.i.i.i.i.i.us.us.us.us = phi <2 x double> [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us ], [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us = phi <2 x double> [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us
  %i.gx = load <2 x double>, ptr %i.gw, align 1, !tbaa !58
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us
  %i.gz = load <2 x double>, ptr %i.gy, align 1, !tbaa !58
  %i.ha = fmul <2 x double> %i.gx, %i.gz
  %i.hb = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us, %i.ha ; 2 uses
  %5 = or disjoint i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us, 2 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %5
  %i.hd = load <2 x double>, ptr %i.hc, align 1, !tbaa !58
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %5
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !58
  %i.hg = fmul <2 x double> %i.hd, %i.hf
  %i.hh = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us, %i.hg ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us, 4 ; 2 uses
  %i.hi = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us, %i.ac
  br i1 %i.hi, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us, !llvm.loop !575

._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us:   ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us
  %i.hj = fadd <2 x double> %i.hh, %i.hb          ; 2 uses
  br i1 %i.ah, label %bb.e, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.ac
  %i.hl = load <2 x double>, ptr %i.hk, align 1, !tbaa !58
  %i.hm = load <2 x double>, ptr %i.gl, align 1, !tbaa !58
  %i.hn = fmul <2 x double> %i.hl, %i.hm
  %i.ho = fadd <2 x double> %i.hj, %i.hn
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us: ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us
  %.274.i.i.i.i.i.i.i.us.us.us.us = phi <2 x double> [ %i.hj, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us ], [ %i.ho, %bb.e ]
  %i.hp = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.i.us.us.us.us)
  %gep.i.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us, i64 %.011.i.us.us.us.us
  store double %i.hp, ptr %gep.i.us.us.us.us, align 8, !tbaa !19
  %i.hq = add nuw nsw i64 %.011.i.us.us.us.us, 1  ; 2 uses
  %exitcond.not.i.us.us.us.us = icmp eq i64 %i.hq, %i.t
  br i1 %exitcond.not.i.us.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.us.us.split, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us, !llvm.loop !578

._crit_edge.split.split.i.split.us.us.split.us.us.split: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us
  %i.hr = add nuw nsw i64 %.0816.i.us.us, 1       ; 2 uses
  %exitcond27.not.i.us.us = icmp eq i64 %i.hr, %i.u
  br i1 %exitcond27.not.i.us.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit, label %.preheader.i.us.us, !llvm.loop !579

.preheader.i.preheader.split.us.split:            ; preds = %.preheader.i.preheader.split.us
  br i1 %i.ai, label %.preheader.i.preheader.split.us.split.split.us, label %.preheader.i.us

.preheader.i.preheader.split.us.split.split.us:   ; preds = %.preheader.i.preheader.split.us.split
  br i1 %i.ah, label %.preheader.i.us.us49.us.preheader, label %.preheader.i.us.us49.preheader

.preheader.i.us.us49.preheader:                   ; preds = %.preheader.i.preheader.split.us.split.split.us
  %i.hs = sub nsw i64 %i.z, %i.ae
  %xtraiter165 = and i64 %i.hs, 3                 ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  %i.ht = sub nsw i64 %i.ae, %i.z
  %i.hu = icmp ugt i64 %i.ht, -4
  br label %.preheader.i.us.us49

.preheader.i.us.us49.us.preheader:                ; preds = %.preheader.i.preheader.split.us.split.split.us
  %i.hv = sub nsw i64 %i.z, %i.ae
  %xtraiter168 = and i64 %i.hv, 3                 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  %i.hw = sub nsw i64 %i.ae, %i.z
  %i.hx = icmp ugt i64 %i.hw, -4
  br label %.preheader.i.us.us49.us

.preheader.i.us.us49.us:                          ; preds = %.preheader.i.us.us49.us.preheader, %._crit_edge.split.split.i.split.us.us.split.split.us.us.split.us.us
  %.0816.i.us.us50.us = phi i64 [ %i.kd, %._crit_edge.split.split.i.split.us.us.split.split.us.us.split.us.us ], [ 0, %.preheader.i.us.us49.us.preheader ] ; 3 uses
  %i.hy = mul nuw nsw i64 %.0816.i.us.us50.us, %i.z
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.hy ; 8 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.ac
  %i.ic = mul nuw nsw i64 %.0816.i.us.us50.us, %i.t
  %invariant.gep.i.us.us51.us = getelementptr [8 x i8], ptr %i.v, i64 %i.ic
  br label %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us

._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us:    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us, %.preheader.i.us.us49.us
  %.011.i.us.us.us36.us.us.us = phi i64 [ 0, %.preheader.i.us.us49.us ], [ %i.kc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us ] ; 3 uses
  %i.id = mul nsw i64 %i.am, %.011.i.us.us.us36.us.us.us
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.id ; 8 uses
  %i.if = load <2 x double>, ptr %i.ie, align 1, !tbaa !58
  %i.ig = load <2 x double>, ptr %i.hz, align 1, !tbaa !58
  %i.ih = fmul <2 x double> %i.if, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ij = load <2 x double>, ptr %i.ii, align 1, !tbaa !58
  %i.ik = load <2 x double>, ptr %i.ia, align 1, !tbaa !58
  %i.il = fmul <2 x double> %i.ij, %i.ik
  %i.im = fadd <2 x double> %i.il, %i.ih
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ac
  %i.io = load <2 x double>, ptr %i.in, align 1, !tbaa !58
  %i.ip = load <2 x double>, ptr %i.ib, align 1, !tbaa !58
  %i.iq = fmul <2 x double> %i.io, %i.ip
  %i.ir = fadd <2 x double> %i.im, %i.iq
  %i.is = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ir) ; 2 uses
  br i1 %lcmp.mod169.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol:  ; preds = %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.prol = phi i64 [ %i.iz, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ], [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us.prol = phi double [ %i.iy, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ], [ %i.is, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ]
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ]
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.prol
  %i.iu = load double, ptr %i.it, align 8, !tbaa !19
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.prol
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !19
  %i.ix = fmul double %i.iu, %i.iw
  %i.iy = fadd double %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us.prol, %i.ix ; 3 uses
  %i.iz = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.prol, 1 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol, !llvm.loop !581

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us
  %.lcssa154.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ], [ %i.iy, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.unr = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ], [ %i.iz, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us.unr = phi double [ %i.is, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ], [ %i.iy, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ]
  br i1 %i.hx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us:       ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us
  %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us = phi i64 [ %i.kb, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us = phi double [ %i.ka, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us ], [ %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit ]
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !19
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !19
  %i.je = fmul double %i.jb, %i.jd
  %i.jf = fadd double %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us, %i.je
  %i.jg = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !19
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.jg
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !19
  %i.jl = fmul double %i.ji, %i.jk
  %i.jm = fadd double %i.jf, %i.jl
  %i.jn = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us, 2 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.jn
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !19
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.jn
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !19
  %i.js = fmul double %i.jp, %i.jr
  %i.jt = fadd double %i.jm, %i.js
  %i.ju = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us, 3 ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !19
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.ju
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !19
  %i.jz = fmul double %i.jw, %i.jy
  %i.ka = fadd double %i.jt, %i.jz                ; 2 uses
  %i.kb = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.us.us42.us.us.us.3 = icmp eq i64 %i.kb, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.us.us42.us.us.us.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us, !llvm.loop !577

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit
  %.lcssa154 = phi double [ %.lcssa154.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit ], [ %i.ka, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us ]
  %gep.i.us.us.us47.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us51.us, i64 %.011.i.us.us.us36.us.us.us
  store double %.lcssa154, ptr %gep.i.us.us.us47.us.us.us, align 8, !tbaa !19
  %i.kc = add nuw nsw i64 %.011.i.us.us.us36.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us48.us.us.us = icmp eq i64 %i.kc, %i.t
  br i1 %exitcond.not.i.us.us.us48.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.split.us.us.split.us.us, label %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us, !llvm.loop !578

._crit_edge.split.split.i.split.us.us.split.split.us.us.split.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us
  %i.kd = add nuw nsw i64 %.0816.i.us.us50.us, 1  ; 2 uses
  %exitcond27.not.i.us.us52.us = icmp eq i64 %i.kd, %i.u
  br i1 %exitcond27.not.i.us.us52.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit, label %.preheader.i.us.us49.us, !llvm.loop !579

.preheader.i.us.us49:                             ; preds = %.preheader.i.us.us49.preheader, %._crit_edge.split.split.i.split.us.us.split.split.us.us.split
  %.0816.i.us.us50 = phi i64 [ %i.md, %._crit_edge.split.split.i.split.us.us.split.split.us.us.split ], [ 0, %.preheader.i.us.us49.preheader ] ; 3 uses
  %i.ke = mul nuw nsw i64 %.0816.i.us.us50, %i.z
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ke ; 7 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = mul nuw nsw i64 %.0816.i.us.us50, %i.t
  %invariant.gep.i.us.us51 = getelementptr [8 x i8], ptr %i.v, i64 %i.kh
  br label %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us

._crit_edge.i.i.i.i.i.i.i.us.us.us35.us:          ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us, %.preheader.i.us.us49
  %.011.i.us.us.us36.us = phi i64 [ 0, %.preheader.i.us.us49 ], [ %i.mc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us ] ; 3 uses
  %i.ki = mul nsw i64 %i.am, %.011.i.us.us.us36.us
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ki ; 7 uses
  %i.kk = load <2 x double>, ptr %i.kj, align 1, !tbaa !58
  %i.kl = load <2 x double>, ptr %i.kf, align 1, !tbaa !58
  %i.km = fmul <2 x double> %i.kk, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.ko = load <2 x double>, ptr %i.kn, align 1, !tbaa !58
  %i.kp = load <2 x double>, ptr %i.kg, align 1, !tbaa !58
  %i.kq = fmul <2 x double> %i.ko, %i.kp
  %i.kr = fadd <2 x double> %i.kq, %i.km
  %i.ks = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.kr) ; 2 uses
  br i1 %lcmp.mod166.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol:        ; preds = %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us40.us.prol = phi i64 [ %i.kz, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ], [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us41.us.prol = phi double [ %i.ky, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ], [ %i.ks, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ]
  %prol.iter167 = phi i64 [ %prol.iter167.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ]
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.prol
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !19
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.prol
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !19
  %i.kx = fmul double %i.ku, %i.kw
  %i.ky = fadd double %.182.i.i.i.i.i.i.i.us.us.us41.us.prol, %i.kx ; 3 uses
  %i.kz = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.prol, 1 ; 2 uses
  %prol.iter167.next = add i64 %prol.iter167, 1   ; 2 uses
  %prol.iter167.cmp.not = icmp eq i64 %prol.iter167.next, %xtraiter165
  br i1 %prol.iter167.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol, !llvm.loop !582

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us
  %.lcssa156.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ], [ %i.ky, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us40.us.unr = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ], [ %i.kz, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us41.us.unr = phi double [ %i.ks, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ], [ %i.ky, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ]
  br i1 %i.hu, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us:             ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us
  %.05283.i.i.i.i.i.i.i.us.us.us40.us = phi i64 [ %i.mb, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us40.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us41.us = phi double [ %i.ma, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us ], [ %.182.i.i.i.i.i.i.i.us.us.us41.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit ]
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us
  %i.lb = load double, ptr %i.la, align 8, !tbaa !19
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us
end_hunk_1
