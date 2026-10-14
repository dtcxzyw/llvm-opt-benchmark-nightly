Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_distances?download=true
inline.NumInlined: 2391
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6colvar10distance_z10calc_valueEv:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !98
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.h = load i8, ptr %i.g, align 8, !tbaa !121, !range !95, !noundef !96
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 417
  %i.m = load i8, ptr %i.l, align 1, !tbaa !94, !range !95, !noundef !96
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load double, ptr %i.o, align 16, !tbaa !101, !noalias !272
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load double, ptr %i.q, align 16, !tbaa !101, !noalias !272
  %i.s = fsub double %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.u = load <2 x double>, ptr %1, align 16, !tbaa !97, !noalias !272
  %i.v = load <2 x double>, ptr %2, align 16, !tbaa !97, !noalias !272
  %i.w = fsub <2 x double> %i.u, %i.v
  store <2 x double> %i.w, ptr %i.t, align 8, !tbaa !97
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store double %i.s, ptr %.sroa.511.0..sroa_idx, align 8, !tbaa !97
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ab = load <2 x double>, ptr %2, align 16, !tbaa !97, !noalias !273 ; 2 uses
  %i.ac = load <2 x double>, ptr %4, align 16, !tbaa !97, !noalias !273 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load double, ptr %i.ad, align 16, !tbaa !101, !noalias !273 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load double, ptr %i.af, align 16, !tbaa !101, !noalias !273 ; 2 uses
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = fadd <2 x double> %i.ab, %i.ac
  %i.aj = fmul <2 x double> %i.ai, splat (double 5.000000e-01) ; 2 uses
  %i.ak = fmul double %i.ah, 5.000000e-01         ; 2 uses
  store <2 x double> %i.aj, ptr %5, align 16, !tbaa !97, !alias.scope !274
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ak, ptr %i.al, align 16, !tbaa !101, !alias.scope !274
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !92
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 417
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !94, !range !95, !noundef !96
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load double, ptr %i.ar, align 16, !tbaa !101, !noalias !275
  %i.at = fsub double %i.as, %i.ak
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.av = load <2 x double>, ptr %1, align 16, !tbaa !97, !noalias !275
  %i.aw = fsub <2 x double> %i.av, %i.aj
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !97
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store double %i.at, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !97
  %i.ax = fsub <2 x double> %i.ac, %i.ab
  %i.ay = fsub double %i.ag, %i.ae
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bb = load <2 x double>, ptr %i.ba, align 8, !tbaa !97
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %.pre15 = load double, ptr %.phi.trans.insert14, align 8, !tbaa !101
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bc = phi double [ %.pre15, %bb.g ], [ %i.ay, %bb.f ] ; 3 uses
  %i.bd = phi <2 x double> [ %i.bb, %bb.g ], [ %i.ax, %bb.f ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %foldExtExtBinop = fmul <2 x double> %i.bd, %i.bd
  %i.bf = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.bg = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  %i.bh = call double @llvm.fmuladd.f64(double %i.bg, double %i.bg, double %i.bf)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.bj = call noundef double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %i.bh) ; 2 uses
  %sqrt.i = call double @llvm.sqrt.f64(double %i.bj) ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store double %sqrt.i, ptr %i.bk, align 8, !tbaa !122
  %i.bl = fcmp ogt double %i.bj, 0.000000e+00     ; 2 uses
  %i.bm = fdiv double %i.bc, %sqrt.i
  %.sink.i = select i1 %i.bl, double %i.bm, double 0.000000e+00
  %i.bn = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x double> %i.bd, %i.bo
  %i.bq = insertelement <2 x i1> poison, i1 %i.bl, i64 0
  %i.br = shufflevector <2 x i1> %i.bq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bs = select <2 x i1> %i.br, <2 x double> %i.bp, <2 x double> <double 1.000000e+00, double 0.000000e+00>
  store <2 x double> %i.bs, ptr %i.be, align 8, !tbaa !97
  store double %.sink.i, ptr %i.bi, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !99
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !99
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.by = load double, ptr %i.bx, align 8, !tbaa !102
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !102
  %i.cb = fmul double %i.by, %i.ca
  %i.cc = call double @llvm.fmuladd.f64(double %i.bv, double %i.bw, double %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !101
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !101
  %i.ch = call noundef double @llvm.fmuladd.f64(double %i.ce, double %i.cg, double %i.cc)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.ch, ptr %i.cj, align 8, !tbaa !100
  %i.ck = load ptr, ptr %0, align 8, !tbaa !91
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 192
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar10distance_z14calc_gradientsEv(ptr noundef nonnull align 8 dereferenceable(1689) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 3 uses
  tail call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.e = load i8, ptr %i.d, align 8, !tbaa !121, !range !95, !noundef !96
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.j = load double, ptr %i.i, align 8, !tbaa !101, !noalias !286
  %i.k = fneg double %i.j
  %i.l = load <2 x double>, ptr %i.c, align 8, !tbaa !97, !noalias !286
  %i.m = fneg <2 x double> %i.l
  store <2 x double> %i.m, ptr %1, align 16, !tbaa !97, !alias.scope !286
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.k, ptr %i.n, align 16, !tbaa !101, !alias.scope !286
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.q = load double, ptr %i.p, align 8, !tbaa !100 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.s = load double, ptr %i.r, align 8, !tbaa !101, !noalias !287 ; 2 uses
  %i.t = fmul double %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.v = load double, ptr %i.u, align 8, !tbaa !101, !noalias !288
  %i.w = fsub double %i.v, %i.t                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.x = fneg double %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %4 = load <2 x double>, ptr %i.y, align 8
  %i.z = fmul double %i.s, 5.000000e-01
  %i.aa = load <2 x double>, ptr %i.c, align 8, !tbaa !97, !noalias !287 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.ac, %i.aa
  %i.ae = load <2 x double>, ptr %i.o, align 8, !tbaa !97, !noalias !288
  %i.af = fsub <2 x double> %i.ae, %i.ad          ; 2 uses
  %i.ag = fneg <2 x double> %i.af
  %i.ah = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ai = fdiv <2 x double> %i.ag, %i.ah
  %i.aj = fmul <2 x double> %i.aa, splat (double 5.000000e-01) ; 2 uses
  %i.ak = fsub <2 x double> %i.ai, %i.aj
  store <2 x double> %i.ak, ptr %2, align 16, !tbaa !97, !alias.scope !289
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.am = insertelement <2 x double> poison, double %i.x, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.w, i64 1
  %i.ao = fdiv <2 x double> %i.an, %i.ah
  %i.ap = insertelement <2 x double> poison, double %i.z, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fsub <2 x double> %i.ao, %i.aq          ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  store double %i.as, ptr %i.al, align 16, !tbaa !101, !alias.scope !289
  %i.at = fdiv <2 x double> %i.af, %i.ah
  %i.au = fsub <2 x double> %i.at, %i.aj
  store <2 x double> %i.au, ptr %3, align 16, !tbaa !97, !alias.scope !290
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = extractelement <2 x double> %i.ar, i64 1
  store double %i.aw, ptr %i.av, align 16, !tbaa !101, !alias.scope !290
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !114
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !115
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar10distance_z19calc_force_invgradsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1689) initializes((936, 944)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %3 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.d = load i8, ptr %i.c, align 8, !tbaa !121, !range !95, !noundef !96
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 353
  %i.i = load i8, ptr %i.h, align 1, !tbaa !94, !range !95, !noundef !96
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !113
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1712) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !114
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1712) %i.n)
  %i.o = load <2 x double>, ptr %1, align 16, !tbaa !97, !noalias !293
  %i.p = load <2 x double>, ptr %2, align 16, !tbaa !97, !noalias !293
  %i.q = fsub <2 x double> %i.o, %i.p             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load double, ptr %i.r, align 16, !tbaa !101, !noalias !293
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load double, ptr %i.t, align 16, !tbaa !101, !noalias !293
  %i.v = fsub double %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.x = load double, ptr %i.w, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.z = load double, ptr %i.y, align 8, !tbaa !102
  %i.aa = extractelement <2 x double> %i.q, i64 1
  %i.ab = fmul double %i.aa, %i.z
  %i.ac = extractelement <2 x double> %i.q, i64 0
  %i.ad = call double @llvm.fmuladd.f64(double %i.ac, double %i.x, double %i.ab)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.af = load double, ptr %i.ae, align 8, !tbaa !101
  %i.ag = call noundef double @llvm.fmuladd.f64(double %i.v, double %i.af, double %i.ad)
  %i.ah = fmul double %i.ag, 5.000000e-01
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 936
  store double %i.ah, ptr %i.ai, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !113
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1712) %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.al = load double, ptr %3, align 8, !tbaa !99
  %i.am = load double, ptr %i.ak, align 8, !tbaa !99
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !102
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !102
  %i.ar = fmul double %i.ao, %i.aq
  %i.as = call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !101
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.aw = load double, ptr %i.av, align 8, !tbaa !101
  %i.ax = call noundef double @llvm.fmuladd.f64(double %i.au, double %i.aw, double %i.as)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 936
  store double %i.ax, ptr %i.ay, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6colvar10distance_z24calc_Jacobian_derivativeEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1689) initializes((1104, 1112)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !104
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar10distance_zD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1689) dereferenceable(1689) %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar10distance_zD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1689) dereferenceable(1689) %i.a) #24
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1689) %i.a, i64 noundef 1696) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar11distance_xyD0Ev(ptr noundef nonnull align 8 dereferenceable(1768) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1768) dereferenceable(1768) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1768) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar11distance_xy10calc_valueEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1768) initializes((600, 608), (1664, 1688), (1696, 1720)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 4 uses
  %2 = alloca %"class.colvarmodule::rvector", align 8 ; 4 uses
  %3 = alloca %"class.colvarmodule::rvector", align 8 ; 4 uses
  %4 = alloca %"class.colvarmodule::rvector", align 8 ; 4 uses
  %5 = alloca %"class.colvarmodule::rvector", align 8 ; 4 uses
  %6 = alloca %"class.colvarmodule::rvector", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 417
  %i.d = load i8, ptr %i.c, align 1, !tbaa !94, !range !95, !noundef !96
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1600
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1616
  %.sroa.521.0.copyload = load double, ptr %.sroa.521.0..sroa_idx, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1600
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1616
  %.sroa.518.0.copyload = load double, ptr %.sroa.518.0..sroa_idx, align 8, !tbaa !97
  %i.l = fsub double %.sroa.521.0.copyload, %.sroa.518.0.copyload
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.n = load <2 x double>, ptr %i.h, align 8, !tbaa !97
  %i.o = load <2 x double>, ptr %i.k, align 8, !tbaa !97
  %i.p = fsub <2 x double> %i.n, %i.o
  store <2 x double> %i.p, ptr %i.m, align 8, !tbaa !97
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store double %i.l, ptr %.sroa.524.0..sroa_idx, align 8, !tbaa !97
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1600
end_hunk_0
begin_hunk_1_@_ZN6colvar9inertia_z4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !119
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.r

bb.q:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.a
  %.111 = phi i32 [ %.010, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %.010, %bb.f ], [ %i.b, %bb.a ]
  ret i32 %.111

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6colvar9inertia_z10calc_valueEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1640) initializes((600, 608)) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1144
  %i.e = load i64, ptr %i.d, align 8, !tbaa !127  ; 9 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !128  ; 3 uses
  %.idx.i = shl i64 %i.e, 4                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.i = load double, ptr %i.h, align 8, !tbaa !99 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.k = load double, ptr %i.j, align 8, !tbaa !102 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.m = load double, ptr %i.l, align 8, !tbaa !101 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.n = icmp eq i64 %i.e, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, -2
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.07.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.07.epil.init ; 3 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !97
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.e
  %i.r = load double, ptr %i.q, align 8, !tbaa !97
  %i.s = getelementptr i8, ptr %i.o, i64 %.idx.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !97
  %i.u = fmul double %i.r, %i.k
  %i.v = tail call double @llvm.fmuladd.f64(double %i.p, double %i.i, double %i.u)
  %i.w = tail call noundef double @llvm.fmuladd.f64(double %i.t, double %i.m, double %i.v) ; 2 uses
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %.epil.init)
  store double %i.x, ptr %i.a, align 8, !tbaa !100
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.07 = phi i64 [ 0, %.lr.ph.new ], [ %i.au, %bb.b ] ; 3 uses
  %i.y = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.at, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.07 ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !97
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.e
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !97
  %i.ad = getelementptr i8, ptr %i.z, i64 %.idx.i
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !97
  %i.af = fmul double %i.ac, %i.k
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.i, double %i.af)
  %i.ah = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.m, double %i.ag) ; 2 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.y) ; 2 uses
  store double %i.ai, ptr %i.a, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.07
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !97
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.e
  %i.an = load double, ptr %i.am, align 8, !tbaa !97
  %i.ao = getelementptr i8, ptr %i.ak, i64 %.idx.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !97
  %i.aq = fmul double %i.an, %i.k
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.al, double %i.i, double %i.aq)
  %i.as = tail call noundef double @llvm.fmuladd.f64(double %i.ap, double %i.m, double %i.ar) ; 2 uses
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.as, double %i.ai) ; 3 uses
  store double %i.at, ptr %i.a, align 8, !tbaa !100
  %i.au = add nuw i64 %.07, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !389
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6colvar9inertia_z14calc_gradientsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1640) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  %i.d = load i64, ptr %i.c, align 8, !tbaa !127  ; 12 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128  ; 8 uses
  %.idx.i = shl i64 %i.d, 4                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128  ; 7 uses
  %min.iters.check = icmp ult i64 %i.d, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl i64 %i.d, 3                          ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 6 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %.idx.i  ; 9 uses
  %i.o = mul i64 %i.d, 24                         ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 %i.o     ; 5 uses
  %i.q = getelementptr i8, ptr %i.f, i64 %.idx.i  ; 6 uses
  %i.r = getelementptr i8, ptr %i.f, i64 %i.o     ; 3 uses
  %i.s = getelementptr i8, ptr %i.f, i64 %i.l     ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 3 uses
  %i.u = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %i.v = shufflevector <4 x ptr> %i.u, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.w = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %i.x = insertelement <4 x ptr> %i.w, ptr %i.r, i64 1
  %i.y = insertelement <4 x ptr> %i.x, ptr %i.q, i64 2
  %i.z = insertelement <4 x ptr> %i.y, ptr %i.s, i64 3
  %i.aa = icmp ult <4 x ptr> %i.v, %i.z
  %i.ab = insertelement <4 x ptr> poison, ptr %i.n, i64 0
  %i.ac = insertelement <4 x ptr> %i.ab, ptr %i.q, i64 1
  %i.ad = insertelement <4 x ptr> %i.ac, ptr %i.s, i64 2
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %i.f, i64 3
  %i.af = insertelement <4 x ptr> poison, ptr %i.m, i64 0
  %i.ag = shufflevector <4 x ptr> %i.af, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ah = icmp ult <4 x ptr> %i.ae, %i.ag
  %i.ai = and <4 x i1> %i.aa, %i.ah
  %bound084 = icmp ult ptr %i.k, %i.t
  %bound185 = icmp ult ptr %i.g, %i.m
  %found.conflict86 = and i1 %bound084, %bound185
  %bound092 = icmp ult ptr %i.m, %i.r
  %bound193 = icmp ult ptr %i.q, %i.n
  %found.conflict94 = and i1 %bound092, %bound193
  %bound096 = icmp ult ptr %i.m, %i.q
  %bound197 = icmp ult ptr %i.s, %i.n
  %found.conflict98 = and i1 %bound096, %bound197
  %bound0100 = icmp ult ptr %i.m, %i.s
  %bound1101 = icmp ult ptr %i.f, %i.n
  %found.conflict102 = and i1 %bound0100, %bound1101
  %bound0104 = icmp ult ptr %i.m, %i.t
  %bound1105 = icmp ult ptr %i.g, %i.n
  %found.conflict106 = and i1 %bound0104, %bound1105
  %bound0108 = icmp ult ptr %i.n, %i.r
  %bound1109 = icmp ult ptr %i.q, %i.p
  %found.conflict110 = and i1 %bound0108, %bound1109
  %bound0112 = icmp ult ptr %i.n, %i.q
  %bound1113 = icmp ult ptr %i.s, %i.p
  %found.conflict114 = and i1 %bound0112, %bound1113
  %bound0116 = icmp ult ptr %i.n, %i.s
  %bound1117 = icmp ult ptr %i.f, %i.p
  %found.conflict118 = and i1 %bound0116, %bound1117
  %bound0120 = icmp ult ptr %i.n, %i.t
  %bound1121 = icmp ult ptr %i.g, %i.p
  %found.conflict122 = and i1 %bound0120, %bound1121
  %i.aj = bitcast <4 x i1> %i.ai to i4
  %i.ak = icmp ne i4 %i.aj, 0
  %op.rdx = or i1 %i.ak, %found.conflict86
  %op.rdx130 = or i1 %found.conflict94, %found.conflict98
  %op.rdx131 = or i1 %found.conflict102, %found.conflict106
  %op.rdx132 = or i1 %found.conflict110, %found.conflict114
  %op.rdx133 = or i1 %found.conflict118, %found.conflict122
  %op.rdx134 = or i1 %op.rdx, %op.rdx130
  %op.rdx135 = or i1 %op.rdx131, %op.rdx132
  %op.rdx136 = or i1 %op.rdx134, %op.rdx135
  %op.rdx137 = or i1 %op.rdx136, %op.rdx133
  br i1 %op.rdx137, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -2                       ; 3 uses
  %1 = load <2 x double>, ptr %i.g, align 8
  %broadcast.splat127 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %2 = load <2 x double>, ptr %i.h, align 8
  %broadcast.splat = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = load double, ptr %i.i, align 8, !tbaa !101, !alias.scope !400
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %i.al, i64 0
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 3 uses
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !97, !alias.scope !401
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.d
  %wide.load124 = load <2 x double>, ptr %i.an, align 8, !tbaa !97, !alias.scope !402
  %i.ao = getelementptr i8, ptr %i.am, i64 %.idx.i
  %wide.load125 = load <2 x double>, ptr %i.ao, align 8, !tbaa !97, !alias.scope !403
  %i.ap = fmul <2 x double> %wide.load124, %broadcast.splat
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat127, <2 x double> %i.ap)
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load125, <2 x double> %broadcast.splat129, <2 x double> %i.aq)
  %i.as = fmul <2 x double> %i.ar, splat (double 2.000000e+00) ; 3 uses
  %i.at = fmul <2 x double> %broadcast.splat127, %i.as
  %i.au = fmul <2 x double> %broadcast.splat, %i.as
  %i.av = fmul <2 x double> %broadcast.splat129, %i.as
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 3 uses
  store <2 x double> %i.at, ptr %i.aw, align 8, !tbaa !97, !alias.scope !404, !noalias !405
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.d
  store <2 x double> %i.au, ptr %i.ax, align 8, !tbaa !97, !alias.scope !406, !noalias !407
  %i.ay = getelementptr i8, ptr %i.aw, i64 %.idx.i
  store <2 x double> %i.av, ptr %i.ay, align 8, !tbaa !97, !alias.scope !408, !noalias !409
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.013.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.013 = phi i64 [ %i.bt, %scalar.ph ], [ %.013.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.013 ; 3 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !97
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %i.d
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !97
  %i.be = getelementptr i8, ptr %i.ba, i64 %.idx.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !97
  %i.bg = load double, ptr %i.g, align 8, !tbaa !99 ; 2 uses
  %i.bh = load double, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %i.bi = fmul double %i.bd, %i.bh
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bg, double %i.bi)
  %i.bk = load double, ptr %i.i, align 8, !tbaa !101 ; 2 uses
  %i.bl = tail call noundef double @llvm.fmuladd.f64(double %i.bf, double %i.bk, double %i.bj)
  %i.bm = fmul double %i.bl, 2.000000e+00         ; 3 uses
  %i.bn = fmul double %i.bg, %i.bm
  %i.bo = fmul double %i.bh, %i.bm
  %i.bp = fmul double %i.bk, %i.bm
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.013 ; 3 uses
  store double %i.bn, ptr %i.bq, align 8, !tbaa !97
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.d
  store double %i.bo, ptr %i.br, align 8, !tbaa !97
  %i.bs = getelementptr i8, ptr %i.bq, i64 %.idx.i
  store double %i.bp, ptr %i.bs, align 8, !tbaa !97
  %i.bt = add nuw i64 %.013, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !399
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar9inertia_zD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1640) dereferenceable(1640) %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar9inertia_zD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1640) dereferenceable(1640) %i.a) #24
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1640) %i.a, i64 noundef 1640) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar11eigenvectorD2Ev(ptr noundef nonnull align 8 dead_on_return(1672) dereferenceable(1672) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 248), ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit2

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit2: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1608) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar11eigenvectorD0Ev(ptr noundef nonnull align 8 dereferenceable(1672) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 248), ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25, !inline_history !156
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN6colvar11eigenvectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25, !inline_history !156
  br label %_ZN6colvar11eigenvectorD2Ev.exit

