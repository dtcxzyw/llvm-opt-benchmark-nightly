Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/RayTracer?download=true
inline.NumInlined: 4637
inline.NumDeleted: 1864
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %.sroa.224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 24 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !111
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !281
  %.not = icmp eq i64 %i.bc, 0
  br i1 %.not, label %._crit_edge2066, label %.lr.ph2065.split.preheader

.lr.ph2065.split.preheader:                       ; preds = %.lr.ph2065
  %i.bd = insertelement <2 x float> poison, float %i.g, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph2065.split

._crit_edge2066:                                  ; preds = %._crit_edge2060, %.lr.ph2065, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  ret void

.lr.ph2065.split:                                 ; preds = %.lr.ph2065.split.preheader, %._crit_edge2060
  %.0262063 = phi i64 [ %.1.lcssa, %._crit_edge2060 ], [ 0, %.lr.ph2065.split.preheader ] ; 2 uses
  %.0272062 = phi i64 [ %i.bj, %._crit_edge2060 ], [ %i.i, %.lr.ph2065.split.preheader ] ; 4 uses
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !111
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !281 ; 2 uses
  %.not2067 = icmp eq i64 %i.bi, 0
  br i1 %.not2067, label %._crit_edge2060, label %.lr.ph2059

._crit_edge2060:                                  ; preds = %._crit_edge, %.lr.ph2065.split
  %.1.lcssa = phi i64 [ %.0262063, %.lr.ph2065.split ], [ %.2.lcssa, %._crit_edge ]
  %i.bj = add nuw i64 %.0272062, 1                ; 2 uses
  %exitcond2145.not = icmp eq i64 %i.bj, %i.j
  br i1 %exitcond2145.not, label %._crit_edge2066, label %.lr.ph2065.split, !llvm.loop !823

.lr.ph2059:                                       ; preds = %.lr.ph2065.split, %._crit_edge
  %.0252057 = phi i64 [ %i.azw, %._crit_edge ], [ 0, %.lr.ph2065.split ] ; 4 uses
  %.12056 = phi i64 [ %.2.lcssa, %._crit_edge ], [ %.0262063, %.lr.ph2065.split ] ; 2 uses
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !102 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !111 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !281
  %i.bp = mul i64 %i.bo, %.0272062
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !288
  %i.br = getelementptr [16 x i8], ptr %i.bq, i64 %.0252057
  %i.bs = getelementptr [16 x i8], ptr %i.br, i64 %i.bp ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %21, ptr noundef nonnull align 8 dereferenceable(496) %i.bk, i64 noundef %.0252057, i64 noundef %.0272062, double noundef 5.000000e-01, double noundef 5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01413)
  %i.bw = load ptr, ptr %i.n, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !875
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !276, !noalias !875 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !294, !noalias !877 ; 3 uses
  store ptr %i.bz, ptr %6, align 8, !tbaa !296, !alias.scope !876, !noalias !875
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !297, !noalias !877 ; 3 uses
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !297, !alias.scope !876, !noalias !875
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph2059
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !877
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !298, !noalias !877
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !298, !noalias !877
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4, !noalias !877 ; 0 uses
  %.pre.i74 = load ptr, ptr %6, align 8, !tbaa !296, !noalias !875
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph2059
  %i.ch = phi ptr [ %i.bz, %.lr.ph2059 ], [ %i.bz, %bb.c ], [ %.pre.i74, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !878
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !100, !noalias !878
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !878
  invoke void %i.ck(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(88) %21)
          to label %.noexc.i unwind label %bb.l, !noalias !875, !inline_history !3

.noexc.i:                                         ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !878
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !100, !noalias !878
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 248
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !878
  invoke void %i.cn(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.e unwind label %bb.l, !noalias !875, !inline_history !3

bb.e:                                             ; preds = %.noexc.i
  %i.co = load double, ptr %i.q, align 16, !tbaa !163, !noalias !878 ; 3 uses
  %i.cp = load <2 x double>, ptr %5, align 16, !tbaa !163, !noalias !878 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.cp, %i.cp
  %i.cq = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.cr = extractelement <2 x double> %i.cp, i64 0 ; 2 uses
  %i.cs = call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %i.cq)
  %i.ct = call double @llvm.fmuladd.f64(double %i.co, double %i.co, double %i.cs)
  %sqrt.i.i.i72 = call noundef double @llvm.sqrt.f64(double %i.ct) ; 2 uses
  %i.cu = insertelement <2 x double> poison, double %sqrt.i.i.i72, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = fdiv <2 x double> %i.cp, %i.cv          ; 2 uses
  %i.cx = fdiv double %i.co, %sqrt.i.i.i72        ; 2 uses
  %i.cy = load <2 x double>, ptr %i.r, align 8, !tbaa !163, !noalias !878
  %i.cz = fmul <2 x double> %i.cy, %i.cv          ; 4 uses
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01413, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.db = fdiv <2 x double> splat (double 1.000000e+00), %i.cw ; 3 uses
  %i.dc = fdiv double 1.000000e+00, %i.cx         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !878
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !878
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !297, !noalias !875 ; 8 uses
  %.not.i.i.i73 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i73, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8, !noalias !875 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.de, align 8, !tbaa !300, !noalias !875
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !301, !noalias !875
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !100, !noalias !875
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !875
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #17, !noalias !875, !inline_history !4
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !100, !noalias !875
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !875
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #17, !noalias !875, !inline_history !4
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit

bb.h:                                             ; preds = %bb.f
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !875
  %.not.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !298, !noalias !875
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4, !noalias !875
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.dh, %bb.i ], [ %i.dr, %bb.j ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.k, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, !prof !302

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #17, !noalias !875
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit

common.resume:                                    ; preds = %bb.fi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fe, %bb.fc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1243, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i694, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i719, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1268, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i773, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i798, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1293, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i852, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i877, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1318, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i931, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i956, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1343, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1010, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1035, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1368, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1089, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1114, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1393, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1168, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1193, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1218, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i435, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.dt, %bb.l ], [ %i.exd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1243 ], [ %i.bip, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i435 ], [ %i.bmc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i ], [ %i.bqz, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1218 ], [ %i.bun, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1193 ], [ %i.bxy, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1168 ], [ %i.ccs, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1393 ], [ %i.cgk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1114 ], [ %i.cjx, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1089 ], [ %i.cou, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1368 ], [ %i.csl, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1035 ], [ %i.cvy, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1010 ], [ %i.dav, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1343 ], [ %i.dem, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i956 ], [ %i.dhz, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i931 ], [ %i.dmw, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1318 ], [ %i.dqo, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i877 ], [ %i.dub, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i852 ], [ %i.dyy, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1293 ], [ %i.ecr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i798 ], [ %i.ege, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i773 ], [ %i.elb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1268 ], [ %i.eot, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i719 ], [ %i.esg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i694 ], [ %i.bce, %bb.fc ], [ %i.bce, %bb.fe ], [ %i.bce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.bce, %bb.fi ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.noexc.i, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #17, !noalias !875
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !875
  br label %common.resume

_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01413, i64 24, i1 false)
  store <2 x double> %i.cw, ptr %.sroa.4.0..sroa_idx1414, align 8
  store double %i.cx, ptr %.sroa.61415.0..sroa_idx, align 8
  store <2 x double> %i.db, ptr %.sroa.7.0..sroa_idx, align 8
  store double %i.dc, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x double> %i.cz, ptr %.sroa.101416.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01413)
  %23 = load <2 x i32>, ptr %i.s, align 4
  %24 = load <1 x double>, ptr %i.m, align 8
  %i.du = load i32, ptr %i.t, align 8, !tbaa !298
  %i.dv = insertelement <2 x i32> %23, i32 %i.du, i64 1
  %i.dw = sitofp <2 x i32> %i.dv to <2 x double>
  %i.dx = shufflevector <1 x double> %24, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fsub <2 x double> %i.dw, %i.dx
  %i.dz = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.dz, %i.dy          ; 4 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = extractelement <2 x double> %i.ea, i64 1
  %i.ed = fcmp ogt double %i.eb, %i.ec
  %i.ee = insertelement <2 x i1> poison, i1 %i.ed, i64 0
  %i.ef = shufflevector <2 x i1> %i.ee, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.eg = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eh = select <2 x i1> %i.ef, <2 x double> %i.ea, <2 x double> %i.eg ; 3 uses
  %i.ei = shufflevector <2 x double> %i.cz, <2 x double> %i.eh, <2 x i32> <i32 1, i32 3>
  %i.ej = shufflevector <2 x double> %i.eh, <2 x double> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.ek = fcmp ogt <2 x double> %i.ei, %i.ej
  %i.el = select <2 x i1> %i.ek, <2 x double> %i.eh, <2 x double> %i.da ; 5 uses
  %i.em = extractelement <2 x double> %i.el, i64 0
  %i.en = extractelement <2 x double> %i.el, i64 1
  %i.eo = fcmp ule double %i.en, %i.em
  br i1 %i.eo, label %bb.m, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit
  %25 = load <2 x i32>, ptr %i.u, align 8
  %26 = load <1 x double>, ptr %i.v, align 8
  %i.ep = load i32, ptr %i.w, align 4, !tbaa !298
  %i.eq = insertelement <2 x i32> %25, i32 %i.ep, i64 1
  %i.er = sitofp <2 x i32> %i.eq to <2 x double>
  %i.es = shufflevector <1 x double> %26, <1 x double> poison, <2 x i32> zeroinitializer
  %i.et = fsub <2 x double> %i.er, %i.es
  %i.eu = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = fmul <2 x double> %i.eu, %i.et          ; 4 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0
  %i.ex = extractelement <2 x double> %i.ev, i64 1
  %i.ey = fcmp ogt double %i.ew, %i.ex
  %i.ez = insertelement <2 x i1> poison, i1 %i.ey, i64 0
  %i.fa = shufflevector <2 x i1> %i.ez, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fb = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fc = select <2 x i1> %i.fa, <2 x double> %i.ev, <2 x double> %i.fb ; 3 uses
  %i.fd = shufflevector <2 x double> %i.el, <2 x double> %i.fc, <2 x i32> <i32 0, i32 3>
  %i.fe = shufflevector <2 x double> %i.fc, <2 x double> %i.el, <2 x i32> <i32 0, i32 3>
  %i.ff = fcmp ogt <2 x double> %i.fd, %i.fe
  %i.fg = select <2 x i1> %i.ff, <2 x double> %i.fc, <2 x double> %i.el ; 2 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 0 ; 3 uses
  %i.fi = extractelement <2 x double> %i.fg, i64 1 ; 3 uses
  %i.fj = fcmp ule double %i.fi, %i.fh
  br i1 %i.fj, label %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i: ; preds = %bb.m
  %i.fk = load i32, ptr %i.x, align 4, !tbaa !298
  %i.fl = sitofp i32 %i.fk to double
  %i.fm = load double, ptr %i.y, align 8, !tbaa !163 ; 2 uses
  %i.fn = fsub double %i.fl, %i.fm
  %i.fo = fmul double %i.dc, %i.fn                ; 3 uses
  %i.fp = load i32, ptr %i.z, align 8, !tbaa !298
  %i.fq = sitofp i32 %i.fp to double
  %i.fr = fsub double %i.fq, %i.fm
  %i.fs = fmul double %i.dc, %i.fr                ; 3 uses
  %i.ft = fcmp ogt double %i.fo, %i.fs            ; 2 uses
  %.030.2.i.i.i = select i1 %i.ft, double %i.fs, double %i.fo ; 2 uses
  %.0.2.i.i.i = select i1 %i.ft, double %i.fo, double %i.fs ; 2 uses
  %i.fu = fcmp ogt double %.030.2.i.i.i, %i.fi
  %.27.i.i = select i1 %i.fu, double %.030.2.i.i.i, double %i.fi ; 2 uses
  %i.fv = fcmp olt double %.0.2.i.i.i, %i.fh
  %i.fw = select i1 %i.fv, double %.0.2.i.i.i, double %i.fh ; 2 uses
  %i.fx = fcmp ule double %.27.i.i, %i.fw
  br i1 %i.fx, label %bb.n, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i
  store double %.27.i.i, ptr %.sroa.101416.0..sroa_idx, align 8, !tbaa !290
  store double %i.fw, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !291
  %i.fy = call noundef zeroext i1 @_ZN7openvdb5v13_04math12LevelSetHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELi2EE4testINS0_5tools16LinearSearchImplINS0_4GridISC_EELi0EdEEEEbRT_(ptr noundef nonnull align 8 dereferenceable(304) %i.m)
  br i1 %i.fy, label %bb.o, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.fz = load double, ptr %i.aa, align 8, !tbaa !444 ; 3 uses
  %.sroa.9.0.copyload.i.i.i = load double, ptr %.sroa.61415.0..sroa_idx, align 8, !noalias !879
  %i.ga = fmul double %i.fz, %.sroa.9.0.copyload.i.i.i
  %.sroa.8.0.copyload6.i.i = load double, ptr %i.y, align 8
  %i.gb = load <2 x double>, ptr %.sroa.4.0..sroa_idx1414, align 8, !noalias !879 ; 2 uses
  %i.gc = insertelement <2 x double> %i.gb, double %i.fz, i64 1
  %i.gd = insertelement <2 x double> %i.gb, double %i.fz, i64 0
  %i.ge = fmul <2 x double> %i.gc, %i.gd
  %i.gf = load <2 x double>, ptr %i.m, align 8
  %i.gg = fadd <2 x double> %i.ge, %i.gf          ; 4 uses
  %i.gh = fadd double %i.ga, %.sroa.8.0.copyload6.i.i ; 3 uses
  %i.gi = extractelement <2 x double> %i.gg, i64 0
  %i.gj = extractelement <2 x double> %i.gg, i64 1
  store <2 x double> %i.gg, ptr %19, align 16
  store double %i.gh, ptr %.sroa.8.0..sroa_idx.i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.gk = call noundef double @llvm.floor.f64(double %i.gi)
  %i.gl = fptosi double %i.gk to i32              ; 9 uses
  %i.gm = call noundef double @llvm.floor.f64(double %i.gj)
  %i.gn = fptosi double %i.gm to i32              ; 12 uses
  %i.go = call noundef double @llvm.floor.f64(double %i.gh)
  %i.gp = fptosi double %i.go to i32              ; 12 uses
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.gn to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.gl to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %16, align 8
  store i32 %i.gp, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.gq = load i32, ptr %i.ab, align 8, !tbaa !298
  %i.gr = icmp eq i32 %i.gq, %i.gl
  br i1 %i.gr, label %bb.p, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i

