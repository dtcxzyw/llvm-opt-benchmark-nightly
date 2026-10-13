Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZNK3g2o16VertexSim3Expmap5writeERSo:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !36
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.cc)
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !22
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %1, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !126
  %i.cl = icmp eq i32 %i.ck, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %i.cl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3g2o4Sim33logEv(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 8 %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Ref", align 8        ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.Eigen::internal::evaluator.612", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Matrix.178", align 16 ; 43 uses
  %5 = alloca %"class.Eigen::PartialPivLU", align 16 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load double, ptr %i.b, align 8, !tbaa !47 ; 5 uses
  %i.d = tail call double @log(double noundef %i.c) #26 ; 12 uses
  %i.e = load double, ptr %1, align 16, !tbaa !36, !noalias !405 ; 4 uses
  %i.f = fmul double %i.e, 2.000000e+00           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !36, !noalias !405 ; 3 uses
  %i.i = fmul double %i.h, 2.000000e+00           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load double, ptr %i.j, align 16, !tbaa !36, !noalias !405 ; 2 uses
  %i.l = fmul double %i.k, 2.000000e+00           ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !36, !noalias !405 ; 3 uses
  %i.o = fmul double %i.f, %i.n                   ; 2 uses
  %i.p = fmul double %i.i, %i.n                   ; 2 uses
  %i.q = fmul double %i.l, %i.n                   ; 2 uses
  %i.r = fmul double %i.e, %i.f                   ; 2 uses
  %i.s = fmul double %i.e, %i.i                   ; 2 uses
  %i.t = fmul double %i.e, %i.l                   ; 2 uses
  %i.u = fmul double %i.h, %i.i                   ; 2 uses
  %i.v = fmul double %i.h, %i.l                   ; 2 uses
  %i.w = fmul double %i.k, %i.l                   ; 2 uses
  %i.x = fadd double %i.u, %i.w
  %i.y = fsub double 1.000000e+00, %i.x
  %i.z = fsub double %i.s, %i.q                   ; 4 uses
  %i.aa = fadd double %i.t, %i.p                  ; 4 uses
  %i.ab = fadd double %i.s, %i.q                  ; 4 uses
  %i.ac = fadd double %i.r, %i.w
  %i.ad = fsub double 1.000000e+00, %i.ac
  %i.ae = fsub double %i.v, %i.o                  ; 4 uses
  %i.af = fsub double %i.t, %i.p                  ; 4 uses
  %i.ag = fadd double %i.v, %i.o                  ; 4 uses
  %i.ah = fadd double %i.r, %i.u
  %i.ai = fsub double 1.000000e+00, %i.ah
  %i.aj = fadd double %i.y, %i.ad
  %i.ak = fadd double %i.ai, %i.aj
  %i.al = fadd double %i.ak, -1.000000e+00
  %i.am = fmul double %i.al, 5.000000e-01         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.an = tail call double @llvm.fabs.f64(double %i.d)
  %i.ao = fcmp olt double %i.an, 1.000000e-05
  br i1 %i.ao, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ap = fcmp ogt double %i.am, 9.999900e-01
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aq = fsub double %i.ag, %i.ae
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ar = fsub double %i.aa, %i.af
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.ar, i64 1
  %i.as = fsub double %i.ab, %i.z
  %i.at = fmul <2 x double> %.sroa.0.8.vec.insert, splat (double 5.000000e-01) ; 4 uses
  %i.au = fmul double %i.as, 5.000000e-01         ; 3 uses
  %i.av = fneg double %i.au
  %.sroa.0.0.vec.extract = extractelement <2 x double> %i.at, i64 0
  %i.aw = fneg <2 x double> %i.at                 ; 2 uses
  store double 0.000000e+00, ptr %4, align 16
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.au, ptr %.sroa.4160.0..sroa_idx, align 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ax = extractelement <2 x double> %i.aw, i64 1
  store double %i.ax, ptr %.sroa.5161.0..sroa_idx, align 16
  %.sroa.6162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.av, ptr %.sroa.6162.0..sroa_idx, align 8
  %.sroa.7163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double 0.000000e+00, ptr %.sroa.7163.0..sroa_idx, align 16
  %.sroa.7164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <2 x double> %i.at, ptr %.sroa.7164.0..sroa_idx, align 8
  %.sroa.9166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ay = extractelement <2 x double> %i.aw, i64 0
  store double %i.ay, ptr %.sroa.9166.0..sroa_idx, align 8
  %.sroa.10167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 0.000000e+00, ptr %.sroa.10167.0..sroa_idx, align 16, !tbaa !20
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_5SolveINS_12PartialPivLUINS0_IdLi3ELi3ELi0ELi3ELi3EEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.az = tail call double @acos(double noundef %i.am) #26 ; 7 uses
  %i.ba = fmul double %i.az, %i.az                ; 2 uses
  %i.bb = fneg double %i.am
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.am, double 1.000000e+00)
  %i.bd = tail call double @sqrt(double noundef %i.bc) #26
  %i.be = fmul double %i.bd, 2.000000e+00
  %i.bf = fdiv double %i.az, %i.be                ; 2 uses
  %i.bg = fsub double %i.ag, %i.ae
  %.sroa.0203.0.vec.insert = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bh = fsub double %i.aa, %i.af
  %.sroa.0203.8.vec.insert = insertelement <2 x double> %.sroa.0203.0.vec.insert, double %i.bh, i64 1
  %i.bi = fsub double %i.ab, %i.z
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i65 = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bj = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i65, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %.sroa.0203.8.vec.insert, %i.bj ; 4 uses
  %i.bl = fmul double %i.bi, %i.bf                ; 3 uses
  %i.bm = fneg double %i.bl
  %.sroa.0.0.vec.extract217 = extractelement <2 x double> %i.bk, i64 0
  %i.bn = fneg <2 x double> %i.bk                 ; 2 uses
  store double 0.000000e+00, ptr %4, align 16
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.bl, ptr %.sroa.4146.0..sroa_idx, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = extractelement <2 x double> %i.bn, i64 1
  store double %i.bo, ptr %.sroa.5147.0..sroa_idx, align 16
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.bm, ptr %.sroa.6148.0..sroa_idx, align 8
  %.sroa.7149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double 0.000000e+00, ptr %.sroa.7149.0..sroa_idx, align 16
  %.sroa.7150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <2 x double> %i.bk, ptr %.sroa.7150.0..sroa_idx, align 8
  %.sroa.9152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bp = extractelement <2 x double> %i.bn, i64 0
  store double %i.bp, ptr %.sroa.9152.0..sroa_idx, align 8
  %.sroa.10153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 0.000000e+00, ptr %.sroa.10153.0..sroa_idx, align 16, !tbaa !20
  %i.bq = tail call double @cos(double noundef %i.az) #26
  %i.br = tail call double @sin(double noundef %i.az) #26
  %i.bs = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.az, i64 1
  %i.bt = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.br, i64 1
  %i.bv = fsub <2 x double> %i.bs, %i.bu
  %i.bw = fmul double %i.az, %i.ba
  %i.bx = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = fdiv <2 x double> %i.bv, %i.by
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_5SolveINS_12PartialPivLUINS0_IdLi3ELi3ELi0ELi3ELi3EEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.e:                                             ; preds = %bb.a
  %i.ca = fadd double %i.c, -1.000000e+00
  %i.cb = fdiv double %i.ca, %i.d                 ; 3 uses
  %i.cc = fcmp ogt double %i.am, 9.999900e-01
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cd = fmul double %i.d, %i.d                  ; 3 uses
  %i.ce = fsub double %i.ag, %i.ae
  %.sroa.0206.0.vec.insert = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cf = fsub double %i.aa, %i.af
  %.sroa.0206.8.vec.insert = insertelement <2 x double> %.sroa.0206.0.vec.insert, double %i.cf, i64 1
  %i.cg = fsub double %i.ab, %i.z
  %i.ch = fmul <2 x double> %.sroa.0206.8.vec.insert, splat (double 5.000000e-01) ; 4 uses
  %i.ci = fmul double %i.cg, 5.000000e-01         ; 3 uses
  %i.cj = fneg double %i.ci
  %.sroa.0.0.vec.extract219 = extractelement <2 x double> %i.ch, i64 0
  %i.ck = fneg <2 x double> %i.ch                 ; 2 uses
  store double 0.000000e+00, ptr %4, align 16
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.ci, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cl = extractelement <2 x double> %i.ck, i64 1
  store double %i.cl, ptr %.sroa.5133.0..sroa_idx, align 16
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.cj, ptr %.sroa.6134.0..sroa_idx, align 8
  %.sroa.7135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double 0.000000e+00, ptr %.sroa.7135.0..sroa_idx, align 16
  %.sroa.7136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <2 x double> %i.ch, ptr %.sroa.7136.0..sroa_idx, align 8
  %.sroa.9138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cm = extractelement <2 x double> %i.ck, i64 0
  store double %i.cm, ptr %.sroa.9138.0..sroa_idx, align 8
  %.sroa.10139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 0.000000e+00, ptr %.sroa.10139.0..sroa_idx, align 16, !tbaa !20
  %i.cn = fneg double %i.d
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cd, double 5.000000e-01, double %i.cn)
  %i.cp = insertelement <2 x double> poison, double %i.d, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = fadd <2 x double> %i.cq, <double -1.000000e+00, double 1.000000e+00>
  %i.cs = insertelement <2 x double> poison, double %i.c, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.ct, <2 x double> <double 1.000000e+00, double -1.000000e+00>)
  %i.cv = fmul double %i.d, %i.cd
  %i.cw = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.cv, i64 1
  %i.cy = fdiv <2 x double> %i.cu, %i.cx
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_5SolveINS_12PartialPivLUINS0_IdLi3ELi3ELi0ELi3ELi3EEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.cz = fneg double %i.am
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.am, double 1.000000e+00)
  %i.db = fsub double %i.ag, %i.ae
  %.sroa.0209.0.vec.insert = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dc = fsub double %i.aa, %i.af
  %.sroa.0209.8.vec.insert = insertelement <2 x double> %.sroa.0209.0.vec.insert, double %i.dc, i64 1
  %i.dd = fsub double %i.ab, %i.z
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.7122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.9125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.10126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %6 = tail call double @acos(double noundef %i.am) #26 ; 8 uses
  %i.de = tail call double @sqrt(double noundef %i.da) #26
  %i.df = fmul double %i.de, 2.000000e+00
  %i.dg = tail call double @sin(double noundef %6) #26
  %i.dh = fmul double %i.c, %i.dg                 ; 2 uses
  %7 = tail call double @cos(double noundef %6) #26
  %i.di = fmul double %i.c, %7                    ; 2 uses
  %8 = fadd double %i.di, -1.000000e+00
  %9 = fmul double %6, %i.dh
  %i.dj = fmul double %6, %6                      ; 2 uses
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double %i.dj) ; 2 uses
  %i.dl = tail call double @llvm.fmuladd.f64(double %8, double %i.d, double %9)
  %i.dm = insertelement <2 x double> poison, double %6, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dl, i64 1
  %i.do = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dk, i64 1
  %i.dq = fdiv <2 x double> %i.dn, %i.dp          ; 3 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x double> %.sroa.0209.8.vec.insert, %i.dr ; 4 uses
  %i.dt = extractelement <2 x double> %i.dq, i64 0
  %i.du = fmul double %i.dd, %i.dt                ; 3 uses
  %i.dv = fneg double %i.du
  %.sroa.0.0.vec.extract221 = extractelement <2 x double> %i.ds, i64 0
  %i.dw = fneg <2 x double> %i.ds                 ; 2 uses
  store double 0.000000e+00, ptr %4, align 16
  store double %i.du, ptr %.sroa.4119.0..sroa_idx, align 8
  %i.dx = extractelement <2 x double> %i.dw, i64 1
  store double %i.dx, ptr %.sroa.5120.0..sroa_idx, align 16
  store double %i.dv, ptr %.sroa.6121.0..sroa_idx, align 8
  store double 0.000000e+00, ptr %.sroa.7122.0..sroa_idx, align 16
  store <2 x double> %i.ds, ptr %.sroa.7123.0..sroa_idx, align 8
  %i.dy = extractelement <2 x double> %i.dw, i64 0
  store double %i.dy, ptr %.sroa.9125.0..sroa_idx, align 8
  store double 0.000000e+00, ptr %.sroa.10126.0..sroa_idx, align 16, !tbaa !20
  %10 = fsub double 1.000000e+00, %i.di
  %11 = fmul double %6, %10
  %12 = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.d, double %11)
  %13 = fmul double %6, %i.dk
  %i.dz = extractelement <2 x double> %i.dq, i64 1
  %i.ea = fsub double %i.cb, %i.dz
  %i.eb = insertelement <2 x double> poison, double %13, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dj, i64 1
  %i.ed = insertelement <2 x double> poison, double %12, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %i.ea, i64 1
  %i.ef = fdiv <2 x double> %i.ee, %i.ec
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_5SolveINS_12PartialPivLUINS0_IdLi3ELi3ELi0ELi3ELi3EEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_5SolveINS_12PartialPivLUINS0_IdLi3ELi3ELi0ELi3ELi3EEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.d, %bb.c, %bb.g, %bb.f
  %i.eg = phi double [ %.sroa.0.0.vec.extract, %bb.c ], [ %.sroa.0.0.vec.extract217, %bb.d ], [ %.sroa.0.0.vec.extract219, %bb.f ], [ %.sroa.0.0.vec.extract221, %bb.g ]
  %.sroa.15.0 = phi double [ %i.au, %bb.c ], [ %i.bl, %bb.d ], [ %i.ci, %bb.f ], [ %i.du, %bb.g ]
  %.sroa.0.0 = phi <2 x double> [ %i.at, %bb.c ], [ %i.bk, %bb.d ], [ %i.ch, %bb.f ], [ %i.ds, %bb.g ]
  %.0201 = phi double [ 1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.d ], [ %i.cb, %bb.f ], [ %i.cb, %bb.g ]
  %i.eh = phi <2 x double> [ <double 5.000000e-01, double f0x3FC5555555555555>, %bb.c ], [ %i.bz, %bb.d ], [ %i.cy, %bb.f ], [ %i.ef, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ej = extractelement <2 x double> %i.eh, i64 0
  store double %i.ej, ptr %i.ei, align 8, !tbaa !129
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %4, ptr %i.ek, align 8, !tbaa !131
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.em, ptr %i.el, align 8, !tbaa !131
  %i.en = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.eo = load <2 x double>, ptr %4, align 16     ; 4 uses
  %i.ep = fmul <2 x double> %i.en, %i.eo          ; 3 uses
  %i.eq = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x double> %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.et = load <2 x double>, ptr %i.es, align 8, !tbaa !20 ; 2 uses
  %i.eu = fmul <2 x double> %i.en, %i.et          ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ew = load <2 x double>, ptr %i.ev, align 8   ; 2 uses
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %i.eu, %i.ex
  %i.ez = fadd <2 x double> %i.er, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.fb = load <2 x double>, ptr %i.fa, align 16, !tbaa !20 ; 2 uses
  %i.fc = fmul <2 x double> %i.en, %i.fb          ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fe = load <2 x double>, ptr %i.fd, align 16  ; 4 uses
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x double> %i.fc, %i.ff
  %i.fh = fadd <2 x double> %i.ez, %i.fg          ; 2 uses
  store <2 x double> %i.fh, ptr %i.em, align 8, !tbaa !20
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.fj = extractelement <2 x double> %i.fe, i64 0 ; 2 uses
  %i.fk = extractelement <2 x double> %i.eh, i64 1 ; 4 uses
  %i.fl = fmul double %i.fk, %i.fj                ; 3 uses
  %i.fm = extractelement <2 x double> %i.eo, i64 0
  %i.fn = fmul double %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fp = fmul double %i.fk, %i.eg
  %i.fq = extractelement <2 x double> %i.ew, i64 0
  %i.fr = fmul double %i.fp, %i.fq
  %i.fs = fmul double %i.fk, 0.000000e+00         ; 3 uses
  %i.ft = fmul double %i.fs, %i.fj
  %i.fu = fadd double %i.fr, %i.ft
  %i.fv = fadd double %i.fn, %i.fu
  store double %i.fv, ptr %i.fi, align 8, !tbaa !36
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.fx = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x double> %i.fx, %i.ep
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ga = load <2 x double>, ptr %i.fz, align 16  ; 3 uses
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x double> %i.eu, %i.gb
  %i.gd = fadd <2 x double> %i.fy, %i.gc
  %i.ge = load <2 x double>, ptr %i.fo, align 8   ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x double> %i.fc, %i.gf
  %i.gh = fadd <2 x double> %i.gd, %i.gg
  store <2 x double> %i.gh, ptr %i.fw, align 8, !tbaa !20
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.gj = extractelement <2 x double> %i.fe, i64 1
  %i.gk = fmul double %i.fl, %i.gj
  %i.gl = extractelement <2 x double> %i.ge, i64 0 ; 2 uses
  %i.gm = fmul double %i.fk, %i.gl                ; 2 uses
  %i.gn = extractelement <2 x double> %i.ga, i64 0
  %i.go = fmul double %i.gm, %i.gn
  %i.gp = fmul double %i.fs, %i.gl
  %i.gq = fadd double %i.gp, %i.go
  %i.gr = fadd double %i.gk, %i.gq
  store double %i.gr, ptr %i.gi, align 8, !tbaa !36
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.gt = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x double> %i.gt, %i.ep
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gw = load <2 x double>, ptr %i.gv, align 8   ; 3 uses
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x double> %i.eu, %i.gx
  %i.gz = fadd <2 x double> %i.gu, %i.gy
  %i.ha = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hb = fmul <2 x double> %i.fc, %i.ha
  %i.hc = fadd <2 x double> %i.hb, %i.gz          ; 2 uses
  store <2 x double> %i.hc, ptr %i.gs, align 8, !tbaa !20
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.he = extractelement <2 x double> %i.ge, i64 1
  %i.hf = fmul double %i.fl, %i.he
  %i.hg = extractelement <2 x double> %i.gw, i64 0
  %i.hh = fmul double %i.gm, %i.hg
  %i.hi = fmul ninf double %i.fs, 0.000000e+00
  %i.hj = fadd double %i.hi, %i.hh
  %i.hk = fadd double %i.hf, %i.hj                ; 2 uses
  store double %i.hk, ptr %i.hd, align 8, !tbaa !36
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  store double %.0201, ptr %i.hl, align 8, !tbaa !129
  %i.hm = load <2 x double>, ptr %i.ei, align 8   ; 2 uses
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ho = fmul <2 x double> %i.eo, %i.hn
  %i.hp = fadd <2 x double> %i.fh, %i.ho
  %i.hq = load <2 x double>, ptr %i.hl, align 8   ; 2 uses
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hs = fmul <2 x double> %i.hr, <double 1.000000e+00, double 0.000000e+00>
  %i.ht = fadd <2 x double> %i.hp, %i.hs          ; 2 uses
  %i.hu = fmul <2 x double> %i.hn, %i.fe
  %i.hv = load <2 x double>, ptr %i.fi, align 8, !tbaa !20
  %i.hw = fadd <2 x double> %i.hu, %i.hv
  %i.hx = fmul <2 x double> %i.hr, zeroinitializer
  %i.hy = fadd <2 x double> %i.hw, %i.hx          ; 2 uses
  %i.hz = fmul <2 x double> %i.hn, %i.ga
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ib = load <2 x double>, ptr %i.ia, align 8, !tbaa !20
  %i.ic = fadd <2 x double> %i.hz, %i.ib
  %i.id = fmul <2 x double> %i.hr, <double 1.000000e+00, double 0.000000e+00>
  %i.ie = fadd <2 x double> %i.ic, %i.id          ; 2 uses
  %i.if = load <2 x double>, ptr %i.fa, align 16, !tbaa !20
  %i.ig = fmul <2 x double> %i.hn, %i.if
  %i.ih = fadd <2 x double> %i.hc, %i.ig
  %i.ii = fmul <2 x double> %i.hr, zeroinitializer
  %i.ij = fadd <2 x double> %i.ih, %i.ii          ; 2 uses
  %i.ik = extractelement <2 x double> %i.hm, i64 0
  %i.il = fmul double %i.ik, 0.000000e+00
  %i.im = fadd double %i.hk, %i.il
  %i.in = extractelement <2 x double> %i.hq, i64 0
  %i.io = fadd double %i.in, %i.im                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store i8 0, ptr %i.iq, align 8, !tbaa !418, !alias.scope !406
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 105 ; 2 uses
  store i8 0, ptr %i.ir, align 1, !tbaa !419, !alias.scope !406
  store <2 x double> %i.ht, ptr %5, align 16, !tbaa !20, !alias.scope !406
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x double> %i.hy, ptr %i.is, align 16, !tbaa !20, !alias.scope !406
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <2 x double> %i.ie, ptr %i.it, align 16, !tbaa !20, !alias.scope !406
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <2 x double> %i.ij, ptr %i.iu, align 16, !tbaa !20, !alias.scope !406
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.io, ptr %i.iv, align 16, !tbaa !36, !alias.scope !406
  %i.iw = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ht) ; 2 uses
  %shift = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.iw, %shift
  %i.ix = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.iy = extractelement <2 x double> %i.hy, i64 0
  %i.iz = call noundef double @llvm.fabs.f64(double %i.iy)
  %i.ja = fadd double %i.ix, %i.iz                ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jc = load <2 x double>, ptr %i.jb, align 8, !tbaa !20, !alias.scope !406
  %i.jd = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.jc) ; 2 uses
  %i.je = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ij) ; 2 uses
  %i.jf = shufflevector <2 x double> %i.jd, <2 x double> %i.je, <2 x i32> <i32 0, i32 2>
  %i.jg = shufflevector <2 x double> %i.jd, <2 x double> %i.je, <2 x i32> <i32 1, i32 3>
  %i.jh = fadd <2 x double> %i.jf, %i.jg
  %i.ji = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jj = insertelement <2 x double> %i.ji, double %i.io, i64 1
  %i.jk = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.jj)
  %i.jl = fadd <2 x double> %i.jk, %i.jh          ; 2 uses
  %i.jm = extractelement <2 x double> %i.jl, i64 0 ; 2 uses
  %i.jn = extractelement <2 x double> %i.jl, i64 1 ; 2 uses
  %i.jo = fcmp olt double %i.jm, %i.jn
  %i.jp = select i1 %i.jo, double %i.jn, double %i.jm ; 2 uses
  %i.jq = fcmp olt double %i.ja, %i.jp
  %i.jr = select i1 %i.jq, double %i.jp, double %i.ja
  store double %i.jr, ptr %i.ip, align 16, !tbaa !420, !alias.scope !406
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !406
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %5, ptr %2, align 8, !tbaa !134, !noalias !406
  store i64 3, ptr %i.jt, align 8, !tbaa !136, !noalias !406
  %i.ju = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLi3EE12unblocked_luERNS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.js, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !406
  %i.jv = load i32, ptr %i.a, align 4, !tbaa !29, !noalias !406
  %i.jw = and i32 %i.jv, 1
  %.not.i.i.i.i = icmp eq i32 %i.jw, 0
  %i.jx = select i1 %.not.i.i.i.i, i8 1, i8 -1
  store i8 %i.jx, ptr %i.iq, align 8, !tbaa !418, !alias.scope !406
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 6 uses
  store i32 0, ptr %i.jy, align 8, !tbaa !29, !alias.scope !406
  %i.jz = getelementptr inbounds nuw i8, ptr %5, i64 76 ; 3 uses
  store i32 1, ptr %i.jz, align 4, !tbaa !29, !alias.scope !406
  %i.ka = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store i32 2, ptr %i.ka, align 16, !tbaa !29, !alias.scope !406
  %i.kb = getelementptr inbounds nuw i8, ptr %5, i64 92
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !29, !alias.scope !406
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !29, !alias.scope !406
  store i32 %i.kf, ptr %i.ka, align 16, !tbaa !29, !alias.scope !406
  store i32 2, ptr %i.ke, align 4, !tbaa !29, !alias.scope !406
end_hunk_0
