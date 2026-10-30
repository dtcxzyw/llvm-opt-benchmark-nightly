Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3g2o10BaseVertexILi7ENS_4Sim3EE16mapHessianMemoryEPd:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi7ENS_4Sim3EE5copyBEPd(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 16 dereferenceable(56) %i.a, i64 56, i1 false)
  ret i32 7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi7ENS_4Sim3EE1bEi(ptr noundef nonnull align 16 dereferenceable(296) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi7ENS_4Sim3EE1bEi(ptr noundef nonnull align 16 dereferenceable(296) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi7ENS_4Sim3EE5bDataEv(ptr noundef nonnull align 16 dereferenceable(296) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi7ENS_4Sim3EE18clearQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(296) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN3g2o10BaseVertexILi7ENS_4Sim3EE11solveDirectEd(ptr noundef nonnull align 16 dereferenceable(296) %0, double noundef %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::PartialPivLU.1301", align 16 ; 32 uses
  %3 = alloca %"struct.Eigen::internal::evaluator.1637", align 8 ; 5 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.1285", align 8 ; 4 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1654", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.70", align 16 ; 30 uses
  %8 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %9 = alloca %"class.Eigen::LLT", align 16       ; 47 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.09.0.copyload = load ptr, ptr %i.a, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.09.0.copyload, ptr %i.b, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double %1, ptr %i.c, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %7, ptr %4, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %4, ptr %5, align 8, !tbaa !164
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.d, align 8, !tbaa !475
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.e, align 8, !tbaa !167
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %7, ptr %i.f, align 8, !tbaa !169
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEEKNS7_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_identity_opIdEES5_EEKNSH_INS0_18scalar_constant_opIdEEKS5_EEEEEEEENS0_9assign_opIddEELi0EEELi0ELi1EE3runERSX_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 448
  store double 0.000000e+00, ptr %i.g, align 16, !tbaa !155, !alias.scope !476
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 456 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !156, !alias.scope !476
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 457
  store i8 0, ptr %i.i, align 1, !tbaa !157, !alias.scope !476
  %i.j = load <2 x double>, ptr %7, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.j, ptr %2, align 16, !tbaa !20, !alias.scope !476
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.m = load <2 x double>, ptr %i.l, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.m, ptr %i.k, align 16, !tbaa !20, !alias.scope !476
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.p, ptr %i.n, align 16, !tbaa !20, !alias.scope !476
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.s, ptr %i.q, align 16, !tbaa !20, !alias.scope !476
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.v, ptr %i.t, align 16, !tbaa !20, !alias.scope !476
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.y = load <2 x double>, ptr %i.x, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.y, ptr %i.w, align 16, !tbaa !20, !alias.scope !476
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ab = load <2 x double>, ptr %i.aa, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.ab, ptr %i.z, align 16, !tbaa !20, !alias.scope !476
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.ae = load <2 x double>, ptr %i.ad, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.ae, ptr %i.ac, align 16, !tbaa !20, !alias.scope !476
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.ah = load <2 x double>, ptr %i.ag, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.ah, ptr %i.af, align 16, !tbaa !20, !alias.scope !476
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.ak = load <2 x double>, ptr %i.aj, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.ak, ptr %i.ai, align 16, !tbaa !20, !alias.scope !476
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 2 uses
  %i.an = load <2 x double>, ptr %i.am, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.an, ptr %i.al, align 16, !tbaa !20, !alias.scope !476
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 2 uses
  %i.aq = load <2 x double>, ptr %i.ap, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.aq, ptr %i.ao, align 16, !tbaa !20, !alias.scope !476
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  %i.at = load <2 x double>, ptr %i.as, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.at, ptr %i.ar, align 16, !tbaa !20, !alias.scope !476
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  %i.aw = load <2 x double>, ptr %i.av, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.aw, ptr %i.au, align 16, !tbaa !20, !alias.scope !476
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 224 ; 2 uses
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.az, ptr %i.ax, align 16, !tbaa !20, !alias.scope !476
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 240 ; 2 uses
  %i.bc = load <2 x double>, ptr %i.bb, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bc, ptr %i.ba, align 16, !tbaa !20, !alias.scope !476
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 256 ; 2 uses
  %i.bf = load <2 x double>, ptr %i.be, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bf, ptr %i.bd, align 16, !tbaa !20, !alias.scope !476
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 272 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bi, ptr %i.bg, align 16, !tbaa !20, !alias.scope !476
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 2 uses
  %i.bl = load <2 x double>, ptr %i.bk, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bl, ptr %i.bj, align 16, !tbaa !20, !alias.scope !476
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 304 ; 2 uses
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bo, ptr %i.bm, align 16, !tbaa !20, !alias.scope !476
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 320 ; 2 uses
  %i.br = load <2 x double>, ptr %i.bq, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.br, ptr %i.bp, align 16, !tbaa !20, !alias.scope !476
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 336 ; 2 uses
  %i.bu = load <2 x double>, ptr %i.bt, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bu, ptr %i.bs, align 16, !tbaa !20, !alias.scope !476
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 352 ; 2 uses
  %i.bx = load <2 x double>, ptr %i.bw, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.bx, ptr %i.bv, align 16, !tbaa !20, !alias.scope !476
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 368 ; 2 uses
  %i.ca = load <2 x double>, ptr %i.bz, align 16, !tbaa !20, !noalias !476
  store <2 x double> %i.ca, ptr %i.by, align 16, !tbaa !20, !alias.scope !476
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 384 ; 2 uses
  %i.cd = load double, ptr %i.cc, align 16, !tbaa !36, !noalias !476
  store double %i.cd, ptr %i.cb, align 16, !tbaa !36, !alias.scope !476
  call void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE7computeEv(ptr noundef nonnull align 8 dereferenceable(458) %2)
  %i.ce = load i8, ptr %i.h, align 8, !tbaa !156
  %i.cf = sitofp i8 %i.ce to double
  %i.cg = load double, ptr %2, align 16, !tbaa !36
  %i.ch = load double, ptr %i.t, align 16, !tbaa !36
  %i.ci = load double, ptr %i.af, align 16, !tbaa !36
  %i.cj = fmul double %i.ch, %i.ci
  %i.ck = fmul double %i.cg, %i.cj
  %i.cl = load double, ptr %i.ar, align 16, !tbaa !36
  %i.cm = load double, ptr %i.bd, align 16, !tbaa !36
  %i.cn = fmul double %i.cl, %i.cm
  %i.co = load double, ptr %i.bp, align 16, !tbaa !36
  %i.cp = load double, ptr %i.cb, align 16, !tbaa !36
  %i.cq = fmul double %i.co, %i.cp
  %i.cr = fmul double %i.cn, %i.cq
  %i.cs = fmul double %i.ck, %i.cr
  %i.ct = fmul double %i.cs, %i.cf                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %or.cond = fcmp ult double %i.ct, f0x3CB0000000000000
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 400 ; 2 uses
  store i8 0, ptr %i.cu, align 16, !tbaa !479, !alias.scope !480
  %i.cv = load <2 x double>, ptr %7, align 16, !tbaa !20
  store <2 x double> %i.cv, ptr %9, align 16, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cx = load <2 x double>, ptr %i.l, align 16, !tbaa !20
  store <2 x double> %i.cx, ptr %i.cw, align 16, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.cz = load <2 x double>, ptr %i.o, align 16, !tbaa !20
  store <2 x double> %i.cz, ptr %i.cy, align 16, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.db = load <2 x double>, ptr %i.r, align 16, !tbaa !20 ; 2 uses
  store <2 x double> %i.db, ptr %i.da, align 16, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.dd = load <2 x double>, ptr %i.u, align 16, !tbaa !20
  store <2 x double> %i.dd, ptr %i.dc, align 16, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.df = load <2 x double>, ptr %i.x, align 16, !tbaa !20
  store <2 x double> %i.df, ptr %i.de, align 16, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.dh = load <2 x double>, ptr %i.aa, align 16, !tbaa !20
  store <2 x double> %i.dh, ptr %i.dg, align 16, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.dj = load <2 x double>, ptr %i.ad, align 16, !tbaa !20
  store <2 x double> %i.dj, ptr %i.di, align 16, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.dl = load <2 x double>, ptr %i.ag, align 16, !tbaa !20
  store <2 x double> %i.dl, ptr %i.dk, align 16, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.dn = load <2 x double>, ptr %i.aj, align 16, !tbaa !20
  store <2 x double> %i.dn, ptr %i.dm, align 16, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 2 uses
  %i.dp = load <2 x double>, ptr %i.am, align 16, !tbaa !20
  store <2 x double> %i.dp, ptr %i.do, align 16, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.dr = load <2 x double>, ptr %i.ap, align 16, !tbaa !20
  store <2 x double> %i.dr, ptr %i.dq, align 16, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 2 uses
  %i.dt = load <2 x double>, ptr %i.as, align 16, !tbaa !20
  store <2 x double> %i.dt, ptr %i.ds, align 16, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 2 uses
  %i.dv = load <2 x double>, ptr %i.av, align 16, !tbaa !20
  store <2 x double> %i.dv, ptr %i.du, align 16, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.dx = load <2 x double>, ptr %i.ay, align 16, !tbaa !20
  store <2 x double> %i.dx, ptr %i.dw, align 16, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.dz = load <2 x double>, ptr %i.bb, align 16, !tbaa !20
  store <2 x double> %i.dz, ptr %i.dy, align 16, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 256 ; 2 uses
  %i.eb = load <2 x double>, ptr %i.be, align 16, !tbaa !20
  store <2 x double> %i.eb, ptr %i.ea, align 16, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 272 ; 2 uses
  %i.ed = load <2 x double>, ptr %i.bh, align 16, !tbaa !20
  store <2 x double> %i.ed, ptr %i.ec, align 16, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.ef = load <2 x double>, ptr %i.bk, align 16, !tbaa !20
  store <2 x double> %i.ef, ptr %i.ee, align 16, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 304
  %i.eh = load <2 x double>, ptr %i.bn, align 16, !tbaa !20
  store <2 x double> %i.eh, ptr %i.eg, align 16, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 320 ; 2 uses
  %i.ej = load <2 x double>, ptr %i.bq, align 16, !tbaa !20
  store <2 x double> %i.ej, ptr %i.ei, align 16, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 336
  %i.el = load <2 x double>, ptr %i.bt, align 16, !tbaa !20
  store <2 x double> %i.el, ptr %i.ek, align 16, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 352
  %i.en = load <2 x double>, ptr %i.bw, align 16, !tbaa !20
  store <2 x double> %i.en, ptr %i.em, align 16, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 368
  %i.ep = load <2 x double>, ptr %i.bz, align 16, !tbaa !20
  store <2 x double> %i.ep, ptr %i.eo, align 16, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 384 ; 2 uses
  %i.er = load double, ptr %i.cc, align 16, !tbaa !36
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 392
  %i.et = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.er, i64 0
  store <2 x double> %i.et, ptr %i.eq, align 16, !tbaa !36
  %i.eu = extractelement <2 x double> %i.db, i64 0
  %i.ev = call double @llvm.fabs.f64(double %i.eu)
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.049.i = phi i64 [ 0, %bb.b ], [ %i.ik, %bb.i ] ; 14 uses
  %i.ew = phi double [ 0.000000e+00, %bb.b ], [ %i.ij, %bb.i ] ; 2 uses
  %i.ex = add nsw i64 %.049.i, -1                 ; 2 uses
  %i.ey = add nsw i64 %.049.i, -2
  %i.ez = sub nsw i64 7, %.049.i                  ; 2 uses
  %i.fa = and i64 %i.ez, -2
  %i.fb = and i64 %i.ez, 1                        ; 2 uses
  %i.fc = add i64 %.049.i, %i.fa
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.049.i, 56
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 %.idx.i.i.i.i.i
  %i.fe = sub nuw nsw i64 7, %.049.i              ; 4 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.049.i ; 9 uses
  %i.fg = and i64 %i.fe, 4                        ; 2 uses
  %i.fh = and i64 %i.fe, 6                        ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.049.i, 6
  br i1 %.not.i.i.i.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fi = load <2 x double>, ptr %i.ff, align 8, !tbaa !20
  %i.fj = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fi) ; 2 uses
  %i.fk = icmp samesign ult i64 %.049.i, 4
  br i1 %i.fk, label %._crit_edge.i.i.i.i.i.i, label %bb.f

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fm = load <2 x double>, ptr %i.fl, align 8, !tbaa !20
  %i.fn = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fm)
  %i.fo = fadd <2 x double> %i.fj, %i.fn          ; 2 uses
  %i.fp = icmp samesign ugt i64 %i.fh, %i.fg
  br i1 %i.fp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fg
  %i.fr = load <2 x double>, ptr %i.fq, align 8, !tbaa !20
  %i.fs = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fr)
  %i.ft = fadd <2 x double> %i.fo, %i.fs
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i, %bb.d
  %.274.i.i.i.i.i.i = phi <2 x double> [ %i.fj, %bb.d ], [ %i.ft, %bb.e ], [ %i.fo, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.i, %shift
  %i.fu = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %.not.i = icmp eq i64 %i.fh, %i.fe
  br i1 %.not.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i.preheader

.lr.ph85.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %i.fb, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph85.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.prol = phi i64 [ %i.fz, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.fh, %.lr.ph85.i.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.prol = phi double [ %i.fy, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.fu, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.05283.i.i.i.i.i.i.prol
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !36
  %i.fx = call noundef double @llvm.fabs.f64(double %i.fw)
  %i.fy = fadd double %.182.i.i.i.i.i.i.prol, %i.fx ; 3 uses
  %i.fz = add nuw nsw i64 %.05283.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.fb
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol, !llvm.loop !470

.lr.ph85.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph85.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.fy, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.unr = phi i64 [ %i.fh, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.fz, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.unr = phi double [ %i.fu, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.fy, %.lr.ph85.i.i.i.i.i.i.prol ]
  %i.ga = add i64 %i.fc, -4
  %i.gb = icmp ult i64 %i.ga, 3
  br i1 %i.gb, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph85.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i = phi double [ %i.gu, %.lr.ph85.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.05283.i.i.i.i.i.i
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !36
  %i.ge = call noundef double @llvm.fabs.f64(double %i.gd)
  %i.gf = fadd double %.182.i.i.i.i.i.i, %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.05283.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !36
  %i.gj = call noundef double @llvm.fabs.f64(double %i.gi)
  %i.gk = fadd double %i.gf, %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.05283.i.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !36
  %i.go = call noundef double @llvm.fabs.f64(double %i.gn)
  %i.gp = fadd double %i.gk, %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.05283.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !36
  %i.gt = call noundef double @llvm.fabs.f64(double %i.gs)
  %i.gu = fadd double %i.gp, %i.gt                ; 2 uses
  %i.gv = add nuw nsw i64 %.05283.i.i.i.i.i.i, 4  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.gv, %i.fe
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i, !llvm.loop !471

.thread.i:                                        ; preds = %bb.c
  %i.gw = load double, ptr %i.ff, align 16, !tbaa !36
  %i.gx = call noundef double @llvm.fabs.f64(double %i.gw)
  br label %.lr.ph.i.i.i.i.i20.preheader.i

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i, %bb.f
  %.0.i.i.i.i = phi double [ %i.fu, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ], [ %i.gu, %.lr.ph85.i.i.i.i.i.i ] ; 3 uses
  %i.gy = icmp eq i64 %.049.i, 0
  br i1 %i.gy, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.049.i
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !36
  %i.hb = call noundef double @llvm.fabs.f64(double %i.ha) ; 2 uses
  %.not47.i = icmp eq i64 %.049.i, 1
end_hunk_0