bb.p:                                             ; preds = %bb.o
  %i.gs = load i32, ptr %i.ac, align 4, !tbaa !298
  %i.gt = icmp ne i32 %i.gs, %i.gn
  %i.gu = load i32, ptr %i.ad, align 8
  %i.gv = icmp ne i32 %i.gu, %i.gp
  %or.cond.i.i = select i1 %i.gt, i1 true, i1 %i.gv
  br i1 %or.cond.i.i, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %16, i64 12, i1 false), !tbaa.struct !445
  %i.gw = and i32 %i.gl, -8
  %i.gx = load i32, ptr %i.af, align 8, !tbaa !298
  %i.gy = icmp eq i32 %i.gw, %i.gx
  br i1 %i.gy, label %bb.q, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i

bb.q:                                             ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i
  %i.gz = and i32 %i.gn, -8
  %i.ha = load i32, ptr %i.ag, align 4, !tbaa !298
  %i.hb = icmp eq i32 %i.gz, %i.ha
  br i1 %i.hb, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.q
  %i.hc = and i32 %i.gp, -8
  %i.hd = load i32, ptr %i.ah, align 8, !tbaa !298
  %i.he = icmp eq i32 %i.hc, %i.hd
  br i1 %i.he, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.hf = load ptr, ptr %i.ai, align 8, !tbaa !208 ; 2 uses
  %i.hg = shl i32 %i.gl, 6
  %i.hh = and i32 %i.hg, 448
  %i.hi = shl i32 %i.gn, 3
  %i.hj = and i32 %i.hi, 56
  %i.hk = and i32 %i.gp, 7
  %i.hl = or disjoint i32 %i.hh, %i.hk
  %i.hm = or disjoint i32 %i.hl, %i.hj
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hn
  %.not.i.not.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.q, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i
  %i.hp = and i32 %i.gl, -128                     ; 3 uses
  %i.hq = load i32, ptr %i.aj, align 4, !tbaa !298
  %i.hr = icmp eq i32 %i.hp, %i.hq
  br i1 %i.hr, label %bb.r, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i

bb.r:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i
  %i.hs = and i32 %i.gn, -128
  %i.ht = load i32, ptr %i.ak, align 8, !tbaa !298
  %i.hu = icmp eq i32 %i.hs, %i.ht
  br i1 %i.hu, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.r
  %i.hv = and i32 %i.gp, -128
  %i.hw = load i32, ptr %i.al, align 4, !tbaa !298
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.hy = load ptr, ptr %i.ar, align 8, !tbaa !446
  %i.hz = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.hy, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.r, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i
  %i.ia = and i32 %i.gl, -4096                    ; 2 uses
  %i.ib = load i32, ptr %i.am, align 8, !tbaa !298
  %i.ic = icmp eq i32 %i.ia, %i.ib
  br i1 %i.ic, label %bb.s, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i

bb.s:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i
  %i.id = and i32 %i.gn, -4096
  %i.ie = load i32, ptr %i.an, align 4, !tbaa !298
  %i.if = icmp eq i32 %i.id, %i.ie
  br i1 %i.if, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.s
  %i.ig = and i32 %i.gp, -4096
  %i.ih = load i32, ptr %i.ao, align 8, !tbaa !298
  %i.ii = icmp eq i32 %i.ig, %i.ih
  br i1 %i.ii, label %bb.t, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.ij = load ptr, ptr %i.aq, align 8, !tbaa !447 ; 2 uses
  %i.ik = shl i32 %i.gl, 3
  %i.il = and i32 %i.ik, 31744
  %i.im = lshr i32 %i.gn, 2
  %i.in = and i32 %i.im, 992
  %i.io = or disjoint i32 %i.in, %i.il            ; 2 uses
  %i.ip = lshr i32 %i.gp, 7
  %i.iq = and i32 %i.ip, 31
  %i.ir = or disjoint i32 %i.io, %i.iq            ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 262144
  %i.it = lshr i32 %i.io, 6
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !249
  %i.ix = and i32 %i.ir, 63
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = shl nuw i64 1, %i.iy
  %i.ja = and i64 %i.iw, %i.iz
  %.not.i.i.i = icmp eq i64 %i.ja, 0
  %i.jb = zext nneg i32 %i.ir to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jb ; 3 uses
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !207
  %i.je = and i32 %i.gn, -128
  %i.jf = and i32 %i.gp, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.je to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.hp to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %i.aj, align 4
  store i32 %i.jf, ptr %i.al, align 4, !tbaa !207
  store ptr %i.jd, ptr %i.ar, align 8, !tbaa !446
  %i.jg = load ptr, ptr %i.jc, align 8, !tbaa !207
  %i.jh = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.jg, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.s, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %.2.lcssa = phi i64 [ %.12056, %bb.eq ], [ %i.ezg, %bb.rx ] ; 2 uses
  %i.azu = fmul <2 x float> %i.be, %.sroa.01402.1.lcssa
  %.sroa.10.8.vec.extract = extractelement <2 x float> %.sroa.10.1.lcssa, i64 0
  %i.azv = fmul float %i.g, %.sroa.10.8.vec.extract
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.azv, i64 0
  store <2 x float> %i.azu, ptr %i.bs, align 4, !tbaa !98
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.azw = add nuw i64 %.0252057, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.azw, %i.bi
  br i1 %exitcond.not, label %._crit_edge2060, label %.lr.ph2059, !llvm.loop !837