_ZN6colvar11eigenvectorD2Ev.exit:                 ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit.i, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1672) %0) #24, !inline_history !156
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1672) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6colvar11eigenvector4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1672) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.r = alloca double, align 8                   ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.s = alloca double, align 8                   ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE14_M_fill_assignEmRKS1_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %i.i, label %bb.c, label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #26
  unreachable

_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i: ; preds = %bb.b
  %i.j = mul nuw nsw i64 %1, 24
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27 ; 4 uses
  %xtraiter37 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i ]
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.l = add nsw i64 %.068.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !724

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %1, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEC2EmRKS1_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.r = add nsw i64 %.068.i.i.i.i.i.i, -4        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEC2EmRKS1_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !725

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEC2EmRKS1_RKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %1
  %i.u = load ptr, ptr %0, align 8, !tbaa !146    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !147
  store ptr %i.k, ptr %0, align 8, !tbaa !146
  store ptr %.lcssa, ptr %i.v, align 8, !tbaa !148
  store ptr %i.t, ptr %i.a, align 8, !tbaa !147
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEC2EmRKS1_RKS2_.exit
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #25
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !148 ; 5 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = icmp ugt i64 %1, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.ab
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !726

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre21 = load ptr, ptr %i.aa, align 8, !tbaa !148 ; 2 uses
  %.pre22 = load ptr, ptr %0, align 8, !tbaa !146
  %.pre23 = ptrtoint ptr %.pre21 to i64
  %.pre24 = ptrtoint ptr %.pre22 to i64
  %.pre26 = sub i64 %.pre23, %.pre24
  %i.ah = sdiv exact i64 %.pre26, -24
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, %bb.f
  %.pre-phi27 = phi i64 [ %i.ah, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.ai = phi ptr [ %.pre21, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ %i.ab, %bb.f ] ; 3 uses
  %i.aj = add i64 %.pre-phi27, %1                 ; 4 uses
  %.not7.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN12colvarmodule7rvectorEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit
  %i.ak = add i64 %.pre-phi27, %1
  %i.al = add i64 %i.ak, -1
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i12.prol ], [ %i.ai, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i12.prol ], [ %i.aj, %.lr.ph.i.i.i.i12.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %.lr.ph.i.i.i.i12.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.am = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !727

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %.lr.ph.i.i.i.i12.preheader
  %.lcssa36.unr = phi ptr [ poison, %.lr.ph.i.i.i.i12.preheader ], [ %i.an, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.ai, %.lr.ph.i.i.i.i12.preheader ], [ %i.an, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i12.preheader ], [ %i.am, %.lr.ph.i.i.i.i12.prol ]
  %i.ao = icmp ult i64 %i.al, 3
  br i1 %i.ao, label %_ZSt24__uninitialized_fill_n_aIPN12colvarmodule7rvectorEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.as = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPN12colvarmodule7rvectorEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !725

_ZSt24__uninitialized_fill_n_aIPN12colvarmodule7rvectorEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ai, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN12colvarmodule7rvectorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ], [ %.lcssa36.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.at, %.lr.ph.i.i.i.i12 ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.aa, align 8, !tbaa !148
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = icmp eq i64 %1, 0
  br i1 %i.au, label %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = mul nuw nsw i64 %1, 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.lr.ph.i.i.i.i14, %bb.h
  %.06.i.i.i.i15 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i14 ], [ %i.c, %bb.h ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 24 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.aw, %i.av
  br i1 %.not.i.i.i.i16, label %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i14, !llvm.loop !726

_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i14
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !148
  br label %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit

_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit, %bb.g
  %i.ax = phi ptr [ %i.ab, %bb.g ], [ %.pre, %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit ]
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.av, %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.ax, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, label %_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.aa, align 8, !tbaa !148
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i, %_ZSt6fill_nIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEC2EmRKS1_RKS2_.exit, %_ZSt24__uninitialized_fill_n_aIPN12colvarmodule7rvectorEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK19rotation_derivative20calc_derivative_implILb0ELb1ELb0EEEvRA4_A4_KN12colvarmodule7rvectorEPS2_PSt5arrayIS2_Lm4EEPS8_IS9_Lm4EE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load <2 x double>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %5 = load <2 x double>, ptr %i.n, align 8
  %i.o = shufflevector <2 x double> %5, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.at = load <2 x double>, ptr %i.a, align 8, !tbaa !97 ; 2 uses
  %i.au = load <6 x double>, ptr %1, align 8, !tbaa !97, !noalias !96 ; 4 uses
  %i.av = load double, ptr %i.d, align 8, !tbaa !101, !noalias !760 ; 2 uses
  %i.aw = load double, ptr %i.c, align 8, !tbaa !99, !noalias !760 ; 2 uses
  %i.ax = load double, ptr %i.b, align 8, !tbaa !102, !noalias !761 ; 2 uses
  %i.ay = load <3 x double>, ptr %i.f, align 8, !tbaa !97, !noalias !762 ; 2 uses
  %i.az = shufflevector <3 x double> %i.ay, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %6 = load <2 x double>, ptr %i.g, align 8
  %i.ba = load <2 x double>, ptr %i.e, align 8, !tbaa !97
  %i.bb = load <3 x double>, ptr %i.h, align 8, !tbaa !97, !noalias !763 ; 2 uses
  %i.bc = shufflevector <3 x double> %i.bb, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %7 = load <2 x double>, ptr %i.i, align 8
  %i.bd = load <3 x double>, ptr %i.l, align 8, !tbaa !97, !noalias !764 ; 2 uses
  %i.be = shufflevector <3 x double> %i.bd, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %8 = load <2 x double>, ptr %i.m, align 8
  %i.bf = load <4 x double>, ptr %i.aq, align 8, !tbaa !97 ; 7 uses
  %i.bg = load double, ptr %i.ar, align 8, !tbaa !97
  %i.bh = shufflevector <6 x double> %i.au, <6 x double> poison, <4 x i32> <i32 0, i32 4, i32 2, i32 0>
  %i.bi = shufflevector <4 x double> %i.bf, <4 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %i.bj = shufflevector <2 x double> %i.at, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.bk = shufflevector <3 x double> %i.bj, <3 x double> %i.bi, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %i.bl = fmul <4 x double> %i.bh, %i.bk
  %i.bm = shufflevector <6 x double> %i.au, <6 x double> poison, <4 x i32> <i32 3, i32 1, i32 5, i32 3>
  %i.bn = shufflevector <2 x double> %i.at, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> %i.bf, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %i.bp = fmul <4 x double> %i.bm, %i.bo
  %i.bq = fadd <4 x double> %i.bl, %i.bp
  %i.br = shufflevector <2 x double> %i.ba, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bs = shufflevector <4 x double> %i.br, <4 x double> %i.bf, <4 x i32> <i32 0, i32 0, i32 0, i32 6>
  %i.bt = fmul <4 x double> %i.az, %i.bs
  %i.bu = fadd <4 x double> %i.bq, %i.bt
  %i.bv = shufflevector <4 x double> %i.br, <4 x double> %i.bf, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.bw = fmul <4 x double> %i.bc, %i.bv
  %i.bx = fadd <4 x double> %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bz = load double, ptr %i.by, align 8, !tbaa !97 ; 2 uses
  %i.ca = load <3 x double>, ptr %i.p, align 8, !tbaa !97, !noalias !765 ; 3 uses
  %i.cb = shufflevector <3 x double> %i.ca, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cc = load double, ptr %i.q, align 8, !tbaa !102, !noalias !765 ; 3 uses
  %i.cd = insertelement <4 x double> %i.o, double %i.bz, i64 1
  %i.ce = shufflevector <4 x double> %i.cd, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cf = fmul <4 x double> %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cq = load <3 x double>, ptr %i.s, align 8, !tbaa !97, !noalias !766 ; 2 uses
  %i.cr = shufflevector <3 x double> %i.cq, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %9 = load <2 x double>, ptr %i.t, align 8
  %i.cs = load <2 x double>, ptr %i.r, align 8, !tbaa !97 ; 2 uses
  %i.ct = load <3 x double>, ptr %i.u, align 8, !tbaa !97, !noalias !767 ; 2 uses
  %i.cu = shufflevector <3 x double> %i.ct, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %10 = load <2 x double>, ptr %i.v, align 8
  %i.cv = load <3 x double>, ptr %i.x, align 8, !tbaa !97, !noalias !768 ; 2 uses
  %i.cw = shufflevector <3 x double> %i.cv, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %11 = load <2 x double>, ptr %i.y, align 8
  %i.cx = load <2 x double>, ptr %i.w, align 8, !tbaa !97 ; 2 uses
  %i.cy = load <3 x double>, ptr %i.z, align 8, !tbaa !97, !noalias !769 ; 2 uses
  %i.cz = shufflevector <3 x double> %i.cy, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %12 = load <2 x double>, ptr %i.aa, align 8
  %i.da = load <3 x double>, ptr %i.ac, align 8, !tbaa !97, !noalias !770 ; 2 uses
  %i.db = shufflevector <3 x double> %i.da, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %13 = load <2 x double>, ptr %i.ad, align 8
  %i.dc = load <2 x double>, ptr %i.ab, align 8, !tbaa !97 ; 2 uses
  %i.dd = load <3 x double>, ptr %i.ae, align 8, !tbaa !97, !noalias !771 ; 2 uses
  %i.de = shufflevector <3 x double> %i.dd, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %14 = load <2 x double>, ptr %i.af, align 8
  %i.df = load <3 x double>, ptr %i.ah, align 8, !tbaa !97, !noalias !772 ; 2 uses
  %i.dg = shufflevector <3 x double> %i.df, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %15 = load <2 x double>, ptr %i.ai, align 8
  %i.dh = load <2 x double>, ptr %i.ag, align 8, !tbaa !97 ; 2 uses
  %i.di = load <3 x double>, ptr %i.aj, align 8, !tbaa !97, !noalias !773 ; 2 uses
  %i.dj = shufflevector <3 x double> %i.di, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %16 = load <2 x double>, ptr %i.ak, align 8
  %i.dk = load <3 x double>, ptr %i.am, align 8, !tbaa !97, !noalias !774 ; 2 uses
  %i.dl = shufflevector <3 x double> %i.dk, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %17 = load <2 x double>, ptr %i.an, align 8
  %i.dm = load <2 x double>, ptr %i.al, align 8, !tbaa !97 ; 2 uses
  %i.dn = load <3 x double>, ptr %i.ao, align 8, !tbaa !97, !noalias !775 ; 2 uses
  %i.do = shufflevector <3 x double> %i.dn, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %18 = load <2 x double>, ptr %i.ap, align 8
  %i.dp = load <2 x double>, ptr %i.cg, align 8, !tbaa !97 ; 3 uses
  %i.dq = load double, ptr %i.ch, align 8, !tbaa !97
  %i.dr = shufflevector <2 x double> %i.cs, <2 x double> %i.dp, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.ds = fmul <4 x double> %i.cr, %i.dr
  %i.dt = shufflevector <2 x double> %i.cs, <2 x double> %i.dp, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.du = fmul <4 x double> %i.cu, %i.dt
  %i.dv = load <2 x double>, ptr %i.ci, align 8, !tbaa !97 ; 3 uses
  %i.dw = load double, ptr %i.cj, align 8, !tbaa !97
  %i.dx = shufflevector <2 x double> %i.cx, <2 x double> %i.dv, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.dy = fmul <4 x double> %i.cw, %i.dx
  %i.dz = shufflevector <2 x double> %i.cx, <2 x double> %i.dv, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ea = fmul <4 x double> %i.cz, %i.dz
  %i.eb = load <2 x double>, ptr %i.ck, align 8, !tbaa !97 ; 3 uses
  %i.ec = load double, ptr %i.cl, align 8, !tbaa !97
  %i.ed = shufflevector <2 x double> %i.dc, <2 x double> %i.eb, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.ee = fmul <4 x double> %i.db, %i.ed
  %i.ef = shufflevector <2 x double> %i.dc, <2 x double> %i.eb, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.eg = fmul <4 x double> %i.de, %i.ef
  %i.eh = load <2 x double>, ptr %i.cm, align 8, !tbaa !97 ; 3 uses
  %i.ei = load double, ptr %i.cn, align 8, !tbaa !97
  %i.ej = shufflevector <2 x double> %i.dh, <2 x double> %i.eh, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.ek = fmul <4 x double> %i.dg, %i.ej
  %i.el = shufflevector <2 x double> %i.dh, <2 x double> %i.eh, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.em = fmul <4 x double> %i.dj, %i.el
  %i.en = load <2 x double>, ptr %i.co, align 8, !tbaa !97 ; 3 uses
  %i.eo = load double, ptr %i.cp, align 8, !tbaa !97
  %i.ep = shufflevector <2 x double> %i.dm, <2 x double> %i.en, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.eq = fmul <4 x double> %i.dl, %i.ep
  %i.er = shufflevector <2 x double> %i.dm, <2 x double> %i.en, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.es = fmul <4 x double> %i.do, %i.er
  %.sroa.4342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ew = load <2 x double>, ptr %i.as, align 8, !tbaa !97 ; 3 uses
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <2 x double> %i.k, <2 x double> %i.ew, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ez = fmul <4 x double> %i.be, %i.ey
  %i.fa = fadd <4 x double> %i.bx, %i.ez
  %i.fb = fadd <4 x double> %i.fa, %i.cf
  %i.fc = fadd <4 x double> %i.fb, %i.ds
  %i.fd = fadd <4 x double> %i.fc, %i.du
  %i.fe = fadd <4 x double> %i.fd, %i.dy
  %i.ff = fadd <4 x double> %i.fe, %i.ea
  %i.fg = fadd <4 x double> %i.ff, %i.ee
  %i.fh = fadd <4 x double> %i.fg, %i.eg
  %i.fi = fadd <4 x double> %i.fh, %i.ek
  %i.fj = fadd <4 x double> %i.fi, %i.em
  %i.fk = fadd <4 x double> %i.fj, %i.eq
  %i.fl = fadd <4 x double> %i.fk, %i.es
  store <4 x double> %i.fl, ptr %3, align 8, !tbaa !97
  %i.fm = load <4 x double>, ptr %i.et, align 8, !tbaa !97 ; 7 uses
  %i.fn = load double, ptr %i.eu, align 8, !tbaa !97
  %i.fo = insertelement <4 x double> poison, double %i.ax, i64 0
  %i.fp = insertelement <4 x double> %i.fo, double %i.aw, i64 1
  %i.fq = insertelement <4 x double> %i.fp, double %i.av, i64 2
  %i.fr = shufflevector <4 x double> %i.fq, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fs = shufflevector <4 x double> %i.bf, <4 x double> %i.fm, <4 x i32> <i32 0, i32 6, i32 2, i32 4> ; 2 uses
  %i.ft = shufflevector <4 x double> %i.fs, <4 x double> %i.fm, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.fu = insertelement <4 x double> %i.ft, double %i.bg, i64 2 ; 2 uses
  %i.fv = fmul <4 x double> %i.fr, %i.fu
  %i.fw = shufflevector <6 x double> %i.au, <6 x double> poison, <4 x i32> <i32 4, i32 0, i32 2, i32 4>
  %i.fx = shufflevector <4 x double> %i.bf, <4 x double> %i.fu, <4 x i32> <i32 6, i32 7, i32 0, i32 poison>
  %i.fy = shufflevector <4 x double> %i.fx, <4 x double> %i.fm, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fz = fmul <4 x double> %i.fw, %i.fy
  %i.ga = fadd <4 x double> %i.fv, %i.fz
  %i.gb = shufflevector <2 x double> %6, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.gc = shufflevector <4 x double> %i.gb, <4 x double> %i.fs, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gd = shufflevector <4 x double> %i.bf, <4 x double> %i.az, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x double> %i.gd, <4 x double> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.gf = shufflevector <4 x double> %i.ge, <4 x double> %i.fm, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.gg = fmul <4 x double> %i.gc, %i.gf
  %i.gh = fadd <4 x double> %i.ga, %i.gg
  %i.gi = shufflevector <3 x double> %i.bb, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.gj = shufflevector <2 x double> %7, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.gk = shufflevector <4 x double> %i.gj, <4 x double> %i.gi, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gl = shufflevector <4 x double> %i.ex, <4 x double> %i.fm, <4 x i32> <i32 0, i32 7, i32 0, i32 7>
  %i.gm = fmul <4 x double> %i.gk, %i.gl
  %i.gn = fadd <4 x double> %i.gh, %i.gm
  %i.go = shufflevector <3 x double> %i.bd, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.gp = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.gq = shufflevector <4 x double> %i.gp, <4 x double> %i.go, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !97 ; 2 uses
  %i.gt = shufflevector <3 x double> %i.ca, <3 x double> poison, <2 x i32> <i32 2, i32 0> ; 3 uses
  %i.gu = insertelement <2 x double> %i.gt, double %i.cc, i64 0
  %i.gv = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.gs, i64 1
  %i.gx = insertelement <2 x double> %i.gt, double %i.cc, i64 1
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.hg = shufflevector <2 x double> %i.gu, <2 x double> %i.gx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hh = shufflevector <2 x double> %i.gw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hi = fmul <4 x double> %i.hg, %i.hh
  %i.hj = load <4 x double>, ptr %i.gy, align 8, !tbaa !97 ; 4 uses
  %i.hk = load double, ptr %i.ha, align 8, !tbaa !97
  %i.hl = load double, ptr %i.gz, align 8, !tbaa !97
  %i.hm = shufflevector <3 x double> %i.cq, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.hn = shufflevector <2 x double> %9, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ho = shufflevector <4 x double> %i.hn, <4 x double> %i.hm, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hp = shufflevector <2 x double> %i.dp, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.hq = shufflevector <4 x double> %i.hp, <4 x double> %i.hj, <4 x i32> <i32 0, i32 4, i32 2, i32 4>
  %i.hr = fmul <4 x double> %i.ho, %i.hq
  %i.hs = shufflevector <3 x double> %i.ct, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.ht = shufflevector <2 x double> %10, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.hu = shufflevector <4 x double> %i.ht, <4 x double> %i.hs, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hv = shufflevector <4 x double> %i.hj, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.hw = insertelement <2 x double> %i.hv, double %i.dq, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hy = fmul <4 x double> %i.hu, %i.hx
  %i.hz = shufflevector <3 x double> %i.cv, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.ia = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ib = shufflevector <4 x double> %i.ia, <4 x double> %i.hz, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ic = shufflevector <2 x double> %i.dv, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.id = shufflevector <4 x double> %i.ic, <4 x double> %i.hj, <4 x i32> <i32 0, i32 6, i32 2, i32 6>
  %i.ie = fmul <4 x double> %i.ib, %i.id
  %i.if = shufflevector <3 x double> %i.cy, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.ig = shufflevector <2 x double> %12, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ih = shufflevector <4 x double> %i.ig, <4 x double> %i.if, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ii = shufflevector <4 x double> %i.hj, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ij = insertelement <2 x double> %i.ii, double %i.dw, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.il = fmul <4 x double> %i.ih, %i.ik
  %i.im = load <4 x double>, ptr %i.hb, align 8, !tbaa !97 ; 4 uses
  %i.in = load double, ptr %i.hd, align 8, !tbaa !97
  %i.io = load double, ptr %i.hc, align 8, !tbaa !97
  %i.ip = shufflevector <3 x double> %i.da, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.iq = shufflevector <2 x double> %13, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ir = shufflevector <4 x double> %i.iq, <4 x double> %i.ip, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.is = shufflevector <2 x double> %i.eb, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.it = shufflevector <4 x double> %i.is, <4 x double> %i.im, <4 x i32> <i32 0, i32 4, i32 2, i32 4>
  %i.iu = fmul <4 x double> %i.ir, %i.it
  %i.iv = shufflevector <3 x double> %i.dd, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.iw = shufflevector <2 x double> %14, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ix = shufflevector <4 x double> %i.iw, <4 x double> %i.iv, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.iy = shufflevector <4 x double> %i.im, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.iz = insertelement <2 x double> %i.iy, double %i.ec, i64 0
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jb = fmul <4 x double> %i.ix, %i.ja
  %i.jc = shufflevector <3 x double> %i.df, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.jd = shufflevector <2 x double> %15, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.je = shufflevector <4 x double> %i.jd, <4 x double> %i.jc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.jf = shufflevector <2 x double> %i.eh, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.jg = shufflevector <4 x double> %i.jf, <4 x double> %i.im, <4 x i32> <i32 0, i32 6, i32 2, i32 6>
  %i.jh = fmul <4 x double> %i.je, %i.jg
  %i.ji = shufflevector <3 x double> %i.di, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.jj = shufflevector <2 x double> %16, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.jk = shufflevector <4 x double> %i.jj, <4 x double> %i.ji, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.jl = shufflevector <4 x double> %i.im, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.jm = insertelement <2 x double> %i.jl, double %i.ei, i64 0
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jo = fmul <4 x double> %i.jk, %i.jn
  %i.jp = load <2 x double>, ptr %i.he, align 8, !tbaa !97 ; 3 uses
  %i.jq = load double, ptr %i.hf, align 8, !tbaa !97
  %i.jr = shufflevector <3 x double> %i.dk, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.js = shufflevector <2 x double> %17, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.jt = shufflevector <4 x double> %i.js, <4 x double> %i.jr, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ju = shufflevector <2 x double> %i.en, <2 x double> %i.jp, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.jv = fmul <4 x double> %i.jt, %i.ju
  %i.jw = shufflevector <3 x double> %i.dn, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.jx = shufflevector <2 x double> %18, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.jy = shufflevector <4 x double> %i.jx, <4 x double> %i.jw, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.jz = insertelement <2 x double> %i.jp, double %i.eo, i64 0
  %i.ka = shufflevector <2 x double> %i.jz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.kb = fmul <4 x double> %i.jy, %i.ka
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !97
  %i.kg = load <2 x double>, ptr %i.ev, align 8, !tbaa !97 ; 3 uses
  %i.kh = shufflevector <2 x double> %i.ew, <2 x double> %i.kg, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.ki = fmul <4 x double> %i.gq, %i.kh
  %i.kj = fadd <4 x double> %i.gn, %i.ki
  %i.kk = fadd <4 x double> %i.kj, %i.hi
  %i.kl = fadd <4 x double> %i.kk, %i.hr
  %i.km = fadd <4 x double> %i.kl, %i.hy
  %i.kn = fadd <4 x double> %i.km, %i.ie
  %i.ko = fadd <4 x double> %i.kn, %i.il
  %i.kp = fadd <4 x double> %i.ko, %i.iu
  %i.kq = fadd <4 x double> %i.kp, %i.jb
  %i.kr = fadd <4 x double> %i.kq, %i.jh
  %i.ks = fadd <4 x double> %i.kr, %i.jo
  %i.kt = fadd <4 x double> %i.ks, %i.jv
  %i.ku = fadd <4 x double> %i.kt, %i.kb
  %i.kv = shufflevector <4 x double> %i.ku, <4 x double> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.kv, ptr %.sroa.4342.0..sroa_idx, align 8, !tbaa !97
  %i.kw = load <2 x double>, ptr %i.kc, align 8, !tbaa !97 ; 3 uses
  %i.kx = shufflevector <6 x double> %i.au, <6 x double> poison, <4 x i32> <i32 2, i32 0, i32 4, i32 2>
  %i.ky = shufflevector <2 x double> %i.kw, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison> ; 2 uses
  %i.kz = shufflevector <4 x double> %i.fm, <4 x double> %i.ky, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.la = shufflevector <4 x double> %i.kz, <4 x double> %i.ky, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lb = fmul <4 x double> %i.kx, %i.la
  %i.lc = insertelement <4 x double> poison, double %i.av, i64 0
  %i.ld = insertelement <4 x double> %i.lc, double %i.aw, i64 1
  %i.le = insertelement <4 x double> %i.ld, double %i.ax, i64 2
  %i.lf = shufflevector <4 x double> %i.le, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.lg = shufflevector <2 x double> %i.kw, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.lh = insertelement <3 x double> %i.lg, double %i.fn, i64 0
  %i.li = shufflevector <2 x double> %i.kw, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.lj = shufflevector <3 x double> %i.lh, <3 x double> %i.li, <4 x i32> <i32 0, i32 1, i32 3, i32 1>
  %i.lk = fmul <4 x double> %i.lf, %i.lj
  %i.ll = fadd <4 x double> %i.lb, %i.lk
  %i.lm = load <2 x double>, ptr %i.kd, align 8, !tbaa !97 ; 2 uses
  %i.ln = shufflevector <3 x double> %i.ay, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 2>
  %i.lo = shufflevector <4 x double> %i.ln, <4 x double> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.lp = shufflevector <4 x double> %i.fm, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> %i.lm, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.lr = fmul <4 x double> %i.lo, %i.lq
  %i.ls = fadd <4 x double> %i.ll, %i.lr
  %i.lt = shufflevector <4 x double> %i.gi, <4 x double> %i.gj, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.lu = shufflevector <2 x double> %i.kg, <2 x double> %i.lm, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.lv = fmul <4 x double> %i.lt, %i.lu
  %i.lw = fadd <4 x double> %i.ls, %i.lv
  %i.lx = shufflevector <4 x double> %i.go, <4 x double> %i.gp, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ly = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lz = insertelement <2 x double> %i.ly, double %i.kf, i64 1
  %i.ma = shufflevector <2 x double> %i.lz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.mb = fmul <4 x double> %i.lx, %i.ma
  %i.mc = fadd <4 x double> %i.lw, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.me = load double, ptr %i.md, align 8, !tbaa !97 ; 2 uses
  %i.mf = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.mg = insertelement <2 x double> %i.mf, double %i.me, i64 1
  %i.mh = shufflevector <3 x double> %i.ca, <3 x double> poison, <2 x i32> <i32 poison, i32 2>
  %i.mi = insertelement <2 x double> %i.mh, double %i.cc, i64 0
  %i.mj = insertelement <2 x double> poison, double %i.me, i64 0
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.mp = shufflevector <2 x double> %i.gt, <2 x double> %i.mi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mq = shufflevector <2 x double> %i.mg, <2 x double> %i.mj, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.mr = fmul <4 x double> %i.mp, %i.mq
  %i.ms = fadd <4 x double> %i.mc, %i.mr
  %i.mt = load <2 x double>, ptr %i.mk, align 8, !tbaa !97 ; 2 uses
  %i.mu = shufflevector <4 x double> %i.hm, <4 x double> %i.hn, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mv = shufflevector <2 x double> %i.hv, <2 x double> %i.mt, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.mw = fmul <4 x double> %i.mu, %i.mv
  %i.mx = fadd <4 x double> %i.ms, %i.mw
  %i.my = shufflevector <4 x double> %i.hs, <4 x double> %i.ht, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mz = insertelement <2 x double> %i.mt, double %i.hl, i64 0
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.nb = fmul <4 x double> %i.my, %i.na
  %i.nc = fadd <4 x double> %i.mx, %i.nb
  %i.nd = load <2 x double>, ptr %i.ml, align 8, !tbaa !97 ; 2 uses
  %i.ne = shufflevector <4 x double> %i.hz, <4 x double> %i.ia, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nf = shufflevector <2 x double> %i.ii, <2 x double> %i.nd, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ng = fmul <4 x double> %i.ne, %i.nf
  %i.nh = fadd <4 x double> %i.nc, %i.ng
  %i.ni = shufflevector <4 x double> %i.if, <4 x double> %i.ig, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nj = insertelement <2 x double> %i.nd, double %i.hk, i64 0
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.nl = fmul <4 x double> %i.ni, %i.nk
  %i.nm = fadd <4 x double> %i.nh, %i.nl
  %i.nn = load <2 x double>, ptr %i.mm, align 8, !tbaa !97 ; 2 uses
  %i.no = shufflevector <4 x double> %i.ip, <4 x double> %i.iq, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.np = shufflevector <2 x double> %i.iy, <2 x double> %i.nn, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.nq = fmul <4 x double> %i.no, %i.np
  %i.nr = fadd <4 x double> %i.nm, %i.nq
  %i.ns = shufflevector <4 x double> %i.iv, <4 x double> %i.iw, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nt = insertelement <2 x double> %i.nn, double %i.io, i64 0
  %i.nu = shufflevector <2 x double> %i.nt, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.nv = fmul <4 x double> %i.ns, %i.nu
  %i.nw = fadd <4 x double> %i.nr, %i.nv
  %i.nx = load <2 x double>, ptr %i.mn, align 8, !tbaa !97 ; 2 uses
  %i.ny = shufflevector <4 x double> %i.jc, <4 x double> %i.jd, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nz = shufflevector <2 x double> %i.jl, <2 x double> %i.nx, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.oa = fmul <4 x double> %i.ny, %i.nz
  %i.ob = fadd <4 x double> %i.nw, %i.oa
  %i.oc = shufflevector <4 x double> %i.ji, <4 x double> %i.jj, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.od = insertelement <2 x double> %i.nx, double %i.in, i64 0
  %i.oe = shufflevector <2 x double> %i.od, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.of = fmul <4 x double> %i.oc, %i.oe
  %i.og = fadd <4 x double> %i.ob, %i.of
  %i.oh = load <2 x double>, ptr %i.mo, align 8, !tbaa !97 ; 2 uses
  %i.oi = shufflevector <4 x double> %i.jr, <4 x double> %i.js, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.oj = shufflevector <2 x double> %i.jp, <2 x double> %i.oh, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ok = fmul <4 x double> %i.oi, %i.oj
  %i.ol = fadd <4 x double> %i.og, %i.ok
  %i.om = shufflevector <4 x double> %i.jw, <4 x double> %i.jx, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.on = insertelement <2 x double> %i.oh, double %i.jq, i64 0
  %i.oo = shufflevector <2 x double> %i.on, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.op = fmul <4 x double> %i.om, %i.oo
  %i.oq = fadd <4 x double> %i.ol, %i.op
  store <4 x double> %i.oq, ptr %.sroa.5250.0..sroa_idx, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar11eigenvectorC2Ev(ptr noundef nonnull align 8 dereferenceable(1672) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @_ZN6colvar3cvcC2Ev(ptr noundef nonnull align 8 dereferenceable(1608) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 16), ptr %0, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11eigenvectorE, i64 248), ptr %i.b, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.f, ptr noundef nonnull align 1 dereferenceable(11) @.str.72, i64 11, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 11, ptr %i.g, align 8, !tbaa !120
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 0, ptr %i.h, align 1, !tbaa !119
  %i.i = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.e       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !118    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.f, align 8, !tbaa !119
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  invoke void @_ZN10colvardeps7provideEib(ptr noundef nonnull align 8 dereferenceable(120) %i.b, i32 noundef 9, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN10colvardeps7provideEib(ptr noundef nonnull align 8 dereferenceable(120) %i.b, i32 noundef 10, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 1, ptr %i.a, align 4, !tbaa !150
  invoke void @_ZN11colvarvalue4typeERKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(168) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %1, align 8, !tbaa !118    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.f
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.r = load i64, ptr %i.f, align 8, !tbaa !119
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.h
end_hunk_2
