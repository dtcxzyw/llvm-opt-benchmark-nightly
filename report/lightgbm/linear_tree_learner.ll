Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.14:bb.a
  %.036.prol = phi i64 [ %i.cb, %scalar.ph.prol ], [ %.036.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.036.prol
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !189
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.036.prol ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !189
  %i.ca = fadd double %i.bx, %i.bz
  store double %i.ca, ptr %i.by, align 8, !tbaa !189
  %i.cb = add nuw i64 %.036.prol, 1               ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !512

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.036.unr = phi i64 [ %.036.ph, %scalar.ph.preheader ], [ %i.cb, %scalar.ph.prol ]
  %i.cc = icmp ult i64 %i.bv, 3
  br i1 %i.cc, label %._crit_edge, label %scalar.ph

scalar.ph62:                                      ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62
  %.03335 = phi i64 [ %i.da, %scalar.ph62 ], [ %.03335.unr, %scalar.ph62.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.03335
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !189
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.03335 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !189
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !189
  %i.ci = add nuw nsw i64 %.03335, 1              ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !189
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ci ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !189
  %i.cn = fadd double %i.ck, %i.cm
  store double %i.cn, ptr %i.cl, align 8, !tbaa !189
  %i.co = add nuw nsw i64 %.03335, 2              ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !189
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.co ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !189
  %i.ct = fadd double %i.cq, %i.cs
  store double %i.ct, ptr %i.cr, align 8, !tbaa !189
  %i.cu = add nuw nsw i64 %.03335, 3              ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !189
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cu ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !189
  %i.cz = fadd double %i.cw, %i.cy
  store double %i.cz, ptr %i.cx, align 8, !tbaa !189
  %i.da = add nuw nsw i64 %.03335, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.da, %i.ae
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph62, !llvm.loop !513

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.pre
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !167
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !166
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !166
  %i.dh = add nsw i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !166
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.di = load i32, ptr %i.b, align 4, !tbaa !166
  %i.dj = sext i32 %i.di to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.dj
  br i1 %.not.not, label %bb.c, label %._crit_edge42

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.036 = phi i64 [ %i.eh, %scalar.ph ], [ %.036.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.036
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !189
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.036 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !189
  %i.do = fadd double %i.dl, %i.dn
  store double %i.do, ptr %i.dm, align 8, !tbaa !189
  %i.dp = add nuw i64 %.036, 1                    ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !189
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.dp ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !189
  %i.du = fadd double %i.dr, %i.dt
  store double %i.du, ptr %i.ds, align 8, !tbaa !189
  %i.dv = add nuw i64 %.036, 2                    ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !189
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.dv ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !189
  %i.ea = fadd double %i.dx, %i.dz
  store double %i.ea, ptr %i.dy, align 8, !tbaa !189
  %i.eb = add nuw i64 %.036, 3                    ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !189
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.eb ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !189
  %i.eg = fadd double %i.ed, %i.ef
  store double %i.eg, ptr %i.ee, align 8, !tbaa !189
  %i.eh = add nuw i64 %.036, 4
  %exitcond45.not.3 = icmp eq i64 %i.eb, %i.aa
  br i1 %exitcond45.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !514

._crit_edge42:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge42, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.15(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef readonly captures(none) %9) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 8    ; 9 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 11 uses
  %13 = alloca %"class.Eigen::Matrix", align 8    ; 13 uses
  %14 = alloca %"class.Eigen::Product", align 8   ; 11 uses
  %15 = alloca %"class.Eigen::CwiseUnaryOp", align 8 ; 9 uses
  %16 = alloca %"class.Eigen::Inverse", align 8   ; 9 uses
  %17 = alloca %"class.Eigen::FullPivLU", align 8 ; 9 uses
  %18 = alloca %"class.std::vector.36", align 8   ; 13 uses
  %19 = alloca %"class.std::vector.36", align 8   ; 8 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !166    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.h = load i32, ptr %0, align 4, !tbaa !166    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !166
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !166
  %i.k = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not242 = icmp sgt i32 %i.k, %i.j
  br i1 %.not242, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 592
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 616
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ar = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph245, %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph245 ], [ %indvars.iv.next, %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit ] ; 24 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !166
  %i.av = load ptr, ptr %4, align 8, !tbaa !273
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !169 ; 2 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !167 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 2                 ; 15 uses
  %i.be = trunc i64 %i.bd to i32
  %.not90 = icmp sgt i32 %i.au, %i.be
  br i1 %.not90, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = load i8, ptr %5, align 1, !tbaa !268, !range !259, !noundef !260
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = load ptr, ptr %6, align 8, !tbaa !263   ; 5 uses
  br i1 %i.bg, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 576
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !187
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !189
  %i.bm = load double, ptr %7, align 8, !tbaa !189 ; 2 uses
  %i.bn = fsub double 1.000000e+00, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !187
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load double, ptr %i.bq, align 8, !tbaa !189
  %i.bs = fmul double %i.bn, %i.br
  %i.bt = load double, ptr %8, align 8, !tbaa !189
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = call double @llvm.fmuladd.f64(double %i.bm, double %i.bl, double %i.bu) ; 2 uses
  %i.bw = call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ole double %i.bw, f0x38AA95A5C0000000
  %i.by = select i1 %i.bx, double 0.000000e+00, double %i.bv
  store double %i.by, ptr %i.bk, align 8, !tbaa !189
  %i.bz = icmp ugt i64 %i.bd, 1152921504606846975
  br i1 %i.bz, label %.invoke313, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #35
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc91:                                         ; preds = %bb.f
  %i.cc = shl i64 %i.ba, 1
  %i.cd = add i64 %i.cc, -8
  %i.ce = shl i64 %i.bb, 1
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = and i64 %i.cf, -8
  %i.ch = add i64 %i.cg, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cb, i8 0, i64 %i.ch, i1 false), !tbaa !189
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bd
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  %i.ck = ptrtoint ptr %i.ci to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit:            ; preds = %.noexc91, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ck, %.noexc91 ]
  %.sroa.0198.0 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc91 ] ; 8 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cj, %.noexc91 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 552 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !185
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %indvars.iv ; 3 uses
  %i.co = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.cp = ptrtoint ptr %.sroa.0198.0 to i64       ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = ashr exact i64 %i.cq, 3                 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !190 ; 2 uses
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !187 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 3 uses
  %i.cz = icmp ugt i64 %i.cr, %i.cy
  br i1 %i.cz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.da = sub nuw nsw i64 %i.cr, %i.cy
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 noundef %i.da)
          to label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.db = icmp ult i64 %i.cr, %i.cy
  br i1 %i.db, label %bb.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, %i.dc
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.i
  store ptr %i.dc, ptr %i.cs, align 8, !tbaa !190
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

_ZNSt6vectorIdSaIdEE6resizeEm.exit.i:             ; preds = %bb.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i, %bb.i, %bb.h
  %.not.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %.sroa.0198.0
  br i1 %.not.i, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  %i.dd = load ptr, ptr %i.cl, align 8, !tbaa !185
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %indvars.iv
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !187 ; 5 uses
  %min.iters.check327 = icmp ult i64 %i.cr, 4
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = sub i64 %i.cp, %i.dg
  %diff.check325 = icmp ugt i64 %i.dh, -32
  %or.cond = select i1 %min.iters.check327, i1 true, i1 %diff.check325
  br i1 %or.cond, label %scalar.ph326.preheader, label %vector.ph328

vector.ph328:                                     ; preds = %.lr.ph.i
  %n.vec329 = and i64 %i.cr, -4                   ; 3 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next334, %vector.body330 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %index331 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load332 = load <2 x double>, ptr %i.di, align 8, !tbaa !189 ; 2 uses
  %wide.load333 = load <2 x double>, ptr %i.dj, align 8, !tbaa !189 ; 2 uses
  %i.dk = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load332)
  %i.dl = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load333)
  %i.dm = fcmp ole <2 x double> %i.dk, splat (double f0x38AA95A5C0000000)
  %i.dn = fcmp ole <2 x double> %i.dl, splat (double f0x38AA95A5C0000000)
  %i.do = select <2 x i1> %i.dm, <2 x double> zeroinitializer, <2 x double> %wide.load332
  %i.dp = select <2 x i1> %i.dn, <2 x double> zeroinitializer, <2 x double> %wide.load333
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index331 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <2 x double> %i.do, ptr %i.dq, align 8, !tbaa !189
  store <2 x double> %i.dp, ptr %i.dr, align 8, !tbaa !189
  %index.next334 = add nuw i64 %index331, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.ds, label %middle.block335, label %vector.body330, !llvm.loop !519

middle.block335:                                  ; preds = %vector.body330
  %cmp.n336 = icmp eq i64 %i.cr, %n.vec329
  br i1 %cmp.n336, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %.lr.ph.i, %middle.block335
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec329, %middle.block335 ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  %i.dt = and i64 %i.cq, 8
  %lcmp.mod.not = icmp eq i64 %i.dt, 0
  br i1 %lcmp.mod.not, label %scalar.ph326.prol.loopexit, label %scalar.ph326.prol

scalar.ph326.prol:                                ; preds = %scalar.ph326.preheader
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %.09.i.ph
  %i.dv = load double, ptr %i.du, align 8, !tbaa !189 ; 2 uses
  %i.dw = call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp ole double %i.dw, f0x38AA95A5C0000000
  %i.dy = select i1 %i.dx, double 0.000000e+00, double %i.dv
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.09.i.ph
  store double %i.dy, ptr %i.dz, align 8, !tbaa !189
  %i.ea = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph326.prol.loopexit

scalar.ph326.prol.loopexit:                       ; preds = %scalar.ph326.prol, %scalar.ph326.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph326.preheader ], [ %i.ea, %scalar.ph326.prol ]
  %i.eb = icmp eq i64 %i.cr, %.neg
  br i1 %i.eb, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326

scalar.ph326:                                     ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326
  %.09.i = phi i64 [ %i.ep, %scalar.ph326 ], [ %.09.i.unr, %scalar.ph326.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %.09.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !189 ; 2 uses
  %i.ee = call double @llvm.fabs.f64(double %i.ed)
  %i.ef = fcmp ole double %i.ee, f0x38AA95A5C0000000
  %i.eg = select i1 %i.ef, double 0.000000e+00, double %i.ed
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.09.i
  store double %i.eg, ptr %i.eh, align 8, !tbaa !189
  %i.ei = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !189 ; 2 uses
  %i.el = call double @llvm.fabs.f64(double %i.ek)
  %i.em = fcmp ole double %i.el, f0x38AA95A5C0000000
  %i.en = select i1 %i.em, double 0.000000e+00, double %i.ek
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ei
  store double %i.en, ptr %i.eo, align 8, !tbaa !189
  %i.ep = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ep, %i.cr
  br i1 %exitcond.not.i.1, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326, !llvm.loop !520

_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit: ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  %.not.i.i.i93 = icmp eq ptr %.sroa.0198.0, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread

_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread: ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326, %middle.block335, %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit
  %i.eq = sub i64 %.sroa.11.0, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0198.0, i64 noundef %i.eq) #36
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit, %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread
  %i.er = load ptr, ptr %6, align 8, !tbaa !263
  %i.es = load ptr, ptr %4, align 8, !tbaa !273
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 624
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !273
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %indvars.iv
  %i.ex = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.d
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !187
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !189 ; 2 uses
  %i.fc = call double @llvm.fabs.f64(double %i.fb)
  %i.fd = fcmp ole double %i.fc, f0x38AA95A5C0000000
  %i.fe = select i1 %i.fd, double 0.000000e+00, double %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bh, i64 576
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !187
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv
  store double %i.fe, ptr %i.fh, align 8, !tbaa !189
  br label %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.fi = add nsw i64 %i.bd, 1                    ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  store i64 %i.fi, ptr %i.l, align 8, !tbaa !305
  store i64 %i.fi, ptr %i.m, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %12, align 8
  store i64 %i.fi, ptr %i.n, align 8, !tbaa !305
  store i64 1, ptr %i.o, align 8, !tbaa !306
  br label %._crit_edge

bb.l:                                             ; preds = %bb.k
  %i.fk = sdiv i64 9223372036854775807, %i.fi
  %.not203 = icmp slt i64 %i.bd, %i.fk
  br i1 %.not203, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.fl = mul nsw i64 %i.fi, %i.fi                ; 2 uses
  %i.fm = icmp samesign ugt i64 %i.fl, 2305843009213693951
  br i1 %i.fm, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.m
  %i.fn = shl nuw i64 %i.fl, 3
  %i.fo = call noalias ptr @malloc(i64 noundef %i.fn) #38 ; 4 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %.invoke, label %bb.o

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.m, %bb.l
  %i.fq = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fq, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %.invoke
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = load ptr, ptr %11, align 8, !tbaa !307
  call void @free(ptr noundef %i.fs) #6
  br label %.body

bb.o:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.fo, ptr %11, align 8, !tbaa !307
  store i64 %i.fi, ptr %i.l, align 8, !tbaa !305
  store i64 %i.fi, ptr %i.m, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ft = icmp sgt i64 %i.bd, -1
  br i1 %i.ft, label %bb.p, label %.preheader.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.fu = icmp samesign ugt i64 %i.bd, 2305843009213693950
  br i1 %i.fu, label %.invoke309, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166: ; preds = %bb.p
  %i.fv = shl nuw i64 %i.fi, 3
  %i.fw = call noalias ptr @malloc(i64 noundef %i.fv) #38 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %.invoke309, label %.preheader.lr.ph

.invoke309:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166, %bb.p
  %i.fy = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fy, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont310 unwind label %bb.q

.cont310:                                         ; preds = %.invoke309
  unreachable