bb.er:                                            ; preds = %.lr.ph, %bb.rx
  %.02053 = phi i64 [ 0, %.lr.ph ], [ %i.ezf, %bb.rx ]
  %.22052 = phi i64 [ %.12056, %.lr.ph ], [ %i.ezg, %bb.rx ] ; 3 uses
  %.sroa.01402.12051 = phi <2 x float> [ %.sroa.01402.0, %.lr.ph ], [ %i.ezd, %bb.rx ]
  %.sroa.10.12050 = phi <2 x float> [ %.sroa.10.0, %.lr.ph ], [ %i.eze, %bb.rx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.azx = load ptr, ptr %i.l, align 8, !tbaa !102 ; 2 uses
  %i.azy = load ptr, ptr %i.av, align 8, !tbaa !97 ; 2 uses
  %i.azz = and i64 %.22052, 15
  %i.baa = getelementptr inbounds nuw [8 x i8], ptr %i.azy, i64 %i.azz
  %i.bab = load double, ptr %i.baa, align 8, !tbaa !163
  %i.bac = add i64 %.22052, 1
  %i.bad = and i64 %i.bac, 15
  %i.bae = getelementptr inbounds nuw [8 x i8], ptr %i.azy, i64 %i.bad
  %i.baf = load double, ptr %i.bae, align 8, !tbaa !163
  %i.bag = load ptr, ptr %i.azx, align 8, !tbaa !100
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 16
  %i.bai = load ptr, ptr %i.bah, align 8
  call void %i.bai(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %22, ptr noundef nonnull align 8 dereferenceable(496) %i.azx, i64 noundef %.0252057, i64 noundef %.0272062, double noundef %i.bab, double noundef %i.baf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %21, ptr noundef nonnull align 8 dereferenceable(88) %22, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01456)
  %i.baj = load ptr, ptr %i.n, align 8, !tbaa !398
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 56
  %i.bal = load ptr, ptr %i.bak, align 8, !tbaa !276, !noalias !882 ; 2 uses
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !294, !noalias !883 ; 4 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bal, i64 8
  %i.bao = load ptr, ptr %i.ban, align 8, !tbaa !297, !noalias !883 ; 16 uses
  %.not.i.i.i.i.i123 = icmp eq ptr %i.bao, null   ; 3 uses
  br i1 %.not.i.i.i.i.i123, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i125, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 8 ; 3 uses
  %i.baq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !883
  %.not.i.i.i.i.i.i124 = icmp eq i8 %i.baq, 0
  br i1 %.not.i.i.i.i.i.i124, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bar = load i32, ptr %i.bap, align 4, !tbaa !298, !noalias !883
  %i.bas = add nsw i32 %i.bar, 1
  store i32 %i.bas, ptr %i.bap, align 4, !tbaa !298, !noalias !883
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i125

bb.eu:                                            ; preds = %bb.es
  %i.bat = atomicrmw volatile add ptr %i.bap, i32 1 acq_rel, align 4, !noalias !883 ; 0 uses
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i125

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i125: ; preds = %bb.eu, %bb.et, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !884
  %i.bau = load ptr, ptr %i.bam, align 8, !tbaa !100, !noalias !884
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 64
  %i.baw = load ptr, ptr %i.bav, align 8, !noalias !884
  invoke void %i.baw(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.bam, ptr noundef nonnull align 8 dereferenceable(88) %21)
          to label %.noexc.i126 unwind label %bb.fc, !noalias !882, !inline_history !3

.noexc.i126:                                      ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i125
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !884
  %i.bax = load ptr, ptr %i.bam, align 8, !tbaa !100, !noalias !884
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 248
  %i.baz = load ptr, ptr %i.bay, align 8, !noalias !884
  invoke void %i.baz(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.bam, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ev unwind label %bb.fc, !noalias !882, !inline_history !3

bb.ev:                                            ; preds = %.noexc.i126
  %i.bba = load double, ptr %i.aw, align 16, !tbaa !163, !noalias !884 ; 3 uses
  %i.bbb = load <2 x double>, ptr %3, align 16, !tbaa !163, !noalias !884 ; 4 uses
  %foldExtExtBinop2520 = fmul <2 x double> %i.bbb, %i.bbb
  %i.bbc = extractelement <2 x double> %foldExtExtBinop2520, i64 1
  %i.bbd = extractelement <2 x double> %i.bbb, i64 0 ; 2 uses
  %i.bbe = call double @llvm.fmuladd.f64(double %i.bbd, double %i.bbd, double %i.bbc)
  %i.bbf = call double @llvm.fmuladd.f64(double %i.bba, double %i.bba, double %i.bbe)
  %sqrt.i.i.i127 = call noundef double @llvm.sqrt.f64(double %i.bbf) ; 2 uses
  %i.bbg = insertelement <2 x double> poison, double %sqrt.i.i.i127, i64 0
  %i.bbh = shufflevector <2 x double> %i.bbg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bbi = fdiv <2 x double> %i.bbb, %i.bbh       ; 2 uses
  %i.bbj = fdiv double %i.bba, %sqrt.i.i.i127     ; 2 uses
  %i.bbk = load <2 x double>, ptr %i.r, align 8, !tbaa !163, !noalias !884
  %i.bbl = fmul <2 x double> %i.bbk, %i.bbh       ; 4 uses
  %i.bbm = shufflevector <2 x double> %i.bbl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01456, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bbn = fdiv <2 x double> splat (double 1.000000e+00), %i.bbi ; 3 uses
  %i.bbo = fdiv double 1.000000e+00, %i.bbj       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !884
  br i1 %.not.i.i.i.i.i123, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit135, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bao, i64 8 ; 4 uses
  %i.bbq = load atomic i64, ptr %i.bbp acquire, align 8, !noalias !882 ; 2 uses
  %i.bbr = icmp eq i64 %i.bbq, 4294967297
  %i.bbs = trunc i64 %i.bbq to i32                ; 2 uses
  br i1 %i.bbr, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 0, ptr %i.bbp, align 8, !tbaa !300, !noalias !882
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bao, i64 12
  store i32 0, ptr %i.bbt, align 4, !tbaa !301, !noalias !882
  %i.bbu = load ptr, ptr %i.bao, align 8, !tbaa !100, !noalias !882
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 16
  %i.bbw = load ptr, ptr %i.bbv, align 8, !noalias !882
  call void %i.bbw(ptr noundef nonnull align 8 dereferenceable(16) %i.bao) #17, !noalias !882, !inline_history !4
  %i.bbx = load ptr, ptr %i.bao, align 8, !tbaa !100, !noalias !882
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 24
  %i.bbz = load ptr, ptr %i.bby, align 8, !noalias !882
  call void %i.bbz(ptr noundef nonnull align 8 dereferenceable(16) %i.bao) #17, !noalias !882, !inline_history !4
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit135

bb.ey:                                            ; preds = %bb.ew
  %i.bca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !882
  %.not.i.i.i.i131 = icmp eq i8 %i.bca, 0
  br i1 %.not.i.i.i.i131, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.bcb = add nsw i32 %i.bbs, -1
  store i32 %i.bcb, ptr %i.bbp, align 8, !tbaa !298, !noalias !882
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i132

bb.fa:                                            ; preds = %bb.ey
  %i.bcc = atomicrmw volatile add ptr %i.bbp, i32 -1 acq_rel, align 4, !noalias !882
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i132

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i132: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i.i133 = phi i32 [ %i.bbs, %bb.ez ], [ %i.bcc, %bb.fa ]
  %i.bcd = icmp eq i32 %.0.i.i.i.i.i133, 1
  br i1 %i.bcd, label %bb.fb, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit135, !prof !302

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i132
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bao) #17, !noalias !882
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit135

bb.fc:                                            ; preds = %.noexc.i126, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i125
  %i.bce = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  br i1 %.not.i.i.i.i.i123, label %common.resume, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bao, i64 8 ; 4 uses
  %i.bcg = load atomic i64, ptr %i.bcf acquire, align 8, !noalias !882 ; 2 uses
  %i.bch = icmp eq i64 %i.bcg, 4294967297
  %i.bci = trunc i64 %i.bcg to i32                ; 2 uses
  br i1 %i.bch, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 0, ptr %i.bcf, align 8, !tbaa !300, !noalias !882
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bao, i64 12
  store i32 0, ptr %i.bcj, align 4, !tbaa !301, !noalias !882
  %i.bck = load ptr, ptr %i.bao, align 8, !tbaa !100, !noalias !882
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 16
  %i.bcm = load ptr, ptr %i.bcl, align 8, !noalias !882
  call void %i.bcm(ptr noundef nonnull align 8 dereferenceable(16) %i.bao) #17, !noalias !882, !inline_history !28
  %i.bcn = load ptr, ptr %i.bao, align 8, !tbaa !100, !noalias !882
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 24
  %i.bcp = load ptr, ptr %i.bco, align 8, !noalias !882
  call void %i.bcp(ptr noundef nonnull align 8 dereferenceable(16) %i.bao) #17, !noalias !882, !inline_history !28
  br label %common.resume

bb.ff:                                            ; preds = %bb.fd
  %i.bcq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !882
  %.not.i.i.i445 = icmp eq i8 %i.bcq, 0
  br i1 %.not.i.i.i445, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.bcr = add nsw i32 %i.bci, -1
  store i32 %i.bcr, ptr %i.bcf, align 8, !tbaa !298, !noalias !882
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fh:                                            ; preds = %bb.ff
  %i.bcs = atomicrmw volatile add ptr %i.bcf, i32 -1 acq_rel, align 4, !noalias !882
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fh, %bb.fg
  %.0.i.i.i.i = phi i32 [ %i.bci, %bb.fg ], [ %i.bcs, %bb.fh ]
  %i.bct = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bct, label %bb.fi, label %common.resume, !prof !302

bb.fi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bao) #17, !noalias !882
  br label %common.resume

_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit135: ; preds = %bb.ev, %bb.ex, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i132, %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01456, i64 24, i1 false)
  store <2 x double> %i.bbi, ptr %.sroa.4.0..sroa_idx1414, align 8
  store double %i.bbj, ptr %.sroa.61415.0..sroa_idx, align 8
  store <2 x double> %i.bbn, ptr %.sroa.7.0..sroa_idx, align 8
  store double %i.bbo, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x double> %i.bbl, ptr %.sroa.101416.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01456)
  %27 = load <2 x i32>, ptr %i.s, align 4
  %28 = load <1 x double>, ptr %i.m, align 8
  %i.bcu = load i32, ptr %i.t, align 8, !tbaa !298
  %i.bcv = insertelement <2 x i32> %27, i32 %i.bcu, i64 1
  %i.bcw = sitofp <2 x i32> %i.bcv to <2 x double>
  %i.bcx = shufflevector <1 x double> %28, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bcy = fsub <2 x double> %i.bcw, %i.bcx
  %i.bcz = shufflevector <2 x double> %i.bbn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bda = fmul <2 x double> %i.bcz, %i.bcy       ; 4 uses
  %i.bdb = extractelement <2 x double> %i.bda, i64 0
  %i.bdc = extractelement <2 x double> %i.bda, i64 1
  %i.bdd = fcmp ogt double %i.bdb, %i.bdc
  %i.bde = insertelement <2 x i1> poison, i1 %i.bdd, i64 0
  %i.bdf = shufflevector <2 x i1> %i.bde, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bdg = shufflevector <2 x double> %i.bda, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bdh = select <2 x i1> %i.bdf, <2 x double> %i.bda, <2 x double> %i.bdg ; 3 uses
  %i.bdi = shufflevector <2 x double> %i.bbl, <2 x double> %i.bdh, <2 x i32> <i32 1, i32 3>
  %i.bdj = shufflevector <2 x double> %i.bdh, <2 x double> %i.bbl, <2 x i32> <i32 0, i32 2>
  %i.bdk = fcmp ogt <2 x double> %i.bdi, %i.bdj
  %i.bdl = select <2 x i1> %i.bdk, <2 x double> %i.bdh, <2 x double> %i.bbm ; 5 uses
  %i.bdm = extractelement <2 x double> %i.bdl, i64 0
  %i.bdn = extractelement <2 x double> %i.bdl, i64 1
  %i.bdo = fcmp ule double %i.bdn, %i.bdm
  br i1 %i.bdo, label %bb.fj, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit71.thread

bb.fj:                                            ; preds = %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit135
  %29 = load <2 x i32>, ptr %i.u, align 8
  %30 = load <1 x double>, ptr %i.v, align 8
  %i.bdp = load i32, ptr %i.w, align 4, !tbaa !298
  %i.bdq = insertelement <2 x i32> %29, i32 %i.bdp, i64 1
  %i.bdr = sitofp <2 x i32> %i.bdq to <2 x double>
  %i.bds = shufflevector <1 x double> %30, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bdt = fsub <2 x double> %i.bdr, %i.bds
  %i.bdu = shufflevector <2 x double> %i.bbn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bdv = fmul <2 x double> %i.bdu, %i.bdt       ; 4 uses
  %i.bdw = extractelement <2 x double> %i.bdv, i64 0
  %i.bdx = extractelement <2 x double> %i.bdv, i64 1
  %i.bdy = fcmp ogt double %i.bdw, %i.bdx
  %i.bdz = insertelement <2 x i1> poison, i1 %i.bdy, i64 0
  %i.bea = shufflevector <2 x i1> %i.bdz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.beb = shufflevector <2 x double> %i.bdv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bec = select <2 x i1> %i.bea, <2 x double> %i.bdv, <2 x double> %i.beb ; 3 uses
  %i.bed = shufflevector <2 x double> %i.bdl, <2 x double> %i.bec, <2 x i32> <i32 0, i32 3>
  %i.bee = shufflevector <2 x double> %i.bec, <2 x double> %i.bdl, <2 x i32> <i32 0, i32 3>
  %i.bef = fcmp ogt <2 x double> %i.bed, %i.bee
  %i.beg = select <2 x i1> %i.bef, <2 x double> %i.bec, <2 x double> %i.bdl ; 2 uses
  %i.beh = extractelement <2 x double> %i.beg, i64 0 ; 3 uses
  %i.bei = extractelement <2 x double> %i.beg, i64 1 ; 3 uses
  %i.bej = fcmp ule double %i.bei, %i.beh
  br i1 %i.bej, label %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i67, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit71.thread

_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i67: ; preds = %bb.fj
  %i.bek = load i32, ptr %i.x, align 4, !tbaa !298
  %i.bel = sitofp i32 %i.bek to double
  %i.bem = load double, ptr %i.y, align 8, !tbaa !163 ; 2 uses
  %i.ben = fsub double %i.bel, %i.bem
  %i.beo = fmul double %i.bbo, %i.ben             ; 3 uses
  %i.bep = load i32, ptr %i.z, align 8, !tbaa !298
  %i.beq = sitofp i32 %i.bep to double
  %i.ber = fsub double %i.beq, %i.bem
  %i.bes = fmul double %i.bbo, %i.ber             ; 3 uses
  %i.bet = fcmp ogt double %i.beo, %i.bes         ; 2 uses
  %.030.2.i.i.i68 = select i1 %i.bet, double %i.bes, double %i.beo ; 2 uses
  %.0.2.i.i.i69 = select i1 %i.bet, double %i.beo, double %i.bes ; 2 uses
  %i.beu = fcmp ogt double %.030.2.i.i.i68, %i.bei
  %.27.i.i70 = select i1 %i.beu, double %.030.2.i.i.i68, double %i.bei ; 2 uses
  %i.bev = fcmp olt double %.0.2.i.i.i69, %i.beh
  %i.bew = select i1 %i.bev, double %.0.2.i.i.i69, double %i.beh ; 2 uses
  %i.bex = fcmp ule double %.27.i.i70, %i.bew
  br i1 %i.bex, label %bb.fk, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit71.thread

