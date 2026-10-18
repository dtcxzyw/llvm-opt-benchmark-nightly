Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_angles?download=true
inline.NumInlined: 608
inline.NumDeleted: 246
begin_hunk_0_@_ZN6colvar8dihedral10calc_valueEv:bb.a
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
  %i.bk = load <2 x double>, ptr %i.ap, align 8, !tbaa !89, !noalias !253 ; 7 uses
  %i.bl = shufflevector <2 x double> %i.bj, <2 x double> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.bm = fneg <2 x double> %i.bl
  %i.bn = fmul <2 x double> %i.bk, %i.bm
  %i.bo = shufflevector <2 x double> %i.bk, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bo, <2 x double> %i.bn) ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bj, <2 x double> %i.bg, <2 x i32> <i32 0, i32 3>
  %i.br = fneg <2 x double> %i.bq
  %i.bs = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bt = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bu = fmul <2 x double> %i.bs, %i.bt
  %i.bv = extractelement <2 x double> %i.bk, i64 0 ; 2 uses
  %i.bw = load <2 x double>, ptr %i.bf, align 8, !tbaa !89, !noalias !254 ; 4 uses
  %i.bx = load <2 x double>, ptr %i.bc, align 8, !tbaa !89, !noalias !254 ; 2 uses
  %i.by = shufflevector <2 x double> %i.bh, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.by, <2 x double> %i.bu) ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bk, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.cb = fneg <2 x double> %i.ca
  %i.cc = fmul <2 x double> %i.bx, %i.cb
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bw, <2 x double> %i.cc) ; 2 uses
  %i.ce = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <2 x double> %i.bz, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.cg = fmul <2 x double> %i.ce, %i.cf
  %i.ch = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = shufflevector <2 x double> %i.cd, <2 x double> %i.bx, <2 x i32> <i32 1, i32 2>
  %i.cj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ci, <2 x double> %i.cg)
  %i.ck = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = shufflevector <2 x double> %i.cd, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cl, <2 x double> %i.cj) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.bk, %i.bk
  %i.cn = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.co = call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.cn)
  %i.cp = call noundef double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %i.co)
  %i.cq = call noundef double @sqrt(double noundef %i.cp) #19
  %i.cr = extractelement <2 x double> %i.cm, i64 1
  %i.cs = fmul double %i.cq, %i.cr
  %i.ct = extractelement <2 x double> %i.cm, i64 0
  %i.cu = call noundef double @atan2(double noundef %i.cs, double noundef %i.ct) #19
  %i.cv = fmul double %i.cu, f0x404CA5DC1A63C1F8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.cv, ptr %i.cx, align 8, !tbaa !90
  %i.cy = load ptr, ptr %0, align 8, !tbaa !88
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 192
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.cw)
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
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !89, !noalias !104 ; 5 uses
  %i.k = extractelement <2 x double> %i.j, i64 0  ; 3 uses
  %i.l = load <2 x double>, ptr %i.h, align 8, !tbaa !89, !noalias !268 ; 4 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = fneg double %i.k
  %i.o = extractelement <2 x double> %i.l, i64 0
  %i.p = fmul double %i.o, %i.n
  %i.q = extractelement <2 x double> %i.l, i64 1
  %i.r = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.t = load <2 x double>, ptr %i.c, align 8, !tbaa !89, !noalias !267 ; 3 uses
  %i.u = load double, ptr %i.e, align 8, !tbaa !91, !noalias !267 ; 2 uses
  %i.v = fneg double %i.u
  %i.w = load <2 x double>, ptr %i.b, align 8, !tbaa !89, !noalias !267 ; 9 uses
  %i.x = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.y = insertelement <2 x double> %i.x, double %i.v, i64 1
  %i.z = fmul <2 x double> %i.w, %i.y
  %i.aa = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ab = extractelement <2 x double> %i.w, i64 1
  %i.ac = fneg <2 x double> %i.w                  ; 2 uses
  %i.ad = fneg <2 x double> %i.t
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> %i.w, <2 x i32> <i32 0, i32 3>
  %i.af = fmul <2 x double> %i.w, %i.ae
  %i.ag = insertelement <2 x double> %i.aa, double %i.f, i64 0
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.aa, <2 x double> %i.af) ; 4 uses
  %i.ai = insertelement <2 x double> %i.x, double %i.g, i64 0
  %i.aj = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.aj, <2 x double> %i.z) ; 4 uses
  %i.al = shufflevector <2 x double> %i.j, <2 x double> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.am = fmul <2 x double> %i.j, %i.al
  %i.an = shufflevector <2 x double> %i.ac, <2 x double> %i.w, <2 x i32> <i32 0, i32 2>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.m, <2 x double> %i.am) ; 5 uses
  %i.ap = extractelement <2 x double> %i.ah, i64 1
  %i.aq = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.ap)
  %i.ar = tail call noundef double @sqrt(double noundef %i.aq) #19 ; 2 uses
  %i.as = fmul double %i.ar, f0x404CA5DC1A63C1F8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.q, double %i.p) ; 3 uses
  %i.ax = shufflevector <2 x double> %i.ao, <2 x double> %i.ak, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ay = fmul <2 x double> %i.ax, %i.ax
  %i.az = insertelement <2 x double> %i.ak, double %i.aw, i64 0 ; 2 uses
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.az, <2 x double> %i.ay)
  %i.bb = shufflevector <2 x double> %i.ao, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bb, <2 x double> %i.ba) ; 2 uses
  %i.bd = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.be = shufflevector <2 x double> %i.l, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %i.bf = fmul <2 x double> %i.bd, %i.be
  %i.bg = insertelement <2 x double> %i.r, double %i.f, i64 1
  %i.bh = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bh, <2 x double> %i.bf)
  %i.bj = insertelement <2 x double> %i.m, double %i.u, i64 1
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.aj, <2 x double> %i.bi)
  %i.bl = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x double> %i.bm, %i.bc
  %i.bo = fdiv <2 x double> %i.bk, %i.bn          ; 4 uses
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %5 = fmul <2 x double> %i.ak, %i.bp
  %shift = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fmul <2 x double> %i.ah, %shift
  %i.bq = insertelement <2 x double> %i.ao, double %i.aw, i64 1
  %i.br = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.bq, %i.br
  %shift46 = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop47 = fmul <2 x double> %shift46, %i.bo
  %6 = fadd <2 x double> %5, %i.bs
  %foldExtExtBinop49 = fadd <2 x double> %foldExtExtBinop.a, %foldExtExtBinop47
  %7 = extractelement <2 x double> %foldExtExtBinop49, i64 0
  %i.bt = fmul <2 x double> %6, splat (double f0x404CA5DC1A63C1F8) ; 2 uses
  %i.bu = fmul double %7, f0x404CA5DC1A63C1F8     ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x double> %i.bw, %i.bc          ; 4 uses
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul <2 x double> %i.ak, %i.by          ; 2 uses
  %shift51 = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop52 = fmul <2 x double> %i.ah, %shift51
  %i.ca = extractelement <2 x double> %foldExtExtBinop52, i64 0 ; 2 uses
  %i.cb = extractelement <2 x double> %i.bx, i64 0
  %i.cc = fmul double %i.aw, %i.cb                ; 2 uses
  %i.cd = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.ao, %i.cd          ; 3 uses
  store double %i.cc, ptr %1, align 8, !tbaa !105, !alias.scope !269
  store <2 x double> %i.ce, ptr %i.i, align 8, !tbaa !89, !alias.scope !269
  %i.cf = fneg <2 x double> %i.bz
  %i.cg = fneg double %i.ca
  %i.ch = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ch, ptr %2, align 16, !tbaa !89, !alias.scope !270
  store double %i.cg, ptr %i.au, align 16, !tbaa !91, !alias.scope !270
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ci = load ptr, ptr %i.av, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cj = fadd <2 x double> %i.bz, %i.bt
  %i.ck = fadd double %i.ca, %i.bu
  %i.cl = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.cl, ptr %3, align 16, !tbaa !89, !alias.scope !271
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.ck, ptr %i.cm, align 16, !tbaa !91, !alias.scope !271
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cp = extractelement <2 x double> %i.ce, i64 1
  %i.cq = fneg double %i.cp
  %i.cr = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = fsub double %i.cq, %i.bu
  %i.ct = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cu = insertelement <2 x double> %i.ct, double %i.cc, i64 0
  %i.cv = fneg <2 x double> %i.cu
  %i.cw = fsub <2 x double> %i.cv, %i.cr
  store <2 x double> %i.cw, ptr %4, align 16, !tbaa !89, !alias.scope !272
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.cs, ptr %i.cx, align 16, !tbaa !91, !alias.scope !272
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !131
  call void @_ZN12colvarmodule10atom_group21set_weighted_gradientERKNS_7rvectorE(ptr noundef nonnull align 8 dereferenceable(1712) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar8dihedral19calc_force_invgradsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1713) initializes((936, 944)) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %3 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.b = load double, ptr %i.a, align 8, !tbaa !105, !noalias !283 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = load double, ptr %i.c, align 8, !tbaa !106, !noalias !283 ; 3 uses
  %i.e = fmul double %i.d, %i.d
  %i.f = tail call double @llvm.fmuladd.f64(double %i.b, double %i.b, double %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.h = load double, ptr %i.g, align 8, !tbaa !91, !noalias !283 ; 3 uses
  %i.i = tail call noundef double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.f) ; 2 uses
  %i.j = tail call noundef double @sqrt(double noundef %i.i) #19, !noalias !283
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.l = load double, ptr %i.k, align 8, !tbaa !105, !noalias !284 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.n = load double, ptr %i.m, align 8, !tbaa !106, !noalias !284 ; 3 uses
  %i.o = fmul double %i.n, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.r = load double, ptr %i.q, align 8, !tbaa !91, !noalias !284 ; 3 uses
  %i.s = tail call noundef double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.p)
  %i.t = tail call noundef double @sqrt(double noundef %i.s) #19, !noalias !284
  %i.u = insertelement <2 x double> poison, double %i.j, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.t, i64 1 ; 4 uses
  %i.w = fcmp ogt <2 x double> %i.v, zeroinitializer ; 3 uses
  %i.x = insertelement <2 x double> poison, double %i.b, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.r, i64 1
  %i.z = fdiv <2 x double> %i.y, %i.v
  %i.aa = insertelement <2 x double> poison, double %i.d, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.n, i64 1
  %i.ac = fdiv <2 x double> %i.ab, %i.v
  %i.ad = select <2 x i1> %i.w, <2 x double> %i.ac, <2 x double> zeroinitializer ; 5 uses
  %i.ae = select <2 x i1> %i.w, <2 x double> %i.z, <2 x double> <double 1.000000e+00, double 0.000000e+00> ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.ah = extractelement <2 x double> %i.ae, i64 1 ; 2 uses
  %i.ai = fneg double %i.ah                       ; 2 uses
  %i.aj = extractelement <2 x double> %i.ad, i64 0
  %i.ak = fmul double %i.aj, %i.ai
  %i.al = extractelement <2 x double> %i.ad, i64 1 ; 4 uses
  %i.am = load <2 x double>, ptr %i.ag, align 8, !tbaa !89, !noalias !285 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.am, %i.am
  %i.an = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ao = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %i.ap = load double, ptr %i.af, align 8, !tbaa !105, !noalias !285 ; 3 uses
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.an)
  %i.ar = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.aq) ; 2 uses
  %i.as = tail call noundef double @sqrt(double noundef %i.ar) #19, !noalias !285 ; 2 uses
  %i.at = fcmp ogt double %i.as, 0.000000e+00     ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.as, i64 0 ; 2 uses
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x double> %i.am, %i.av
  %i.ax = tail call noundef double @sqrt(double noundef %i.i) #19
  %i.ay = tail call noundef double @sqrt(double noundef %i.ar) #19
  %i.az = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ba = insertelement <2 x i1> poison, i1 %i.at, i64 0
  %i.bb = shufflevector <2 x i1> %i.ba, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bc = select <2 x i1> %i.bb, <2 x double> %i.aw, <2 x double> zeroinitializer ; 3 uses
  %i.bd = insertelement <2 x double> poison, double %i.h, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.l, i64 1
  %i.bf = fdiv <2 x double> %i.be, %i.v
  %i.bg = select <2 x i1> %i.w, <2 x double> %i.bf, <2 x double> <double 0.000000e+00, double 1.000000e+00> ; 6 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 1 ; 2 uses
  %i.bi = fneg double %i.bh                       ; 2 uses
  %i.bj = fneg double %i.al                       ; 2 uses
  %i.bk = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bm = insertelement <2 x double> %i.bl, double %i.bj, i64 1
  %i.bn = fmul <2 x double> %i.bk, %i.bm
  %i.bo = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bp = insertelement <2 x double> %i.bo, double %i.bi, i64 0
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bg, <2 x double> %i.bn) ; 4 uses
  %foldExtExtBinop56 = fmul <2 x double> %i.bq, %i.bq
  %i.br = extractelement <2 x double> %foldExtExtBinop56, i64 0
  %i.bs = extractelement <2 x double> %i.bg, i64 0
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.al, double %i.bs, double %i.ak) ; 3 uses
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.br)
  %i.bv = extractelement <2 x double> %i.bq, i64 1 ; 2 uses
  %i.bw = tail call noundef double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.bu)
  %i.bx = tail call noundef double @sqrt(double noundef %i.bw) #19, !noalias !286 ; 3 uses
  %i.by = insertelement <2 x double> %i.az, double %i.bt, i64 1
  %i.bz = insertelement <2 x double> %i.au, double %i.bx, i64 1
  %i.ca = fdiv <2 x double> %i.by, %i.bz          ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0
  %.sink4.i13 = select i1 %i.at, double %i.cb, double 1.000000e+00 ; 2 uses
  %i.cc = fcmp ogt double %i.bx, 0.000000e+00     ; 3 uses
  %i.cd = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x double> %i.bq, %i.ce          ; 2 uses
  %i.cg = extractelement <2 x double> %i.ca, i64 1
  %.sink4.i16 = select i1 %i.cc, double %i.cg, double 1.000000e+00 ; 2 uses
  %i.ch = extractelement <2 x double> %i.cf, i64 0
  %.sink3.i17 = select i1 %i.cc, double %i.ch, double 0.000000e+00 ; 2 uses
  %i.ci = extractelement <2 x double> %i.cf, i64 1
  %.sink.i18 = select i1 %i.cc, double %i.ci, double 0.000000e+00 ; 2 uses
  %i.cj = extractelement <2 x double> %i.bc, i64 0 ; 2 uses
  %i.ck = fmul double %i.cj, %i.ai
  %i.cl = extractelement <2 x double> %i.bc, i64 1 ; 2 uses
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.al, double %i.cl, double %i.ck) ; 3 uses
  %i.cn = insertelement <2 x double> poison, double %.sink4.i13, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x double> %i.ae, double %i.bj, i64 0
  %i.cq = fmul <2 x double> %i.co, %i.cp
  %i.cr = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x double> %i.cr, double %i.bi, i64 1
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.bc, <2 x double> %i.cq) ; 5 uses
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.cv = shufflevector <2 x double> %i.ct, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.cw = fmul <2 x double> %i.cu, %i.cv
  %i.cx = insertelement <2 x double> %i.bg, double %i.cm, i64 0
  %i.cy = insertelement <2 x double> %i.bk, double %i.cm, i64 0
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cy, <2 x double> %i.cw)
  %i.da = shufflevector <2 x double> %i.ct, <2 x double> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.db = shufflevector <2 x double> %i.ct, <2 x double> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.db, <2 x double> %i.cz) ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = tail call noundef double @sqrt(double noundef %i.dd) #19, !noalias !287 ; 3 uses
  %i.df = fmul double %i.al, %i.cj
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.bh, double %.sink4.i13, double %i.df)
  %i.dh = tail call noundef double @llvm.fmuladd.f64(double %i.ah, double %i.cl, double %i.dg) ; 2 uses
  %i.di = extractelement <2 x double> %i.dc, i64 1 ; 2 uses
  %i.dj = fneg double %i.di
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.di, double 1.000000e+00)
  %i.dl = tail call noundef double @sqrt(double noundef %i.dk) #19
  %i.dm = fmul double %i.ax, %i.dl                ; 2 uses
  %i.dn = fneg double %i.dh
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.dh, double 1.000000e+00)
  %i.dp = tail call noundef double @sqrt(double noundef %i.do) #19
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !128
  tail call void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !100
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 353
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !102, !range !103, !noundef !104
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dx = fmul double %i.dm, f0x3F91DF46A2529D39
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.dy = load ptr, ptr %i.dq, align 8, !tbaa !128
end_hunk_0
begin_hunk_1_@_ZN6colvar8dihedralC2ERKN12colvarmodule10atom_group11simple_atomES5_S5_S5_:bb.a