bb.q:                                             ; preds = %.invoke309
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = load ptr, ptr %12, align 8, !tbaa !307
  call void @free(ptr noundef %i.ga) #6
  br label %.body

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166, %bb.o
  %.sink.i165 = phi ptr [ %i.fw, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166 ], [ null, %bb.o ] ; 2 uses
  store ptr %.sink.i165, ptr %12, align 8, !tbaa !307
  store i64 %i.fi, ptr %i.n, align 8, !tbaa !305
  store i64 1, ptr %i.o, align 8, !tbaa !306
  %i.gb = load ptr, ptr %i.p, align 8, !tbaa !185
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %indvars.iv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !187 ; 4 uses
  %i.ge = load ptr, ptr %i.r, align 8, !tbaa !185
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %indvars.iv
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !187
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.split.us
  %.086230 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.hf, %.split.us ] ; 15 uses
  %.087229 = phi i64 [ 0, %.preheader.lr.ph ], [ %.us-phi, %.split.us ] ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.fo, i64 %.086230 ; 4 uses
  %i.gi = mul nsw i64 %i.fi, %.086230
  %invariant.gep = getelementptr [8 x i8], ptr %i.fo, i64 %i.gi ; 4 uses
  %i.gj = icmp ult i64 %.086230, %i.bd
  %.fr = freeze i1 %i.gj
  br i1 %.fr, label %.preheader.split, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  %20 = add i64 %i.bd, %.086230
  %21 = and i64 %20, 1
  %lcmp.mod354.not.not = icmp eq i64 %21, 0
  br i1 %lcmp.mod354.not.not, label %.preheader.split.us.prol, label %.preheader.split.us.prol.loopexit

.preheader.split.us.prol:                         ; preds = %.preheader.split.us.preheader
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.087229
  %23 = load double, ptr %22, align 8, !tbaa !189 ; 2 uses
  %24 = mul nsw i64 %i.fi, %.086230
  %25 = getelementptr [8 x i8], ptr %i.gh, i64 %24
  store double %23, ptr %25, align 8, !tbaa !189
  %gep.us.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.086230
  store double %23, ptr %gep.us.prol, align 8, !tbaa !189
  %26 = add i64 %.087229, 1                       ; 2 uses
  %27 = add nuw i64 %.086230, 1
  br label %.preheader.split.us.prol.loopexit

.preheader.split.us.prol.loopexit:                ; preds = %.preheader.split.us.prol, %.preheader.split.us.preheader
  %.lcssa.unr = phi i64 [ poison, %.preheader.split.us.preheader ], [ %26, %.preheader.split.us.prol ]
  %.085228.us.unr = phi i64 [ %.086230, %.preheader.split.us.preheader ], [ %27, %.preheader.split.us.prol ]
  %.1227.us.unr = phi i64 [ %.087229, %.preheader.split.us.preheader ], [ %26, %.preheader.split.us.prol ]
  %28 = icmp eq i64 %i.bd, %.086230
  br i1 %28, label %.split.us, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.prol.loopexit, %.preheader.split.us
  %.085228.us = phi i64 [ %i.gp, %.preheader.split.us ], [ %.085228.us.unr, %.preheader.split.us.prol.loopexit ] ; 4 uses
  %.1227.us = phi i64 [ %i.go, %.preheader.split.us ], [ %.1227.us.unr, %.preheader.split.us.prol.loopexit ] ; 3 uses
  %29 = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.1227.us
  %30 = load double, ptr %29, align 8, !tbaa !189 ; 2 uses
  %31 = mul nsw i64 %i.fi, %.085228.us
  %32 = getelementptr [8 x i8], ptr %i.gh, i64 %31
  store double %30, ptr %32, align 8, !tbaa !189
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep, i64 %.085228.us
  store double %30, ptr %gep.us, align 8, !tbaa !189
  %33 = add nuw i64 %.085228.us, 1                ; 3 uses
  %i.gk = getelementptr [8 x i8], ptr %i.gd, i64 %.1227.us
  %34 = getelementptr i8, ptr %i.gk, i64 8
  %i.gl = load double, ptr %34, align 8, !tbaa !189 ; 2 uses
  %i.gm = mul nsw i64 %i.fi, %33
  %i.gn = getelementptr [8 x i8], ptr %i.gh, i64 %i.gm
  store double %i.gl, ptr %i.gn, align 8, !tbaa !189
  %gep.us.a = getelementptr [8 x i8], ptr %invariant.gep, i64 %33
  store double %i.gl, ptr %gep.us.a, align 8, !tbaa !189
  %i.go = add i64 %.1227.us, 2                    ; 2 uses
  %i.gp = add nuw i64 %.085228.us, 2
  %exitcond.not.1 = icmp eq i64 %33, %i.bd
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split.us, !llvm.loop !521

._crit_edge:                                      ; preds = %.split.us, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2IS2_EERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(123) %17, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.split:                                 ; preds = %.preheader, %bb.s
  %.085228 = phi i64 [ %i.hb, %bb.s ], [ %.086230, %.preheader ] ; 5 uses
  %.1227 = phi i64 [ %i.ha, %bb.s ], [ %.087229, %.preheader ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.1227
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !189 ; 2 uses
  %i.gs = mul nsw i64 %i.fi, %.085228
  %i.gt = getelementptr [8 x i8], ptr %i.gh, i64 %i.gs ; 3 uses
  store double %i.gr, ptr %i.gt, align 8, !tbaa !189
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.085228
  store double %i.gr, ptr %gep, align 8, !tbaa !189
  %i.gu = icmp eq i64 %.086230, %.085228
  br i1 %i.gu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader.split
  %i.gv = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 432
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !308
  %i.gy = load double, ptr %i.gt, align 8, !tbaa !189
  %i.gz = fadd double %i.gx, %i.gy
  store double %i.gz, ptr %i.gt, align 8, !tbaa !189
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.split
  %i.ha = add i64 %.1227, 1                       ; 2 uses
  %i.hb = add nuw i64 %.085228, 1
  %exitcond259.not = icmp eq i64 %.085228, %i.bd
  br i1 %exitcond259.not, label %.split.us, label %.preheader.split, !llvm.loop !521

.split.us:                                        ; preds = %.preheader.split.us.prol.loopexit, %.preheader.split.us, %bb.s
  %.us-phi = phi i64 [ %i.ha, %bb.s ], [ %.lcssa.unr, %.preheader.split.us.prol.loopexit ], [ %i.go, %.preheader.split.us ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.086230
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !189
  %i.he = getelementptr inbounds [8 x i8], ptr %.sink.i165, i64 %.086230
  store double %i.hd, ptr %i.he, align 8, !tbaa !189
  %i.hf = add nuw i64 %.086230, 1
  %exitcond.not = icmp eq i64 %.086230, %i.bd
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !522

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit: ; preds = %._crit_edge
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(123) %17)
          to label %_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(129) %15, ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit: ; preds = %_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef nonnull align 8 dereferenceable(129) %15)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit
  store ptr %12, ptr %i.s, align 8, !tbaa !310, !alias.scope !532
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.hg = load i64, ptr %i.t, align 8, !tbaa !306 ; 4 uses
  %i.hh = load i64, ptr %i.o, align 8, !tbaa !306 ; 4 uses
  %i.hi = icmp eq i64 %i.hg, 0
  %i.hj = icmp eq i64 %i.hh, 0
  %or.cond.i.i.i.i104 = or i1 %i.hi, %i.hj
  br i1 %or.cond.i.i.i.i104, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hk = sdiv i64 9223372036854775807, %i.hh
  %i.hl = icmp sgt i64 %i.hg, %i.hk
  br i1 %i.hl, label %.invoke311, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.u, %bb.t
  %i.hm = mul nsw i64 %i.hh, %i.hg                ; 4 uses
  %.not.i170 = icmp eq i64 %i.hm, 0
  br i1 %.not.i170, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.hn = icmp sgt i64 %i.hm, 0
  br i1 %i.hn, label %bb.w, label %.sink.split.i171

bb.w:                                             ; preds = %bb.v
  %i.ho = icmp samesign ugt i64 %i.hm, 2305843009213693951
  br i1 %i.ho, label %.invoke311, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173: ; preds = %bb.w
  %i.hp = shl nuw i64 %i.hm, 3
  %i.hq = call noalias ptr @malloc(i64 noundef %i.hp) #38 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %.invoke311, label %.sink.split.i171

.invoke311:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173, %bb.w, %bb.u
  %i.hs = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hs, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont312 unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont312:                                         ; preds = %.invoke311
  unreachable

.sink.split.i171:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173, %bb.v
  %.sink.i172 = phi ptr [ %i.hq, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173 ], [ null, %bb.v ]
  store ptr %.sink.i172, ptr %13, align 8, !tbaa !307
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i171, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.hg, ptr %i.u, align 8, !tbaa !305
  store i64 %i.hh, ptr %i.v, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS3_EEEEEES3_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSE_RKSG_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.x unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, %.invoke311
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = load ptr, ptr %13, align 8, !tbaa !307
  call void @free(ptr noundef %i.ht) #6
  br label %.body

bb.x:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.hu = load ptr, ptr %i.w, align 8, !tbaa !312
  call void @free(ptr noundef %i.hu) #6
  %i.hv = load ptr, ptr %i.x, align 8, !tbaa !314
  call void @free(ptr noundef %i.hv) #6
  %i.hw = load ptr, ptr %i.y, align 8, !tbaa !314
  call void @free(ptr noundef %i.hw) #6
  %i.hx = load ptr, ptr %i.z, align 8, !tbaa !314
  call void @free(ptr noundef %i.hx) #6
  %i.hy = load ptr, ptr %14, align 8, !tbaa !307
  call void @free(ptr noundef %i.hy) #6
  %i.hz = load ptr, ptr %i.aa, align 8, !tbaa !312
  call void @free(ptr noundef %i.hz) #6
  %i.ia = load ptr, ptr %i.ab, align 8, !tbaa !314
  call void @free(ptr noundef %i.ia) #6
  %i.ib = load ptr, ptr %i.ac, align 8, !tbaa !314
  call void @free(ptr noundef %i.ib) #6
  %i.ic = load ptr, ptr %i.ad, align 8, !tbaa !314
  call void @free(ptr noundef %i.ic) #6
  %i.id = load ptr, ptr %15, align 8, !tbaa !307
  call void @free(ptr noundef %i.id) #6
  %i.ie = load ptr, ptr %i.ae, align 8, !tbaa !312
  call void @free(ptr noundef %i.ie) #6
  %i.if = load ptr, ptr %i.af, align 8, !tbaa !314
  call void @free(ptr noundef %i.if) #6
  %i.ig = load ptr, ptr %i.ag, align 8, !tbaa !314
  call void @free(ptr noundef %i.ig) #6
  %i.ih = load ptr, ptr %i.ah, align 8, !tbaa !314
  call void @free(ptr noundef %i.ih) #6
  %i.ii = load ptr, ptr %16, align 8, !tbaa !307
  call void @free(ptr noundef %i.ii) #6
  %i.ij = load ptr, ptr %i.ai, align 8, !tbaa !312
  call void @free(ptr noundef %i.ij) #6
  %i.ik = load ptr, ptr %i.aj, align 8, !tbaa !314
  call void @free(ptr noundef %i.ik) #6
  %i.il = load ptr, ptr %i.ak, align 8, !tbaa !314
  call void @free(ptr noundef %i.il) #6
  %i.im = load ptr, ptr %i.al, align 8, !tbaa !314
  call void @free(ptr noundef %i.im) #6
  %i.in = load ptr, ptr %17, align 8, !tbaa !307
  call void @free(ptr noundef %i.in) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.io = load ptr, ptr %6, align 8, !tbaa !263
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 552
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !185, !noalias !533
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !190, !noalias !533 ; 2 uses
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !187, !noalias !533 ; 3 uses
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.ix = sub i64 %i.iv, %i.iw                    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.it, %i.iu
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iy = icmp ugt i64 %i.ix, 9223372036854775800
  br i1 %i.iy, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !220

.noexc.i.i.i:                                     ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.y
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #35
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i107 = load ptr, ptr %i.ir, align 8, !tbaa !222, !noalias !533 ; 2 uses
  %.pre1.i = load ptr, ptr %i.is, align 8, !tbaa !222, !noalias !533
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i107 to i64
  br label %bb.z

bb.z:                                             ; preds = %.noexc110, %bb.x
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc110 ], [ %i.iw, %bb.x ]
  %.pre-phi.i108 = phi i64 [ %.pre2.i, %.noexc110 ], [ %i.iv, %bb.x ]
  %i.ja = phi ptr [ %.pre.i107, %.noexc110 ], [ %i.iu, %bb.x ] ; 2 uses
  %i.jb = phi ptr [ %i.iz, %.noexc110 ], [ null, %bb.x ] ; 5 uses
  %i.jc = sub i64 %.pre-phi.i108, %.pre-phi4.i    ; 3 uses
  %i.jd = icmp sgt i64 %i.jc, 8
  br i1 %i.jd, label %bb.aa, label %bb.ab, !prof !223

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jb, ptr align 8 %i.ja, i64 %i.jc, i1 false), !noalias !533
  br label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.je = icmp eq i64 %i.jc, 8
  br i1 %i.je, label %bb.ac, label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

bb.ac:                                            ; preds = %bb.ab
  %i.jf = load double, ptr %i.ja, align 8, !tbaa !189, !noalias !533
  store double %i.jf, ptr %i.jb, align 8, !tbaa !189, !noalias !533
  br label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

_ZNK8LightGBM4Tree10LeafCoeffsEi.exit:            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.jg = load ptr, ptr %4, align 8, !tbaa !273   ; 2 uses
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %indvars.iv ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !169
  %i.jk = load ptr, ptr %i.jh, align 8, !tbaa !167 ; 2 uses
  %.not248 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not248, label %._crit_edge235, label %.lr.ph

._crit_edge235.loopexit:                          ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.jl = ptrtoint ptr %.sroa.18.1 to i64
  br label %._crit_edge235