bb.fk:                                            ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i67
  store double %.27.i.i70, ptr %.sroa.101416.0..sroa_idx, align 8, !tbaa !290
  store double %i.bew, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !291
  %i.bey = call noundef zeroext i1 @_ZN7openvdb5v13_04math12LevelSetHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELi2EE4testINS0_5tools16LinearSearchImplINS0_4GridISC_EELi0EdEEEEbRT_(ptr noundef nonnull align 8 dereferenceable(304) %i.m)
  br i1 %i.bey, label %bb.fl, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit71.thread

bb.fl:                                            ; preds = %bb.fk
  %i.bez = load double, ptr %i.aa, align 8, !tbaa !444 ; 3 uses
  %.sroa.9.0.copyload.i.i.i34 = load double, ptr %.sroa.61415.0..sroa_idx, align 8, !noalias !885
  %i.bfa = fmul double %i.bez, %.sroa.9.0.copyload.i.i.i34
  %.sroa.8.0.copyload6.i.i39 = load double, ptr %i.y, align 8
  %i.bfb = load <2 x double>, ptr %.sroa.4.0..sroa_idx1414, align 8, !noalias !885 ; 2 uses
  %i.bfc = insertelement <2 x double> %i.bfb, double %i.bez, i64 1
  %i.bfd = insertelement <2 x double> %i.bfb, double %i.bez, i64 0
  %i.bfe = fmul <2 x double> %i.bfc, %i.bfd
  %i.bff = load <2 x double>, ptr %i.m, align 8
  %i.bfg = fadd <2 x double> %i.bfe, %i.bff       ; 4 uses
  %i.bfh = fadd double %i.bfa, %.sroa.8.0.copyload6.i.i39 ; 3 uses
  %i.bfi = extractelement <2 x double> %i.bfg, i64 0
  %i.bfj = extractelement <2 x double> %i.bfg, i64 1
  store <2 x double> %i.bfg, ptr %19, align 16
  store double %i.bfh, ptr %.sroa.8.0..sroa_idx.i.i, align 16
  %i.bfk = call noundef double @llvm.floor.f64(double %i.bfi)
  %i.bfl = fptosi double %i.bfk to i32            ; 15 uses
  %i.bfm = call noundef double @llvm.floor.f64(double %i.bfj)
  %i.bfn = fptosi double %i.bfm to i32            ; 21 uses
  %i.bfo = call noundef double @llvm.floor.f64(double %i.bfh)
  %i.bfp = fptosi double %i.bfo to i32            ; 21 uses
  %.sroa.2.0.insert.ext.i.i.i42 = zext i32 %i.bfn to i64
  %.sroa.2.0.insert.shift.i.i.i43 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i42, 32
  %i.bfq = load i32, ptr %i.ab, align 8, !tbaa !298
  %i.bfr = icmp eq i32 %i.bfq, %i.bfl
  br i1 %i.bfr, label %bb.fm, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47

bb.fm:                                            ; preds = %bb.fl
  %i.bfs = load i32, ptr %i.ac, align 4, !tbaa !298
  %i.bft = icmp ne i32 %i.bfs, %i.bfn
  %i.bfu = load i32, ptr %i.ad, align 8
  %i.bfv = icmp ne i32 %i.bfu, %i.bfp
  %or.cond.i.i57 = select i1 %i.bft, i1 true, i1 %i.bfv
  br i1 %or.cond.i.i57, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47, label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i51

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47: ; preds = %bb.fm, %bb.fl
  %.sroa.01417.sroa.0.0.insert.ext = zext i32 %i.bfl to i64
  %.sroa.01417.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i43, %.sroa.01417.sroa.0.0.insert.ext
  store i64 %.sroa.01417.sroa.0.0.insert.insert, ptr %i.ab, align 8
  store i32 %i.bfp, ptr %i.ad, align 8, !tbaa !207
  %i.bfw = and i32 %i.bfl, -8                     ; 4 uses
  %i.bfx = load i32, ptr %i.af, align 8, !tbaa !298
  %i.bfy = icmp eq i32 %i.bfw, %i.bfx
  br i1 %i.bfy, label %bb.fn, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i106

bb.fn:                                            ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47
  %i.bfz = and i32 %i.bfn, -8
  %i.bga = load i32, ptr %i.ag, align 4, !tbaa !298
  %i.bgb = icmp eq i32 %i.bfz, %i.bga
  br i1 %i.bgb, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i119, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i106

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i119: ; preds = %bb.fn
  %i.bgc = and i32 %i.bfp, -8
  %i.bgd = load i32, ptr %i.ah, align 8, !tbaa !298
  %i.bge = icmp eq i32 %i.bgc, %i.bgd
  br i1 %i.bge, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i120, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i106

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i120: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i119
  %i.bgf = load ptr, ptr %i.ai, align 8, !tbaa !208 ; 2 uses
  %i.bgg = shl i32 %i.bfl, 6
  %i.bgh = and i32 %i.bgg, 448
  %i.bgi = shl i32 %i.bfn, 3
  %i.bgj = and i32 %i.bgi, 56
  %i.bgk = or disjoint i32 %i.bgj, %i.bgh
  %i.bgl = and i32 %i.bfp, 7
  %i.bgm = or disjoint i32 %i.bgk, %i.bgl
  %i.bgn = zext nneg i32 %i.bgm to i64
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bgf, i64 %i.bgn
  %.not.i.not.i121 = icmp eq ptr %i.bgf, null
  br i1 %.not.i.not.i121, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i106, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit122

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i106: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i120, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i119, %bb.fn, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47
  %i.bgp = and i32 %i.bfl, -128                   ; 3 uses
  %i.bgq = load i32, ptr %i.aj, align 4, !tbaa !298
  %i.bgr = icmp eq i32 %i.bgp, %i.bgq
  br i1 %i.bgr, label %bb.fo, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i107

bb.fo:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.thread.i106
  %i.bgs = and i32 %i.bfn, -128
  %i.bgt = load i32, ptr %i.ak, align 8, !tbaa !298
  %i.bgu = icmp eq i32 %i.bgs, %i.bgt
  br i1 %i.bgu, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i117, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i107

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i117: ; preds = %bb.fo
  %i.bgv = and i32 %i.bfp, -128
  %i.bgw = load i32, ptr %i.al, align 4, !tbaa !298
  %i.bgx = icmp eq i32 %i.bgv, %i.bgw
  br i1 %i.bgx, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i118, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.thread.i107

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i118: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i117
  %i.bgy = load ptr, ptr %i.ar, align 8, !tbaa !446 ; 2 uses
  %i.bgz = shl i32 %i.bfl, 5
  %i.bha = and i32 %i.bgz, 3840
  %i.bhb = shl i32 %i.bfn, 1
  %i.bhc = and i32 %i.bhb, 240
  %i.bhd = or disjoint i32 %i.bhc, %i.bha         ; 2 uses
  %i.bhe = lshr i32 %i.bfp, 3
  %i.bhf = and i32 %i.bhe, 15
  %i.bhg = or disjoint i32 %i.bhd, %i.bhf         ; 2 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bgy, i64 32768
  %i.bhi = lshr i32 %i.bhd, 6
  %i.bhj = zext nneg i32 %i.bhi to i64
  %i.bhk = getelementptr inbounds nuw [8 x i8], ptr %i.bhh, i64 %i.bhj
  %i.bhl = load i64, ptr %i.bhk, align 8, !tbaa !249
  %i.bhm = and i32 %i.bhg, 63
  %i.bhn = zext nneg i32 %i.bhm to i64
  %i.bho = shl nuw i64 1, %i.bhn
  %i.bhp = and i64 %i.bhl, %i.bho
  %.not.i419 = icmp eq i64 %i.bhp, 0
  %i.bhq = zext nneg i32 %i.bhg to i64
  %i.bhr = getelementptr inbounds nuw [8 x i8], ptr %i.bgy, i64 %i.bhq ; 3 uses
  br i1 %.not.i419, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit122, label %bb.fp

bb.fp:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i118
  %i.bhs = load ptr, ptr %i.bhr, align 8, !tbaa !207 ; 7 uses
  %i.bht = and i32 %i.bfn, -8
  %i.bhu = and i32 %i.bfp, -8
  %.sroa.2.0.insert.ext.i.i420 = zext i32 %i.bht to i64
  %.sroa.2.0.insert.shift.i.i421 = shl nuw i64 %.sroa.2.0.insert.ext.i.i420, 32
  %.sroa.0.0.insert.ext.i.i422 = zext i32 %i.bfw to i64
  %.sroa.0.0.insert.insert.i.i423 = or disjoint i64 %.sroa.2.0.insert.shift.i.i421, %.sroa.0.0.insert.ext.i.i422
  store i64 %.sroa.0.0.insert.insert.i.i423, ptr %i.af, align 8
  store i32 %i.bhu, ptr %i.ah, align 8, !tbaa !207
  store ptr %i.bhs, ptr %i.ax, align 8, !tbaa !449
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhs, i64 8
  %i.bhw = load atomic i32, ptr %i.bhv seq_cst, align 4
  %.not.i.i.i425 = icmp eq i32 %i.bhw, 0
  br i1 %.not.i.i.i425, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i426, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.bhs)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i426

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i426: ; preds = %bb.fq, %bb.fp
  %i.bhx = load ptr, ptr %i.bhs, align 8, !tbaa !207 ; 2 uses
  %i.bhy = icmp eq ptr %i.bhx, null
  br i1 %i.bhy, label %bb.fr, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit.i427

bb.fr:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i426
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhs, i64 12 ; 4 uses
  %i.bia = atomicrmw xchg ptr %i.bhz, i8 1 seq_cst, align 1
  %i.bib = trunc i8 %i.bia to i1
  br i1 %i.bib, label %.lr.ph.i.i.i.i.i436, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i433

.lr.ph.i.i.i.i.i436:                              ; preds = %bb.fr, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i438
  %.sroa.0.02.i.i.i.i.i437 = phi i32 [ %.sroa.0.1.i.i.i.i.i439, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i438 ], [ 1, %bb.fr ] ; 8 uses
  %i.bic = icmp slt i32 %.sroa.0.02.i.i.i.i.i437, 17
  br i1 %i.bic, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %.lr.ph.i.i.i.i.i436
  %i.bid = icmp sgt i32 %.sroa.0.02.i.i.i.i.i437, 0
  br i1 %i.bid, label %.lr.ph.i.i.i.i.i.i.i441.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i440

.lr.ph.i.i.i.i.i.i.i441.preheader:                ; preds = %bb.fs
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 24 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !164
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !111
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !281
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %._crit_edge2082, label %.lr.ph2081.split.preheader

.lr.ph2081.split.preheader:                       ; preds = %.lr.ph2081
  %i.bf = insertelement <2 x float> poison, float %i.g, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph2081.split

._crit_edge2082:                                  ; preds = %._crit_edge2076, %.lr.ph2081, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  ret void

.lr.ph2081.split:                                 ; preds = %.lr.ph2081.split.preheader, %._crit_edge2076
  %.0262079 = phi i64 [ %.1.lcssa, %._crit_edge2076 ], [ 0, %.lr.ph2081.split.preheader ] ; 2 uses
  %.0272078 = phi i64 [ %i.bl, %._crit_edge2076 ], [ %i.i, %.lr.ph2081.split.preheader ] ; 4 uses
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !164
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !111
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !281 ; 2 uses
  %.not2083 = icmp eq i64 %i.bk, 0
  br i1 %.not2083, label %._crit_edge2076, label %.lr.ph2075

