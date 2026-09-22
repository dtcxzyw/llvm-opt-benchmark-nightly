Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_angles?download=true
inline.NumInlined: 608
inline.NumDeleted: 246
begin_hunk_0_@_ZN6colvar8dihedral10calc_valueEv:bb.a
  %7 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 417
  %i.p = load i8, ptr %i.o, align 1, !tbaa !102, !range !103, !noundef !104
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !100
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load double, ptr %i.r, align 16, !tbaa !91, !noalias !250
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load double, ptr %i.t, align 16, !tbaa !91, !noalias !250
  %i.v = fsub double %i.s, %i.u
  %i.w = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !250
  %i.x = load <2 x double>, ptr %1, align 16, !tbaa !89, !noalias !250
  %i.y = fsub <2 x double> %i.w, %i.x
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !89, !alias.scope !250
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.v, ptr %i.z, align 16, !tbaa !91, !alias.scope !250
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ %i.n, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 417
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !102, !range !103, !noundef !104
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre6 = load ptr, ptr %i.m, align 8, !tbaa !100
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load double, ptr %i.af, align 16, !tbaa !91, !noalias !251
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load double, ptr %i.ah, align 16, !tbaa !91, !noalias !251
  %i.aj = fsub double %i.ag, %i.ai
  %i.ak = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !251
  %i.al = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !251
  %i.am = fsub <2 x double> %i.ak, %i.al
  store <2 x double> %i.am, ptr %6, align 16, !tbaa !89, !alias.scope !251
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.aj, ptr %i.an, align 16, !tbaa !91, !alias.scope !251
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi ptr [ %i.aa, %bb.f ], [ %.pre6, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 16 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 417
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !102, !range !103, !noundef !104
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load double, ptr %i.at, align 16, !tbaa !91, !noalias !252
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load double, ptr %i.av, align 16, !tbaa !91, !noalias !252
  %i.ax = fsub double %i.au, %i.aw
  %i.ay = load <2 x double>, ptr %4, align 16, !tbaa !89, !noalias !252
  %i.az = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !252
  %i.ba = fsub <2 x double> %i.ay, %i.az
  store <2 x double> %i.ba, ptr %7, align 16, !tbaa !89, !alias.scope !252
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.ax, ptr %i.bb, align 16, !tbaa !91, !alias.scope !252
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !89, !noalias !253 ; 4 uses
  %i.bh = load <2 x double>, ptr %i.bd, align 8, !tbaa !89, !noalias !104 ; 6 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.ab, align 8, !tbaa !89, !noalias !253 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.ap, align 8, !tbaa !89, !noalias !253 ; 8 uses
  %i.bl = shufflevector <2 x double> %i.bj, <2 x double> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.bm = fneg <2 x double> %i.bl
  %i.bn = fmul <2 x double> %i.bk, %i.bm
  %i.bo = shufflevector <2 x double> %i.bk, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bo, <2 x double> %i.bn) ; 3 uses
  %i.bq = shufflevector <2 x double> %i.bj, <2 x double> %i.bg, <2 x i32> <i32 0, i32 3>
  %i.br = fneg <2 x double> %i.bq
  %i.bs = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bt = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bu = fmul <2 x double> %i.bs, %i.bt
  %i.bv = load <2 x double>, ptr %i.bf, align 8, !tbaa !89, !noalias !254 ; 4 uses
  %i.bw = load <2 x double>, ptr %i.bc, align 8, !tbaa !89, !noalias !254 ; 2 uses
  %i.bx = shufflevector <2 x double> %i.bh, <2 x double> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.by = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bx, <2 x double> %i.bu) ; 2 uses
  %i.bz = shufflevector <2 x double> %i.bk, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.ca = fneg <2 x double> %i.bz
  %i.cb = fmul <2 x double> %i.bw, %i.ca
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bv, <2 x double> %i.cb) ; 2 uses
  %i.cd = extractelement <2 x double> %i.bp, i64 0
  %i.ce = extractelement <2 x double> %i.cc, i64 0
  %i.cf = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x double> %i.by, <2 x double> %i.bv, <2 x i32> <i32 1, i32 2>
  %i.ch = fmul <2 x double> %i.cf, %i.cg
  %i.ci = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = shufflevector <2 x double> %i.cc, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.cj, <2 x double> %i.ch) ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %i.cm = call noundef double @llvm.fmuladd.f64(double %i.cd, double %i.ce, double %i.cl)
  %foldExtExtBinop = fmul <2 x double> %i.bk, %i.bk
  %i.cn = shufflevector <2 x double> %i.bp, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.co = shufflevector <2 x double> %i.bv, <2 x double> %i.bk, <2 x i32> <i32 1, i32 2>
  %i.cp = shufflevector <2 x double> %i.ck, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 3>
  %i.cq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.co, <2 x double> %i.cp) ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 1
  %i.cs = call noundef double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %i.cr)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.cs)
  %i.ct = extractelement <2 x double> %i.cq, i64 0
  %i.cu = fmul double %sqrt.i, %i.ct
  %i.cv = call noundef double @atan2(double noundef %i.cu, double noundef %i.cm) #19
  %i.cw = fmul double %i.cv, f0x404CA5DC1A63C1F8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.cw, ptr %i.cy, align 8, !tbaa !90
  %i.cz = load ptr, ptr %0, align 8, !tbaa !88
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 192
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral14calc_gradientsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1713) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 5 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %4 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load double, ptr %i.a, align 8, !tbaa !105, !noalias !267 ; 3 uses
  %i.g = fneg double %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1696
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !89, !noalias !104 ; 5 uses
  %i.k = extractelement <2 x double> %i.j, i64 0  ; 3 uses
  %i.l = load <2 x double>, ptr %i.h, align 8, !tbaa !89, !noalias !268 ; 4 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = fneg double %i.k
  %i.o = extractelement <2 x double> %i.l, i64 0
  %i.p = fmul double %i.o, %i.n
  %5 = extractelement <2 x double> %i.l, i64 1
  %i.q = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.t = load <2 x double>, ptr %i.c, align 8, !tbaa !89, !noalias !267 ; 3 uses
  %i.u = load double, ptr %i.e, align 8, !tbaa !91, !noalias !267 ; 2 uses
  %i.v = fneg double %i.u
  %i.w = load <2 x double>, ptr %i.b, align 8, !tbaa !89, !noalias !267 ; 9 uses
  %i.x = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.y = insertelement <2 x double> %i.x, double %i.v, i64 1
  %i.z = fmul <2 x double> %i.w, %i.y
  %i.aa = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %6 = extractelement <2 x double> %i.w, i64 1
  %i.ab = fneg <2 x double> %i.w                  ; 2 uses
  %i.ac = fneg <2 x double> %i.t
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> %i.w, <2 x i32> <i32 0, i32 3>
  %i.ae = fmul <2 x double> %i.w, %i.ad
  %i.af = insertelement <2 x double> %i.aa, double %i.f, i64 0
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.aa, <2 x double> %i.ae) ; 4 uses
  %i.ah = insertelement <2 x double> %i.x, double %i.g, i64 0
  %i.ai = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ai, <2 x double> %i.z) ; 4 uses
  %i.ak = shufflevector <2 x double> %i.j, <2 x double> %i.ab, <2 x i32> <i32 1, i32 3>
  %i.al = fmul <2 x double> %i.j, %i.ak
  %i.am = shufflevector <2 x double> %i.ab, <2 x double> %i.w, <2 x i32> <i32 0, i32 2>
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.m, <2 x double> %i.al) ; 5 uses
  %i.ao = extractelement <2 x double> %i.ag, i64 1
  %i.ap = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.ao)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.ap) ; 2 uses
  %i.aq = fmul double %sqrt.i, f0x404CA5DC1A63C1F8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %5, double %i.p) ; 3 uses
  %8 = shufflevector <2 x double> %i.an, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %9 = fmul <2 x double> %8, %8
  %10 = insertelement <2 x double> %i.aj, double %7, i64 0 ; 2 uses
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %10, <2 x double> %9)
  %i.au = shufflevector <2 x double> %i.an, <2 x double> %i.ag, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.au, <2 x double> %i.at) ; 2 uses
  %i.aw = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = shufflevector <2 x double> %i.l, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %i.ay = fmul <2 x double> %i.aw, %i.ax
  %i.az = insertelement <2 x double> %i.q, double %i.f, i64 1
  %i.ba = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.ba, <2 x double> %i.ay)
  %i.bc = insertelement <2 x double> %i.m, double %i.u, i64 1
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.ai, <2 x double> %i.bb)
  %i.be = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x double> %i.bf, %i.av
  %i.bh = fdiv <2 x double> %i.bd, %i.bg          ; 4 uses
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = fmul <2 x double> %i.aj, %i.bi
  %shift = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ag, %shift
  %11 = insertelement <2 x double> %i.an, double %7, i64 1
  %i.bk = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %11, %i.bk
  %shift46 = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop47 = fmul <2 x double> %shift46, %i.bh
  %i.bm = fadd <2 x double> %i.bj, %i.bl
  %foldExtExtBinop49 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop47
  %i.bn = extractelement <2 x double> %foldExtExtBinop49, i64 0
  %i.bo = fmul <2 x double> %i.bm, splat (double f0x404CA5DC1A63C1F8) ; 2 uses
  %i.bp = fmul double %i.bn, f0x404CA5DC1A63C1F8  ; 2 uses
  %i.bq = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fdiv <2 x double> %i.br, %i.av          ; 4 uses
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x double> %i.aj, %i.bt          ; 2 uses
  %shift51 = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop52 = fmul <2 x double> %i.ag, %shift51
  %i.bv = extractelement <2 x double> %foldExtExtBinop52, i64 0 ; 2 uses
  %12 = extractelement <2 x double> %i.bs, i64 0
  %13 = fmul double %7, %12                       ; 2 uses
  %i.bw = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x double> %i.an, %i.bw          ; 3 uses
  store double %13, ptr %1, align 8, !tbaa !105, !alias.scope !269
  store <2 x double> %i.bx, ptr %i.i, align 8, !tbaa !89, !alias.scope !269
  %i.by = fneg <2 x double> %i.bu
  %i.bz = fneg double %i.bv
  %i.ca = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ca, ptr %2, align 16, !tbaa !89, !alias.scope !270
  store double %i.bz, ptr %i.ar, align 16, !tbaa !91, !alias.scope !270
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cb = load ptr, ptr %i.as, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cc = fadd <2 x double> %i.bu, %i.bo
  %i.cd = fadd double %i.bv, %i.bp
  %i.ce = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ce, ptr %3, align 16, !tbaa !89, !alias.scope !271
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.cd, ptr %i.cf, align 16, !tbaa !91, !alias.scope !271
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ci = extractelement <2 x double> %i.bx, i64 1
  %i.cj = fneg double %i.ci
  %i.ck = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = fsub double %i.cj, %i.bp
  %14 = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %15 = insertelement <2 x double> %14, double %13, i64 0
  %i.cm = fneg <2 x double> %15
  %i.cn = fsub <2 x double> %i.cm, %i.ck
  store <2 x double> %i.cn, ptr %4, align 16, !tbaa !89, !alias.scope !272
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.cl, ptr %i.co, align 16, !tbaa !91, !alias.scope !272
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !131
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral19calc_force_invgradsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1713) initializes((936, 944)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %2 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %3 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.d = load <6 x double>, ptr %i.a, align 8, !tbaa !89, !noalias !104 ; 4 uses
  %i.e = load double, ptr %i.c, align 8, !tbaa !105, !noalias !279
  %i.f = load double, ptr %i.b, align 8, !tbaa !106, !noalias !280
  %i.g = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 1, i32 4> ; 3 uses
  %i.h = fmul <2 x double> %i.g, %i.g
  %i.i = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.i, <2 x double> %i.h)
  %i.k = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 2, i32 5> ; 3 uses
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.k, <2 x double> %i.j) ; 2 uses
  %i.m = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.l) ; 4 uses
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = fcmp ogt <2 x double> %i.l, zeroinitializer ; 3 uses
  %i.p = insertelement <2 x double> %i.k, double %i.e, i64 1
  %i.q = fdiv <2 x double> %i.p, %i.m
  %i.r = shufflevector <6 x double> %i.d, <6 x double> poison, <2 x i32> <i32 0, i32 5>
  %i.s = fdiv <2 x double> %i.r, %i.m
  %i.t = insertelement <2 x double> %i.g, double %i.f, i64 0
  %i.u = fdiv <2 x double> %i.t, %i.m
  %i.v = select <2 x i1> %i.o, <2 x double> %i.u, <2 x double> zeroinitializer ; 6 uses
  %i.w = select <2 x i1> %i.o, <2 x double> %i.s, <2 x double> <double 1.000000e+00, double 0.000000e+00> ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !89, !noalias !281 ; 3 uses
  %i.aa = extractelement <2 x double> %i.w, i64 1
  %i.ab = fneg double %i.aa                       ; 2 uses
  %i.ac = extractelement <2 x double> %i.v, i64 0
  %i.ad = fmul double %i.ac, %i.ab
  %i.ae = extractelement <2 x double> %i.v, i64 1 ; 2 uses
  %i.af = load double, ptr %i.x, align 8, !tbaa !105, !noalias !281 ; 2 uses
  %i.ag = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.v, <2 x i32> <i32 3, i32 1>
  %i.ah = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.af, i64 1
  %i.aj = select <2 x i1> %i.o, <2 x double> %i.q, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 6 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 1
  %i.al = fneg double %i.ak                       ; 2 uses
  %i.am = fneg double %i.ae                       ; 2 uses
  %i.an = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ap = insertelement <2 x double> %i.ao, double %i.am, i64 1
  %i.aq = fmul <2 x double> %i.an, %i.ap
  %i.ar = insertelement <2 x double> %i.aj, double -0.000000e+00, i64 1
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ar, <2 x double> %i.ai) ; 3 uses
  %i.at = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x double> %i.at, double %i.al, i64 0
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.aj, <2 x double> %i.aq) ; 3 uses
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ax = fmul <2 x double> %i.aw, %i.aw
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.as, <2 x double> %i.ax)
  %i.az = shufflevector <2 x double> %i.z, <2 x double> %i.av, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.az, <2 x double> %i.ay) ; 2 uses
  %i.bb = fcmp ogt <2 x double> %i.ba, zeroinitializer ; 3 uses
  %i.bc = extractelement <2 x i1> %i.bb, i64 1
  %i.bd = shufflevector <2 x i1> %i.bb, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.be = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ba) ; 4 uses
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = fdiv <2 x double> %i.z, %i.bf
  %i.bh = insertelement <2 x double> %i.as, double %i.af, i64 1
  %i.bi = fdiv <2 x double> %i.bh, %i.be          ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 1
  %.sink4.i15 = select i1 %i.bc, double %i.bj, double 1.000000e+00 ; 2 uses
  %i.bk = select <2 x i1> %i.bd, <2 x double> %i.bg, <2 x double> zeroinitializer ; 5 uses
  %i.bl = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fdiv <2 x double> %i.av, %i.bl          ; 2 uses
  %i.bn = extractelement <2 x i1> %i.bb, i64 0    ; 3 uses
  %i.bo = extractelement <2 x double> %i.bi, i64 0
  %.sink4.i20 = select i1 %i.bn, double %i.bo, double 1.000000e+00 ; 2 uses
  %i.bp = extractelement <2 x double> %i.bm, i64 0
  %.sink3.i21 = select i1 %i.bn, double %i.bp, double 0.000000e+00 ; 2 uses
  %i.bq = extractelement <2 x double> %i.bm, i64 1
  %.sink.i22 = select i1 %i.bn, double %i.bq, double 0.000000e+00 ; 2 uses
  %i.br = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = shufflevector <2 x double> %i.v, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.bt = fmul <2 x double> %i.br, %i.bs
  %i.bu = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = insertelement <2 x double> %i.w, double %.sink4.i15, i64 1
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bv, <2 x double> %i.bt)
  %i.bx = shufflevector <2 x double> %i.aj, <2 x double> %i.bk, <2 x i32> <i32 0, i32 3>
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.bx, <2 x double> %i.bw) ; 2 uses
  %i.bz = fneg <2 x double> %i.by
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.by, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0
  %i.cc = tail call noundef double @sqrt(double noundef %i.cb) #19
  %i.cd = fmul double %i.n, %i.cc                 ; 2 uses
  %i.ce = extractelement <2 x double> %i.ca, i64 1
  %i.cf = tail call noundef double @sqrt(double noundef %i.ce) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !128
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !100
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 353
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !102, !range !103, !noundef !104
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cn = fmul double %i.cd, f0x3F91DF46A2529D39
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !128
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1712) %i.co)
  %i.cp = load double, ptr %1, align 8, !tbaa !105
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !106
  %i.cs = fmul double %.sink3.i21, %i.cr
  %i.ct = call double @llvm.fmuladd.f64(double %.sink4.i20, double %i.cp, double %i.cs)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !91
  %i.cw = call noundef double @llvm.fmuladd.f64(double %.sink.i22, double %i.cv, double %i.ct)
  %i.cx = fmul double %i.cn, %i.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.cy = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cz = insertelement <2 x double> poison, double %.sink4.i15, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x double> %i.w, double %i.am, i64 0
  %i.dc = fmul <2 x double> %i.da, %i.db
  %i.dd = extractelement <2 x double> %i.bk, i64 0
  %i.de = fmul double %i.dd, %i.ab
  %i.df = extractelement <2 x double> %i.bk, i64 1
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.df, double %i.de) ; 3 uses
  %i.dh = insertelement <2 x double> %i.cy, double %i.al, i64 1
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.bk, <2 x double> %i.dc) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.di, %i.di
  %i.dj = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dg, double %i.dj)
  %i.dl = extractelement <2 x double> %i.di, i64 0 ; 2 uses
  %i.dm = tail call noundef double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %i.dk) ; 2 uses
  %i.dn = fcmp ogt double %i.dm, 0.000000e+00     ; 3 uses
  %sqrt.i.i23 = tail call double @llvm.sqrt.f64(double %i.dm) ; 2 uses
  %i.do = insertelement <2 x double> poison, double %sqrt.i.i23, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fdiv <2 x double> %i.di, %i.dp          ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %.sink.i26 = select i1 %i.dn, double %i.dr, double 0.000000e+00
  %i.ds = extractelement <2 x double> %i.dq, i64 1
  %.sink3.i25 = select i1 %i.dn, double %i.ds, double 0.000000e+00
  %i.dt = fdiv double %i.dg, %sqrt.i.i23
  %.sink4.i24 = select i1 %i.dn, double %i.dt, double 1.000000e+00
  %i.du = extractelement <2 x double> %i.be, i64 1
  %i.dv = fmul double %i.cf, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !131
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.dy = load ptr, ptr %i.cg, align 8, !tbaa !128
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1712) %i.dy)
  %i.dz = load double, ptr %2, align 8, !tbaa !105
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !106
  %i.ec = fmul double %.sink3.i21, %i.eb
  %i.ed = call double @llvm.fmuladd.f64(double %.sink4.i20, double %i.dz, double %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !91
  %i.eg = call noundef double @llvm.fmuladd.f64(double %.sink.i22, double %i.ef, double %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.eh = load ptr, ptr %i.dw, align 8, !tbaa !131
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1712) %i.eh)
  %i.ei = load double, ptr %3, align 8, !tbaa !105
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !106
  %i.el = fmul double %.sink3.i25, %i.ek
  %i.em = call double @llvm.fmuladd.f64(double %.sink4.i24, double %i.ei, double %i.el)
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eo = load double, ptr %i.en, align 8, !tbaa !91
  %i.ep = call noundef double @llvm.fmuladd.f64(double %.sink.i26, double %i.eo, double %i.em)
  %i.eq = fmul double %i.dv, %i.ep
  %i.er = call double @llvm.fmuladd.f64(double %i.cd, double %i.eg, double %i.eq)
  %i.es = fmul double %i.er, f0x3F81DF46A2529D39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi double [ %i.cx, %bb.b ], [ %i.es, %bb.c ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 936
  store double %.sink, ptr %i.et, align 8, !tbaa !107
end_hunk_0