end_hunk_0
begin_hunk_1_@_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b.omp_outlined.19:bb.a
scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph33, %middle.block
  %.032.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph33 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.bw = add nsw i64 %i.z, 1
  %i.bx = sub nsw i64 %i.z, %.032.ph
  %xtraiter74 = and i64 %i.bw, 3                  ; 2 uses
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.032.prol = phi i64 [ %i.cd, %scalar.ph.prol ], [ %.032.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter76 = phi i64 [ %prol.iter76.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.032.prol
  %i.bz = load double, ptr %i.by, align 8, !tbaa !189
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.032.prol ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !189
  %i.cc = fadd double %i.bz, %i.cb
  store double %i.cc, ptr %i.ca, align 8, !tbaa !189
  %i.cd = add nuw i64 %.032.prol, 1               ; 2 uses
  %prol.iter76.next = add i64 %prol.iter76, 1     ; 2 uses
  %prol.iter76.cmp.not = icmp eq i64 %prol.iter76.next, %xtraiter74
  br i1 %prol.iter76.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1115

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.032.unr = phi i64 [ %.032.ph, %scalar.ph.preheader ], [ %i.cd, %scalar.ph.prol ]
  %i.ce = icmp ult i64 %i.bx, 3
  br i1 %i.ce, label %._crit_edge, label %scalar.ph

scalar.ph60:                                      ; preds = %scalar.ph60.prol.loopexit, %scalar.ph60
  %.02931 = phi i64 [ %i.dc, %scalar.ph60 ], [ %.02931.unr, %scalar.ph60.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.02931
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !189
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.02931 ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !189
  %i.cj = fadd double %i.cg, %i.ci
  store double %i.cj, ptr %i.ch, align 8, !tbaa !189
  %i.ck = add nuw nsw i64 %.02931, 1              ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !189
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ck ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !189
  %i.cp = fadd double %i.cm, %i.co
  store double %i.cp, ptr %i.cn, align 8, !tbaa !189
  %i.cq = add nuw nsw i64 %.02931, 2              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !189
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cq ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !189
  %i.cv = fadd double %i.cs, %i.cu
  store double %i.cv, ptr %i.ct, align 8, !tbaa !189
  %i.cw = add nuw nsw i64 %.02931, 3              ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !189
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cw ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !189
  %i.db = fadd double %i.cy, %i.da
  store double %i.db, ptr %i.cz, align 8, !tbaa !189
  %i.dc = add nuw nsw i64 %.02931, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dc, %i.ad
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph60, !llvm.loop !1116

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond43.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond43.not, label %._crit_edge38, label %bb.c

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.032 = phi i64 [ %i.ea, %scalar.ph ], [ %.032.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.032
  %i.de = load double, ptr %i.dd, align 8, !tbaa !189
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.032 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !189
  %i.dh = fadd double %i.de, %i.dg
  store double %i.dh, ptr %i.df, align 8, !tbaa !189
  %i.di = add nuw i64 %.032, 1                    ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !189
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.di ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !189
  %i.dn = fadd double %i.dk, %i.dm
  store double %i.dn, ptr %i.dl, align 8, !tbaa !189
  %i.do = add nuw i64 %.032, 2                    ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !189
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.do ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !189
  %i.dt = fadd double %i.dq, %i.ds
  store double %i.dt, ptr %i.dr, align 8, !tbaa !189
  %i.du = add nuw i64 %.032, 3                    ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !189
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.du ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !189
  %i.dz = fadd double %i.dw, %i.dy
  store double %i.dz, ptr %i.dx, align 8, !tbaa !189
  %i.ea = add nuw i64 %.032, 4
  %exitcond41.not.3 = icmp eq i64 %i.du, %i.z
  br i1 %exitcond41.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1117

._crit_edge38:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge38, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b.omp_outlined.20(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef readonly captures(none) %9) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 8    ; 9 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 11 uses
  %13 = alloca %"class.Eigen::Matrix", align 8    ; 13 uses
  %14 = alloca %"class.Eigen::Product", align 8   ; 11 uses
  %15 = alloca %"class.Eigen::CwiseUnaryOp", align 8 ; 9 uses
  %16 = alloca %"class.Eigen::Inverse", align 8   ; 9 uses
  %17 = alloca %"class.Eigen::FullPivLU", align 8 ; 9 uses
  %18 = alloca %"class.std::vector.36", align 8   ; 13 uses
  %19 = alloca %"class.std::vector.36", align 8   ; 8 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !166    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.h = load i32, ptr %0, align 4, !tbaa !166    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !166
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !166
  %i.k = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not242 = icmp sgt i32 %i.k, %i.j
  br i1 %.not242, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 592
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 616
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ar = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph245, %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph245 ], [ %indvars.iv.next, %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit ] ; 24 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !166
  %i.av = load ptr, ptr %4, align 8, !tbaa !273
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !169 ; 2 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !167 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 2                 ; 15 uses
  %i.be = trunc i64 %i.bd to i32
  %.not90 = icmp sgt i32 %i.au, %i.be
  br i1 %.not90, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = load i8, ptr %5, align 1, !tbaa !268, !range !259, !noundef !260
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = load ptr, ptr %6, align 8, !tbaa !263   ; 5 uses
  br i1 %i.bg, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 576
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !187
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !189
  %i.bm = load double, ptr %7, align 8, !tbaa !189 ; 2 uses
  %i.bn = fsub double 1.000000e+00, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !187
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load double, ptr %i.bq, align 8, !tbaa !189
  %i.bs = fmul double %i.bn, %i.br
  %i.bt = load double, ptr %8, align 8, !tbaa !189
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = call double @llvm.fmuladd.f64(double %i.bm, double %i.bl, double %i.bu) ; 2 uses
  %i.bw = call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ole double %i.bw, f0x38AA95A5C0000000
  %i.by = select i1 %i.bx, double 0.000000e+00, double %i.bv
  store double %i.by, ptr %i.bk, align 8, !tbaa !189
  %i.bz = icmp ugt i64 %i.bd, 1152921504606846975
  br i1 %i.bz, label %.invoke313, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #35
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc91:                                         ; preds = %bb.f
  %i.cc = shl i64 %i.ba, 1
  %i.cd = add i64 %i.cc, -8
  %i.ce = shl i64 %i.bb, 1
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = and i64 %i.cf, -8
  %i.ch = add i64 %i.cg, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cb, i8 0, i64 %i.ch, i1 false), !tbaa !189
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bd
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  %i.ck = ptrtoint ptr %i.ci to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit:            ; preds = %.noexc91, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ck, %.noexc91 ]
  %.sroa.0198.0 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc91 ] ; 8 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cj, %.noexc91 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 552 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !185
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %indvars.iv ; 3 uses
  %i.co = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.cp = ptrtoint ptr %.sroa.0198.0 to i64       ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = ashr exact i64 %i.cq, 3                 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !190 ; 2 uses
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !187 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 3 uses
  %i.cz = icmp ugt i64 %i.cr, %i.cy
  br i1 %i.cz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.da = sub nuw nsw i64 %i.cr, %i.cy
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 noundef %i.da)
          to label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.db = icmp ult i64 %i.cr, %i.cy
  br i1 %i.db, label %bb.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, %i.dc
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.i
  store ptr %i.dc, ptr %i.cs, align 8, !tbaa !190
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

_ZNSt6vectorIdSaIdEE6resizeEm.exit.i:             ; preds = %bb.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i, %bb.i, %bb.h
  %.not.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %.sroa.0198.0
  br i1 %.not.i, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  %i.dd = load ptr, ptr %i.cl, align 8, !tbaa !185
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %indvars.iv
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !187 ; 5 uses
  %min.iters.check327 = icmp ult i64 %i.cr, 4
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = sub i64 %i.cp, %i.dg
  %diff.check325 = icmp ugt i64 %i.dh, -32
  %or.cond = select i1 %min.iters.check327, i1 true, i1 %diff.check325
  br i1 %or.cond, label %scalar.ph326.preheader, label %vector.ph328

vector.ph328:                                     ; preds = %.lr.ph.i
  %n.vec329 = and i64 %i.cr, -4                   ; 3 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next334, %vector.body330 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %index331 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load332 = load <2 x double>, ptr %i.di, align 8, !tbaa !189 ; 2 uses
  %wide.load333 = load <2 x double>, ptr %i.dj, align 8, !tbaa !189 ; 2 uses
  %i.dk = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load332)
  %i.dl = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load333)
  %i.dm = fcmp ole <2 x double> %i.dk, splat (double f0x38AA95A5C0000000)
  %i.dn = fcmp ole <2 x double> %i.dl, splat (double f0x38AA95A5C0000000)
  %i.do = select <2 x i1> %i.dm, <2 x double> zeroinitializer, <2 x double> %wide.load332
  %i.dp = select <2 x i1> %i.dn, <2 x double> zeroinitializer, <2 x double> %wide.load333
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index331 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <2 x double> %i.do, ptr %i.dq, align 8, !tbaa !189
  store <2 x double> %i.dp, ptr %i.dr, align 8, !tbaa !189
  %index.next334 = add nuw i64 %index331, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.ds, label %middle.block335, label %vector.body330, !llvm.loop !1122

middle.block335:                                  ; preds = %vector.body330
  %cmp.n336 = icmp eq i64 %i.cr, %n.vec329
  br i1 %cmp.n336, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %.lr.ph.i, %middle.block335
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec329, %middle.block335 ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  %i.dt = and i64 %i.cq, 8
  %lcmp.mod.not = icmp eq i64 %i.dt, 0
  br i1 %lcmp.mod.not, label %scalar.ph326.prol.loopexit, label %scalar.ph326.prol

scalar.ph326.prol:                                ; preds = %scalar.ph326.preheader
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %.09.i.ph
  %i.dv = load double, ptr %i.du, align 8, !tbaa !189 ; 2 uses
  %i.dw = call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp ole double %i.dw, f0x38AA95A5C0000000
  %i.dy = select i1 %i.dx, double 0.000000e+00, double %i.dv
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.09.i.ph
  store double %i.dy, ptr %i.dz, align 8, !tbaa !189
  %i.ea = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph326.prol.loopexit

scalar.ph326.prol.loopexit:                       ; preds = %scalar.ph326.prol, %scalar.ph326.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph326.preheader ], [ %i.ea, %scalar.ph326.prol ]
  %i.eb = icmp eq i64 %i.cr, %.neg
  br i1 %i.eb, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326

scalar.ph326:                                     ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326
  %.09.i = phi i64 [ %i.ep, %scalar.ph326 ], [ %.09.i.unr, %scalar.ph326.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %.09.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !189 ; 2 uses
  %i.ee = call double @llvm.fabs.f64(double %i.ed)
  %i.ef = fcmp ole double %i.ee, f0x38AA95A5C0000000
  %i.eg = select i1 %i.ef, double 0.000000e+00, double %i.ed
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.09.i
  store double %i.eg, ptr %i.eh, align 8, !tbaa !189
  %i.ei = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !189 ; 2 uses
  %i.el = call double @llvm.fabs.f64(double %i.ek)
  %i.em = fcmp ole double %i.el, f0x38AA95A5C0000000
  %i.en = select i1 %i.em, double 0.000000e+00, double %i.ek
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ei
  store double %i.en, ptr %i.eo, align 8, !tbaa !189
  %i.ep = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ep, %i.cr
  br i1 %exitcond.not.i.1, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326, !llvm.loop !1123

_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit: ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  %.not.i.i.i93 = icmp eq ptr %.sroa.0198.0, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread

_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread: ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326, %middle.block335, %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit
  %i.eq = sub i64 %.sroa.11.0, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0198.0, i64 noundef %i.eq) #36
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit, %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread
  %i.er = load ptr, ptr %6, align 8, !tbaa !263
  %i.es = load ptr, ptr %4, align 8, !tbaa !273
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 624
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !273
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %indvars.iv
  %i.ex = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.d
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !187
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !189 ; 2 uses
  %i.fc = call double @llvm.fabs.f64(double %i.fb)
  %i.fd = fcmp ole double %i.fc, f0x38AA95A5C0000000
  %i.fe = select i1 %i.fd, double 0.000000e+00, double %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bh, i64 576
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !187
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv
  store double %i.fe, ptr %i.fh, align 8, !tbaa !189
  br label %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.fi = add nsw i64 %i.bd, 1                    ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  store i64 %i.fi, ptr %i.l, align 8, !tbaa !305
  store i64 %i.fi, ptr %i.m, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %12, align 8
  store i64 %i.fi, ptr %i.n, align 8, !tbaa !305
  store i64 1, ptr %i.o, align 8, !tbaa !306
  br label %._crit_edge

bb.l:                                             ; preds = %bb.k
  %i.fk = sdiv i64 9223372036854775807, %i.fi
  %.not203 = icmp slt i64 %i.bd, %i.fk
  br i1 %.not203, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.fl = mul nsw i64 %i.fi, %i.fi                ; 2 uses
  %i.fm = icmp samesign ugt i64 %i.fl, 2305843009213693951
  br i1 %i.fm, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.m
  %i.fn = shl nuw i64 %i.fl, 3
  %i.fo = call noalias ptr @malloc(i64 noundef %i.fn) #38 ; 4 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %.invoke, label %bb.o

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.m, %bb.l
  %i.fq = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fq, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %.invoke
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = load ptr, ptr %11, align 8, !tbaa !307
  call void @free(ptr noundef %i.fs) #6
  br label %.body

bb.o:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.fo, ptr %11, align 8, !tbaa !307
  store i64 %i.fi, ptr %i.l, align 8, !tbaa !305
  store i64 %i.fi, ptr %i.m, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ft = icmp sgt i64 %i.bd, -1
  br i1 %i.ft, label %bb.p, label %.preheader.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.fu = icmp samesign ugt i64 %i.bd, 2305843009213693950
  br i1 %i.fu, label %.invoke309, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166: ; preds = %bb.p
  %i.fv = shl nuw i64 %i.fi, 3
  %i.fw = call noalias ptr @malloc(i64 noundef %i.fv) #38 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %.invoke309, label %.preheader.lr.ph

.invoke309:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166, %bb.p
  %i.fy = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fy, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont310 unwind label %bb.q

.cont310:                                         ; preds = %.invoke309
  unreachable

