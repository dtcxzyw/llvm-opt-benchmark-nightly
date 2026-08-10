inline.NumInlined: 35072
inline.NumDeleted: 18954
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE14computeInPlaceEv:bb.a
  store i32 1, ptr %i.ar, align 4, !tbaa !155
  %i.as = load i64, ptr %i.q, align 16, !tbaa !156
  %sext80 = shl i64 %i.as, 32
  %i.at = ashr exact i64 %sext80, 30
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !155
  store i32 %i.av, ptr %i.aq, align 8, !tbaa !155
  store i32 0, ptr %i.au, align 4, !tbaa !155
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !156
  %sext80.1 = shl i64 %i.ax, 32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.az = ashr exact i64 %sext80.1, 30
  %i.ba = getelementptr inbounds i8, ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !155
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !155
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !155
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !155
  %i.bd = and i64 %.1, 1
  %.not = icmp eq i64 %i.bd, 0
  %i.be = select i1 %.not, i64 1, i64 -1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.be, ptr %i.bf, align 16, !tbaa !1224
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.bg, align 8, !tbaa !91
  ret void

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.072148 = phi i64 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.bh = phi i1 [ true, %bb.a ], [ false, %._crit_edge ] ; 3 uses
  %.075147 = phi i64 [ 0, %bb.a ], [ 1, %._crit_edge ] ; 16 uses
  %i.bi = sub nuw nsw i64 2, %.075147             ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.075147 ; 4 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12 ; 3 uses
  br i1 %i.bh, label %.preheader.i.i.i.i.epil.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit

