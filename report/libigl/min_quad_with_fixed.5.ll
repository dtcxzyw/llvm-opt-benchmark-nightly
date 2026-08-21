Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.5?download=true
inline.NumInlined: 9579
inline.NumDeleted: 5241
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3igl19min_quad_with_fixedIdLi3ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9, !range !11, !noundef !12 ; 2 uses
  %narrow.i.i.i.i.i.i = add nuw nsw i8 %i.c, %i.a
  %narrow.i.i.i.i.i = add nuw nsw i8 %narrow.i.i.i.i.i.i, %i.e
  switch i8 %narrow.i.i.i.i.i, label %bb.e [
    i8 3, label %bb.b
    i8 0, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i
    i8 2, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.a to i1
  br i1 %i.f, label %.preheader.1, label %.split.thread

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !13
  br label %bb.f

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.h = load <2 x double>, ptr %1, align 8, !tbaa !14 ; 3 uses
  store <2 x double> %i.h, ptr %5, align 16, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  store <2 x double> %i.k, ptr %i.i, align 16, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !14 ; 3 uses
  store <2 x double> %i.n, ptr %i.l, align 16, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !14
  store <2 x double> %i.q, ptr %i.o, align 16, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = load double, ptr %i.s, align 8, !tbaa !15 ; 2 uses
  store double %i.t, ptr %i.r, align 16, !tbaa !15
  %i.u = extractelement <2 x double> %i.k, i64 0
  %i.v = extractelement <2 x double> %i.h, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.x = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.h) ; 2 uses
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.u) ; 2 uses
  %i.z = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.n) ; 2 uses
  %i.aa = shufflevector <2 x double> %i.x, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ab = shufflevector <2 x double> %i.x, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %i.ac = fadd <2 x double> %i.aa, %i.ab          ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fadd double %i.ad, %i.y                 ; 2 uses
  %i.af = fcmp ogt double %i.ae, 0.000000e+00
  %i.ag = select i1 %i.af, double %i.ae, double 0.000000e+00 ; 2 uses
  %i.ah = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.ai = extractelement <2 x double> %i.ac, i64 1
  %i.aj = fadd double %i.ah, %i.ai                ; 2 uses
  %i.ak = fcmp ogt double %i.aj, %i.ag
  %i.al = extractelement <2 x double> %i.n, i64 1
  %i.am = select i1 %i.ak, double %i.aj, double %i.ag ; 2 uses
  %i.an = tail call noundef double @llvm.fabs.f64(double %i.t)
  %i.ao = tail call noundef double @llvm.fabs.f64(double %i.al)
  %i.ap = fadd double %i.y, %i.ao
  %i.aq = fadd double %i.ap, %i.an                ; 2 uses
  %i.ar = fcmp ogt double %i.aq, %i.am
  %storemerge = select i1 %i.ar, double %i.aq, double %i.am
  store double %storemerge, ptr %i.w, align 8, !tbaa !17
  store i8 1, ptr %i.g, align 16, !tbaa !24
  %i.as = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(88) %5) ; 0 uses
  %i.at = load <2 x double>, ptr %2, align 8, !tbaa !14
  %i.au = fneg <2 x double> %i.at                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !15
  %i.ay = fneg double %i.ax
  %i.az = load double, ptr %5, align 16, !tbaa !15 ; 2 uses
  %i.ba = extractelement <2 x double> %i.au, i64 0
  %i.bb = fdiv double %i.ba, %i.az                ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !15
  %i.be = fmul double %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = extractelement <2 x double> %i.au, i64 1
  %i.bh = fsub double %i.bg, %i.be
  %i.bi = load double, ptr %i.l, align 16, !tbaa !15 ; 2 uses
  %i.bj = fdiv double %i.bh, %i.bi                ; 2 uses
  %i.bk = load double, ptr %i.i, align 16, !tbaa !15
  %i.bl = fmul double %i.bb, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !15 ; 2 uses
  %i.bo = fmul double %i.bj, %i.bn
  %i.bp = fadd double %i.bl, %i.bo
  %i.bq = fsub double %i.ay, %i.bp
  %i.br = load double, ptr %i.r, align 16, !tbaa !15 ; 2 uses
  %i.bs = fdiv double %i.bq, %i.br
  %i.bt = fdiv double %i.bs, %i.br                ; 2 uses
  store double %i.bt, ptr %i.av, align 8, !tbaa !15
  %i.bu = fmul double %i.bn, %i.bt
  %i.bv = fsub double %i.bj, %i.bu
  %i.bw = fdiv double %i.bv, %i.bi
  store double %i.bw, ptr %i.bf, align 8, !tbaa !15
  %i.bx = load <2 x double>, ptr %i.bc, align 8, !tbaa !14
  %i.by = load <2 x double>, ptr %i.bf, align 8, !tbaa !14
  %i.bz = fmul <2 x double> %i.bx, %i.by          ; 2 uses
  %shift = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bz, %shift
  %i.ca = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cb = fsub double %i.bb, %i.ca
  %i.cc = fdiv double %i.cb, %i.az
  store double %i.cc, ptr %0, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.f

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.cd = trunc nuw i8 %i.c to i1                 ; 2 uses
  %i.ce = trunc nuw i8 %i.e to i1                 ; 2 uses
  %spec.select292 = select i1 %i.ce, i64 -1, i64 2
  %.0105.ph = select i1 %i.cd, i64 %spec.select292, i64 1 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !13
  %i.cf = getelementptr inbounds [8 x i8], ptr %2, i64 %.0105.ph
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !15
  %i.ch = fneg double %i.cg
  %i.ci = getelementptr inbounds [8 x i8], ptr %0, i64 %.0105.ph ; 5 uses
  %.idx.i.i.i247255 = mul nsw i64 %.0105.ph, 24   ; 4 uses
  %invariant.gep256 = getelementptr i8, ptr %1, i64 %.idx.i.i.i247255 ; 4 uses
  %i.cj = load double, ptr %4, align 8, !tbaa !15
  %i.ck = load double, ptr %invariant.gep256, align 8, !tbaa !15
  %i.cl = fneg double %i.cj
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.ck, double %i.ch) ; 3 uses
  store double %i.cm, ptr %i.ci, align 8, !tbaa !15
  br i1 %i.cd, label %.split, label %bb.c