bb.q:                                             ; preds = %.invoke309
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = load ptr, ptr %12, align 8, !tbaa !307
  call void @free(ptr noundef %i.ga) #6
  br label %.body

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166, %bb.o
  %.sink.i165 = phi ptr [ %i.fw, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166 ], [ null, %bb.o ] ; 2 uses
  store ptr %.sink.i165, ptr %12, align 8, !tbaa !307
  store i64 %i.fi, ptr %i.n, align 8, !tbaa !305
  store i64 1, ptr %i.o, align 8, !tbaa !306
  %i.gb = load ptr, ptr %i.p, align 8, !tbaa !185
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %indvars.iv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !187 ; 4 uses
  %i.ge = load ptr, ptr %i.r, align 8, !tbaa !185
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %indvars.iv
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !187
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.split.us
  %.086230 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.hf, %.split.us ] ; 15 uses
  %.087229 = phi i64 [ 0, %.preheader.lr.ph ], [ %.us-phi, %.split.us ] ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.fo, i64 %.086230 ; 4 uses
  %i.gi = mul nsw i64 %i.fi, %.086230
  %invariant.gep = getelementptr [8 x i8], ptr %i.fo, i64 %i.gi ; 4 uses
  %i.gj = icmp ult i64 %.086230, %i.bd
  %.fr = freeze i1 %i.gj
  br i1 %.fr, label %.preheader.split, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  %20 = add i64 %i.bd, %.086230
  %21 = and i64 %20, 1
  %lcmp.mod354.not.not = icmp eq i64 %21, 0
  br i1 %lcmp.mod354.not.not, label %.preheader.split.us.prol, label %.preheader.split.us.prol.loopexit

.preheader.split.us.prol:                         ; preds = %.preheader.split.us.preheader
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.087229
  %23 = load double, ptr %22, align 8, !tbaa !189 ; 2 uses
  %24 = mul nsw i64 %i.fi, %.086230
  %25 = getelementptr [8 x i8], ptr %i.gh, i64 %24
  store double %23, ptr %25, align 8, !tbaa !189
  %gep.us.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.086230
  store double %23, ptr %gep.us.prol, align 8, !tbaa !189
  %26 = add i64 %.087229, 1                       ; 2 uses
  %27 = add nuw i64 %.086230, 1
  br label %.preheader.split.us.prol.loopexit

.preheader.split.us.prol.loopexit:                ; preds = %.preheader.split.us.prol, %.preheader.split.us.preheader
  %.lcssa.unr = phi i64 [ poison, %.preheader.split.us.preheader ], [ %26, %.preheader.split.us.prol ]
  %.085228.us.unr = phi i64 [ %.086230, %.preheader.split.us.preheader ], [ %27, %.preheader.split.us.prol ]
  %.1227.us.unr = phi i64 [ %.087229, %.preheader.split.us.preheader ], [ %26, %.preheader.split.us.prol ]
  %28 = icmp eq i64 %i.bd, %.086230
  br i1 %28, label %.split.us, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.prol.loopexit, %.preheader.split.us
  %.085228.us = phi i64 [ %i.gp, %.preheader.split.us ], [ %.085228.us.unr, %.preheader.split.us.prol.loopexit ] ; 4 uses
  %.1227.us = phi i64 [ %i.go, %.preheader.split.us ], [ %.1227.us.unr, %.preheader.split.us.prol.loopexit ] ; 3 uses
  %29 = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.1227.us
  %30 = load double, ptr %29, align 8, !tbaa !189 ; 2 uses
  %31 = mul nsw i64 %i.fi, %.085228.us
  %32 = getelementptr [8 x i8], ptr %i.gh, i64 %31
  store double %30, ptr %32, align 8, !tbaa !189
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep, i64 %.085228.us
  store double %30, ptr %gep.us, align 8, !tbaa !189
  %33 = add nuw i64 %.085228.us, 1                ; 3 uses
  %i.gk = getelementptr [8 x i8], ptr %i.gd, i64 %.1227.us
  %34 = getelementptr i8, ptr %i.gk, i64 8
  %i.gl = load double, ptr %34, align 8, !tbaa !189 ; 2 uses
  %i.gm = mul nsw i64 %i.fi, %33
  %i.gn = getelementptr [8 x i8], ptr %i.gh, i64 %i.gm
  store double %i.gl, ptr %i.gn, align 8, !tbaa !189
  %gep.us.a = getelementptr [8 x i8], ptr %invariant.gep, i64 %33
  store double %i.gl, ptr %gep.us.a, align 8, !tbaa !189
  %i.go = add i64 %.1227.us, 2                    ; 2 uses
  %i.gp = add nuw i64 %.085228.us, 2
  %exitcond.not.1 = icmp eq i64 %33, %i.bd
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split.us, !llvm.loop !1124

._crit_edge:                                      ; preds = %.split.us, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2IS2_EERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(123) %17, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.split:                                 ; preds = %.preheader, %bb.s
  %.085228 = phi i64 [ %i.hb, %bb.s ], [ %.086230, %.preheader ] ; 5 uses
  %.1227 = phi i64 [ %i.ha, %bb.s ], [ %.087229, %.preheader ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.1227
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !189 ; 2 uses
  %i.gs = mul nsw i64 %i.fi, %.085228
  %i.gt = getelementptr [8 x i8], ptr %i.gh, i64 %i.gs ; 3 uses
  store double %i.gr, ptr %i.gt, align 8, !tbaa !189
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.085228
  store double %i.gr, ptr %gep, align 8, !tbaa !189
  %i.gu = icmp eq i64 %.086230, %.085228
  br i1 %i.gu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader.split
  %i.gv = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 432
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !308
  %i.gy = load double, ptr %i.gt, align 8, !tbaa !189
  %i.gz = fadd double %i.gx, %i.gy
  store double %i.gz, ptr %i.gt, align 8, !tbaa !189
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.split
  %i.ha = add i64 %.1227, 1                       ; 2 uses
  %i.hb = add nuw i64 %.085228, 1
  %exitcond259.not = icmp eq i64 %.085228, %i.bd
  br i1 %exitcond259.not, label %.split.us, label %.preheader.split, !llvm.loop !1124

.split.us:                                        ; preds = %.preheader.split.us.prol.loopexit, %.preheader.split.us, %bb.s
  %.us-phi = phi i64 [ %i.ha, %bb.s ], [ %.lcssa.unr, %.preheader.split.us.prol.loopexit ], [ %i.go, %.preheader.split.us ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.086230
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !189
  %i.he = getelementptr inbounds [8 x i8], ptr %.sink.i165, i64 %.086230
  store double %i.hd, ptr %i.he, align 8, !tbaa !189
  %i.hf = add nuw i64 %.086230, 1
  %exitcond.not = icmp eq i64 %.086230, %i.bd
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !1125

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit: ; preds = %._crit_edge
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(123) %17)
          to label %_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(129) %15, ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit: ; preds = %_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef nonnull align 8 dereferenceable(129) %15)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit
  store ptr %12, ptr %i.s, align 8, !tbaa !310, !alias.scope !1135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.hg = load i64, ptr %i.t, align 8, !tbaa !306 ; 4 uses
  %i.hh = load i64, ptr %i.o, align 8, !tbaa !306 ; 4 uses
  %i.hi = icmp eq i64 %i.hg, 0
  %i.hj = icmp eq i64 %i.hh, 0
  %or.cond.i.i.i.i104 = or i1 %i.hi, %i.hj
  br i1 %or.cond.i.i.i.i104, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hk = sdiv i64 9223372036854775807, %i.hh
  %i.hl = icmp sgt i64 %i.hg, %i.hk
  br i1 %i.hl, label %.invoke311, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.u, %bb.t
  %i.hm = mul nsw i64 %i.hh, %i.hg                ; 4 uses
  %.not.i170 = icmp eq i64 %i.hm, 0
  br i1 %.not.i170, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.hn = icmp sgt i64 %i.hm, 0
  br i1 %i.hn, label %bb.w, label %.sink.split.i171

bb.w:                                             ; preds = %bb.v
  %i.ho = icmp samesign ugt i64 %i.hm, 2305843009213693951
  br i1 %i.ho, label %.invoke311, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173: ; preds = %bb.w
  %i.hp = shl nuw i64 %i.hm, 3
  %i.hq = call noalias ptr @malloc(i64 noundef %i.hp) #38 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %.invoke311, label %.sink.split.i171

.invoke311:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173, %bb.w, %bb.u
  %i.hs = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hs, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont312 unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont312:                                         ; preds = %.invoke311
  unreachable

.sink.split.i171:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173, %bb.v
  %.sink.i172 = phi ptr [ %i.hq, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173 ], [ null, %bb.v ]
  store ptr %.sink.i172, ptr %13, align 8, !tbaa !307
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i171, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.hg, ptr %i.u, align 8, !tbaa !305
  store i64 %i.hh, ptr %i.v, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS3_EEEEEES3_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSE_RKSG_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.x unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, %.invoke311
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = load ptr, ptr %13, align 8, !tbaa !307
  call void @free(ptr noundef %i.ht) #6
  br label %.body

bb.x:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.hu = load ptr, ptr %i.w, align 8, !tbaa !312
  call void @free(ptr noundef %i.hu) #6
  %i.hv = load ptr, ptr %i.x, align 8, !tbaa !314
  call void @free(ptr noundef %i.hv) #6
  %i.hw = load ptr, ptr %i.y, align 8, !tbaa !314
  call void @free(ptr noundef %i.hw) #6
  %i.hx = load ptr, ptr %i.z, align 8, !tbaa !314
  call void @free(ptr noundef %i.hx) #6
  %i.hy = load ptr, ptr %14, align 8, !tbaa !307
  call void @free(ptr noundef %i.hy) #6
  %i.hz = load ptr, ptr %i.aa, align 8, !tbaa !312
  call void @free(ptr noundef %i.hz) #6
  %i.ia = load ptr, ptr %i.ab, align 8, !tbaa !314
  call void @free(ptr noundef %i.ia) #6
  %i.ib = load ptr, ptr %i.ac, align 8, !tbaa !314
  call void @free(ptr noundef %i.ib) #6
  %i.ic = load ptr, ptr %i.ad, align 8, !tbaa !314
  call void @free(ptr noundef %i.ic) #6
  %i.id = load ptr, ptr %15, align 8, !tbaa !307
  call void @free(ptr noundef %i.id) #6
  %i.ie = load ptr, ptr %i.ae, align 8, !tbaa !312
  call void @free(ptr noundef %i.ie) #6
  %i.if = load ptr, ptr %i.af, align 8, !tbaa !314
  call void @free(ptr noundef %i.if) #6
  %i.ig = load ptr, ptr %i.ag, align 8, !tbaa !314
  call void @free(ptr noundef %i.ig) #6
  %i.ih = load ptr, ptr %i.ah, align 8, !tbaa !314
  call void @free(ptr noundef %i.ih) #6
  %i.ii = load ptr, ptr %16, align 8, !tbaa !307
  call void @free(ptr noundef %i.ii) #6
  %i.ij = load ptr, ptr %i.ai, align 8, !tbaa !312
  call void @free(ptr noundef %i.ij) #6
  %i.ik = load ptr, ptr %i.aj, align 8, !tbaa !314
  call void @free(ptr noundef %i.ik) #6
  %i.il = load ptr, ptr %i.ak, align 8, !tbaa !314
  call void @free(ptr noundef %i.il) #6
  %i.im = load ptr, ptr %i.al, align 8, !tbaa !314
  call void @free(ptr noundef %i.im) #6
  %i.in = load ptr, ptr %17, align 8, !tbaa !307
  call void @free(ptr noundef %i.in) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.io = load ptr, ptr %6, align 8, !tbaa !263
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 552
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !185, !noalias !1136
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !190, !noalias !1136 ; 2 uses
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !187, !noalias !1136 ; 3 uses
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.ix = sub i64 %i.iv, %i.iw                    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.it, %i.iu
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iy = icmp ugt i64 %i.ix, 9223372036854775800
  br i1 %i.iy, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !220

.noexc.i.i.i:                                     ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.y
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #35
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i107 = load ptr, ptr %i.ir, align 8, !tbaa !222, !noalias !1136 ; 2 uses
  %.pre1.i = load ptr, ptr %i.is, align 8, !tbaa !222, !noalias !1136
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i107 to i64
  br label %bb.z

bb.z:                                             ; preds = %.noexc110, %bb.x
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc110 ], [ %i.iw, %bb.x ]
  %.pre-phi.i108 = phi i64 [ %.pre2.i, %.noexc110 ], [ %i.iv, %bb.x ]
  %i.ja = phi ptr [ %.pre.i107, %.noexc110 ], [ %i.iu, %bb.x ] ; 2 uses
  %i.jb = phi ptr [ %i.iz, %.noexc110 ], [ null, %bb.x ] ; 5 uses
  %i.jc = sub i64 %.pre-phi.i108, %.pre-phi4.i    ; 3 uses
  %i.jd = icmp sgt i64 %i.jc, 8
  br i1 %i.jd, label %bb.aa, label %bb.ab, !prof !223

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jb, ptr align 8 %i.ja, i64 %i.jc, i1 false), !noalias !1136
  br label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.je = icmp eq i64 %i.jc, 8
  br i1 %i.je, label %bb.ac, label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

bb.ac:                                            ; preds = %bb.ab
  %i.jf = load double, ptr %i.ja, align 8, !tbaa !189, !noalias !1136
  store double %i.jf, ptr %i.jb, align 8, !tbaa !189, !noalias !1136
  br label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

_ZNK8LightGBM4Tree10LeafCoeffsEi.exit:            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.jg = load ptr, ptr %4, align 8, !tbaa !273   ; 2 uses
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %indvars.iv ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !169
  %i.jk = load ptr, ptr %i.jh, align 8, !tbaa !167 ; 2 uses
  %.not248 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not248, label %._crit_edge235, label %.lr.ph

._crit_edge235.loopexit:                          ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.jl = ptrtoint ptr %.sroa.18.1 to i64
  br label %._crit_edge235