.preheader.i.i.i.i.epil.preheader:                ; preds = %bb.c
  call void @llvm.assume(i1 %i.bh)
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12 ; 2 uses
  %i.bn = fcmp ogt float %i.bm, %i.bk             ; 2 uses
  %.sroa.7.1.i.i.epil = select i1 %i.bn, float %i.bm, float %i.bk
  %.sroa.5.1.i.i.epil = zext i1 %i.bn to i64
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit: ; preds = %.preheader.i.i.i.i.epil.preheader, %bb.c
  %.sroa.7.2.i.i = phi float [ %i.bk, %bb.c ], [ %.sroa.7.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.5.2.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.5.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %i.bo = add nsw i64 %.sroa.5.2.i.i, %.075147    ; 4 uses
  %i.bp = load i64, ptr %i.w, align 8, !tbaa !115
  %i.bq = icmp eq i64 %i.bp, 2
  br i1 %i.bq, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit
  %i.br = fmul float %.sroa.7.2.i.i, %.sroa.7.2.i.i
  %i.bs = uitofp nneg i64 %i.bi to float
  %i.bt = fmul float %i.v, %i.bs
  %i.bu = fcmp olt float %i.br, %i.bt
  br i1 %i.bu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.075147, ptr %i.w, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.075147
  store i64 %i.bo, ptr %i.bv, align 8, !tbaa !156
  %.not81 = icmp eq i64 %.sroa.5.2.i.i, 0
  %.pre = shl nuw nsw i64 %.075147, 3             ; 3 uses
  br i1 %.not81, label %._crit_edge151, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 2 uses
  %.idx.i.i.i.i83 = shl nsw i64 %i.bo, 3
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i83 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bw, align 8, !tbaa !12
  %i.bz = load <2 x float>, ptr %i.bx, align 8, !tbaa !12
  store <2 x float> %i.bz, ptr %i.bw, align 8, !tbaa !12
  store <2 x float> %i.by, ptr %i.bx, align 8, !tbaa !12
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bo ; 2 uses
  %i.cb = load float, ptr %i.bj, align 4, !tbaa !12
  %i.cc = load float, ptr %i.ca, align 4, !tbaa !12
  store float %i.cc, ptr %i.bj, align 4, !tbaa !12
  store float %i.cb, ptr %i.ca, align 4, !tbaa !12
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.075147 ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bo ; 2 uses
  %i.cf = load float, ptr %i.cd, align 4, !tbaa !12
  %i.cg = load float, ptr %i.ce, align 4, !tbaa !12
  store float %i.cg, ptr %i.cd, align 4, !tbaa !12
  store float %i.cf, ptr %i.ce, align 4, !tbaa !12
  %i.ch = add nsw i64 %.072148, 1
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %bb.f, %bb.g
  %.1 = phi i64 [ %i.ch, %bb.g ], [ %.072148, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.075147 ; 2 uses
  store ptr %i.cj, ptr %2, align 8, !tbaa !1225, !alias.scope !1227
  store i64 %i.bi, ptr %i.y, align 8, !tbaa !141, !alias.scope !1227
  store ptr %i.ci, ptr %i.z, align 8
  store ptr %0, ptr %.sroa.5106.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6107.0..sroa_idx, align 8
  store i64 %.075147, ptr %.sroa.7108.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.8109.0..sroa_idx, align 8
  store i64 %.075147, ptr %i.aa, align 8, !tbaa !141, !alias.scope !1227
  store i64 2, ptr %i.ab, align 8, !tbaa !1230, !alias.scope !1227
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.075147 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.cl = xor i64 %.075147, 1                     ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store ptr %i.cm, ptr %1, align 8, !tbaa !1240
  store i64 %i.cl, ptr %i.ac, align 8, !tbaa !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  store i64 1, ptr %i.ae, align 8, !tbaa !141
  store i64 2, ptr %i.af, align 8, !tbaa !1242
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.cn = load float, ptr %i.a, align 4, !tbaa !12 ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %0, i64 %.075147 ; 3 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 %.pre
  store float %i.cn, ptr %i.cp, align 4, !tbaa !12
  %i.cq = call noundef float @llvm.fabs.f32(float %i.cn) ; 2 uses
  %i.cr = load float, ptr %i.x, align 16, !tbaa !114
  %i.cs = fcmp ogt float %i.cq, %i.cr
  br i1 %i.cs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge151
  store float %i.cq, ptr %i.x, align 16, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge151
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.ct = add nuw nsw i64 %.075147, 1             ; 8 uses
  %.idx.i.i.i.i85 = shl nuw nsw i64 %i.ct, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i.i.i85
  store ptr %i.cu, ptr %3, align 8, !tbaa !1247, !alias.scope !1249
  store i64 %i.bi, ptr %i.ag, align 8, !tbaa !141, !alias.scope !1249
  store i64 %i.cl, ptr %i.ah, align 8, !tbaa !141, !alias.scope !1249
  store ptr %0, ptr %i.ai, align 8, !tbaa !1252, !alias.scope !1249
  store i64 %.075147, ptr %i.aj, align 8, !tbaa !141, !alias.scope !1249
  store i64 %i.ct, ptr %i.ak, align 8, !tbaa !141, !alias.scope !1249
  store i64 2, ptr %i.al, align 8, !tbaa !1253, !alias.scope !1249
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ct
  store ptr %i.cv, ptr %4, align 8, !tbaa !1225, !alias.scope !1256
  store i64 %i.cl, ptr %i.am, align 8, !tbaa !141, !alias.scope !1256
  store ptr %i.ci, ptr %i.an, align 8
  store ptr %0, ptr %.sroa.5100.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6101.0..sroa_idx, align 8
  store i64 %.075147, ptr %.sroa.7102.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.8103.0..sroa_idx, align 8
  store i64 %i.ct, ptr %i.ao, align 8, !tbaa !141, !alias.scope !1256
  store i64 2, ptr %i.ap, align 8, !tbaa !1230, !alias.scope !1256
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ct
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li2ELi1ELb1EEELin1EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ck, ptr noundef nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ct
  br i1 %i.bh, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ct ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12 ; 4 uses
  %i.cz = fcmp une float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.j, label %._crit_edge

._crit_edge.sink.split:                           ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, %bb.k
  %.sink = phi float [ %i.dt, %bb.k ], [ %i.dr, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit ]
  store float %.sink, ptr %i.cx, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.sink.split, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.c, !llvm.loop !1259

bb.j:                                             ; preds = %.lr.ph
  %i.da = getelementptr i8, ptr %i.co, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !12
  %i.dc = call noundef float @llvm.fabs.f32(float %i.db)
  %i.dd = fdiv float %i.dc, %i.cy                 ; 2 uses
  %i.de = fadd float %i.dd, 1.000000e+00
  %i.df = fsub float 1.000000e+00, %i.dd
  %i.dg = fmul float %i.de, %i.df                 ; 2 uses
  %i.dh = fcmp olt float %i.dg, 0.000000e+00
  %i.di = select i1 %i.dh, float 0.000000e+00, float %i.dg ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ct ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !12
  %i.dl = fdiv float %i.cy, %i.dk                 ; 2 uses
  %i.dm = fmul float %i.dl, %i.dl
  %i.dn = fmul float %i.dm, %i.di
  %i.do = fcmp ugt float %i.dn, f0x39B504F3
  br i1 %i.do, label %bb.k, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit: ; preds = %bb.j
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.dp = load float, ptr %gep, align 4, !tbaa !12 ; 2 uses
  %i.dq = fmul float %i.dp, %i.dp
  %i.dr = call noundef float @llvm.sqrt.f32(float %i.dq) ; 2 uses
  store float %i.dr, ptr %i.dj, align 4, !tbaa !12
  br label %._crit_edge.sink.split

bb.k:                                             ; preds = %bb.j
  %i.ds = call float @llvm.sqrt.f32(float %i.di)
  %i.dt = fmul float %i.cy, %i.ds
  br label %._crit_edge.sink.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li2ELi1ELb1EEELin1EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.4771", align 8 ; 19 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.4657", align 8 ; 16 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.4675", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.4679", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Map.4556", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !141  ; 7 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load float, ptr %2, align 4, !tbaa !12   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fsub float 1.000000e+00, %i.d            ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !1247   ; 5 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !141  ; 4 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.preheader.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.b
  %xtraiter128 = and i64 %i.h, 3                  ; 3 uses
  %i.j = icmp ult i64 %i.h, 4
  br i1 %i.j, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ac, %.preheader.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i.i, 3
  %i.k = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fmul float %i.e, %i.l
  store float %i.m, ptr %i.k, align 4, !tbaa !12
  %i.n = shl i64 %.0810.i.i.i.i.i.i, 3
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 8        ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !12
  %i.r = fmul float %i.e, %i.q
  store float %i.r, ptr %i.p, align 4, !tbaa !12
  %i.s = shl i64 %.0810.i.i.i.i.i.i, 3
  %i.t = getelementptr i8, ptr %i.g, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16       ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !12
  %i.w = fmul float %i.e, %i.v
  store float %i.w, ptr %i.u, align 4, !tbaa !12
  %i.x = shl i64 %.0810.i.i.i.i.i.i, 3
  %i.y = getelementptr i8, ptr %i.g, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 24       ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = fmul float %i.e, %i.aa
  store float %i.ab, ptr %i.z, align 4, !tbaa !12
  %i.ac = add nuw nsw i64 %.0810.i.i.i.i.i.i, 4   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !1260

bb.c:                                             ; preds = %bb.a
  %i.ad = fcmp une float %i.d, 0.000000e+00
  br i1 %i.ad, label %bb.d, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !141 ; 7 uses
  store ptr %3, ptr %9, align 8, !tbaa !1261
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !141
  %i.ah = add i64 %i.b, -1                        ; 4 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1247  ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4      ; 5 uses
  %.sroa.644.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.644.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %.sroa.040.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.040.sroa.4.0.copyload = load i64, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.040.sroa.5.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr %.sroa.040.sroa.0.0.copyload, ptr %5, align 8
  %.sroa.4.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.040.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx4.i.i.i.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %i.aj, ptr %i.ak, align 8
  %.sroa.644.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %i.ah, ptr %.sroa.644.sroa.4.0..sroa_idx, align 8
  %.sroa.644.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %i.af, ptr %.sroa.644.sroa.5.0..sroa_idx, align 8
  %.sroa.644.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 1, ptr %.sroa.644.sroa.7.0..sroa_idx, align 8
  %.sroa.644.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 0, ptr %.sroa.644.sroa.8.0..sroa_idx, align 8
  %.sroa.644.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 2, ptr %.sroa.644.sroa.9.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sroa.040.sroa.0.0.copyload, ptr %i.al, align 8, !tbaa !1263
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !1265
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 232
  store i64 %.sroa.040.sroa.4.0.copyload, ptr %i.an, align 8, !tbaa !1267
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %3, ptr %6, align 8, !tbaa !1284
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.af, ptr %i.ao, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr %6, ptr %7, align 8, !tbaa !1286
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.ap, align 8, !tbaa !1288
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.aq, align 8, !tbaa !235
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.ar, align 8, !tbaa !1290
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS_5BlockINSD_INS5_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSD_INSD_ISE_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi1ELi0EE3runERSP_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.as = load ptr, ptr %0, align 8, !tbaa !1247, !noalias !1292 ; 16 uses
  %i.at = load ptr, ptr %9, align 8, !tbaa !1261  ; 7 uses
  %i.au = load i64, ptr %i.ag, align 8, !tbaa !141 ; 9 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.au, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.aw = shl i64 %i.au, 2
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.aw
  %i.ax = shl i64 %i.au, 3
  %i.ay = getelementptr i8, ptr %i.as, i64 %i.ax
  %scevgep54 = getelementptr i8, ptr %i.ay, i64 -4
  %bound0 = icmp ult ptr %i.at, %scevgep54
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.az = and i64 %i.au, 7                        ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 8, i64 %i.az
  %n.vec = sub nsw i64 %i.au, %i.bb               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 3 uses
  %i.bd = shl nuw nsw i64 %index, 3
  %i.be = shl i64 %index, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %wide.vec = load <8 x float>, ptr %i.bf, align 4, !tbaa !12, !alias.scope !1295
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec55 = load <8 x float>, ptr %i.bh, align 4, !tbaa !12, !alias.scope !1295
  %strided.vec56 = shufflevector <8 x float> %wide.vec55, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bc, align 4, !tbaa !12, !alias.scope !1298, !noalias !1295
  %wide.load57 = load <4 x float>, ptr %i.bi, align 4, !tbaa !12, !alias.scope !1298, !noalias !1295
  %i.bj = fadd <4 x float> %strided.vec, %wide.load
  %i.bk = fadd <4 x float> %strided.vec56, %wide.load57
  store <4 x float> %i.bj, ptr %i.bc, align 4, !tbaa !12, !alias.scope !1298, !noalias !1295
  store <4 x float> %i.bk, ptr %i.bi, align 4, !tbaa !12, !alias.scope !1298, !noalias !1295
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.body, !llvm.loop !1300

.lr.ph.i.i.i.i.i.i.preheader120:                  ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.bm = sub i64 %i.au, %.05.i.i.i.i.i.i.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.bm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader120
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.prol = shl nuw nsw i64 %.05.i.i.i.i.i.i.ph, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i.i.i.i.i.i.i.prol
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = load float, ptr %i.bn, align 4, !tbaa !12
  %i.br = fadd float %i.bp, %i.bq
end_hunk_0
