inline.NumInlined: 608
inline.NumDeleted: 246
begin_hunk_0_@_ZN6colvar8dihedral4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  ret i32 %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral10calc_valueEv(ptr noundef nonnull align 8 dereferenceable(1713) initializes((600, 608), (1640, 1712)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 9 uses
  %4 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %5 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %6 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  %7 = alloca %"class.colvarmodule::rvector", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !104
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !236
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !237
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 417
  %i.p = load i8, ptr %i.o, align 1, !tbaa !106, !range !108, !noundef !109
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !105
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load double, ptr %i.r, align 16, !tbaa !94, !noalias !238
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load double, ptr %i.t, align 16, !tbaa !94, !noalias !238
  %i.v = fsub double %i.s, %i.u
  %i.w = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !238
  %i.x = load <2 x double>, ptr %1, align 16, !tbaa !89, !noalias !238
  %i.y = fsub <2 x double> %i.w, %i.x
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !89, !alias.scope !238
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.v, ptr %i.z, align 16, !tbaa !94, !alias.scope !238
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ %i.n, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !104
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 417
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !106, !range !108, !noundef !109
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre6 = load ptr, ptr %i.m, align 8, !tbaa !105
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load double, ptr %i.af, align 16, !tbaa !94, !noalias !241
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load double, ptr %i.ah, align 16, !tbaa !94, !noalias !241
  %i.aj = fsub double %i.ag, %i.ai
  %i.ak = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !241
  %i.al = load <2 x double>, ptr %2, align 16, !tbaa !89, !noalias !241
  %i.am = fsub <2 x double> %i.ak, %i.al
  store <2 x double> %i.am, ptr %6, align 16, !tbaa !89, !alias.scope !241
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.aj, ptr %i.an, align 16, !tbaa !94, !alias.scope !241
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi ptr [ %i.aa, %bb.f ], [ %.pre6, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !104
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 417
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !106, !range !108, !noundef !109
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN12colvarmodule17position_distanceERKNS_7rvectorES2_(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load double, ptr %i.at, align 16, !tbaa !94, !noalias !244
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load double, ptr %i.av, align 16, !tbaa !94, !noalias !244
  %i.ax = fsub double %i.au, %i.aw
  %i.ay = load <2 x double>, ptr %4, align 16, !tbaa !89, !noalias !244
  %i.az = load <2 x double>, ptr %3, align 16, !tbaa !89, !noalias !244
  %i.ba = fsub <2 x double> %i.ay, %i.az
  store <2 x double> %i.ba, ptr %7, align 16, !tbaa !89, !alias.scope !244
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.ax, ptr %i.bb, align 16, !tbaa !94, !alias.scope !244
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !104
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !89, !noalias !247 ; 4 uses
  %i.bh = load <2 x double>, ptr %i.bd, align 8, !tbaa !89, !noalias !109 ; 6 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.ab, align 8, !tbaa !89, !noalias !247 ; 3 uses
  %i.bk = load <2 x double>, ptr %i.ap, align 8, !tbaa !89, !noalias !247 ; 8 uses
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
  %i.bv = load <2 x double>, ptr %i.bf, align 8, !tbaa !89, !noalias !250 ; 4 uses
  %i.bw = load <2 x double>, ptr %i.bc, align 8, !tbaa !89, !noalias !250 ; 2 uses
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
  store double %i.cw, ptr %i.cy, align 8, !tbaa !93
  %i.cz = load ptr, ptr %0, align 8, !tbaa !87
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
  %5 = load double, ptr %i.a, align 8, !tbaa !113, !noalias !253 ; 3 uses
  %6 = fneg double %5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1696
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !89, !noalias !109 ; 5 uses
  %i.i = extractelement <2 x double> %i.h, i64 0  ; 5 uses
  %i.j = load <2 x double>, ptr %i.f, align 8, !tbaa !89, !noalias !256 ; 3 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.l = fneg double %i.i
  %i.m = extractelement <2 x double> %i.j, i64 0  ; 2 uses
  %i.n = fmul double %i.m, %i.l
  %i.o = extractelement <2 x double> %i.j, i64 1  ; 2 uses
  %i.p = extractelement <2 x double> %i.h, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !89, !noalias !253 ; 3 uses
  %i.t = load double, ptr %i.e, align 8, !tbaa !94, !noalias !253 ; 2 uses
  %i.u = fneg double %i.t
  %i.v = load <2 x double>, ptr %i.b, align 8, !tbaa !89, !noalias !253 ; 8 uses
  %i.w = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.x = insertelement <2 x double> %i.w, double %i.u, i64 1
  %i.y = fmul <2 x double> %i.v, %i.x
  %7 = extractelement <2 x double> %i.s, i64 0
  %8 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = extractelement <2 x double> %i.v, i64 1  ; 3 uses
  %9 = extractelement <2 x double> %i.v, i64 0    ; 2 uses
  %i.aa = fneg <2 x double> %i.v                  ; 2 uses
  %i.ab = fneg <2 x double> %i.s
  %10 = shufflevector <2 x double> %i.ab, <2 x double> %i.v, <2 x i32> <i32 0, i32 3>
  %i.ac = fmul <2 x double> %i.v, %10
  %i.ad = insertelement <2 x double> %8, double %5, i64 0
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %8, <2 x double> %i.ac) ; 2 uses
  %11 = fmul double %7, %i.z
  %12 = tail call double @llvm.fmuladd.f64(double %5, double %9, double %11)
  %i.af = insertelement <2 x double> %i.w, double %6, i64 0
  %13 = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %13, <2 x double> %i.y) ; 5 uses
  %14 = shufflevector <2 x double> %i.h, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ah = fmul <2 x double> %i.h, %14
  %15 = shufflevector <2 x double> %i.aa, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %i.k, <2 x double> %i.ah) ; 5 uses
  %i.aj = extractelement <2 x double> %i.ae, i64 1
  %16 = tail call noundef double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.aj)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %16) ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.ag, %i.ag
  %17 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %18 = extractelement <2 x double> %i.ag, i64 1  ; 2 uses
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %17)
  %20 = extractelement <2 x double> %i.ae, i64 0  ; 4 uses
  %21 = tail call noundef double @llvm.fmuladd.f64(double %20, double %20, double %19) ; 2 uses
  %22 = extractelement <2 x double> %i.ai, i64 1  ; 3 uses
  %i.ak = fmul double %sqrt.i, f0x404CA5DC1A63C1F8 ; 2 uses
  %i.al = fdiv double %i.ak, %21                  ; 2 uses
  %i.am = insertelement <2 x double> poison, double %i.al, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.ag, %i.an          ; 2 uses
  %i.ap = fmul double %20, %i.al                  ; 2 uses
  %23 = tail call noundef double @llvm.fmuladd.f64(double %i.t, double %i.i, double %12)
  %24 = fmul double %sqrt.i, %21
  %25 = fdiv double %23, %24                      ; 2 uses
  %26 = fmul double %20, %25
  %i.aq = fmul double %i.z, %i.m
  %27 = tail call double @llvm.fmuladd.f64(double %i.p, double %9, double %i.aq)
  %28 = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.i, double %27)
  %29 = fneg <2 x double> %i.ao
  %30 = fneg double %i.ap
  %31 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %31, ptr %2, align 16, !tbaa !89, !alias.scope !259
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %30, ptr %32, align 16, !tbaa !94, !alias.scope !259
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %34 = tail call double @llvm.fmuladd.f64(double %i.z, double %i.o, double %i.n) ; 4 uses
  %foldExtExtBinop46 = fmul <2 x double> %i.ai, %i.ai
  %35 = extractelement <2 x double> %foldExtExtBinop46, i64 0
  %36 = tail call double @llvm.fmuladd.f64(double %34, double %34, double %35)
  %37 = tail call noundef double @llvm.fmuladd.f64(double %22, double %22, double %36) ; 2 uses
  %i.ar = insertelement <2 x double> poison, double %25, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.ag, %i.as
  %38 = fmul double %sqrt.i, %37
  %39 = fdiv double %28, %38                      ; 2 uses
  %40 = insertelement <2 x double> %i.ai, double %34, i64 1
  %41 = insertelement <2 x double> poison, double %39, i64 0
  %42 = shufflevector <2 x double> %41, <2 x double> poison, <2 x i32> zeroinitializer
  %43 = fmul <2 x double> %40, %42
  %44 = fmul double %22, %39
  %45 = fadd <2 x double> %i.at, %43
  %46 = fadd double %26, %44
  %47 = fmul <2 x double> %45, splat (double f0x404CA5DC1A63C1F8) ; 2 uses
  %48 = fmul double %46, f0x404CA5DC1A63C1F8      ; 2 uses
  %49 = fdiv double %i.ak, %37                    ; 2 uses
  %50 = fmul double %34, %49                      ; 2 uses
  %i.au = insertelement <2 x double> poison, double %49, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.ai, %i.av          ; 3 uses
  store double %50, ptr %1, align 8, !tbaa !113, !alias.scope !262
  store <2 x double> %i.aw, ptr %i.g, align 8, !tbaa !89, !alias.scope !262
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %51 = load ptr, ptr %33, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ax = fadd <2 x double> %i.ao, %47
  %52 = fadd double %i.ap, %48
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ay, ptr %3, align 16, !tbaa !89, !alias.scope !265
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %52, ptr %i.az, align 16, !tbaa !94, !alias.scope !265
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %51, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bc = extractelement <2 x double> %i.aw, i64 1
  %i.bd = fneg double %i.bc
  %i.be = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = fsub double %i.bd, %48
  %i.bg = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bh = insertelement <2 x double> %i.bg, double %50, i64 0
  %i.bi = fneg <2 x double> %i.bh
  %i.bj = fsub <2 x double> %i.bi, %i.be
  store <2 x double> %i.bj, ptr %4, align 16, !tbaa !89, !alias.scope !268
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.bf, ptr %i.bk, align 16, !tbaa !94, !alias.scope !268
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !237
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %1)
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
  %i.d = load <6 x double>, ptr %i.a, align 8, !tbaa !89, !noalias !109 ; 4 uses
  %i.e = load double, ptr %i.c, align 8, !tbaa !113, !noalias !271
  %i.f = load double, ptr %i.b, align 8, !tbaa !114, !noalias !274
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
  %i.v = select <2 x i1> %i.o, <2 x double> %i.u, <2 x double> zeroinitializer ; 5 uses
  %i.w = select <2 x i1> %i.o, <2 x double> %i.s, <2 x double> <double 1.000000e+00, double 0.000000e+00> ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !89, !noalias !277 ; 3 uses
  %i.aa = extractelement <2 x double> %i.w, i64 1
  %i.ab = fneg double %i.aa                       ; 2 uses
  %i.ac = extractelement <2 x double> %i.v, i64 0
  %i.ad = fmul double %i.ac, %i.ab
  %i.ae = extractelement <2 x double> %i.v, i64 1 ; 3 uses
  %4 = fneg double %i.ae                          ; 2 uses
  %5 = load double, ptr %i.x, align 8, !tbaa !113, !noalias !277
  %i.af = insertelement <2 x double> poison, double %5, i64 0
  %i.ag = select <2 x i1> %i.o, <2 x double> %i.q, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 6 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1
  %i.ai = fneg double %i.ah                       ; 2 uses
  %i.aj = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.al = insertelement <2 x double> %i.ak, double %4, i64 1
  %i.am = fmul <2 x double> %i.aj, %i.al
  %6 = extractelement <2 x double> %i.ag, i64 0
  %7 = tail call double @llvm.fmuladd.f64(double %i.ae, double %6, double %i.ad)
  %i.an = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ao = insertelement <2 x double> %i.an, double %i.ai, i64 0
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ag, <2 x double> %i.am) ; 3 uses
  %i.aq = shufflevector <2 x double> %i.z, <2 x double> %i.ap, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ar = fmul <2 x double> %i.aq, %i.aq
  %8 = insertelement <2 x double> %i.af, double %7, i64 1 ; 3 uses
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %8, <2 x double> %i.ar)
  %9 = shufflevector <2 x double> %i.z, <2 x double> %i.ap, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %9, <2 x double> %i.as) ; 3 uses
  %10 = extractelement <2 x double> %i.at, i64 0
  %11 = fcmp ogt double %10, 0.000000e+00         ; 2 uses
  %12 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.at) ; 4 uses
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fdiv <2 x double> %i.z, %13
  %i.au = fdiv <2 x double> %8, %12               ; 2 uses
  %15 = extractelement <2 x double> %i.au, i64 0
  %.sink4.i15 = select i1 %11, double %15, double 1.000000e+00 ; 2 uses
  %16 = insertelement <2 x i1> poison, i1 %11, i64 0
  %17 = shufflevector <2 x i1> %16, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.av = select <2 x i1> %17, <2 x double> %14, <2 x double> zeroinitializer ; 5 uses
  %18 = extractelement <2 x double> %i.at, i64 1
  %19 = fcmp ogt double %18, 0.000000e+00         ; 3 uses
  %20 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %21 = fdiv <2 x double> %i.ap, %20              ; 2 uses
  %i.aw = extractelement <2 x double> %i.au, i64 1
  %.sink4.i20 = select i1 %19, double %i.aw, double 1.000000e+00 ; 2 uses
  %i.ax = extractelement <2 x double> %21, i64 0
  %.sink3.i21 = select i1 %19, double %i.ax, double 0.000000e+00 ; 2 uses
  %i.ay = extractelement <2 x double> %21, i64 1
  %.sink.i22 = select i1 %19, double %i.ay, double 0.000000e+00 ; 2 uses
  %i.az = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = shufflevector <2 x double> %i.v, <2 x double> %i.av, <2 x i32> <i32 0, i32 2>
  %i.bb = fmul <2 x double> %i.az, %i.ba
  %i.bc = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = insertelement <2 x double> %i.w, double %.sink4.i15, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> %i.bb)
  %i.bf = shufflevector <2 x double> %i.ag, <2 x double> %i.av, <2 x i32> <i32 0, i32 3>
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.bf, <2 x double> %i.be) ; 2 uses
  %i.bh = fneg <2 x double> %i.bg
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bg, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = tail call noundef double @sqrt(double noundef %i.bj) #19
  %i.bl = fmul double %i.n, %i.bk                 ; 2 uses
  %i.bm = extractelement <2 x double> %i.bi, i64 1
  %i.bn = tail call noundef double @sqrt(double noundef %i.bm) #19
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !233
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !105
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 353
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !106, !range !108, !noundef !109
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bv = fmul double %i.bl, f0x3F91DF46A2529D39
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !233
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1712) %i.bw)
  %i.bx = load double, ptr %1, align 8, !tbaa !113
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !114
  %i.ca = fmul double %.sink3.i21, %i.bz
  %i.cb = call double @llvm.fmuladd.f64(double %.sink4.i20, double %i.bx, double %i.ca)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !94
  %i.ce = call noundef double @llvm.fmuladd.f64(double %.sink.i22, double %i.cd, double %i.cb)
  %i.cf = fmul double %i.bv, %i.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.cg = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ch = insertelement <2 x double> poison, double %.sink4.i15, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x double> %i.w, double %4, i64 0
  %i.ck = fmul <2 x double> %i.ci, %i.cj
  %i.cl = extractelement <2 x double> %i.av, i64 0
  %i.cm = fmul double %i.cl, %i.ab
  %i.cn = extractelement <2 x double> %i.av, i64 1
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.cn, double %i.cm) ; 3 uses
  %i.cp = insertelement <2 x double> %i.cg, double %i.ai, i64 1
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.av, <2 x double> %i.ck) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.cq, %i.cq
  %i.cr = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.co, double %i.co, double %i.cr)
  %i.ct = extractelement <2 x double> %i.cq, i64 0 ; 2 uses
  %i.cu = tail call noundef double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.cs) ; 2 uses
  %i.cv = fcmp ogt double %i.cu, 0.000000e+00     ; 3 uses
  %sqrt.i.i23 = tail call double @llvm.sqrt.f64(double %i.cu) ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %sqrt.i.i23, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv <2 x double> %i.cq, %i.cx          ; 2 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0
  %.sink.i26 = select i1 %i.cv, double %i.cz, double 0.000000e+00
  %i.da = extractelement <2 x double> %i.cy, i64 1
  %.sink3.i25 = select i1 %i.cv, double %i.da, double 0.000000e+00
  %i.db = fdiv double %i.co, %sqrt.i.i23
  %.sink4.i24 = select i1 %i.cv, double %i.db, double 1.000000e+00
  %i.dc = extractelement <2 x double> %12, i64 0
  %i.dd = fmul double %i.bn, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !237
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.dg = load ptr, ptr %i.bo, align 8, !tbaa !233
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1712) %i.dg)
  %i.dh = load double, ptr %2, align 8, !tbaa !113
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = load double, ptr %i.di, align 8, !tbaa !114
  %i.dk = fmul double %.sink3.i21, %i.dj
  %i.dl = call double @llvm.fmuladd.f64(double %.sink4.i20, double %i.dh, double %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !94
  %i.do = call noundef double @llvm.fmuladd.f64(double %.sink.i22, double %i.dn, double %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.dp = load ptr, ptr %i.de, align 8, !tbaa !237
  call void @_ZNK12colvarmodule10atom_group11total_forceEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::rvector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1712) %i.dp)
  %i.dq = load double, ptr %3, align 8, !tbaa !113
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !114
  %i.dt = fmul double %.sink3.i25, %i.ds
  %i.du = call double @llvm.fmuladd.f64(double %.sink4.i24, double %i.dq, double %i.dt)
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !94
  %i.dx = call noundef double @llvm.fmuladd.f64(double %.sink.i26, double %i.dw, double %i.du)
  %i.dy = fmul double %i.dd, %i.dx
  %i.dz = call double @llvm.fmuladd.f64(double %i.bl, double %i.do, double %i.dy)
  %i.ea = fmul double %i.dz, f0x3F81DF46A2529D39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi double [ %i.cf, %bb.b ], [ %i.ea, %bb.c ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 936
  store double %.sink, ptr %i.eb, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral24calc_Jacobian_derivativeEv(ptr noundef nonnull align 8 dereferenceable(1713) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %class.colvarvalue, align 8         ; 23 uses
  %i.c = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !89
  call void @_ZN11colvarvalueC1ERKd(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = load i32, ptr %i.d, align 8, !tbaa !127
  store i32 %i.e, ptr %i.a, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.f = load i32, ptr %1, align 8, !tbaa !127
  store i32 %i.f, ptr %i.b, align 4, !tbaa !128
  %i.g = invoke noundef i32 @_ZN11colvarvalue18check_types_assignERKNS_4TypeES2_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc unwind label %bb.k     ; 0 uses

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.h = load i32, ptr %1, align 8, !tbaa !127    ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !127
  switch i32 %i.h, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.e
  ]

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store double %i.j, ptr %i.k, align 8, !tbaa !129
  br label %_ZN11colvarvalueaSERKS_.exit

bb.c:                                             ; preds = %.noexc, %.noexc, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !104
  br label %_ZN11colvarvalueaSERKS_.exit

bb.d:                                             ; preds = %.noexc, %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !tbaa.struct !130
  br label %_ZN11colvarvalueaSERKS_.exit

bb.e:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.r = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.noexc2 unwind label %bb.k    ; 0 uses

.noexc2:                                          ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.noexc3 unwind label %bb.k    ; 0 uses

.noexc3:                                          ; preds = %.noexc2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.x = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.noexc4 unwind label %bb.k    ; 0 uses

.noexc4:                                          ; preds = %.noexc3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.aa = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_ZN11colvarvalueaSERKS_.exit unwind label %bb.k ; 0 uses

bb.f:                                             ; preds = %.noexc
  invoke void @_ZNK11colvarvalue8undef_opEv(ptr noundef nonnull align 8 dereferenceable(168) %i.d)
          to label %_ZN11colvarvalueaSERKS_.exit unwind label %bb.k

_ZN11colvarvalueaSERKS_.exit:                     ; preds = %bb.d, %bb.c, %bb.b, %.noexc4, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN11colvarvalueaSERKS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.g, %_ZN11colvarvalueaSERKS_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !132
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.h, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !134
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #20
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !135 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !136
  %.not.i.i.i4.i = icmp eq ptr %i.az, %i.ax
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !136
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZN11colvarvalueD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !137
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.be) #20
  br label %_ZN11colvarvalueD2Ev.exit

_ZN11colvarvalueD2Ev.exit:                        ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.k:                                             ; preds = %bb.f, %.noexc4, %.noexc3, %.noexc2, %bb.e, %bb.a
  %i.bf = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@llvm.sqrt.v2f64
!60 = !{!"p2 _ZTSN12colvarmodule10atom_groupE", !54, i64 0}
!61 = !{!"bool", !7, i64 0}
!62 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0}
!67 = !{!"_ZTS11colvarvalue", !68, i64 0, !55, i64 8, !69, i64 16, !70, i64 40, !71, i64 72, !77, i64 96, !81, i64 120, !81, i64 144}
!68 = !{!"_ZTSN11colvarvalue4TypeE", !7, i64 0}
!69 = !{!"_ZTSN12colvarmodule7rvectorE", !55, i64 0, !55, i64 8, !55, i64 16}
!70 = !{!"_ZTSN12colvarmodule10quaternionE", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!71 = !{!"_ZTSN12colvarmodule8vector1dIdEE", !72, i64 0}
!72 = !{!"_ZTSSt6vectorIdSaIdEE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!76 = !{!"p1 double", !23, i64 0}
!77 = !{!"_ZTSSt6vectorIN11colvarvalue4TypeESaIS1_EE", !78, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE12_Vector_implE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!81 = !{!"_ZTSSt6vectorIiSaIiEE", !82, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!85 = !{!"p1 int", !23, i64 0}
!86 = !{!"p1 _ZTSN12colvarmodule10atom_groupE", !23, i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"vtable pointer", !8, i64 0}
!89 = !{!55, !55, i64 0}
!90 = !{!10, !55, i64 1616}
!91 = !{!10, !55, i64 1624}
!92 = !{!10, !55, i64 1632}
!93 = !{!11, !55, i64 600}
!94 = !{!69, !55, i64 16}
!95 = !{!96, !86, i64 1608}
!96 = !{!"_ZTSN6colvar11polar_thetaE", !11, i64 0, !86, i64 1608, !55, i64 1616, !55, i64 1624, !55, i64 1632}
!97 = !{!96, !55, i64 1616}
!98 = !{!96, !55, i64 1624}
!99 = !{!96, !55, i64 1632}
!100 = !{!101, !86, i64 1608}
!101 = !{!"_ZTSN6colvar5angleE", !11, i64 0, !86, i64 1608, !86, i64 1616, !86, i64 1624, !69, i64 1632, !69, i64 1656, !55, i64 1680, !55, i64 1688, !69, i64 1696, !69, i64 1720, !61, i64 1744}
!102 = !{!101, !86, i64 1616}
!103 = !{!101, !86, i64 1624}
!104 = !{i64 0, i64 8, !89, i64 8, i64 8, !89, i64 16, i64 8, !89}
!105 = !{!47, !48, i64 0}
!106 = !{!107, !61, i64 1}
!107 = !{!"_ZTSN10colvardeps13feature_stateE", !61, i64 0, !61, i64 1, !6, i64 4, !81, i64 8}
!108 = !{i8 0, i8 2}
!109 = !{}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!112 = distinct !{!112, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!113 = !{!69, !55, i64 0}
!114 = !{!69, !55, i64 8}
!115 = !{!101, !55, i64 1680}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!118 = distinct !{!118, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!119 = !{!101, !55, i64 1688}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZplRKN12colvarmodule7rvectorES2_: argument 0"}
!122 = distinct !{!122, !"_ZplRKN12colvarmodule7rvectorES2_"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZmlRKN12colvarmodule7rvectorEd: argument 0"}
!125 = distinct !{!125, !"_ZmlRKN12colvarmodule7rvectorEd"}
!126 = !{!11, !55, i64 936}
!127 = !{!67, !68, i64 0}
!128 = !{!68, !68, i64 0}
!129 = !{!67, !55, i64 8}
!130 = !{i64 0, i64 8, !89, i64 8, i64 8, !89, i64 16, i64 8, !89, i64 24, i64 8, !89}
!131 = !{!84, !85, i64 0}
!132 = !{!84, !85, i64 16}
!133 = !{!80, !23, i64 0}
!134 = !{!80, !23, i64 16}
!135 = !{!75, !76, i64 0}
!136 = !{!75, !76, i64 8}
!137 = !{!75, !76, i64 16}
!138 = !{!139, !86, i64 1608}
!139 = !{!"_ZTSN6colvar12dipole_angleE", !11, i64 0, !86, i64 1608, !86, i64 1616, !86, i64 1624, !69, i64 1632, !69, i64 1656, !55, i64 1680, !55, i64 1688, !69, i64 1696, !69, i64 1720, !61, i64 1744}
!140 = !{!139, !86, i64 1616}
!141 = !{!139, !86, i64 1624}
!142 = !{!29, !30, i64 0}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!145 = distinct !{!145, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!146 = !{!28, !30, i64 0}
!147 = !{!28, !24, i64 8}
!148 = !{!7, !7, i64 0}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!151 = distinct !{!151, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!154 = distinct !{!154, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!157 = distinct !{!157, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!158 = !{!139, !55, i64 1680}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!161 = distinct !{!161, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!162 = !{!139, !55, i64 1688}
!163 = !{!164, !55, i64 1128}
!164 = !{!"_ZTSN12colvarmodule10atom_groupE", !12, i64 0, !43, i64 320, !28, i64 440, !61, i64 472, !28, i64 480, !86, i64 512, !165, i64 520, !61, i64 1088, !61, i64 1089, !72, i64 1096, !55, i64 1120, !55, i64 1128, !167, i64 1136, !24, i64 1144, !81, i64 1152, !72, i64 1176, !72, i64 1200, !72, i64 1224, !72, i64 1248, !72, i64 1272, !72, i64 1296, !72, i64 1320, !81, i64 1344, !81, i64 1368, !81, i64 1392, !69, i64 1416, !6, i64 1440, !72, i64 1448, !72, i64 1472, !24, i64 1496, !69, i64 1504, !69, i64 1528, !69, i64 1552, !72, i64 1576, !69, i64 1600, !69, i64 1624, !69, i64 1648, !168, i64 1672}
!165 = !{!"_ZTSN12colvarmodule8rotationE", !166, i64 0, !7, i64 72, !7, i64 200, !7, i64 232, !7, i64 360, !61, i64 488, !70, i64 496, !70, i64 528, !23, i64 560}
!166 = !{!"_ZTSN12colvarmodule7rmatrixE", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64}
!167 = !{!"p1 _ZTS19rotation_derivative", !23, i64 0}
!168 = !{!"_ZTSSt5mutex", !169, i64 0}
!169 = !{!"_ZTSSt12__mutex_base", !7, i64 0}
!170 = !{!164, !55, i64 1120}
!171 = !{!164, !24, i64 1144}
!172 = !{!173}
!173 = distinct !{!173, !174}
!174 = distinct !{!174, !"LVerDomain"}
!175 = !{!176}
!176 = distinct !{!176, !174}
!177 = !{!178}
!178 = distinct !{!178, !174}
!179 = !{!180, !181, !173, !176, !182}
!180 = distinct !{!180, !174}
!181 = distinct !{!181, !174}
!182 = distinct !{!182, !174}
!183 = !{!180}
!184 = !{!181, !173, !176, !182}
!185 = !{!181}
!186 = !{!173, !176, !182}
!187 = distinct !{!187, !188, !189, !190}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !{!"llvm.loop.isvectorized", i32 1}
!190 = !{!"llvm.loop.unroll.runtime.disable"}
!191 = !{!192}
!192 = distinct !{!192, !193}
!193 = distinct !{!193, !"LVerDomain"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!196 = distinct !{!196, !"_ZmldRKN12colvarmodule7rvectorE"}
!197 = !{!198}
!198 = distinct !{!198, !193}
!199 = !{!200}
!200 = distinct !{!200, !193}
!201 = !{!202, !203, !198, !192}
!202 = distinct !{!202, !193}
!203 = distinct !{!203, !193}
!204 = !{!202}
!205 = !{!203, !198, !192}
!206 = !{!203}
!207 = !{!198, !192}
!208 = distinct !{!208, !188, !189, !190}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!211 = distinct !{!211, !"_ZmldRKN12colvarmodule7rvectorE"}
!212 = distinct !{!212, !188, !189}
!213 = !{!214}
!214 = distinct !{!214, !215}
!215 = distinct !{!215, !"LVerDomain"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!218 = distinct !{!218, !"_ZmldRKN12colvarmodule7rvectorE"}
!219 = !{!220}
!220 = distinct !{!220, !215}
!221 = !{!222}
!222 = distinct !{!222, !215}
!223 = !{!224, !225, !220, !214}
!224 = distinct !{!224, !215}
!225 = distinct !{!225, !215}
!226 = !{!224}
!227 = !{!225, !220, !214}
!228 = !{!225}
!229 = !{!220, !214}
!230 = distinct !{!230, !188, !189, !190}
!231 = distinct !{!231, !188, !189}
!232 = distinct !{!232, !188, !189}
!233 = !{!234, !86, i64 1608}
!234 = !{!"_ZTSN6colvar8dihedralE", !11, i64 0, !86, i64 1608, !86, i64 1616, !86, i64 1624, !86, i64 1632, !69, i64 1640, !69, i64 1664, !69, i64 1688, !61, i64 1712}
!235 = !{!234, !86, i64 1616}
!236 = !{!234, !86, i64 1624}
!237 = !{!234, !86, i64 1632}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!240 = distinct !{!240, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!243 = distinct !{!243, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!246 = distinct !{!246, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZN12colvarmodule7rvector5outerERKS0_S2_: argument 0"}
!249 = distinct !{!249, !"_ZN12colvarmodule7rvector5outerERKS0_S2_"}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZN12colvarmodule7rvector5outerERKS0_S2_: argument 0"}
!252 = distinct !{!252, !"_ZN12colvarmodule7rvector5outerERKS0_S2_"}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZN12colvarmodule7rvector5outerERKS0_S2_: argument 0"}
!255 = distinct !{!255, !"_ZN12colvarmodule7rvector5outerERKS0_S2_"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_ZN12colvarmodule7rvector5outerERKS0_S2_: argument 0"}
!258 = distinct !{!258, !"_ZN12colvarmodule7rvector5outerERKS0_S2_"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"_ZngRKN12colvarmodule7rvectorE: argument 0"}
!261 = distinct !{!261, !"_ZngRKN12colvarmodule7rvectorE"}
!262 = !{!263}
!263 = distinct !{!263, !264, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!264 = distinct !{!264, !"_ZmldRKN12colvarmodule7rvectorE"}
!265 = !{!266}
!266 = distinct !{!266, !267, !"_ZplRKN12colvarmodule7rvectorES2_: argument 0"}
!267 = distinct !{!267, !"_ZplRKN12colvarmodule7rvectorES2_"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!270 = distinct !{!270, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZNK12colvarmodule7rvector4unitEv: argument 0"}
!273 = distinct !{!273, !"_ZNK12colvarmodule7rvector4unitEv"}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_ZNK12colvarmodule7rvector4unitEv: argument 0"}
!276 = distinct !{!276, !"_ZNK12colvarmodule7rvector4unitEv"}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZNK12colvarmodule7rvector4unitEv: argument 0"}
!279 = distinct !{!279, !"_ZNK12colvarmodule7rvector4unitEv"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!282 = distinct !{!282, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!283 = !{!284, !281}
!284 = distinct !{!284, !285, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!285 = distinct !{!285, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!288 = distinct !{!288, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!291 = distinct !{!291, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!294 = distinct !{!294, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!295 = !{!80, !23, i64 8}
!296 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!297 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!298 = !{!84, !85, i64 8}
!299 = !{!6, !6, i64 0}
!300 = !{!234, !61, i64 1712}
end_hunk_1