end_hunk_1
begin_hunk_2_@_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.24:bb.a
  %.036.prol = phi i64 [ %i.cb, %scalar.ph.prol ], [ %.036.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.036.prol
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !189
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.036.prol ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !189
  %i.ca = fadd double %i.bx, %i.bz
  store double %i.ca, ptr %i.by, align 8, !tbaa !189
  %i.cb = add nuw i64 %.036.prol, 1               ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1194

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.036.unr = phi i64 [ %.036.ph, %scalar.ph.preheader ], [ %i.cb, %scalar.ph.prol ]
  %i.cc = icmp ult i64 %i.bv, 3
  br i1 %i.cc, label %._crit_edge, label %scalar.ph

scalar.ph62:                                      ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62
  %.03335 = phi i64 [ %i.da, %scalar.ph62 ], [ %.03335.unr, %scalar.ph62.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.03335
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !189
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.03335 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !189
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !189
  %i.ci = add nuw nsw i64 %.03335, 1              ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !189
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ci ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !189
  %i.cn = fadd double %i.ck, %i.cm
  store double %i.cn, ptr %i.cl, align 8, !tbaa !189
  %i.co = add nuw nsw i64 %.03335, 2              ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !189
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.co ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !189
  %i.ct = fadd double %i.cq, %i.cs
  store double %i.ct, ptr %i.cr, align 8, !tbaa !189
  %i.cu = add nuw nsw i64 %.03335, 3              ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !189
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cu ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !189
  %i.cz = fadd double %i.cw, %i.cy
  store double %i.cz, ptr %i.cx, align 8, !tbaa !189
  %i.da = add nuw nsw i64 %.03335, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.da, %i.ae
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph62, !llvm.loop !1195

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.pre
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !167
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !166
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !166
  %i.dh = add nsw i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !166
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.di = load i32, ptr %i.b, align 4, !tbaa !166
  %i.dj = sext i32 %i.di to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.dj
  br i1 %.not.not, label %bb.c, label %._crit_edge42

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.036 = phi i64 [ %i.eh, %scalar.ph ], [ %.036.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.036
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !189
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.036 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !189
  %i.do = fadd double %i.dl, %i.dn
  store double %i.do, ptr %i.dm, align 8, !tbaa !189
  %i.dp = add nuw i64 %.036, 1                    ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !189
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.dp ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !189
  %i.du = fadd double %i.dr, %i.dt
  store double %i.du, ptr %i.ds, align 8, !tbaa !189
  %i.dv = add nuw i64 %.036, 2                    ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !189
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.dv ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !189
  %i.ea = fadd double %i.dx, %i.dz
  store double %i.ea, ptr %i.dy, align 8, !tbaa !189
  %i.eb = add nuw i64 %.036, 3                    ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !189
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.eb ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !189
  %i.eg = fadd double %i.ed, %i.ef
  store double %i.eg, ptr %i.ee, align 8, !tbaa !189
  %i.eh = add nuw i64 %.036, 4
  %exitcond45.not.3 = icmp eq i64 %i.eb, %i.aa
  br i1 %exitcond45.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1196

._crit_edge42:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge42, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.25(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef readonly captures(none) %9) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 8    ; 9 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 11 uses
  %13 = alloca %"class.Eigen::Matrix", align 8    ; 13 uses
  %14 = alloca %"class.Eigen::Product", align 8   ; 11 uses
  %15 = alloca %"class.Eigen::CwiseUnaryOp", align 8 ; 9 uses
  %16 = alloca %"class.Eigen::Inverse", align 8   ; 9 uses
  %17 = alloca %"class.Eigen::FullPivLU", align 8 ; 9 uses
  %18 = alloca %"class.std::vector.36", align 8   ; 13 uses
  %19 = alloca %"class.std::vector.36", align 8   ; 8 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !166    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.h = load i32, ptr %0, align 4, !tbaa !166    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !166
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !166
  %i.k = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not242 = icmp sgt i32 %i.k, %i.j
  br i1 %.not242, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 592
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 616
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ar = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph245, %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph245 ], [ %indvars.iv.next, %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit ] ; 24 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !166
  %i.av = load ptr, ptr %4, align 8, !tbaa !273
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !169 ; 2 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !167 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 2                 ; 15 uses
  %i.be = trunc i64 %i.bd to i32
  %.not90 = icmp sgt i32 %i.au, %i.be
  br i1 %.not90, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = load i8, ptr %5, align 1, !tbaa !268, !range !259, !noundef !260
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = load ptr, ptr %6, align 8, !tbaa !263   ; 5 uses
  br i1 %i.bg, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 576
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !187
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !189
  %i.bm = load double, ptr %7, align 8, !tbaa !189 ; 2 uses
  %i.bn = fsub double 1.000000e+00, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !187
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load double, ptr %i.bq, align 8, !tbaa !189
  %i.bs = fmul double %i.bn, %i.br
  %i.bt = load double, ptr %8, align 8, !tbaa !189
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = call double @llvm.fmuladd.f64(double %i.bm, double %i.bl, double %i.bu) ; 2 uses
  %i.bw = call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ole double %i.bw, f0x38AA95A5C0000000
  %i.by = select i1 %i.bx, double 0.000000e+00, double %i.bv
  store double %i.by, ptr %i.bk, align 8, !tbaa !189
  %i.bz = icmp ugt i64 %i.bd, 1152921504606846975
  br i1 %i.bz, label %.invoke313, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #35
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc91:                                         ; preds = %bb.f
  %i.cc = shl i64 %i.ba, 1
  %i.cd = add i64 %i.cc, -8
  %i.ce = shl i64 %i.bb, 1
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = and i64 %i.cf, -8
  %i.ch = add i64 %i.cg, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cb, i8 0, i64 %i.ch, i1 false), !tbaa !189
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bd
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  %i.ck = ptrtoint ptr %i.ci to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit:            ; preds = %.noexc91, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ck, %.noexc91 ]
  %.sroa.0198.0 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc91 ] ; 8 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cj, %.noexc91 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 552 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !185
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %indvars.iv ; 3 uses
  %i.co = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.cp = ptrtoint ptr %.sroa.0198.0 to i64       ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = ashr exact i64 %i.cq, 3                 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !190 ; 2 uses
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !187 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 3 uses
  %i.cz = icmp ugt i64 %i.cr, %i.cy
  br i1 %i.cz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.da = sub nuw nsw i64 %i.cr, %i.cy
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 noundef %i.da)
          to label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.db = icmp ult i64 %i.cr, %i.cy
  br i1 %i.db, label %bb.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, %i.dc
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.i
  store ptr %i.dc, ptr %i.cs, align 8, !tbaa !190
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

_ZNSt6vectorIdSaIdEE6resizeEm.exit.i:             ; preds = %bb.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i, %bb.i, %bb.h
  %.not.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %.sroa.0198.0
  br i1 %.not.i, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  %i.dd = load ptr, ptr %i.cl, align 8, !tbaa !185
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %indvars.iv
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !187 ; 5 uses
  %min.iters.check327 = icmp ult i64 %i.cr, 4
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = sub i64 %i.cp, %i.dg
  %diff.check325 = icmp ugt i64 %i.dh, -32
  %or.cond = select i1 %min.iters.check327, i1 true, i1 %diff.check325
  br i1 %or.cond, label %scalar.ph326.preheader, label %vector.ph328

vector.ph328:                                     ; preds = %.lr.ph.i
  %n.vec329 = and i64 %i.cr, -4                   ; 3 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next334, %vector.body330 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %index331 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load332 = load <2 x double>, ptr %i.di, align 8, !tbaa !189 ; 2 uses
  %wide.load333 = load <2 x double>, ptr %i.dj, align 8, !tbaa !189 ; 2 uses
  %i.dk = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load332)
  %i.dl = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load333)
  %i.dm = fcmp ole <2 x double> %i.dk, splat (double f0x38AA95A5C0000000)
  %i.dn = fcmp ole <2 x double> %i.dl, splat (double f0x38AA95A5C0000000)
  %i.do = select <2 x i1> %i.dm, <2 x double> zeroinitializer, <2 x double> %wide.load332
  %i.dp = select <2 x i1> %i.dn, <2 x double> zeroinitializer, <2 x double> %wide.load333
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index331 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <2 x double> %i.do, ptr %i.dq, align 8, !tbaa !189
  store <2 x double> %i.dp, ptr %i.dr, align 8, !tbaa !189
  %index.next334 = add nuw i64 %index331, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.ds, label %middle.block335, label %vector.body330, !llvm.loop !1201

middle.block335:                                  ; preds = %vector.body330
  %cmp.n336 = icmp eq i64 %i.cr, %n.vec329
  br i1 %cmp.n336, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %.lr.ph.i, %middle.block335
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec329, %middle.block335 ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  %i.dt = and i64 %i.cq, 8
  %lcmp.mod.not = icmp eq i64 %i.dt, 0
  br i1 %lcmp.mod.not, label %scalar.ph326.prol.loopexit, label %scalar.ph326.prol

scalar.ph326.prol:                                ; preds = %scalar.ph326.preheader
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %.09.i.ph
  %i.dv = load double, ptr %i.du, align 8, !tbaa !189 ; 2 uses
  %i.dw = call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp ole double %i.dw, f0x38AA95A5C0000000
  %i.dy = select i1 %i.dx, double 0.000000e+00, double %i.dv
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.09.i.ph
  store double %i.dy, ptr %i.dz, align 8, !tbaa !189
  %i.ea = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph326.prol.loopexit

scalar.ph326.prol.loopexit:                       ; preds = %scalar.ph326.prol, %scalar.ph326.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph326.preheader ], [ %i.ea, %scalar.ph326.prol ]
  %i.eb = icmp eq i64 %i.cr, %.neg
  br i1 %i.eb, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326

scalar.ph326:                                     ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326
  %.09.i = phi i64 [ %i.ep, %scalar.ph326 ], [ %.09.i.unr, %scalar.ph326.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %.09.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !189 ; 2 uses
  %i.ee = call double @llvm.fabs.f64(double %i.ed)
  %i.ef = fcmp ole double %i.ee, f0x38AA95A5C0000000
  %i.eg = select i1 %i.ef, double 0.000000e+00, double %i.ed
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.09.i
  store double %i.eg, ptr %i.eh, align 8, !tbaa !189
  %i.ei = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !189 ; 2 uses
  %i.el = call double @llvm.fabs.f64(double %i.ek)
  %i.em = fcmp ole double %i.el, f0x38AA95A5C0000000
  %i.en = select i1 %i.em, double 0.000000e+00, double %i.ek
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ei
  store double %i.en, ptr %i.eo, align 8, !tbaa !189
  %i.ep = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ep, %i.cr
  br i1 %exitcond.not.i.1, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326, !llvm.loop !1202

_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit: ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  %.not.i.i.i93 = icmp eq ptr %.sroa.0198.0, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread

_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread: ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326, %middle.block335, %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit
  %i.eq = sub i64 %.sroa.11.0, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0198.0, i64 noundef %i.eq) #36
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit, %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread
  %i.er = load ptr, ptr %6, align 8, !tbaa !263
  %i.es = load ptr, ptr %4, align 8, !tbaa !273
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 624
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !273
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %indvars.iv
  %i.ex = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.d
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !187
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !189 ; 2 uses
  %i.fc = call double @llvm.fabs.f64(double %i.fb)
  %i.fd = fcmp ole double %i.fc, f0x38AA95A5C0000000
  %i.fe = select i1 %i.fd, double 0.000000e+00, double %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bh, i64 576
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !187
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv
  store double %i.fe, ptr %i.fh, align 8, !tbaa !189
  br label %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.fi = add nsw i64 %i.bd, 1                    ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  store i64 %i.fi, ptr %i.l, align 8, !tbaa !305
  store i64 %i.fi, ptr %i.m, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %12, align 8
  store i64 %i.fi, ptr %i.n, align 8, !tbaa !305
  store i64 1, ptr %i.o, align 8, !tbaa !306
  br label %._crit_edge

bb.l:                                             ; preds = %bb.k
  %i.fk = sdiv i64 9223372036854775807, %i.fi
  %.not203 = icmp slt i64 %i.bd, %i.fk
  br i1 %.not203, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.fl = mul nsw i64 %i.fi, %i.fi                ; 2 uses
  %i.fm = icmp samesign ugt i64 %i.fl, 2305843009213693951
  br i1 %i.fm, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.m
  %i.fn = shl nuw i64 %i.fl, 3
  %i.fo = call noalias ptr @malloc(i64 noundef %i.fn) #38 ; 4 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %.invoke, label %bb.o

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.m, %bb.l
  %i.fq = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fq, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %.invoke
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = load ptr, ptr %11, align 8, !tbaa !307
  call void @free(ptr noundef %i.fs) #6
  br label %.body

bb.o:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.fo, ptr %11, align 8, !tbaa !307
  store i64 %i.fi, ptr %i.l, align 8, !tbaa !305
  store i64 %i.fi, ptr %i.m, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ft = icmp sgt i64 %i.bd, -1
  br i1 %i.ft, label %bb.p, label %.preheader.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.fu = icmp samesign ugt i64 %i.bd, 2305843009213693950
  br i1 %i.fu, label %.invoke309, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166: ; preds = %bb.p
  %i.fv = shl nuw i64 %i.fi, 3
  %i.fw = call noalias ptr @malloc(i64 noundef %i.fv) #38 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %.invoke309, label %.preheader.lr.ph

.invoke309:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166, %bb.p
  %i.fy = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fy, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont310 unwind label %bb.q

.cont310:                                         ; preds = %.invoke309
  unreachable