bb.z:                                             ; preds = %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit18
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.l, %bb.k, %bb.j, %_ZN12colvarmodule10atom_group17get_atom_modifierEv.exit19
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %8) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.aa ], [ %i.ad, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.ac, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ac ], [ %i.ab, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN12colvarmodule10atom_group13atom_modifierD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.w
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ad ], [ %i.aa, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.pn15 = phi { ptr, i32 } [ %i.v, %bb.r ], [ %.pn.pn.pn.pn, %bb.ae ], [ %i.z, %bb.v ], [ %i.y, %bb.u ], [ %i.x, %bb.t ], [ %i.w, %bb.s ]
  call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1713) dereferenceable(1713) %0) #19
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar11polar_thetaC2Ev(ptr noundef nonnull align 8 dereferenceable(1640) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6colvar3cvcC2Ev(ptr noundef nonnull align 8 dereferenceable(1608) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11polar_thetaE, i64 16), ptr %0, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11polar_thetaE, i64 248), ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.c, ptr noundef nonnull align 1 dereferenceable(10) @.str.17, i64 10, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.d, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 0, ptr %i.e, align 2, !tbaa !126
  %i.f = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !126
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.k = invoke noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6colvar3cvc13init_as_angleEv(ptr noundef nonnull align 8 dereferenceable(1608) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !tbaa !126
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %.pn5 = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1608) %0) #19
  resume { ptr, i32 } %.pn5
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar9polar_phiC2Ev(ptr noundef nonnull align 8 dereferenceable(1640) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6colvar3cvcC2Ev(ptr noundef nonnull align 8 dereferenceable(1608) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar9polar_phiE, i64 16), ptr %0, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar9polar_phiE, i64 248), ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !123
  store i64 7595409223751331696, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 8, ptr %i.d, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !126
  %i.f = invoke noundef i32 @_ZN6colvar3cvc17set_function_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !126
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.k = invoke noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6colvar3cvc22init_as_periodic_angleEv(ptr noundef nonnull align 8 dereferenceable(1608) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !tbaa !126
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %.pn5 = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(1608) %0) #19
  resume { ptr, i32 } %.pn5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!10 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !9, i64 0}