._crit_edge2076:                                  ; preds = %._crit_edge, %.lr.ph2081.split
  %.1.lcssa = phi i64 [ %.0262079, %.lr.ph2081.split ], [ %.2.lcssa, %._crit_edge ]
  %i.bl = add nuw i64 %.0272078, 1                ; 2 uses
  %exitcond2163.not = icmp eq i64 %i.bl, %i.j
  br i1 %exitcond2163.not, label %._crit_edge2082, label %.lr.ph2081.split, !llvm.loop !1014

.lr.ph2075:                                       ; preds = %.lr.ph2081.split, %._crit_edge
  %.0252073 = phi i64 [ %i.bdb, %._crit_edge ], [ 0, %.lr.ph2081.split ] ; 4 uses
  %.12072 = phi i64 [ %.2.lcssa, %._crit_edge ], [ %.0262079, %.lr.ph2081.split ] ; 2 uses
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !164 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !111 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !281
  %i.br = mul i64 %i.bq, %.0272078
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !288
  %i.bt = getelementptr [16 x i8], ptr %i.bs, i64 %.0252073
  %i.bu = getelementptr [16 x i8], ptr %i.bt, i64 %i.br ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %25, ptr noundef nonnull align 8 dereferenceable(496) %i.bm, i64 noundef %.0252073, i64 noundef %.0272078, double noundef 5.000000e-01, double noundef 5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01422)
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !484
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17, !noalias !1075
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !276, !noalias !1075 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !294, !noalias !1077 ; 3 uses
  store ptr %i.cb, ptr %8, align 8, !tbaa !296, !alias.scope !1076, !noalias !1075
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !297, !noalias !1077 ; 3 uses
  store ptr %i.cd, ptr %i.o, align 8, !tbaa !297, !alias.scope !1076, !noalias !1075
  %.not.i.i.i.i.i66 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i66, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i68, label %bb.b

bb.b:                                             ; preds = %.lr.ph2075
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1077
  %.not.i.i.i.i.i.i67 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i67, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !298, !noalias !1077
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !298, !noalias !1077
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i68

bb.d:                                             ; preds = %bb.b
  %i.ci = atomicrmw volatile add ptr %i.ce, i32 1 acq_rel, align 4, !noalias !1077 ; 0 uses
  %.pre.i74 = load ptr, ptr %8, align 8, !tbaa !296, !noalias !1075
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i68

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i68: ; preds = %bb.d, %bb.c, %.lr.ph2075
  %i.cj = phi ptr [ %i.cb, %.lr.ph2075 ], [ %i.cb, %bb.c ], [ %.pre.i74, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !1078
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !100, !noalias !1078
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !1078
  invoke void %i.cm(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(88) %25)
          to label %.noexc.i unwind label %bb.l, !noalias !1075, !inline_history !3

.noexc.i:                                         ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i68
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !1078
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !100, !noalias !1078
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 248
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1078
  invoke void %i.cp(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.e unwind label %bb.l, !noalias !1075, !inline_history !3

bb.e:                                             ; preds = %.noexc.i
  %i.cq = load double, ptr %i.q, align 16, !tbaa !163, !noalias !1078 ; 3 uses
  %i.cr = load <2 x double>, ptr %7, align 16, !tbaa !163, !noalias !1078 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.cr, %i.cr
  %i.cs = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ct = extractelement <2 x double> %i.cr, i64 0 ; 2 uses
  %i.cu = call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.cs)
  %i.cv = call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.cu)
  %sqrt.i.i.i69 = call noundef double @llvm.sqrt.f64(double %i.cv) ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %sqrt.i.i.i69, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cy = fdiv <2 x double> %i.cr, %i.cx          ; 2 uses
  %i.cz = fdiv double %i.cq, %sqrt.i.i.i69        ; 2 uses
  %i.da = load <2 x double>, ptr %i.r, align 8, !tbaa !163, !noalias !1078
  %i.db = fmul <2 x double> %i.da, %i.cx          ; 4 uses
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01422, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.dd = fdiv <2 x double> splat (double 1.000000e+00), %i.cy ; 3 uses
  %i.de = fdiv double 1.000000e+00, %i.cz         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !1078
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !1078
  %i.df = load ptr, ptr %i.o, align 8, !tbaa !297, !noalias !1075 ; 8 uses
  %.not.i.i.i70 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i70, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8, !noalias !1075 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.dg, align 8, !tbaa !300, !noalias !1075
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !301, !noalias !1075
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !100, !noalias !1075
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !1075
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17, !noalias !1075, !inline_history !7
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !100, !noalias !1075
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !1075
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17, !noalias !1075, !inline_history !7
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit

bb.h:                                             ; preds = %bb.f
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1075
  %.not.i.i.i.i71 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !298, !noalias !1075
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i72

bb.j:                                             ; preds = %bb.h
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4, !noalias !1075
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i72: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i73 = phi i32 [ %i.dj, %bb.i ], [ %i.dt, %bb.j ]
  %i.du = icmp eq i32 %.0.i.i.i.i.i73, 1
  br i1 %i.du, label %bb.k, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit, !prof !302

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i72
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17, !noalias !1075
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit

common.resume:                                    ; preds = %bb.ft, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fp, %bb.fn, %bb.sq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1252, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i703, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i728, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1277, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i782, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i807, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1302, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i861, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i886, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1327, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i940, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i965, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1352, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1019, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1044, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1377, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1098, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1123, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1402, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1177, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1202, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1227, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i444, %bb.ey, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.dv, %bb.l ], [ %i.bbx, %bb.ey ], [ %i.fek, %bb.sq ], [ %i.blx, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i444 ], [ %i.bpk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i ], [ %i.buh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1227 ], [ %i.bxv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1202 ], [ %i.cbg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1177 ], [ %i.cga, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1402 ], [ %i.cjs, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1123 ], [ %i.cnf, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1098 ], [ %i.csc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1377 ], [ %i.cvt, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1044 ], [ %i.czg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1019 ], [ %i.ded, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1352 ], [ %i.dhu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i965 ], [ %i.dlh, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i940 ], [ %i.dqe, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1327 ], [ %i.dtw, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i886 ], [ %i.dxj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i861 ], [ %i.ecg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1302 ], [ %i.efz, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i807 ], [ %i.ejm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i782 ], [ %i.eoj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1277 ], [ %i.esb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i728 ], [ %i.evo, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i703 ], [ %i.fal, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i1252 ], [ %i.bfj, %bb.fn ], [ %i.bfj, %bb.fp ], [ %i.bfj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.bfj, %bb.ft ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.noexc.i, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i68
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #17, !noalias !1075
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !1075
  br label %common.resume

_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i72, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !1075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01422, i64 24, i1 false)
  store <2 x double> %i.cy, ptr %.sroa.4.0..sroa_idx1423, align 8
  store double %i.cz, ptr %.sroa.61424.0..sroa_idx, align 8
  store <2 x double> %i.dd, ptr %.sroa.7.0..sroa_idx, align 8
  store double %i.de, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x double> %i.db, ptr %.sroa.101425.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01422)
  %27 = load <2 x i32>, ptr %i.s, align 8
  %28 = load <1 x double>, ptr %i.m, align 8
  %i.dw = load i32, ptr %i.t, align 4, !tbaa !298
  %i.dx = insertelement <2 x i32> %27, i32 %i.dw, i64 1
  %i.dy = sitofp <2 x i32> %i.dx to <2 x double>
  %i.dz = shufflevector <1 x double> %28, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fsub <2 x double> %i.dy, %i.dz
  %i.eb = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x double> %i.eb, %i.ea          ; 4 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 0
  %i.ee = extractelement <2 x double> %i.ec, i64 1
  %i.ef = fcmp ogt double %i.ed, %i.ee
  %i.eg = insertelement <2 x i1> poison, i1 %i.ef, i64 0
  %i.eh = shufflevector <2 x i1> %i.eg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ej = select <2 x i1> %i.eh, <2 x double> %i.ec, <2 x double> %i.ei ; 3 uses
  %i.ek = shufflevector <2 x double> %i.db, <2 x double> %i.ej, <2 x i32> <i32 1, i32 3>
  %i.el = shufflevector <2 x double> %i.ej, <2 x double> %i.db, <2 x i32> <i32 0, i32 2>
  %i.em = fcmp ogt <2 x double> %i.ek, %i.el
  %i.en = select <2 x i1> %i.em, <2 x double> %i.ej, <2 x double> %i.dc ; 5 uses
  %i.eo = extractelement <2 x double> %i.en, i64 0
  %i.ep = extractelement <2 x double> %i.en, i64 1
  %i.eq = fcmp ule double %i.ep, %i.eo
  br i1 %i.eq, label %bb.m, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

bb.m:                                             ; preds = %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit
  %29 = load <2 x i32>, ptr %i.u, align 4
  %30 = load <1 x double>, ptr %i.v, align 8
  %i.er = load i32, ptr %i.w, align 8, !tbaa !298
  %i.es = insertelement <2 x i32> %29, i32 %i.er, i64 1
  %i.et = sitofp <2 x i32> %i.es to <2 x double>
  %i.eu = shufflevector <1 x double> %30, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fsub <2 x double> %i.et, %i.eu
  %i.ew = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = fmul <2 x double> %i.ew, %i.ev          ; 4 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 0
  %i.ez = extractelement <2 x double> %i.ex, i64 1
  %i.fa = fcmp ogt double %i.ey, %i.ez
  %i.fb = insertelement <2 x i1> poison, i1 %i.fa, i64 0
  %i.fc = shufflevector <2 x i1> %i.fb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fd = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = select <2 x i1> %i.fc, <2 x double> %i.ex, <2 x double> %i.fd ; 3 uses
  %i.ff = shufflevector <2 x double> %i.en, <2 x double> %i.fe, <2 x i32> <i32 0, i32 3>
  %i.fg = shufflevector <2 x double> %i.fe, <2 x double> %i.en, <2 x i32> <i32 0, i32 3>
  %i.fh = fcmp ogt <2 x double> %i.ff, %i.fg
  %i.fi = select <2 x i1> %i.fh, <2 x double> %i.fe, <2 x double> %i.en ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0 ; 3 uses
  %i.fk = extractelement <2 x double> %i.fi, i64 1 ; 3 uses
  %i.fl = fcmp ule double %i.fk, %i.fj
  br i1 %i.fl, label %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i: ; preds = %bb.m
  %i.fm = load i32, ptr %i.x, align 8, !tbaa !298
  %i.fn = sitofp i32 %i.fm to double
  %i.fo = load double, ptr %i.y, align 8, !tbaa !163 ; 2 uses
  %i.fp = fsub double %i.fn, %i.fo
  %i.fq = fmul double %i.de, %i.fp                ; 3 uses
  %i.fr = load i32, ptr %i.z, align 4, !tbaa !298
  %i.fs = sitofp i32 %i.fr to double
  %i.ft = fsub double %i.fs, %i.fo
  %i.fu = fmul double %i.de, %i.ft                ; 3 uses
  %i.fv = fcmp ogt double %i.fq, %i.fu            ; 2 uses
  %.030.2.i.i.i = select i1 %i.fv, double %i.fu, double %i.fq ; 2 uses
  %.0.2.i.i.i = select i1 %i.fv, double %i.fq, double %i.fu ; 2 uses
  %i.fw = fcmp ogt double %.030.2.i.i.i, %i.fk
  %.27.i.i = select i1 %i.fw, double %.030.2.i.i.i, double %i.fk ; 2 uses
  %i.fx = fcmp olt double %.0.2.i.i.i, %i.fj
  %i.fy = select i1 %i.fx, double %.0.2.i.i.i, double %i.fj ; 2 uses
  %i.fz = fcmp ule double %.27.i.i, %i.fy
  br i1 %i.fz, label %bb.n, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