bb.q:                                             ; preds = %.invoke309
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = load ptr, ptr %12, align 8, !tbaa !307
  call void @free(ptr noundef %i.ga) #6
  br label %.body

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166, %bb.o
  %.sink.i165 = phi ptr [ %i.fw, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166 ], [ null, %bb.o ] ; 2 uses
  store ptr %.sink.i165, ptr %12, align 8, !tbaa !307
  store i64 %i.fi, ptr %i.n, align 8, !tbaa !305
  store i64 1, ptr %i.o, align 8, !tbaa !306
  %i.gb = load ptr, ptr %i.p, align 8, !tbaa !185
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %indvars.iv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !187 ; 4 uses
  %i.ge = load ptr, ptr %i.r, align 8, !tbaa !185
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %indvars.iv
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !187
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.split.us
  %.086230 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.hf, %.split.us ] ; 15 uses
  %.087229 = phi i64 [ 0, %.preheader.lr.ph ], [ %.us-phi, %.split.us ] ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.fo, i64 %.086230 ; 4 uses
  %i.gi = mul nsw i64 %i.fi, %.086230
  %invariant.gep = getelementptr [8 x i8], ptr %i.fo, i64 %i.gi ; 4 uses
  %i.gj = icmp ult i64 %.086230, %i.bd
  %.fr = freeze i1 %i.gj
  br i1 %.fr, label %.preheader.split, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  %20 = add i64 %i.bd, %.086230
  %21 = and i64 %20, 1
  %lcmp.mod354.not.not = icmp eq i64 %21, 0
  br i1 %lcmp.mod354.not.not, label %.preheader.split.us.prol, label %.preheader.split.us.prol.loopexit

.preheader.split.us.prol:                         ; preds = %.preheader.split.us.preheader
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.087229
  %23 = load double, ptr %22, align 8, !tbaa !189 ; 2 uses
  %24 = mul nsw i64 %i.fi, %.086230
  %25 = getelementptr [8 x i8], ptr %i.gh, i64 %24
  store double %23, ptr %25, align 8, !tbaa !189
  %gep.us.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.086230
  store double %23, ptr %gep.us.prol, align 8, !tbaa !189
  %26 = add i64 %.087229, 1                       ; 2 uses
  %27 = add nuw i64 %.086230, 1
  br label %.preheader.split.us.prol.loopexit

.preheader.split.us.prol.loopexit:                ; preds = %.preheader.split.us.prol, %.preheader.split.us.preheader
  %.lcssa.unr = phi i64 [ poison, %.preheader.split.us.preheader ], [ %26, %.preheader.split.us.prol ]
  %.085228.us.unr = phi i64 [ %.086230, %.preheader.split.us.preheader ], [ %27, %.preheader.split.us.prol ]
  %.1227.us.unr = phi i64 [ %.087229, %.preheader.split.us.preheader ], [ %26, %.preheader.split.us.prol ]
  %28 = icmp eq i64 %i.bd, %.086230
  br i1 %28, label %.split.us, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.prol.loopexit, %.preheader.split.us
  %.085228.us = phi i64 [ %i.gp, %.preheader.split.us ], [ %.085228.us.unr, %.preheader.split.us.prol.loopexit ] ; 4 uses
  %.1227.us = phi i64 [ %i.go, %.preheader.split.us ], [ %.1227.us.unr, %.preheader.split.us.prol.loopexit ] ; 3 uses
  %29 = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.1227.us
  %30 = load double, ptr %29, align 8, !tbaa !189 ; 2 uses
  %31 = mul nsw i64 %i.fi, %.085228.us
  %32 = getelementptr [8 x i8], ptr %i.gh, i64 %31
  store double %30, ptr %32, align 8, !tbaa !189
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep, i64 %.085228.us
  store double %30, ptr %gep.us, align 8, !tbaa !189
  %33 = add nuw i64 %.085228.us, 1                ; 3 uses
  %i.gk = getelementptr [8 x i8], ptr %i.gd, i64 %.1227.us
  %34 = getelementptr i8, ptr %i.gk, i64 8
  %i.gl = load double, ptr %34, align 8, !tbaa !189 ; 2 uses
  %i.gm = mul nsw i64 %i.fi, %33
  %i.gn = getelementptr [8 x i8], ptr %i.gh, i64 %i.gm
  store double %i.gl, ptr %i.gn, align 8, !tbaa !189
  %gep.us.a = getelementptr [8 x i8], ptr %invariant.gep, i64 %33
  store double %i.gl, ptr %gep.us.a, align 8, !tbaa !189
  %i.go = add i64 %.1227.us, 2                    ; 2 uses
  %i.gp = add nuw i64 %.085228.us, 2
  %exitcond.not.1 = icmp eq i64 %33, %i.bd
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split.us, !llvm.loop !1203

._crit_edge:                                      ; preds = %.split.us, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2IS2_EERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(123) %17, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.split:                                 ; preds = %.preheader, %bb.s
  %.085228 = phi i64 [ %i.hb, %bb.s ], [ %.086230, %.preheader ] ; 5 uses
  %.1227 = phi i64 [ %i.ha, %bb.s ], [ %.087229, %.preheader ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.1227
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !189 ; 2 uses
  %i.gs = mul nsw i64 %i.fi, %.085228
  %i.gt = getelementptr [8 x i8], ptr %i.gh, i64 %i.gs ; 3 uses
  store double %i.gr, ptr %i.gt, align 8, !tbaa !189
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.085228
  store double %i.gr, ptr %gep, align 8, !tbaa !189
  %i.gu = icmp eq i64 %.086230, %.085228
  br i1 %i.gu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader.split
  %i.gv = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 432
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !308
  %i.gy = load double, ptr %i.gt, align 8, !tbaa !189
  %i.gz = fadd double %i.gx, %i.gy
  store double %i.gz, ptr %i.gt, align 8, !tbaa !189
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.split
  %i.ha = add i64 %.1227, 1                       ; 2 uses
  %i.hb = add nuw i64 %.085228, 1
  %exitcond259.not = icmp eq i64 %.085228, %i.bd
  br i1 %exitcond259.not, label %.split.us, label %.preheader.split, !llvm.loop !1203

.split.us:                                        ; preds = %.preheader.split.us.prol.loopexit, %.preheader.split.us, %bb.s
  %.us-phi = phi i64 [ %i.ha, %bb.s ], [ %.lcssa.unr, %.preheader.split.us.prol.loopexit ], [ %i.go, %.preheader.split.us ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.086230
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !189
  %i.he = getelementptr inbounds [8 x i8], ptr %.sink.i165, i64 %.086230
  store double %i.hd, ptr %i.he, align 8, !tbaa !189
  %i.hf = add nuw i64 %.086230, 1
  %exitcond.not = icmp eq i64 %.086230, %i.bd
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !1204

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit: ; preds = %._crit_edge
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(123) %17)
          to label %_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(129) %15, ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit: ; preds = %_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef nonnull align 8 dereferenceable(129) %15)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit
  store ptr %12, ptr %i.s, align 8, !tbaa !310, !alias.scope !1214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.hg = load i64, ptr %i.t, align 8, !tbaa !306 ; 4 uses
  %i.hh = load i64, ptr %i.o, align 8, !tbaa !306 ; 4 uses
  %i.hi = icmp eq i64 %i.hg, 0
  %i.hj = icmp eq i64 %i.hh, 0
  %or.cond.i.i.i.i104 = or i1 %i.hi, %i.hj
  br i1 %or.cond.i.i.i.i104, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hk = sdiv i64 9223372036854775807, %i.hh
  %i.hl = icmp sgt i64 %i.hg, %i.hk
  br i1 %i.hl, label %.invoke311, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.u, %bb.t
  %i.hm = mul nsw i64 %i.hh, %i.hg                ; 4 uses
  %.not.i170 = icmp eq i64 %i.hm, 0
  br i1 %.not.i170, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.hn = icmp sgt i64 %i.hm, 0
  br i1 %i.hn, label %bb.w, label %.sink.split.i171

bb.w:                                             ; preds = %bb.v
  %i.ho = icmp samesign ugt i64 %i.hm, 2305843009213693951
  br i1 %i.ho, label %.invoke311, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173: ; preds = %bb.w
  %i.hp = shl nuw i64 %i.hm, 3
  %i.hq = call noalias ptr @malloc(i64 noundef %i.hp) #38 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %.invoke311, label %.sink.split.i171

.invoke311:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173, %bb.w, %bb.u
  %i.hs = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hs, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont312 unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont312:                                         ; preds = %.invoke311
  unreachable

.sink.split.i171:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173, %bb.v
  %.sink.i172 = phi ptr [ %i.hq, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173 ], [ null, %bb.v ]
  store ptr %.sink.i172, ptr %13, align 8, !tbaa !307
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i171, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.hg, ptr %i.u, align 8, !tbaa !305
  store i64 %i.hh, ptr %i.v, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS3_EEEEEES3_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSE_RKSG_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.x unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, %.invoke311
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = load ptr, ptr %13, align 8, !tbaa !307
  call void @free(ptr noundef %i.ht) #6
  br label %.body

bb.x:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.hu = load ptr, ptr %i.w, align 8, !tbaa !312
  call void @free(ptr noundef %i.hu) #6
  %i.hv = load ptr, ptr %i.x, align 8, !tbaa !314
  call void @free(ptr noundef %i.hv) #6
  %i.hw = load ptr, ptr %i.y, align 8, !tbaa !314
  call void @free(ptr noundef %i.hw) #6
  %i.hx = load ptr, ptr %i.z, align 8, !tbaa !314
  call void @free(ptr noundef %i.hx) #6
  %i.hy = load ptr, ptr %14, align 8, !tbaa !307
  call void @free(ptr noundef %i.hy) #6
  %i.hz = load ptr, ptr %i.aa, align 8, !tbaa !312
  call void @free(ptr noundef %i.hz) #6
  %i.ia = load ptr, ptr %i.ab, align 8, !tbaa !314
  call void @free(ptr noundef %i.ia) #6
  %i.ib = load ptr, ptr %i.ac, align 8, !tbaa !314
  call void @free(ptr noundef %i.ib) #6
  %i.ic = load ptr, ptr %i.ad, align 8, !tbaa !314
  call void @free(ptr noundef %i.ic) #6
  %i.id = load ptr, ptr %15, align 8, !tbaa !307
  call void @free(ptr noundef %i.id) #6
  %i.ie = load ptr, ptr %i.ae, align 8, !tbaa !312
  call void @free(ptr noundef %i.ie) #6
  %i.if = load ptr, ptr %i.af, align 8, !tbaa !314
  call void @free(ptr noundef %i.if) #6
  %i.ig = load ptr, ptr %i.ag, align 8, !tbaa !314
  call void @free(ptr noundef %i.ig) #6
  %i.ih = load ptr, ptr %i.ah, align 8, !tbaa !314
  call void @free(ptr noundef %i.ih) #6
  %i.ii = load ptr, ptr %16, align 8, !tbaa !307
  call void @free(ptr noundef %i.ii) #6
  %i.ij = load ptr, ptr %i.ai, align 8, !tbaa !312
  call void @free(ptr noundef %i.ij) #6
  %i.ik = load ptr, ptr %i.aj, align 8, !tbaa !314
  call void @free(ptr noundef %i.ik) #6
  %i.il = load ptr, ptr %i.ak, align 8, !tbaa !314
  call void @free(ptr noundef %i.il) #6
  %i.im = load ptr, ptr %i.al, align 8, !tbaa !314
  call void @free(ptr noundef %i.im) #6
  %i.in = load ptr, ptr %17, align 8, !tbaa !307
  call void @free(ptr noundef %i.in) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.io = load ptr, ptr %6, align 8, !tbaa !263
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 552
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !185, !noalias !1215
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !190, !noalias !1215 ; 2 uses
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !187, !noalias !1215 ; 3 uses
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.ix = sub i64 %i.iv, %i.iw                    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.it, %i.iu
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iy = icmp ugt i64 %i.ix, 9223372036854775800
  br i1 %i.iy, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !220

.noexc.i.i.i:                                     ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.y
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #35
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i107 = load ptr, ptr %i.ir, align 8, !tbaa !222, !noalias !1215 ; 2 uses
  %.pre1.i = load ptr, ptr %i.is, align 8, !tbaa !222, !noalias !1215
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i107 to i64
  br label %bb.z

bb.z:                                             ; preds = %.noexc110, %bb.x
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc110 ], [ %i.iw, %bb.x ]
  %.pre-phi.i108 = phi i64 [ %.pre2.i, %.noexc110 ], [ %i.iv, %bb.x ]
  %i.ja = phi ptr [ %.pre.i107, %.noexc110 ], [ %i.iu, %bb.x ] ; 2 uses
  %i.jb = phi ptr [ %i.iz, %.noexc110 ], [ null, %bb.x ] ; 5 uses
  %i.jc = sub i64 %.pre-phi.i108, %.pre-phi4.i    ; 3 uses
  %i.jd = icmp sgt i64 %i.jc, 8
  br i1 %i.jd, label %bb.aa, label %bb.ab, !prof !223

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jb, ptr align 8 %i.ja, i64 %i.jc, i1 false), !noalias !1215
  br label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.je = icmp eq i64 %i.jc, 8
  br i1 %i.je, label %bb.ac, label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

bb.ac:                                            ; preds = %bb.ab
  %i.jf = load double, ptr %i.ja, align 8, !tbaa !189, !noalias !1215
  store double %i.jf, ptr %i.jb, align 8, !tbaa !189, !noalias !1215
  br label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

_ZNK8LightGBM4Tree10LeafCoeffsEi.exit:            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.jg = load ptr, ptr %4, align 8, !tbaa !273   ; 2 uses
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %indvars.iv ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !169
  %i.jk = load ptr, ptr %i.jh, align 8, !tbaa !167 ; 2 uses
  %.not248 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not248, label %._crit_edge235, label %.lr.ph

._crit_edge235.loopexit:                          ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.jl = ptrtoint ptr %.sroa.18.1 to i64
  br label %._crit_edge235