.split.thread:                                    ; preds = %.preheader.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !13
  %i.cn = load double, ptr %2, align 8, !tbaa !15
  %i.co = fneg double %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !15
  %gep.1291 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load double, ptr %gep.1291, align 8, !tbaa !15
  %i.cs = fneg double %i.cq
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cr, double %i.co) ; 2 uses
  store double %i.ct, ptr %0, align 8, !tbaa !15
  br label %bb.c

.split:                                           ; preds = %.preheader.1
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !15
  %gep.1 = getelementptr i8, ptr %invariant.gep256, i64 8
  %i.cw = load double, ptr %gep.1, align 8, !tbaa !15
  %i.cx = fneg double %i.cv
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cw, double %i.cm) ; 3 uses
  store double %i.cy, ptr %i.ci, align 8, !tbaa !15
  br i1 %i.ce, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.1, %.split.thread, %.split
  %i.cz = phi double [ %i.cy, %.split ], [ %i.ct, %.split.thread ], [ %i.cm, %.preheader.1 ]
  %invariant.gep266274286 = phi ptr [ %invariant.gep256, %.split ], [ %1, %.split.thread ], [ %invariant.gep256, %.preheader.1 ]
  %.idx.i.i.i247263276284 = phi i64 [ %.idx.i.i.i247255, %.split ], [ 0, %.split.thread ], [ %.idx.i.i.i247255, %.preheader.1 ]
  %i.da = phi ptr [ %i.ci, %.split ], [ %0, %.split.thread ], [ %i.ci, %.preheader.1 ] ; 2 uses
  %.0105261278282 = phi i64 [ %.0105.ph, %.split ], [ 0, %.split.thread ], [ %.0105.ph, %.preheader.1 ]
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !15
  %gep.2 = getelementptr i8, ptr %invariant.gep266274286, i64 16
  %i.dd = load double, ptr %gep.2, align 8, !tbaa !15
  %i.de = fneg double %i.dc
  %i.df = tail call double @llvm.fmuladd.f64(double %i.de, double %i.dd, double %i.cz) ; 2 uses
  store double %i.df, ptr %i.da, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %.split, %bb.c
  %.idx.i.i.i247263276285 = phi i64 [ %.idx.i.i.i247263276284, %bb.c ], [ %.idx.i.i.i247255, %.split ]
  %i.dg = phi ptr [ %i.da, %bb.c ], [ %i.ci, %.split ]
  %.0105261278283 = phi i64 [ %.0105261278282, %bb.c ], [ %.0105.ph, %.split ]
  %i.dh = phi double [ %i.df, %bb.c ], [ %i.cy, %.split ]
  %i.di = getelementptr [8 x i8], ptr %1, i64 %.0105261278283
  %i.dj = getelementptr i8, ptr %i.di, i64 %.idx.i.i.i247263276285
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !15
  %i.dl = fdiv double %i.dh, %i.dk
  store double %i.dl, ptr %i.dg, align 8, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN3igl19min_quad_with_fixedIdLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.2.i.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl19min_quad_with_fixedIdLi3ELi1ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.830", align 16 ; 11 uses
  %6 = alloca %"class.Eigen::Matrix.840", align 16 ; 10 uses
  %7 = alloca %"class.Eigen::Matrix.840", align 16 ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.840", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, ptr %6, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.a = load i8, ptr %3, align 1, !tbaa !9, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1                  ; 6 uses
  %.148.1.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.148.1.sroa.gep96 = getelementptr inbounds nuw i8, ptr %5, i64 32
  br i1 %i.b, label %.thread, label %bb.b