bb.n:                                             ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i
  store double %.27.i.i, ptr %.sroa.101425.0..sroa_idx, align 8, !tbaa !290
  store double %i.fy, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !291
  %i.ga = call noundef zeroext i1 @_ZN7openvdb5v13_04math12LevelSetHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELi2EE4testINS0_5tools16LinearSearchImplINS0_4GridISC_EELi0EdEEEEbRT_(ptr noundef nonnull align 8 dereferenceable(320) %i.m)
  br i1 %i.ga, label %bb.o, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.gb = load double, ptr %i.aa, align 8, !tbaa !490 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load double, ptr %.sroa.4.0..sroa_idx1423, align 8, !noalias !1079
  %i.gc = fmul double %i.gb, %.sroa.0.0.copyload.i.i.i
  %.sroa.0.0.copyload2.i.i = load double, ptr %i.m, align 8
  %i.gd = fadd double %i.gc, %.sroa.0.0.copyload2.i.i ; 3 uses
  %i.ge = load <2 x double>, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1079 ; 2 uses
  %i.gf = insertelement <2 x double> %i.ge, double %i.gb, i64 0
  %i.gg = insertelement <2 x double> %i.ge, double %i.gb, i64 1
  %i.gh = fmul <2 x double> %i.gf, %i.gg
  %i.gi = load <2 x double>, ptr %i.v, align 8
  %i.gj = fadd <2 x double> %i.gh, %i.gi          ; 4 uses
  store double %i.gd, ptr %23, align 8
  %i.gk = extractelement <2 x double> %i.gj, i64 0
  %i.gl = extractelement <2 x double> %i.gj, i64 1
  store <2 x double> %i.gj, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.gm = call noundef double @llvm.floor.f64(double %i.gd)
  %i.gn = call noundef double @llvm.floor.f64(double %i.gk)
  %i.go = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.gn, i64 1
  %i.gq = fptosi <2 x double> %i.gp to <2 x i32>  ; 4 uses
  %i.gr = extractelement <2 x i32> %i.gq, i64 1   ; 11 uses
  %i.gs = call noundef double @llvm.floor.f64(double %i.gl)
  %i.gt = fptosi double %i.gs to i32              ; 13 uses
  %i.gu = extractelement <2 x i32> %i.gq, i64 0   ; 8 uses
  store <2 x i32> %i.gq, ptr %20, align 8
  store i32 %i.gt, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.gv = load i32, ptr %i.ab, align 8, !tbaa !298
  %i.gw = icmp eq i32 %i.gv, %i.gu
  br i1 %i.gw, label %bb.p, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i

bb.p:                                             ; preds = %bb.o
  %i.gx = load i32, ptr %i.ac, align 4, !tbaa !298
  %i.gy = icmp ne i32 %i.gx, %i.gr
  %i.gz = load i32, ptr %i.ad, align 8
  %i.ha = icmp ne i32 %i.gz, %i.gt
  %or.cond.i.i = select i1 %i.gy, i1 true, i1 %i.ha
  br i1 %or.cond.i.i, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i, label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %20, i64 12, i1 false), !tbaa.struct !445
  %i.hb = and i32 %i.gu, -8
  %i.hc = load i32, ptr %i.af, align 8, !tbaa !298
  %i.hd = icmp eq i32 %i.hb, %i.hc
  br i1 %i.hd, label %bb.q, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i

bb.q:                                             ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i
  %i.he = and i32 %i.gr, -8
  %i.hf = load i32, ptr %i.ag, align 4, !tbaa !298
  %i.hg = icmp eq i32 %i.he, %i.hf
  br i1 %i.hg, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.q
  %i.hh = and i32 %i.gt, -8
  %i.hi = load i32, ptr %i.ah, align 8, !tbaa !298
  %i.hj = icmp eq i32 %i.hh, %i.hi
  br i1 %i.hj, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i
  %i.hk = load ptr, ptr %i.ai, align 8, !tbaa !337 ; 2 uses
  %i.hl = shl i32 %i.gu, 6
  %i.hm = and i32 %i.hl, 448
  %i.hn = shl i32 %i.gr, 3
  %i.ho = and i32 %i.hn, 56
  %i.hp = and i32 %i.gt, 7
  %i.hq = or disjoint i32 %i.hm, %i.hp
  %i.hr = or disjoint i32 %i.hq, %i.ho
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hs
  %.not.i.not.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.not.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i, %bb.q, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i
  %i.hu = and i32 %i.gu, -128                     ; 3 uses
  %i.hv = load i32, ptr %i.aj, align 4, !tbaa !298
  %i.hw = icmp eq i32 %i.hu, %i.hv
  br i1 %i.hw, label %bb.r, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i

bb.r:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i
  %i.hx = and i32 %i.gr, -128
  %i.hy = load i32, ptr %i.ak, align 8, !tbaa !298
  %i.hz = icmp eq i32 %i.hx, %i.hy
  br i1 %i.hz, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.r
  %i.ia = and i32 %i.gt, -128
  %i.ib = load i32, ptr %i.al, align 4, !tbaa !298
  %i.ic = icmp eq i32 %i.ia, %i.ib
  br i1 %i.ic, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i
  %i.id = load ptr, ptr %i.ar, align 8, !tbaa !491
  %i.ie = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.id, ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i, %bb.r, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i
  %i.if = and i32 %i.gu, -4096                    ; 2 uses
  %i.ig = load i32, ptr %i.am, align 8, !tbaa !298
  %i.ih = icmp eq i32 %i.if, %i.ig
  br i1 %i.ih, label %bb.s, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i

bb.s:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i
  %i.ii = and i32 %i.gr, -4096
  %i.ij = load i32, ptr %i.an, align 4, !tbaa !298
  %i.ik = icmp eq i32 %i.ii, %i.ij
  br i1 %i.ik, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i: ; preds = %bb.s
  %i.il = and i32 %i.gt, -4096
  %i.im = load i32, ptr %i.ao, align 8, !tbaa !298
  %i.in = icmp eq i32 %i.il, %i.im
  br i1 %i.in, label %bb.t, label %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i
  %i.io = load ptr, ptr %i.aq, align 8, !tbaa !492 ; 2 uses
  %i.ip = shl i32 %i.gu, 3
  %i.iq = and i32 %i.ip, 31744
  %i.ir = lshr i32 %i.gr, 2
  %i.is = and i32 %i.ir, 992
  %i.it = or disjoint i32 %i.is, %i.iq            ; 2 uses
  %i.iu = lshr i32 %i.gt, 7
  %i.iv = and i32 %i.iu, 31
  %i.iw = or disjoint i32 %i.it, %i.iv            ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 262144
  %i.iy = lshr i32 %i.it, 6
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iz
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !249
  %i.jc = and i32 %i.iw, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = shl nuw i64 1, %i.jd
  %i.jf = and i64 %i.jb, %i.je
  %.not.i.i.i65 = icmp eq i64 %i.jf, 0
  %i.jg = zext nneg i32 %i.iw to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.jg ; 3 uses
  br i1 %.not.i.i.i65, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !207
  %i.jj = and i32 %i.gr, -128
  %i.jk = and i32 %i.gt, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.jj to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.hu to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %i.aj, align 4
  store i32 %i.jk, ptr %i.al, align 4, !tbaa !207
  store ptr %i.ji, ptr %i.ar, align 8, !tbaa !491
  %i.jl = load ptr, ptr %i.jh, align 8, !tbaa !207
  %i.jm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.jl, ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(96) %i.ae)
  br label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS9_EEbRKNS0_4math5CoordE.exit.i.i, %bb.s, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i
  %i.jn = load ptr, ptr %i.ap, align 8, !tbaa !338 ; 6 uses
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools17LevelSetRayTracerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_22LevelSetRayIntersectorISE_NS1_16LinearSearchImplISE_Li0EdEELi2ENS0_4math3RayIdEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %.2.lcssa = phi i64 [ %.12072, %bb.fb ], [ %i.ffo, %bb.st ] ; 2 uses
  %i.bcz = fmul <2 x float> %i.bg, %.sroa.01411.1.lcssa
  %.sroa.10.8.vec.extract = extractelement <2 x float> %.sroa.10.1.lcssa, i64 0
  %i.bda = fmul float %i.g, %.sroa.10.8.vec.extract
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bda, i64 0
  store <2 x float> %i.bcz, ptr %i.bu, align 4, !tbaa !98
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  %i.bdb = add nuw i64 %.0252073, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bdb, %i.bk
  br i1 %exitcond.not, label %._crit_edge2076, label %.lr.ph2075, !llvm.loop !1033