end_hunk_2
begin_hunk_3_@_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b.omp_outlined.28:bb.a
scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph33, %middle.block
  %.032.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph33 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.bw = add nsw i64 %i.z, 1
  %i.bx = sub nsw i64 %i.z, %.032.ph
  %xtraiter74 = and i64 %i.bw, 3                  ; 2 uses
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.032.prol = phi i64 [ %i.cd, %scalar.ph.prol ], [ %.032.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter76 = phi i64 [ %prol.iter76.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.032.prol
  %i.bz = load double, ptr %i.by, align 8, !tbaa !189
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.032.prol ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !189
  %i.cc = fadd double %i.bz, %i.cb
  store double %i.cc, ptr %i.ca, align 8, !tbaa !189
  %i.cd = add nuw i64 %.032.prol, 1               ; 2 uses
  %prol.iter76.next = add i64 %prol.iter76, 1     ; 2 uses
  %prol.iter76.cmp.not = icmp eq i64 %prol.iter76.next, %xtraiter74
  br i1 %prol.iter76.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1231

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.032.unr = phi i64 [ %.032.ph, %scalar.ph.preheader ], [ %i.cd, %scalar.ph.prol ]
  %i.ce = icmp ult i64 %i.bx, 3
  br i1 %i.ce, label %._crit_edge, label %scalar.ph

scalar.ph60:                                      ; preds = %scalar.ph60.prol.loopexit, %scalar.ph60
  %.02931 = phi i64 [ %i.dc, %scalar.ph60 ], [ %.02931.unr, %scalar.ph60.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.02931
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !189
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.02931 ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !189
  %i.cj = fadd double %i.cg, %i.ci
  store double %i.cj, ptr %i.ch, align 8, !tbaa !189
  %i.ck = add nuw nsw i64 %.02931, 1              ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !189
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ck ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !189
  %i.cp = fadd double %i.cm, %i.co
  store double %i.cp, ptr %i.cn, align 8, !tbaa !189
  %i.cq = add nuw nsw i64 %.02931, 2              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !189
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cq ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !189
  %i.cv = fadd double %i.cs, %i.cu
  store double %i.cv, ptr %i.ct, align 8, !tbaa !189
  %i.cw = add nuw nsw i64 %.02931, 3              ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !189
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cw ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !189
  %i.db = fadd double %i.cy, %i.da
  store double %i.db, ptr %i.cz, align 8, !tbaa !189
  %i.dc = add nuw nsw i64 %.02931, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dc, %i.ad
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph60, !llvm.loop !1232

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond43.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond43.not, label %._crit_edge38, label %bb.c

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.032 = phi i64 [ %i.ea, %scalar.ph ], [ %.032.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.032
  %i.de = load double, ptr %i.dd, align 8, !tbaa !189
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.032 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !189
  %i.dh = fadd double %i.de, %i.dg
  store double %i.dh, ptr %i.df, align 8, !tbaa !189
  %i.di = add nuw i64 %.032, 1                    ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !189
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.di ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !189
  %i.dn = fadd double %i.dk, %i.dm
  store double %i.dn, ptr %i.dl, align 8, !tbaa !189
  %i.do = add nuw i64 %.032, 2                    ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !189
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.do ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !189
  %i.dt = fadd double %i.dq, %i.ds
  store double %i.dt, ptr %i.dr, align 8, !tbaa !189
  %i.du = add nuw i64 %.032, 3                    ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !189
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.du ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !189
  %i.dz = fadd double %i.dw, %i.dy
  store double %i.dz, ptr %i.dx, align 8, !tbaa !189
  %i.ea = add nuw i64 %.032, 4
  %exitcond41.not.3 = icmp eq i64 %i.du, %i.z
  br i1 %exitcond41.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1233

._crit_edge38:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge38, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b.omp_outlined.29(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef readonly captures(none) %9) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 8    ; 9 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 11 uses
  %13 = alloca %"class.Eigen::Matrix", align 8    ; 13 uses
  %14 = alloca %"class.Eigen::Product", align 8   ; 11 uses
  %15 = alloca %"class.Eigen::CwiseUnaryOp", align 8 ; 9 uses
  %16 = alloca %"class.Eigen::Inverse", align 8   ; 9 uses
  %17 = alloca %"class.Eigen::FullPivLU", align 8 ; 9 uses
  %18 = alloca %"class.std::vector.36", align 8   ; 13 uses
  %19 = alloca %"class.std::vector.36", align 8   ; 8 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !166    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.h = load i32, ptr %0, align 4, !tbaa !166    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !166
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !166
  %i.k = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not242 = icmp sgt i32 %i.k, %i.j
  br i1 %.not242, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 592
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 616
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ar = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph245, %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph245 ], [ %indvars.iv.next, %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit ] ; 24 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !166
  %i.av = load ptr, ptr %4, align 8, !tbaa !273
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !169 ; 2 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !167 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 2                 ; 15 uses
  %i.be = trunc i64 %i.bd to i32
  %.not90 = icmp sgt i32 %i.au, %i.be
  br i1 %.not90, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = load i8, ptr %5, align 1, !tbaa !268, !range !259, !noundef !260
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = load ptr, ptr %6, align 8, !tbaa !263   ; 5 uses
  br i1 %i.bg, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 576
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !187
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !189
  %i.bm = load double, ptr %7, align 8, !tbaa !189 ; 2 uses
  %i.bn = fsub double 1.000000e+00, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !187
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load double, ptr %i.bq, align 8, !tbaa !189
  %i.bs = fmul double %i.bn, %i.br
  %i.bt = load double, ptr %8, align 8, !tbaa !189
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = call double @llvm.fmuladd.f64(double %i.bm, double %i.bl, double %i.bu) ; 2 uses
  %i.bw = call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ole double %i.bw, f0x38AA95A5C0000000
  %i.by = select i1 %i.bx, double 0.000000e+00, double %i.bv
  store double %i.by, ptr %i.bk, align 8, !tbaa !189
  %i.bz = icmp ugt i64 %i.bd, 1152921504606846975
  br i1 %i.bz, label %.invoke313, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #35
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc91:                                         ; preds = %bb.f
  %i.cc = shl i64 %i.ba, 1
  %i.cd = add i64 %i.cc, -8
  %i.ce = shl i64 %i.bb, 1
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = and i64 %i.cf, -8
  %i.ch = add i64 %i.cg, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cb, i8 0, i64 %i.ch, i1 false), !tbaa !189
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bd
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  %i.ck = ptrtoint ptr %i.ci to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit:            ; preds = %.noexc91, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ck, %.noexc91 ]
  %.sroa.0198.0 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc91 ] ; 8 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cj, %.noexc91 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 552 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !185
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %indvars.iv ; 3 uses
  %i.co = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.cp = ptrtoint ptr %.sroa.0198.0 to i64       ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = ashr exact i64 %i.cq, 3                 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !190 ; 2 uses
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !187 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 3 uses
  %i.cz = icmp ugt i64 %i.cr, %i.cy
  br i1 %i.cz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.da = sub nuw nsw i64 %i.cr, %i.cy
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 noundef %i.da)
          to label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.db = icmp ult i64 %i.cr, %i.cy
  br i1 %i.db, label %bb.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, %i.dc
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.i
  store ptr %i.dc, ptr %i.cs, align 8, !tbaa !190
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

_ZNSt6vectorIdSaIdEE6resizeEm.exit.i:             ; preds = %bb.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i, %bb.i, %bb.h
  %.not.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %.sroa.0198.0
  br i1 %.not.i, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  %i.dd = load ptr, ptr %i.cl, align 8, !tbaa !185
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %indvars.iv
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !187 ; 5 uses
  %min.iters.check327 = icmp ult i64 %i.cr, 4
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = sub i64 %i.cp, %i.dg
  %diff.check325 = icmp ugt i64 %i.dh, -32
  %or.cond = select i1 %min.iters.check327, i1 true, i1 %diff.check325
  br i1 %or.cond, label %scalar.ph326.preheader, label %vector.ph328

vector.ph328:                                     ; preds = %.lr.ph.i
  %n.vec329 = and i64 %i.cr, -4                   ; 3 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next334, %vector.body330 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %index331 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load332 = load <2 x double>, ptr %i.di, align 8, !tbaa !189 ; 2 uses
  %wide.load333 = load <2 x double>, ptr %i.dj, align 8, !tbaa !189 ; 2 uses
  %i.dk = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load332)
  %i.dl = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load333)
  %i.dm = fcmp ole <2 x double> %i.dk, splat (double f0x38AA95A5C0000000)
  %i.dn = fcmp ole <2 x double> %i.dl, splat (double f0x38AA95A5C0000000)
  %i.do = select <2 x i1> %i.dm, <2 x double> zeroinitializer, <2 x double> %wide.load332
  %i.dp = select <2 x i1> %i.dn, <2 x double> zeroinitializer, <2 x double> %wide.load333
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index331 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <2 x double> %i.do, ptr %i.dq, align 8, !tbaa !189
  store <2 x double> %i.dp, ptr %i.dr, align 8, !tbaa !189
  %index.next334 = add nuw i64 %index331, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.ds, label %middle.block335, label %vector.body330, !llvm.loop !1238

middle.block335:                                  ; preds = %vector.body330
  %cmp.n336 = icmp eq i64 %i.cr, %n.vec329
  br i1 %cmp.n336, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %.lr.ph.i, %middle.block335
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec329, %middle.block335 ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  %i.dt = and i64 %i.cq, 8
  %lcmp.mod.not = icmp eq i64 %i.dt, 0
  br i1 %lcmp.mod.not, label %scalar.ph326.prol.loopexit, label %scalar.ph326.prol

scalar.ph326.prol:                                ; preds = %scalar.ph326.preheader
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %.09.i.ph
  %i.dv = load double, ptr %i.du, align 8, !tbaa !189 ; 2 uses
  %i.dw = call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp ole double %i.dw, f0x38AA95A5C0000000
  %i.dy = select i1 %i.dx, double 0.000000e+00, double %i.dv
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.09.i.ph
  store double %i.dy, ptr %i.dz, align 8, !tbaa !189
  %i.ea = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph326.prol.loopexit

scalar.ph326.prol.loopexit:                       ; preds = %scalar.ph326.prol, %scalar.ph326.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph326.preheader ], [ %i.ea, %scalar.ph326.prol ]
  %i.eb = icmp eq i64 %i.cr, %.neg
  br i1 %i.eb, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326

scalar.ph326:                                     ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326
  %.09.i = phi i64 [ %i.ep, %scalar.ph326 ], [ %.09.i.unr, %scalar.ph326.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %.09.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !189 ; 2 uses
  %i.ee = call double @llvm.fabs.f64(double %i.ed)
  %i.ef = fcmp ole double %i.ee, f0x38AA95A5C0000000
  %i.eg = select i1 %i.ef, double 0.000000e+00, double %i.ed
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.09.i
  store double %i.eg, ptr %i.eh, align 8, !tbaa !189
  %i.ei = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !189 ; 2 uses
  %i.el = call double @llvm.fabs.f64(double %i.ek)
  %i.em = fcmp ole double %i.el, f0x38AA95A5C0000000
  %i.en = select i1 %i.em, double 0.000000e+00, double %i.ek
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ei
  store double %i.en, ptr %i.eo, align 8, !tbaa !189
  %i.ep = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ep, %i.cr
  br i1 %exitcond.not.i.1, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread, label %scalar.ph326, !llvm.loop !1239

_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit: ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  %.not.i.i.i93 = icmp eq ptr %.sroa.0198.0, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread

_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread: ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326, %middle.block335, %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit
  %i.eq = sub i64 %.sroa.11.0, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0198.0, i64 noundef %i.eq) #36
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit, %_ZN8LightGBM4Tree13SetLeafCoeffsEiRKSt6vectorIdSaIdEE.exit.thread
  %i.er = load ptr, ptr %6, align 8, !tbaa !263
  %i.es = load ptr, ptr %4, align 8, !tbaa !273
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 624
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !273
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %indvars.iv
  %i.ex = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.d
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !187
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !189 ; 2 uses
  %i.fc = call double @llvm.fabs.f64(double %i.fb)
  %i.fd = fcmp ole double %i.fc, f0x38AA95A5C0000000
  %i.fe = select i1 %i.fd, double 0.000000e+00, double %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bh, i64 576
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !187
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv
  store double %i.fe, ptr %i.fh, align 8, !tbaa !189
  br label %_ZN8LightGBM4Tree20SetLeafFeaturesInnerEiRKSt6vectorIiSaIiEE.exit

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.fi = add nsw i64 %i.bd, 1                    ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  store i64 %i.fi, ptr %i.l, align 8, !tbaa !305
  store i64 %i.fi, ptr %i.m, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %12, align 8
  store i64 %i.fi, ptr %i.n, align 8, !tbaa !305
  store i64 1, ptr %i.o, align 8, !tbaa !306
  br label %._crit_edge

bb.l:                                             ; preds = %bb.k
  %i.fk = sdiv i64 9223372036854775807, %i.fi
  %.not203 = icmp slt i64 %i.bd, %i.fk
  br i1 %.not203, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.fl = mul nsw i64 %i.fi, %i.fi                ; 2 uses
  %i.fm = icmp samesign ugt i64 %i.fl, 2305843009213693951
  br i1 %i.fm, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.m
  %i.fn = shl nuw i64 %i.fl, 3
  %i.fo = call noalias ptr @malloc(i64 noundef %i.fn) #38 ; 4 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %.invoke, label %bb.o

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.m, %bb.l
  %i.fq = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fq, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %.invoke
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = load ptr, ptr %11, align 8, !tbaa !307
  call void @free(ptr noundef %i.fs) #6
  br label %.body

bb.o:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.fo, ptr %11, align 8, !tbaa !307
  store i64 %i.fi, ptr %i.l, align 8, !tbaa !305
  store i64 %i.fi, ptr %i.m, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ft = icmp sgt i64 %i.bd, -1
  br i1 %i.ft, label %bb.p, label %.preheader.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.fu = icmp samesign ugt i64 %i.bd, 2305843009213693950
  br i1 %i.fu, label %.invoke309, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166: ; preds = %bb.p
  %i.fv = shl nuw i64 %i.fi, 3
  %i.fw = call noalias ptr @malloc(i64 noundef %i.fv) #38 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %.invoke309, label %.preheader.lr.ph

.invoke309:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166, %bb.p
  %i.fy = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fy, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont310 unwind label %bb.q

.cont310:                                         ; preds = %.invoke309
  unreachable