.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i:         ; preds = %bb.w
  %i.c = extractelement <2 x double> %i.cb, i64 1
  %i.d = tail call double @sqrt(double noundef %i.cc) #7 ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.d, i64 0
  %i.e = fdiv double %i.c, %i.d                   ; 3 uses
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.e, i64 1 ; 2 uses
  %i.f = fmul double %i.e, %i.e
  %i.g = fsub double %.sroa.8.24.vec.extract, %i.f ; 2 uses
  %i.h = fcmp ugt double %i.g, 0.000000e+00
  br i1 %i.h, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i, label %bb.x

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  %i.i = tail call double @sqrt(double noundef %i.g) #7
  br label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.j = load double, ptr %2, align 8, !tbaa !15
  store double %i.j, ptr %7, align 16, !tbaa !15
  %i.k = load double, ptr %1, align 8, !tbaa !15
  store double %i.k, ptr %5, align 16, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9, !range !11, !noundef !12 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !15 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.p, ptr %i.q, align 16, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store double %i.p, ptr %6, align 16, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.148.1.sroa.phi = phi ptr [ %.148.1.sroa.gep, %bb.d ], [ %.148.1.sroa.gep96, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9, !range !11, !noundef !12
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load double, ptr %i.u, align 8, !tbaa !15 ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %i.v, ptr %.148.1.sroa.phi, align 16, !tbaa !15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %i.v, ptr %6, align 16, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = trunc nuw i8 %i.m to i1
  br i1 %i.w, label %bb.m, label %bb.i

.thread:                                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9, !range !11
  %i.x = trunc nuw i8 %.pre to i1
  br i1 %i.x, label %bb.m, label %.thread91

.thread91:                                        ; preds = %.thread
  %i.y = load double, ptr %4, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !15
  store double %i.aa, ptr %7, align 16, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !15
  store double %i.ac, ptr %6, align 16, !tbaa !15
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ae, ptr %i.af, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load double, ptr %i.ag, align 8, !tbaa !15
  store double %i.aj, ptr %i.ah, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %.thread91, %bb.i
  %i.ak = phi ptr [ %6, %.thread91 ], [ %i.ai, %bb.i ]
  %i.al = phi ptr [ %5, %.thread91 ], [ %i.ah, %bb.i ] ; 2 uses
  %i.am = phi double [ %i.y, %.thread91 ], [ 1.000000e+00, %bb.i ] ; 2 uses
  %.1438993 = phi i64 [ 1, %.thread91 ], [ 2, %bb.i ] ; 2 uses
  %.148.173 = phi i64 [ 0, %.thread91 ], [ 16, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load double, ptr %i.an, align 8, !tbaa !15
  %i.ap = getelementptr i8, ptr %i.al, i64 %.148.173
  store double %i.ao, ptr %i.ap, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9, !range !11, !noundef !12 ; 3 uses
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load double, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr i8, ptr %i.al, i64 %.148.173
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store double %i.au, ptr %i.aw, align 8, !tbaa !15
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  store double %i.au, ptr %i.ak, align 8, !tbaa !15
  br label %bb.n

bb.m:                                             ; preds = %.thread, %bb.h
  %.14390 = phi i64 [ 0, %.thread ], [ 1, %bb.h ]
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !15
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.pre85 = load i8, ptr %.phi.trans.insert84, align 1, !tbaa !9, !range !11
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %i.az = phi i1 [ true, %bb.m ], [ false, %bb.l ], [ false, %bb.k ] ; 2 uses
  %i.ba = phi i8 [ %.pre85, %bb.m ], [ %i.ar, %bb.l ], [ %i.ar, %bb.k ]
  %i.bb = phi double [ %i.ay, %bb.m ], [ %i.am, %bb.l ], [ %i.am, %bb.k ]
  %.143.1 = phi i64 [ %.14390, %bb.m ], [ %.1438993, %bb.l ], [ %.1438993, %bb.k ]
  %i.bc = trunc nuw i8 %i.ba to i1                ; 2 uses
  br i1 %i.bc, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !15
  %i.bf = and i64 %.143.1, 4294967295             ; 3 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.bf
  store double %i.be, ptr %9, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %10 = getelementptr [8 x i8], ptr %5, i64 %i.bf ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %6, i64 %i.bf ; 2 uses
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !15 ; 2 uses
  br i1 %i.b, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store double %i.bi, ptr %10, align 8, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store double %i.bi, ptr %i.bh, align 8, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.148.2 = phi i32 [ 0, %bb.q ], [ 1, %bb.p ]    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !15 ; 2 uses
  br i1 %i.az, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = shl nuw nsw i32 %.148.2, 4
  %.idx.i.i.i56.1.2 = zext nneg i32 %i.bl to i64
  %i.bm = getelementptr i8, ptr %10, i64 %.idx.i.i.i56.1.2
  store double %i.bk, ptr %i.bm, align 8, !tbaa !15
  %i.bn = add nuw nsw i32 %.148.2, 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store double %i.bk, ptr %i.bh, align 8, !tbaa !15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.148.1.2 = phi i32 [ %.148.2, %bb.t ], [ %i.bn, %bb.s ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !15
  %i.bq = zext nneg i32 %.148.1.2 to i64
  %.idx.i.i.i56.2.2 = shl nuw nsw i64 %i.bq, 4
  %i.br = getelementptr i8, ptr %10, i64 %.idx.i.i.i56.2.2
  store double %i.bp, ptr %i.br, align 8, !tbaa !15
  br label %bb.w

bb.v:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bu = phi double [ %i.bt, %bb.v ], [ %i.bb, %bb.u ] ; 4 uses
  %i.bv = load <2 x double>, ptr %6, align 16, !tbaa !14
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %i.bv, %i.bx
  %i.bz = load <2 x double>, ptr %7, align 16, !tbaa !14
  %i.ca = fadd <2 x double> %i.bz, %i.by
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.cb = load <2 x double>, ptr %5, align 16, !tbaa !14 ; 3 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.8.24.vec.extract = load double, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.ce = fcmp ugt double %i.cc, 0.000000e+00
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  %.sroa.8.24.vec.extract79.pre-phi = phi double [ %.sroa.8.24.vec.extract, %bb.w ], [ %i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i ], [ %.sroa.8.24.vec.extract, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0 = phi <2 x double> [ %i.cb, %bb.w ], [ %.sroa.0.8.vec.insert, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i ], [ %.sroa.0.8.vec.insert, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.cf = fneg <2 x double> %i.ca                 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x double> %.sroa.0.0, i64 0 ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = fdiv double %i.cg, %.sroa.0.0.vec.extract ; 2 uses
  %.sroa.0.8.vec.extract = extractelement <2 x double> %.sroa.0.0, i64 1 ; 2 uses
  %i.ci = fmul double %i.ch, %.sroa.0.8.vec.extract
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ck = extractelement <2 x double> %i.cf, i64 1
  %i.cl = fsub double %i.ck, %i.ci
  %i.cm = fdiv double %i.cl, %.sroa.8.24.vec.extract79.pre-phi
  %i.cn = fdiv double %i.cm, %.sroa.8.24.vec.extract79.pre-phi ; 2 uses
  store double %i.cn, ptr %i.cj, align 8, !tbaa !15
  %i.co = fmul double %.sroa.0.8.vec.extract, %i.cn
  %i.cp = fsub double %i.ch, %i.co
  %i.cq = fdiv double %i.cp, %.sroa.0.0.vec.extract ; 2 uses
  store double %i.cq, ptr %8, align 16, !tbaa !15
  %.sink = select i1 %i.b, double %i.bu, double %i.cq
  %not. = xor i1 %i.b, true
  %.141 = zext i1 %not. to i64
  store double %.sink, ptr %0, align 8, !tbaa !15
  br i1 %i.az, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.sel.idx = select i1 %i.b, i64 0, i64 8
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %8, i64 %.sroa.sel.idx
  %i.cr = load double, ptr %.sroa.sel, align 8, !tbaa !15
  %i.cs = select i1 %i.b, i64 1, i64 2
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sink82 = phi double [ %i.cr, %bb.y ], [ %i.bu, %bb.x ]
  %.141.1 = phi i64 [ %i.cs, %bb.y ], [ %.141, %bb.x ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sink82, ptr %i.ct, align 8, !tbaa !15
  br i1 %i.bc, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.141.1
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sink83 = phi double [ %i.cv, %bb.aa ], [ %i.bu, %bb.z ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink83, ptr %i.cw, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Eigen::internal::evaluator.258", align 8 ; 19 uses
  %2 = alloca %"struct.Eigen::internal::evaluator.273", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.281", align 8 ; 7 uses
  %4 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Block.194", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit
  %.03253 = phi i64 [ 0, %bb.a ], [ %i.n, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 13 uses
  %i.m = sub nuw nsw i64 2, %.03253               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.n = add nuw nsw i64 %.03253, 1               ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %.03253, 24       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i ; 3 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !25
  store i64 %i.m, ptr %i.a, align 8, !tbaa !32
  store ptr %0, ptr %i.b, align 8, !tbaa !33
  store i64 %i.n, ptr %i.c, align 8, !tbaa !32
  store i64 %.03253, ptr %i.d, align 8, !tbaa !32
  store i64 3, ptr %i.e, align 8, !tbaa !35
  %i.q = getelementptr [8 x i8], ptr %0, i64 %.03253 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !15 ; 2 uses
  %.not54 = icmp eq i64 %.03253, 0
  br i1 %.not54, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load double, ptr %i.q, align 8, !tbaa !15 ; 2 uses
  %i.u = fmul double %i.t, %i.t                   ; 2 uses
  %i.v = icmp eq i64 %.03253, 2
  br i1 %i.v, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit: ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.q, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !15 ; 2 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = fadd double %i.u, %i.y
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit, %bb.c
  %.0.i.i = phi double [ %i.u, %bb.c ], [ %i.z, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit ]
  %i.aa = fsub double %i.s, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit, %bb.b
  %.0 = phi double [ %i.aa, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit ], [ %i.s, %bb.b ] ; 2 uses
  %i.ab = fcmp ugt double %.0, 0.000000e+00
  br i1 %i.ab, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ac = call double @sqrt(double noundef %.0) #7 ; 6 uses
  store double %i.ac, ptr %i.r, align 8, !tbaa !15
  switch i64 %.03253, label %.thread [
    i64 2, label %.loopexit.sink.split
    i64 0, label %bb.f
  ]

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  store ptr %i.o, ptr %1, align 8
  store i64 %i.m, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i64 %.03253, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store i64 %i.n, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 3, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store ptr %i.q, ptr %i.f, align 8
  store i64 %.03253, ptr %.sroa.6.sroa.5.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6.sroa.6.0..sroa_idx, align 8
  store i64 %.03253, ptr %.sroa.6.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.6.sroa.9.0..sroa_idx, align 8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !38
  store ptr %i.q, ptr %i.h, align 8, !tbaa !41
  store i64 %.03253, ptr %i.i, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store ptr %i.p, ptr %2, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %2, ptr %3, align 8, !tbaa !65
  store ptr %1, ptr %i.j, align 8, !tbaa !67
  store ptr %4, ptr %i.k, align 8, !tbaa !69
  store ptr %5, ptr %i.l, align 8, !tbaa !71
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.pre = load ptr, ptr %5, align 8, !tbaa !25
  %.pre56 = load i64, ptr %i.a, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.ad = phi i64 [ 2, %bb.e ], [ %.pre56, %.thread ] ; 6 uses
  %i.ae = phi ptr [ %i.p, %bb.e ], [ %.pre, %.thread ] ; 6 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = and i64 %i.af, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ah = lshr exact i64 %i.af, 3
  %i.ai = and i64 %i.ah, 1
  %i.aj = call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.ad)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.ad, %bb.f ] ; 9 uses
  %i.ak = sub nsw i64 %i.ad, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.al = sdiv i64 %i.ak, 2
  %i.am = shl nsw i64 %i.al, 1                    ; 2 uses
  %i.an = add nsw i64 %i.am, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.ao = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check65 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check65, label %.lr.ph.i.i.i.i.i.i.i.preheader78, label %vector.ph66

vector.ph66:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec67 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert68 = insertelement <2 x double> poison, double %i.ac, i64 0
  %broadcast.splat69 = shufflevector <2 x double> %broadcast.splatinsert68, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph66
  %index71 = phi i64 [ 0, %vector.ph66 ], [ %index.next73, %vector.body70 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index71 ; 2 uses
  %wide.load72 = load <2 x double>, ptr %i.ap, align 8, !tbaa !15
  %i.aq = fdiv <2 x double> %wide.load72, %broadcast.splat69
  store <2 x double> %i.aq, ptr %i.ap, align 8, !tbaa !15
  %index.next73 = add nuw i64 %index71, 2         ; 2 uses
  %i.ar = icmp eq i64 %index.next73, %n.vec67
  br i1 %i.ar, label %middle.block74, label %vector.body70, !llvm.loop !73

middle.block74:                                   ; preds = %vector.body70
  %cmp.n75 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec67
  br i1 %cmp.n75, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader78

.lr.ph.i.i.i.i.i.i.i.preheader78:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block74
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec67, %middle.block74 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader78, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !15
  %i.au = fdiv double %i.at, %i.ac
  store double %i.au, ptr %i.as, align 8, !tbaa !15
  %i.av = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.av, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !77

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block74, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.aw = icmp sgt i64 %i.ak, 1
  br i1 %i.aw, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ax = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
end_hunk_0