bb.fc:                                            ; preds = %.lr.ph, %bb.st
  %.02069 = phi i64 [ 0, %.lr.ph ], [ %i.ffn, %bb.st ]
  %.22068 = phi i64 [ %.12072, %.lr.ph ], [ %i.ffo, %bb.st ] ; 3 uses
  %.sroa.01411.12067 = phi <2 x float> [ %.sroa.01411.0, %.lr.ph ], [ %i.ffl, %bb.st ]
  %.sroa.10.12066 = phi <2 x float> [ %.sroa.10.0, %.lr.ph ], [ %i.ffm, %bb.st ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.bdc = load ptr, ptr %i.l, align 8, !tbaa !164 ; 2 uses
  %i.bdd = load ptr, ptr %i.aw, align 8, !tbaa !162 ; 2 uses
  %i.bde = and i64 %.22068, 15
  %i.bdf = getelementptr inbounds nuw [8 x i8], ptr %i.bdd, i64 %i.bde
  %i.bdg = load double, ptr %i.bdf, align 8, !tbaa !163
  %i.bdh = add i64 %.22068, 1
  %i.bdi = and i64 %i.bdh, 15
  %i.bdj = getelementptr inbounds nuw [8 x i8], ptr %i.bdd, i64 %i.bdi
  %i.bdk = load double, ptr %i.bdj, align 8, !tbaa !163
  %i.bdl = load ptr, ptr %i.bdc, align 8, !tbaa !100
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 16
  %i.bdn = load ptr, ptr %i.bdm, align 8
  call void %i.bdn(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %26, ptr noundef nonnull align 8 dereferenceable(496) %i.bdc, i64 noundef %.0252073, i64 noundef %.0272078, double noundef %i.bdg, double noundef %i.bdk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %25, ptr noundef nonnull align 8 dereferenceable(88) %26, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01465)
  %i.bdo = load ptr, ptr %i.n, align 8, !tbaa !484
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 56
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !276, !noalias !1085 ; 2 uses
  %i.bdr = load ptr, ptr %i.bdq, align 8, !tbaa !294, !noalias !1086 ; 4 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdq, i64 8
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !297, !noalias !1086 ; 16 uses
  %.not.i.i.i.i.i132 = icmp eq ptr %i.bdt, null   ; 3 uses
  br i1 %.not.i.i.i.i.i132, label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i134, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdt, i64 8 ; 3 uses
  %i.bdv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1086
  %.not.i.i.i.i.i.i133 = icmp eq i8 %i.bdv, 0
  br i1 %.not.i.i.i.i.i.i133, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.bdw = load i32, ptr %i.bdu, align 4, !tbaa !298, !noalias !1086
  %i.bdx = add nsw i32 %i.bdw, 1
  store i32 %i.bdx, ptr %i.bdu, align 4, !tbaa !298, !noalias !1086
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i134

bb.ff:                                            ; preds = %bb.fd
  %i.bdy = atomicrmw volatile add ptr %i.bdu, i32 1 acq_rel, align 4, !noalias !1086 ; 0 uses
  br label %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i134

_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i134: ; preds = %bb.ff, %bb.fe, %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !1087
  %i.bdz = load ptr, ptr %i.bdr, align 8, !tbaa !100, !noalias !1087
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 64
  %i.beb = load ptr, ptr %i.bea, align 8, !noalias !1087
  invoke void %i.beb(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.bdr, ptr noundef nonnull align 8 dereferenceable(88) %25)
          to label %.noexc.i135 unwind label %bb.fn, !noalias !1085, !inline_history !3

.noexc.i135:                                      ; preds = %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i134
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !1087
  %i.bec = load ptr, ptr %i.bdr, align 8, !tbaa !100, !noalias !1087
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 248
  %i.bee = load ptr, ptr %i.bed, align 8, !noalias !1087
  invoke void %i.bee(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.bdr, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.fg unwind label %bb.fn, !noalias !1085, !inline_history !3

bb.fg:                                            ; preds = %.noexc.i135
  %i.bef = load double, ptr %i.ax, align 16, !tbaa !163, !noalias !1087 ; 3 uses
  %i.beg = load <2 x double>, ptr %3, align 16, !tbaa !163, !noalias !1087 ; 4 uses
  %foldExtExtBinop2569 = fmul <2 x double> %i.beg, %i.beg
  %i.beh = extractelement <2 x double> %foldExtExtBinop2569, i64 1
  %i.bei = extractelement <2 x double> %i.beg, i64 0 ; 2 uses
  %i.bej = call double @llvm.fmuladd.f64(double %i.bei, double %i.bei, double %i.beh)
  %i.bek = call double @llvm.fmuladd.f64(double %i.bef, double %i.bef, double %i.bej)
  %sqrt.i.i.i136 = call noundef double @llvm.sqrt.f64(double %i.bek) ; 2 uses
  %i.bel = insertelement <2 x double> poison, double %sqrt.i.i.i136, i64 0
  %i.bem = shufflevector <2 x double> %i.bel, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ben = fdiv <2 x double> %i.beg, %i.bem       ; 2 uses
  %i.beo = fdiv double %i.bef, %sqrt.i.i.i136     ; 2 uses
  %i.bep = load <2 x double>, ptr %i.r, align 8, !tbaa !163, !noalias !1087
  %i.beq = fmul <2 x double> %i.bep, %i.bem       ; 4 uses
  %i.ber = shufflevector <2 x double> %i.beq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01465, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bes = fdiv <2 x double> splat (double 1.000000e+00), %i.ben ; 3 uses
  %i.bet = fdiv double 1.000000e+00, %i.beo       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !1087
  br i1 %.not.i.i.i.i.i132, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit144, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bdt, i64 8 ; 4 uses
  %i.bev = load atomic i64, ptr %i.beu acquire, align 8, !noalias !1085 ; 2 uses
  %i.bew = icmp eq i64 %i.bev, 4294967297
  %i.bex = trunc i64 %i.bev to i32                ; 2 uses
  br i1 %i.bew, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.beu, align 8, !tbaa !300, !noalias !1085
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bdt, i64 12
  store i32 0, ptr %i.bey, align 4, !tbaa !301, !noalias !1085
  %i.bez = load ptr, ptr %i.bdt, align 8, !tbaa !100, !noalias !1085
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 16
  %i.bfb = load ptr, ptr %i.bfa, align 8, !noalias !1085
  call void %i.bfb(ptr noundef nonnull align 8 dereferenceable(16) %i.bdt) #17, !noalias !1085, !inline_history !7
  %i.bfc = load ptr, ptr %i.bdt, align 8, !tbaa !100, !noalias !1085
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 24
  %i.bfe = load ptr, ptr %i.bfd, align 8, !noalias !1085
  call void %i.bfe(ptr noundef nonnull align 8 dereferenceable(16) %i.bdt) #17, !noalias !1085, !inline_history !7
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit144

bb.fj:                                            ; preds = %bb.fh
  %i.bff = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1085
  %.not.i.i.i.i140 = icmp eq i8 %i.bff, 0
  br i1 %.not.i.i.i.i140, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.bfg = add nsw i32 %i.bex, -1
  store i32 %i.bfg, ptr %i.beu, align 8, !tbaa !298, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i141

bb.fl:                                            ; preds = %bb.fj
  %i.bfh = atomicrmw volatile add ptr %i.beu, i32 -1 acq_rel, align 4, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i141

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i141: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i.i142 = phi i32 [ %i.bex, %bb.fk ], [ %i.bfh, %bb.fl ]
  %i.bfi = icmp eq i32 %.0.i.i.i.i.i142, 1
  br i1 %i.bfi, label %bb.fm, label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit144, !prof !302

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i141
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdt) #17, !noalias !1085
  br label %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit144

bb.fn:                                            ; preds = %.noexc.i135, %_ZNK7openvdb5v13_04math9Transform7baseMapEv.exit.i134
  %i.bfj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  br i1 %.not.i.i.i.i.i132, label %common.resume, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bdt, i64 8 ; 4 uses
  %i.bfl = load atomic i64, ptr %i.bfk acquire, align 8, !noalias !1085 ; 2 uses
  %i.bfm = icmp eq i64 %i.bfl, 4294967297
  %i.bfn = trunc i64 %i.bfl to i32                ; 2 uses
  br i1 %i.bfm, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  store i32 0, ptr %i.bfk, align 8, !tbaa !300, !noalias !1085
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bdt, i64 12
  store i32 0, ptr %i.bfo, align 4, !tbaa !301, !noalias !1085
  %i.bfp = load ptr, ptr %i.bdt, align 8, !tbaa !100, !noalias !1085
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfp, i64 16
  %i.bfr = load ptr, ptr %i.bfq, align 8, !noalias !1085
  call void %i.bfr(ptr noundef nonnull align 8 dereferenceable(16) %i.bdt) #17, !noalias !1085, !inline_history !28
  %i.bfs = load ptr, ptr %i.bdt, align 8, !tbaa !100, !noalias !1085
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 24
  %i.bfu = load ptr, ptr %i.bft, align 8, !noalias !1085
  call void %i.bfu(ptr noundef nonnull align 8 dereferenceable(16) %i.bdt) #17, !noalias !1085, !inline_history !28
  br label %common.resume

bb.fq:                                            ; preds = %bb.fo
  %i.bfv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !207, !noalias !1085
  %.not.i.i.i454 = icmp eq i8 %i.bfv, 0
  br i1 %.not.i.i.i454, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bfw = add nsw i32 %i.bfn, -1
  store i32 %i.bfw, ptr %i.bfk, align 8, !tbaa !298, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fs:                                            ; preds = %bb.fq
  %i.bfx = atomicrmw volatile add ptr %i.bfk, i32 -1 acq_rel, align 4, !noalias !1085
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fs, %bb.fr
  %.0.i.i.i.i = phi i32 [ %i.bfn, %bb.fr ], [ %i.bfx, %bb.fs ]
  %i.bfy = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bfy, label %bb.ft, label %common.resume, !prof !302

bb.ft:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdt) #17, !noalias !1085
  br label %common.resume

_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit144: ; preds = %bb.fg, %bb.fi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i141, %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01465, i64 24, i1 false)
  store <2 x double> %i.ben, ptr %.sroa.4.0..sroa_idx1423, align 8
  store double %i.beo, ptr %.sroa.61424.0..sroa_idx, align 8
  store <2 x double> %i.bes, ptr %.sroa.7.0..sroa_idx, align 8
  store double %i.bet, ptr %.sroa.9.0..sroa_idx, align 8
  store <2 x double> %i.beq, ptr %.sroa.101425.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01465)
  %31 = load <2 x i32>, ptr %i.s, align 8
  %32 = load <1 x double>, ptr %i.m, align 8
  %i.bfz = load i32, ptr %i.t, align 4, !tbaa !298
  %i.bga = insertelement <2 x i32> %31, i32 %i.bfz, i64 1
  %i.bgb = sitofp <2 x i32> %i.bga to <2 x double>
  %i.bgc = shufflevector <1 x double> %32, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bgd = fsub <2 x double> %i.bgb, %i.bgc
  %i.bge = shufflevector <2 x double> %i.bes, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bgf = fmul <2 x double> %i.bge, %i.bgd       ; 4 uses
  %i.bgg = extractelement <2 x double> %i.bgf, i64 0
  %i.bgh = extractelement <2 x double> %i.bgf, i64 1
  %i.bgi = fcmp ogt double %i.bgg, %i.bgh
  %i.bgj = insertelement <2 x i1> poison, i1 %i.bgi, i64 0
  %i.bgk = shufflevector <2 x i1> %i.bgj, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bgl = shufflevector <2 x double> %i.bgf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bgm = select <2 x i1> %i.bgk, <2 x double> %i.bgf, <2 x double> %i.bgl ; 3 uses
  %i.bgn = shufflevector <2 x double> %i.beq, <2 x double> %i.bgm, <2 x i32> <i32 1, i32 3>
  %i.bgo = shufflevector <2 x double> %i.bgm, <2 x double> %i.beq, <2 x i32> <i32 0, i32 2>
  %i.bgp = fcmp ogt <2 x double> %i.bgn, %i.bgo
  %i.bgq = select <2 x i1> %i.bgp, <2 x double> %i.bgm, <2 x double> %i.ber ; 5 uses
  %i.bgr = extractelement <2 x double> %i.bgq, i64 0
  %i.bgs = extractelement <2 x double> %i.bgq, i64 1
  %i.bgt = fcmp ule double %i.bgs, %i.bgr
  br i1 %i.bgt, label %bb.fu, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit64.thread

bb.fu:                                            ; preds = %_ZNK7openvdb5v13_04math3RayIdE12worldToIndexINS0_4GridINS0_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEES3_RKT_.exit144
  %33 = load <2 x i32>, ptr %i.u, align 4
  %34 = load <1 x double>, ptr %i.v, align 8
  %i.bgu = load i32, ptr %i.w, align 8, !tbaa !298
  %i.bgv = insertelement <2 x i32> %33, i32 %i.bgu, i64 1
  %i.bgw = sitofp <2 x i32> %i.bgv to <2 x double>
  %i.bgx = shufflevector <1 x double> %34, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bgy = fsub <2 x double> %i.bgw, %i.bgx
  %i.bgz = shufflevector <2 x double> %i.bes, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bha = fmul <2 x double> %i.bgz, %i.bgy       ; 4 uses
  %i.bhb = extractelement <2 x double> %i.bha, i64 0
  %i.bhc = extractelement <2 x double> %i.bha, i64 1
  %i.bhd = fcmp ogt double %i.bhb, %i.bhc
  %i.bhe = insertelement <2 x i1> poison, i1 %i.bhd, i64 0
  %i.bhf = shufflevector <2 x i1> %i.bhe, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bhg = shufflevector <2 x double> %i.bha, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bhh = select <2 x i1> %i.bhf, <2 x double> %i.bha, <2 x double> %i.bhg ; 3 uses
  %i.bhi = shufflevector <2 x double> %i.bgq, <2 x double> %i.bhh, <2 x i32> <i32 0, i32 3>
  %i.bhj = shufflevector <2 x double> %i.bhh, <2 x double> %i.bgq, <2 x i32> <i32 0, i32 3>
  %i.bhk = fcmp ogt <2 x double> %i.bhi, %i.bhj
  %i.bhl = select <2 x i1> %i.bhk, <2 x double> %i.bhh, <2 x double> %i.bgq ; 2 uses
  %i.bhm = extractelement <2 x double> %i.bhl, i64 0 ; 3 uses
  %i.bhn = extractelement <2 x double> %i.bhl, i64 1 ; 3 uses
  %i.bho = fcmp ule double %i.bhn, %i.bhm
  br i1 %i.bho, label %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i60, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit64.thread