bb.q:                                             ; preds = %.invoke309
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = load ptr, ptr %12, align 8, !tbaa !307
  call void @free(ptr noundef %i.ga) #6
  br label %.body

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166, %bb.o
  %.sink.i165 = phi ptr [ %i.fw, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i166 ], [ null, %bb.o ] ; 2 uses
  store ptr %.sink.i165, ptr %12, align 8, !tbaa !307
  store i64 %i.fi, ptr %i.n, align 8, !tbaa !305
  store i64 1, ptr %i.o, align 8, !tbaa !306
  %i.gb = load ptr, ptr %i.p, align 8, !tbaa !185
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %indvars.iv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !187 ; 4 uses
  %i.ge = load ptr, ptr %i.r, align 8, !tbaa !185
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %indvars.iv
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !187
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.split.us
  %.086230 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.hf, %.split.us ] ; 15 uses
  %.087229 = phi i64 [ 0, %.preheader.lr.ph ], [ %.us-phi, %.split.us ] ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.fo, i64 %.086230 ; 4 uses
  %i.gi = mul nsw i64 %i.fi, %.086230
  %invariant.gep = getelementptr [8 x i8], ptr %i.fo, i64 %i.gi ; 4 uses
  %i.gj = icmp ult i64 %.086230, %i.bd
  %.fr = freeze i1 %i.gj
  br i1 %.fr, label %.preheader.split, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  %20 = add i64 %i.bd, %.086230
  %21 = and i64 %20, 1
  %lcmp.mod354.not.not = icmp eq i64 %21, 0
  br i1 %lcmp.mod354.not.not, label %.preheader.split.us.prol, label %.preheader.split.us.prol.loopexit

.preheader.split.us.prol:                         ; preds = %.preheader.split.us.preheader
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.087229
  %23 = load double, ptr %22, align 8, !tbaa !189 ; 2 uses
  %24 = mul nsw i64 %i.fi, %.086230
  %25 = getelementptr [8 x i8], ptr %i.gh, i64 %24
  store double %23, ptr %25, align 8, !tbaa !189
  %gep.us.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.086230
  store double %23, ptr %gep.us.prol, align 8, !tbaa !189
  %26 = add i64 %.087229, 1                       ; 2 uses
  %27 = add nuw i64 %.086230, 1
  br label %.preheader.split.us.prol.loopexit

.preheader.split.us.prol.loopexit:                ; preds = %.preheader.split.us.prol, %.preheader.split.us.preheader
  %.lcssa.unr = phi i64 [ poison, %.preheader.split.us.preheader ], [ %26, %.preheader.split.us.prol ]
  %.085228.us.unr = phi i64 [ %.086230, %.preheader.split.us.preheader ], [ %27, %.preheader.split.us.prol ]
  %.1227.us.unr = phi i64 [ %.087229, %.preheader.split.us.preheader ], [ %26, %.preheader.split.us.prol ]
  %28 = icmp eq i64 %i.bd, %.086230
  br i1 %28, label %.split.us, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.prol.loopexit, %.preheader.split.us
  %.085228.us = phi i64 [ %i.gp, %.preheader.split.us ], [ %.085228.us.unr, %.preheader.split.us.prol.loopexit ] ; 4 uses
  %.1227.us = phi i64 [ %i.go, %.preheader.split.us ], [ %.1227.us.unr, %.preheader.split.us.prol.loopexit ] ; 3 uses
  %29 = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.1227.us
  %30 = load double, ptr %29, align 8, !tbaa !189 ; 2 uses
  %31 = mul nsw i64 %i.fi, %.085228.us
  %32 = getelementptr [8 x i8], ptr %i.gh, i64 %31
  store double %30, ptr %32, align 8, !tbaa !189
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep, i64 %.085228.us
  store double %30, ptr %gep.us, align 8, !tbaa !189
  %33 = add nuw i64 %.085228.us, 1                ; 3 uses
  %i.gk = getelementptr [8 x i8], ptr %i.gd, i64 %.1227.us
  %34 = getelementptr i8, ptr %i.gk, i64 8
  %i.gl = load double, ptr %34, align 8, !tbaa !189 ; 2 uses
  %i.gm = mul nsw i64 %i.fi, %33
  %i.gn = getelementptr [8 x i8], ptr %i.gh, i64 %i.gm
  store double %i.gl, ptr %i.gn, align 8, !tbaa !189
  %gep.us.a = getelementptr [8 x i8], ptr %invariant.gep, i64 %33
  store double %i.gl, ptr %gep.us.a, align 8, !tbaa !189
  %i.go = add i64 %.1227.us, 2                    ; 2 uses
  %i.gp = add nuw i64 %.085228.us, 2
  %exitcond.not.1 = icmp eq i64 %33, %i.bd
  br i1 %exitcond.not.1, label %.split.us, label %.preheader.split.us, !llvm.loop !1240

._crit_edge:                                      ; preds = %.split.us, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2IS2_EERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(123) %17, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.split:                                 ; preds = %.preheader, %bb.s
  %.085228 = phi i64 [ %i.hb, %bb.s ], [ %.086230, %.preheader ] ; 5 uses
  %.1227 = phi i64 [ %i.ha, %bb.s ], [ %.087229, %.preheader ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.1227
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !189 ; 2 uses
  %i.gs = mul nsw i64 %i.fi, %.085228
  %i.gt = getelementptr [8 x i8], ptr %i.gh, i64 %i.gs ; 3 uses
  store double %i.gr, ptr %i.gt, align 8, !tbaa !189
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.085228
  store double %i.gr, ptr %gep, align 8, !tbaa !189
  %i.gu = icmp eq i64 %.086230, %.085228
  br i1 %i.gu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader.split
  %i.gv = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 432
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !308
  %i.gy = load double, ptr %i.gt, align 8, !tbaa !189
  %i.gz = fadd double %i.gx, %i.gy
  store double %i.gz, ptr %i.gt, align 8, !tbaa !189
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.split
  %i.ha = add i64 %.1227, 1                       ; 2 uses
  %i.hb = add nuw i64 %.085228, 1
  %exitcond259.not = icmp eq i64 %.085228, %i.bd
  br i1 %exitcond259.not, label %.split.us, label %.preheader.split, !llvm.loop !1240

.split.us:                                        ; preds = %.preheader.split.us.prol.loopexit, %.preheader.split.us, %bb.s
  %.us-phi = phi i64 [ %i.ha, %bb.s ], [ %.lcssa.unr, %.preheader.split.us.prol.loopexit ], [ %i.go, %.preheader.split.us ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.086230
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !189
  %i.he = getelementptr inbounds [8 x i8], ptr %.sink.i165, i64 %.086230
  store double %i.hd, ptr %i.he, align 8, !tbaa !189
  %i.hf = add nuw i64 %.086230, 1
  %exitcond.not = icmp eq i64 %.086230, %i.bd
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !1241

_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit: ; preds = %._crit_edge
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(123) %17)
          to label %_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9fullPivLuEv.exit
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(129) %15, ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit: ; preds = %_ZNK5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7inverseEv.exit
  invoke void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef nonnull align 8 dereferenceable(129) %15)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEngEv.exit
  store ptr %12, ptr %i.s, align 8, !tbaa !310, !alias.scope !1251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.hg = load i64, ptr %i.t, align 8, !tbaa !306 ; 4 uses
  %i.hh = load i64, ptr %i.o, align 8, !tbaa !306 ; 4 uses
  %i.hi = icmp eq i64 %i.hg, 0
  %i.hj = icmp eq i64 %i.hh, 0
  %or.cond.i.i.i.i104 = or i1 %i.hi, %i.hj
  br i1 %or.cond.i.i.i.i104, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hk = sdiv i64 9223372036854775807, %i.hh
  %i.hl = icmp sgt i64 %i.hg, %i.hk
  br i1 %i.hl, label %.invoke311, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.u, %bb.t
  %i.hm = mul nsw i64 %i.hh, %i.hg                ; 4 uses
  %.not.i170 = icmp eq i64 %i.hm, 0
  br i1 %.not.i170, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.hn = icmp sgt i64 %i.hm, 0
  br i1 %i.hn, label %bb.w, label %.sink.split.i171

bb.w:                                             ; preds = %bb.v
  %i.ho = icmp samesign ugt i64 %i.hm, 2305843009213693951
  br i1 %i.ho, label %.invoke311, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173: ; preds = %bb.w
  %i.hp = shl nuw i64 %i.hm, 3
  %i.hq = call noalias ptr @malloc(i64 noundef %i.hp) #38 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %.invoke311, label %.sink.split.i171

.invoke311:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173, %bb.w, %bb.u
  %i.hs = call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hs, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont312 unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont312:                                         ; preds = %.invoke311
  unreachable

.sink.split.i171:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173, %bb.v
  %.sink.i172 = phi ptr [ %i.hq, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i173 ], [ null, %bb.v ]
  store ptr %.sink.i172, ptr %13, align 8, !tbaa !307
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i171, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.hg, ptr %i.u, align 8, !tbaa !305
  store i64 %i.hh, ptr %i.v, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS3_EEEEEES3_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSE_RKSG_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.x unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, %.invoke311
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = load ptr, ptr %13, align 8, !tbaa !307
  call void @free(ptr noundef %i.ht) #6
  br label %.body

bb.x:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUIS2_EEEEEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.hu = load ptr, ptr %i.w, align 8, !tbaa !312
  call void @free(ptr noundef %i.hu) #6
  %i.hv = load ptr, ptr %i.x, align 8, !tbaa !314
  call void @free(ptr noundef %i.hv) #6
  %i.hw = load ptr, ptr %i.y, align 8, !tbaa !314
  call void @free(ptr noundef %i.hw) #6
  %i.hx = load ptr, ptr %i.z, align 8, !tbaa !314
  call void @free(ptr noundef %i.hx) #6
  %i.hy = load ptr, ptr %14, align 8, !tbaa !307
  call void @free(ptr noundef %i.hy) #6
  %i.hz = load ptr, ptr %i.aa, align 8, !tbaa !312
  call void @free(ptr noundef %i.hz) #6
  %i.ia = load ptr, ptr %i.ab, align 8, !tbaa !314
  call void @free(ptr noundef %i.ia) #6
  %i.ib = load ptr, ptr %i.ac, align 8, !tbaa !314
  call void @free(ptr noundef %i.ib) #6
  %i.ic = load ptr, ptr %i.ad, align 8, !tbaa !314
  call void @free(ptr noundef %i.ic) #6
  %i.id = load ptr, ptr %15, align 8, !tbaa !307
  call void @free(ptr noundef %i.id) #6
  %i.ie = load ptr, ptr %i.ae, align 8, !tbaa !312
  call void @free(ptr noundef %i.ie) #6
  %i.if = load ptr, ptr %i.af, align 8, !tbaa !314
  call void @free(ptr noundef %i.if) #6
  %i.ig = load ptr, ptr %i.ag, align 8, !tbaa !314
  call void @free(ptr noundef %i.ig) #6
  %i.ih = load ptr, ptr %i.ah, align 8, !tbaa !314
  call void @free(ptr noundef %i.ih) #6
  %i.ii = load ptr, ptr %16, align 8, !tbaa !307
  call void @free(ptr noundef %i.ii) #6
  %i.ij = load ptr, ptr %i.ai, align 8, !tbaa !312
  call void @free(ptr noundef %i.ij) #6
  %i.ik = load ptr, ptr %i.aj, align 8, !tbaa !314
  call void @free(ptr noundef %i.ik) #6
  %i.il = load ptr, ptr %i.ak, align 8, !tbaa !314
  call void @free(ptr noundef %i.il) #6
  %i.im = load ptr, ptr %i.al, align 8, !tbaa !314
  call void @free(ptr noundef %i.im) #6
  %i.in = load ptr, ptr %17, align 8, !tbaa !307
  call void @free(ptr noundef %i.in) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.io = load ptr, ptr %6, align 8, !tbaa !263
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 552
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !185, !noalias !1252
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %indvars.iv ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !190, !noalias !1252 ; 2 uses
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !187, !noalias !1252 ; 3 uses
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.ix = sub i64 %i.iv, %i.iw                    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.it, %i.iu
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iy = icmp ugt i64 %i.ix, 9223372036854775800
  br i1 %i.iy, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !220

.noexc.i.i.i:                                     ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.y
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #35
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i107 = load ptr, ptr %i.ir, align 8, !tbaa !222, !noalias !1252 ; 2 uses
  %.pre1.i = load ptr, ptr %i.is, align 8, !tbaa !222, !noalias !1252
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i107 to i64
  br label %bb.z

bb.z:                                             ; preds = %.noexc110, %bb.x
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc110 ], [ %i.iw, %bb.x ]
  %.pre-phi.i108 = phi i64 [ %.pre2.i, %.noexc110 ], [ %i.iv, %bb.x ]
  %i.ja = phi ptr [ %.pre.i107, %.noexc110 ], [ %i.iu, %bb.x ] ; 2 uses
  %i.jb = phi ptr [ %i.iz, %.noexc110 ], [ null, %bb.x ] ; 5 uses
  %i.jc = sub i64 %.pre-phi.i108, %.pre-phi4.i    ; 3 uses
  %i.jd = icmp sgt i64 %i.jc, 8
  br i1 %i.jd, label %bb.aa, label %bb.ab, !prof !223

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jb, ptr align 8 %i.ja, i64 %i.jc, i1 false), !noalias !1252
  br label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.je = icmp eq i64 %i.jc, 8
  br i1 %i.je, label %bb.ac, label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

bb.ac:                                            ; preds = %bb.ab
  %i.jf = load double, ptr %i.ja, align 8, !tbaa !189, !noalias !1252
  store double %i.jf, ptr %i.jb, align 8, !tbaa !189, !noalias !1252
  br label %_ZNK8LightGBM4Tree10LeafCoeffsEi.exit

_ZNK8LightGBM4Tree10LeafCoeffsEi.exit:            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.jg = load ptr, ptr %4, align 8, !tbaa !273   ; 2 uses
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %indvars.iv ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !169
  %i.jk = load ptr, ptr %i.jh, align 8, !tbaa !167 ; 2 uses
  %.not248 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not248, label %._crit_edge235, label %.lr.ph

._crit_edge235.loopexit:                          ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.jl = ptrtoint ptr %.sroa.18.1 to i64
  br label %._crit_edge235

end_hunk_3