!11 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!14 = !{!"_ZTSSt18_Rb_tree_node_base", !11, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSSt15_Rb_tree_header", !14, i64 0, !15, i64 32}
!17 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !10, i64 0, !16, i64 8}
!18 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !17, i64 0}
!19 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSt4lessIS5_ESaISt4pairIKS5_S7_EEE", !18, i64 0}
!20 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !10, i64 0, !16, i64 8}
!21 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !20, i64 0}
!22 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK11colvarvalueSt4lessIS5_ESaISt4pairIKS5_S8_EEE", !21, i64 0}
!23 = !{!"_ZTS12colvarparams", !19, i64 8, !22, i64 56}
!24 = !{!"p1 omnipotent char", !12, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !15, i64 8, !5, i64 16}
!27 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !12, i64 0}
!28 = !{!"_ZTSNSt8__detail15_List_node_baseE", !27, i64 0, !27, i64 8}
!29 = !{!"_ZTSNSt8__detail17_List_node_headerE", !28, i64 0, !15, i64 16}
!30 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !29, i64 0}
!31 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !31, i64 0}
!33 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !10, i64 0, !16, i64 8}
!34 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !33, i64 0}
!35 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11colvarparse12key_set_modeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !34, i64 0}
!36 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEE10_List_implE", !29, i64 0}
!37 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEEE", !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx114listImSaImEEE", !37, i64 0}
!39 = !{!"_ZTS11colvarparse", !23, i64 0, !26, i64 104, !26, i64 136, !32, i64 168, !35, i64 192, !38, i64 240, !38, i64 264, !26, i64 288}
!40 = !{!"p1 _ZTSN10colvardeps13feature_stateE", !12, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIN10colvardeps13feature_stateESaIS1_EE", !43, i64 0}
!45 = !{!"any p2 pointer", !12, i64 0}
!46 = !{!"p2 _ZTS10colvardeps", !45, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIP10colvardepsSaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIP10colvardepsSaIS1_EE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIP10colvardepsSaIS1_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIP10colvardepsSaIS1_EE", !49, i64 0}
!51 = !{!"_ZTS10colvardeps", !26, i64 8, !6, i64 40, !44, i64 48, !50, i64 72, !50, i64 96}
!52 = !{!"double", !5, i64 0}
!53 = !{!"p2 _ZTSN12colvarmodule10atom_groupE", !45, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIPN12colvarmodule10atom_groupESaIS2_EE", !56, i64 0}
!58 = !{!"bool", !5, i64 0}
!59 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !62, i64 0}
!64 = !{!"_ZTSN11colvarvalue4TypeE", !5, i64 0}
!65 = !{!"_ZTSN12colvarmodule7rvectorE", !52, i64 0, !52, i64 8, !52, i64 16}
!66 = !{!"_ZTSN12colvarmodule10quaternionE", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!67 = !{!"p1 double", !12, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !68, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorIdSaIdEE", !70, i64 0}
!72 = !{!"_ZTSN12colvarmodule8vector1dIdEE", !71, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!74 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE12_Vector_implE", !73, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE", !74, i64 0}
!76 = !{!"_ZTSSt6vectorIN11colvarvalue4TypeESaIS1_EE", !75, i64 0}
!77 = !{!"p1 int", !12, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !78, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorIiSaIiEE", !80, i64 0}
!82 = !{!"_ZTS11colvarvalue", !64, i64 0, !52, i64 8, !65, i64 16, !66, i64 40, !72, i64 72, !76, i64 96, !81, i64 120, !81, i64 144}
!83 = !{!"_ZTSN6colvar3cvcE", !39, i64 0, !51, i64 320, !26, i64 440, !26, i64 472, !52, i64 504, !6, i64 512, !52, i64 520, !52, i64 528, !57, i64 536, !58, i64 560, !63, i64 568, !82, i64 592, !82, i64 760, !82, i64 928, !82, i64 1096, !82, i64 1264, !82, i64 1432, !52, i64 1600}
!84 = !{!"p1 _ZTSN12colvarmodule10atom_groupE", !12, i64 0}
!85 = !{!"_ZTSN6colvar9polar_phiE", !83, i64 0, !84, i64 1608, !52, i64 1616, !52, i64 1624, !52, i64 1632}
!86 = !{!85, !84, i64 1608}
!87 = !{!"vtable pointer", !4, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!52, !52, i64 0}
!90 = !{!83, !52, i64 600}
!91 = !{!65, !52, i64 16}
!92 = !{!"_ZTSN6colvar11polar_thetaE", !83, i64 0, !84, i64 1608, !52, i64 1616, !52, i64 1624, !52, i64 1632}
!93 = !{!92, !84, i64 1608}
!94 = !{!92, !52, i64 1616}
!95 = !{!"_ZTSN6colvar5angleE", !83, i64 0, !84, i64 1608, !84, i64 1616, !84, i64 1624, !65, i64 1632, !65, i64 1656, !52, i64 1680, !52, i64 1688, !65, i64 1696, !65, i64 1720, !58, i64 1744}
!96 = !{!95, !84, i64 1608}
!97 = !{!95, !84, i64 1616}
!98 = !{!95, !84, i64 1624}
!99 = !{i64 0, i64 8, !89, i64 8, i64 8, !89, i64 16, i64 8, !89}
!100 = !{!41, !40, i64 0}
!101 = !{!"_ZTSN10colvardeps13feature_stateE", !58, i64 0, !58, i64 1, !6, i64 4, !81, i64 8}
!102 = !{!101, !58, i64 1}
!103 = !{i8 0, i8 2}
!104 = !{}
!105 = !{!65, !52, i64 0}
!106 = !{!65, !52, i64 8}
!107 = !{!83, !52, i64 936}
!108 = !{!82, !64, i64 0}
!109 = !{!64, !64, i64 0}
!110 = !{!82, !52, i64 8}
!111 = !{i64 0, i64 8, !89, i64 8, i64 8, !89, i64 16, i64 8, !89, i64 24, i64 8, !89}
!112 = !{!78, !77, i64 0}
!113 = !{!78, !77, i64 16}
!114 = !{!73, !12, i64 0}
!115 = !{!73, !12, i64 16}
!116 = !{!68, !67, i64 0}
!117 = !{!68, !67, i64 8}
!118 = !{!68, !67, i64 16}
!119 = !{!"_ZTSN6colvar12dipole_angleE", !83, i64 0, !84, i64 1608, !84, i64 1616, !84, i64 1624, !65, i64 1632, !65, i64 1656, !52, i64 1680, !52, i64 1688, !65, i64 1696, !65, i64 1720, !58, i64 1744}
!120 = !{!119, !84, i64 1608}
!121 = !{!119, !84, i64 1616}
!122 = !{!119, !84, i64 1624}
!123 = !{!25, !24, i64 0}
!124 = !{!26, !24, i64 0}
!125 = !{!26, !15, i64 8}
!126 = !{!5, !5, i64 0}
!127 = !{!"_ZTSN6colvar8dihedralE", !83, i64 0, !84, i64 1608, !84, i64 1616, !84, i64 1624, !84, i64 1632, !65, i64 1640, !65, i64 1664, !65, i64 1688, !58, i64 1712}
!128 = !{!127, !84, i64 1608}
!129 = !{!127, !84, i64 1616}
!130 = !{!127, !84, i64 1624}
!131 = !{!127, !84, i64 1632}
!132 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!133 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!134 = !{!85, !52, i64 1616}
!135 = !{!85, !52, i64 1624}
!136 = !{!85, !52, i64 1632}
!137 = !{!92, !52, i64 1624}
!138 = !{!92, !52, i64 1632}
!139 = distinct !{!139, i1 true, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!140 = distinct !{!140, !139, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!142 = distinct !{!142, !141, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!143 = !{!140}
!144 = !{!95, !52, i64 1680}
!145 = !{!142}
!146 = !{!95, !52, i64 1688}
!147 = distinct !{!147, i1 true, !"_ZplRKN12colvarmodule7rvectorES2_"}
!148 = distinct !{!148, !147, !"_ZplRKN12colvarmodule7rvectorES2_: argument 0"}
!149 = distinct !{!149, i1 true, !"_ZmlRKN12colvarmodule7rvectorEd"}
!150 = distinct !{!150, !149, !"_ZmlRKN12colvarmodule7rvectorEd: argument 0"}
!151 = !{!148}
!152 = !{!150}
!153 = distinct !{!153, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!154 = distinct !{!154, !153, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!155 = distinct !{!155, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!156 = distinct !{!156, !155, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!157 = distinct !{!157, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!158 = distinct !{!158, !157, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!159 = distinct !{!159, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!160 = distinct !{!160, !159, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!161 = distinct !{!161, i1 true, !"_ZmiRKN12colvarmodule7rvectorES2_"}
!162 = distinct !{!162, !161, !"_ZmiRKN12colvarmodule7rvectorES2_: argument 0"}
!163 = !{!154}
!164 = !{!156}
!165 = !{!158}
!166 = !{!160}
!167 = !{!119, !52, i64 1680}
!168 = !{!162}
!169 = !{!119, !52, i64 1688}
!170 = distinct !{!170, i1 false, !"LVerDomain"}
!171 = distinct !{!171, !170}
end_hunk_1