_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i60: ; preds = %bb.fu
  %i.bhp = load i32, ptr %i.x, align 8, !tbaa !298
  %i.bhq = sitofp i32 %i.bhp to double
  %i.bhr = load double, ptr %i.y, align 8, !tbaa !163 ; 2 uses
  %i.bhs = fsub double %i.bhq, %i.bhr
  %i.bht = fmul double %i.bet, %i.bhs             ; 3 uses
  %i.bhu = load i32, ptr %i.z, align 4, !tbaa !298
  %i.bhv = sitofp i32 %i.bhu to double
  %i.bhw = fsub double %i.bhv, %i.bhr
  %i.bhx = fmul double %i.bet, %i.bhw             ; 3 uses
  %i.bhy = fcmp ogt double %i.bht, %i.bhx         ; 2 uses
  %.030.2.i.i.i61 = select i1 %i.bhy, double %i.bhx, double %i.bht ; 2 uses
  %.0.2.i.i.i62 = select i1 %i.bhy, double %i.bht, double %i.bhx ; 2 uses
  %i.bhz = fcmp ogt double %.030.2.i.i.i61, %i.bhn
  %.27.i.i63 = select i1 %i.bhz, double %.030.2.i.i.i61, double %i.bhn ; 2 uses
  %i.bia = fcmp olt double %.0.2.i.i.i62, %i.bhm
  %i.bib = select i1 %i.bia, double %.0.2.i.i.i62, double %i.bhm ; 2 uses
  %i.bic = fcmp ule double %.27.i.i63, %i.bib
  br i1 %i.bic, label %bb.fv, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit64.thread

bb.fv:                                            ; preds = %_ZNK7openvdb5v13_04math3RayIdE10intersectsINS1_9CoordBBoxEEEbRKT_RdS9_.exit.i.i60
  store double %.27.i.i63, ptr %.sroa.101425.0..sroa_idx, align 8, !tbaa !290
  store double %i.bib, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !291
  %i.bid = call noundef zeroext i1 @_ZN7openvdb5v13_04math12LevelSetHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELi2EE4testINS0_5tools16LinearSearchImplINS0_4GridISC_EELi0EdEEEEbRT_(ptr noundef nonnull align 8 dereferenceable(320) %i.m)
  br i1 %i.bid, label %bb.fw, label %_ZN7openvdb5v13_05tools16LinearSearchImplINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi0EdE11setWorldRayERKNS0_4math3RayIdEE.exit64.thread

bb.fw:                                            ; preds = %bb.fv
  %i.bie = load double, ptr %i.aa, align 8, !tbaa !490 ; 3 uses
  %.sroa.0.0.copyload.i.i.i30 = load double, ptr %.sroa.4.0..sroa_idx1423, align 8, !noalias !1088
  %i.bif = fmul double %i.bie, %.sroa.0.0.copyload.i.i.i30
  %.sroa.0.0.copyload2.i.i35 = load double, ptr %i.m, align 8
  %i.big = fadd double %i.bif, %.sroa.0.0.copyload2.i.i35 ; 3 uses
  %i.bih = load <2 x double>, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1088 ; 2 uses
  %i.bii = insertelement <2 x double> %i.bih, double %i.bie, i64 0
  %i.bij = insertelement <2 x double> %i.bih, double %i.bie, i64 1
  %i.bik = fmul <2 x double> %i.bii, %i.bij
  %i.bil = load <2 x double>, ptr %i.v, align 8
  %i.bim = fadd <2 x double> %i.bik, %i.bil       ; 4 uses
  store double %i.big, ptr %23, align 8
  %i.bin = extractelement <2 x double> %i.bim, i64 0
  %i.bio = extractelement <2 x double> %i.bim, i64 1
  store <2 x double> %i.bim, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.bip = call noundef double @llvm.floor.f64(double %i.big)
  %i.biq = call noundef double @llvm.floor.f64(double %i.bin)
  %i.bir = insertelement <2 x double> poison, double %i.bip, i64 0
  %i.bis = insertelement <2 x double> %i.bir, double %i.biq, i64 1
  %i.bit = fptosi <2 x double> %i.bis to <2 x i32> ; 4 uses
  %i.biu = extractelement <2 x i32> %i.bit, i64 1 ; 20 uses
  %i.biv = extractelement <2 x i32> %i.bit, i64 0 ; 14 uses
  %i.biw = call noundef double @llvm.floor.f64(double %i.bio)
  %i.bix = fptosi double %i.biw to i32            ; 22 uses
  %i.biy = load i32, ptr %i.ab, align 8, !tbaa !298
  %i.biz = icmp eq i32 %i.biy, %i.biv
  br i1 %i.biz, label %bb.fx, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47

bb.fx:                                            ; preds = %bb.fw
  %i.bja = load i32, ptr %i.ac, align 4, !tbaa !298
  %i.bjb = icmp ne i32 %i.bja, %i.biu
  %i.bjc = load i32, ptr %i.ad, align 8
  %i.bjd = icmp ne i32 %i.bjc, %i.bix
  %or.cond.i.i50 = select i1 %i.bjb, i1 true, i1 %i.bjd
  br i1 %or.cond.i.i50, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47, label %_ZN7openvdb5v13_04math11BaseStencilINS1_10BoxStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToIdEEvRKNS1_4Vec3IT_EE.exit.i48

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47: ; preds = %bb.fx, %bb.fw
  store <2 x i32> %i.bit, ptr %i.ab, align 8
  store i32 %i.bix, ptr %i.ad, align 8, !tbaa !207
  %i.bje = and i32 %i.biv, -8                     ; 4 uses
  %i.bjf = load i32, ptr %i.af, align 8, !tbaa !298
  %i.bjg = icmp eq i32 %i.bje, %i.bjf
  br i1 %i.bjg, label %bb.fy, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i115

bb.fy:                                            ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47
  %i.bjh = and i32 %i.biu, -8
  %i.bji = load i32, ptr %i.ag, align 4, !tbaa !298
  %i.bjj = icmp eq i32 %i.bjh, %i.bji
  br i1 %i.bjj, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i128, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i115

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i128: ; preds = %bb.fy
  %i.bjk = and i32 %i.bix, -8
  %i.bjl = load i32, ptr %i.ah, align 8, !tbaa !298
  %i.bjm = icmp eq i32 %i.bjk, %i.bjl
  br i1 %i.bjm, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i129, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i115

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i129: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i128
  %i.bjn = load ptr, ptr %i.ai, align 8, !tbaa !337 ; 2 uses
  %i.bjo = shl i32 %i.biv, 6
  %i.bjp = and i32 %i.bjo, 448
  %i.bjq = shl i32 %i.biu, 3
  %i.bjr = and i32 %i.bjq, 56
  %i.bjs = or disjoint i32 %i.bjr, %i.bjp
  %i.bjt = and i32 %i.bix, 7
  %i.bju = or disjoint i32 %i.bjs, %i.bjt
  %i.bjv = zext nneg i32 %i.bju to i64
  %i.bjw = getelementptr inbounds nuw [8 x i8], ptr %i.bjn, i64 %i.bjv
  %.not.i.not.i130 = icmp eq ptr %i.bjn, null
  br i1 %.not.i.not.i130, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i115, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit131

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i115: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i129, %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS7_EEbRKNS0_4math5CoordE.exit.i.i128, %bb.fy, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread.i.i47
  %i.bjx = and i32 %i.biv, -128                   ; 3 uses
  %i.bjy = load i32, ptr %i.aj, align 4, !tbaa !298
  %i.bjz = icmp eq i32 %i.bjx, %i.bjy
  br i1 %i.bjz, label %bb.fz, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i116

bb.fz:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.thread.i115
  %i.bka = and i32 %i.biu, -128
  %i.bkb = load i32, ptr %i.ak, align 8, !tbaa !298
  %i.bkc = icmp eq i32 %i.bka, %i.bkb
  br i1 %i.bkc, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i126, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i116

_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i126: ; preds = %bb.fz
  %i.bkd = and i32 %i.bix, -128
  %i.bke = load i32, ptr %i.al, align 4, !tbaa !298
  %i.bkf = icmp eq i32 %i.bkd, %i.bke
  br i1 %i.bkf, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i127, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.thread.i116

_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i127: ; preds = %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8isHashedIS8_EEbRKNS0_4math5CoordE.exit.i.i126
  %i.bkg = load ptr, ptr %i.ar, align 8, !tbaa !491 ; 2 uses
  %i.bkh = shl i32 %i.biv, 5
  %i.bki = and i32 %i.bkh, 3840
  %i.bkj = shl i32 %i.biu, 1
  %i.bkk = and i32 %i.bkj, 240
  %i.bkl = or disjoint i32 %i.bkk, %i.bki         ; 2 uses
  %i.bkm = lshr i32 %i.bix, 3
  %i.bkn = and i32 %i.bkm, 15
  %i.bko = or disjoint i32 %i.bkl, %i.bkn         ; 2 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkg, i64 32768
  %i.bkq = lshr i32 %i.bkl, 6
  %i.bkr = zext nneg i32 %i.bkq to i64
  %i.bks = getelementptr inbounds nuw [8 x i8], ptr %i.bkp, i64 %i.bkr
  %i.bkt = load i64, ptr %i.bks, align 8, !tbaa !249
  %i.bku = and i32 %i.bko, 63
  %i.bkv = zext nneg i32 %i.bku to i64
  %i.bkw = shl nuw i64 1, %i.bkv
  %i.bkx = and i64 %i.bkt, %i.bkw
  %.not.i428 = icmp eq i64 %i.bkx, 0
  %i.bky = zext nneg i32 %i.bko to i64
  %i.bkz = getelementptr inbounds nuw [8 x i8], ptr %i.bkg, i64 %i.bky ; 3 uses
  br i1 %.not.i428, label %_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE.exit131, label %bb.ga

bb.ga:                                            ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i127
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !207 ; 7 uses
  %i.blb = and i32 %i.biu, -8
  %i.blc = and i32 %i.bix, -8
  %.sroa.2.0.insert.ext.i.i429 = zext i32 %i.blb to i64
  %.sroa.2.0.insert.shift.i.i430 = shl nuw i64 %.sroa.2.0.insert.ext.i.i429, 32
  %.sroa.0.0.insert.ext.i.i431 = zext i32 %i.bje to i64
  %.sroa.0.0.insert.insert.i.i432 = or disjoint i64 %.sroa.2.0.insert.shift.i.i430, %.sroa.0.0.insert.ext.i.i431
  store i64 %.sroa.0.0.insert.insert.i.i432, ptr %i.af, align 8
  store i32 %i.blc, ptr %i.ah, align 8, !tbaa !207
  store ptr %i.bla, ptr %i.ay, align 8, !tbaa !494
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bla, i64 8
  %i.ble = load atomic i32, ptr %i.bld seq_cst, align 4
  %.not.i.i.i434 = icmp eq i32 %i.ble, 0
  br i1 %.not.i.i.i434, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i435, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.bla)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i435

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i435: ; preds = %bb.gb, %bb.ga
  %i.blf = load ptr, ptr %i.bla, align 8, !tbaa !207 ; 2 uses
  %i.blg = icmp eq ptr %i.blf, null
  br i1 %i.blg, label %bb.gc, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit.i436

bb.gc:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i.i435
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bla, i64 12 ; 4 uses
  %i.bli = atomicrmw xchg ptr %i.blh, i8 1 seq_cst, align 1
  %i.blj = trunc i8 %i.bli to i1
  br i1 %i.blj, label %.lr.ph.i.i.i.i.i445, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i442

.lr.ph.i.i.i.i.i445:                              ; preds = %bb.gc, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i447
  %.sroa.0.02.i.i.i.i.i446 = phi i32 [ %.sroa.0.1.i.i.i.i.i448, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i447 ], [ 1, %bb.gc ] ; 8 uses
  %i.blk = icmp slt i32 %.sroa.0.02.i.i.i.i.i446, 17
  br i1 %i.blk, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.lr.ph.i.i.i.i.i445
  %i.bll = icmp sgt i32 %.sroa.0.02.i.i.i.i.i446, 0
  br i1 %i.bll, label %.lr.ph.i.i.i.i.i.i.i450.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i449

.lr.ph.i.i.i.i.i.i.i450.preheader:                ; preds = %bb.gd
  %xtraiter2661 = and i32 %.sroa.0.02.i.i.i.i.i446, 7 ; 2 uses
end_hunk_3
