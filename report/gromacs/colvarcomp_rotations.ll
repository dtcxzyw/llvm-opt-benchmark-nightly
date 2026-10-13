Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_rotations?download=true
inline.NumInlined: 604
inline.NumDeleted: 198
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6colvar3cvc8featuresEv
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6colvar3cvc8featuresEv(ptr noundef nonnull align 8 dereferenceable(1608) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @_ZN6colvar3cvc12cvc_featuresE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6colvar3cvc15modify_featuresEv(ptr noundef nonnull align 8 dereferenceable(1608) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @_ZN6colvar3cvc12cvc_featuresE
}

declare void @_ZN6colvar3cvc14get_atom_listsEv(ptr dead_on_unwind writable sret(%"class.std::vector.0") align 8, ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

declare void @_ZN6colvar3cvc9read_dataEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar17orientation_angle10calc_valueEv(ptr noundef nonnull align 8 dereferenceable(2312) initializes((1616, 1640), (1680, 1688)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.5", align 16    ; 7 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1528
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.f = load double, ptr %i.e, align 8, !tbaa !115, !noalias !176
  %i.g = fneg double %i.f
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !108, !noalias !176
  %i.i = fneg <2 x double> %i.h
  store <2 x double> %i.i, ptr %2, align 16, !tbaa !108, !alias.scope !176
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.g, ptr %i.j, align 16, !tbaa !115, !alias.scope !176
  call void @_ZNK12colvarmodule10atom_group17positions_shiftedERKNS_7rvectorE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1712) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101
  %i.o = load <2 x ptr>, ptr %1, align 16, !tbaa !119
  store <2 x ptr> %i.o, ptr %i.k, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !101
  store ptr %i.q, ptr %i.m, align 8, !tbaa !101
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #17
  %.pr = load ptr, ptr %1, align 16, !tbaa !100   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  %i.u = load ptr, ptr %i.p, align 16, !tbaa !101
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %.pr to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.x) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %_ZNSt6vectorIdSaIdEEaSEOS1_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !97
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1144
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !107
  call void @_ZN12colvarmodule8rotation25calc_optimal_rotation_soaERKSt6vectorIdSaIdEES5_mm(ptr noundef nonnull align 8 dereferenceable(568) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ab, i64 noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.ag = load double, ptr %i.af, align 8, !tbaa !123 ; 3 uses
  %i.ah = fcmp ult double %i.ag, 0.000000e+00
  %i.ai = fneg double %i.ag
  %.sink4 = select i1 %i.ah, double %i.ai, double %i.ag
  %i.aj = call noundef double @acos(double noundef %.sink4) #18
  %.sink = fmul double %i.aj, f0x405CA5DC1A63C1F8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %.sink, ptr %i.ak, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar17orientation_angle14calc_gradientsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2312) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.b = load double, ptr %i.a, align 8, !tbaa !123 ; 5 uses
  %i.c = fcmp oge double %i.b, 0.000000e+00
  %i.d = fmul double %i.b, %i.b
  %i.e = fcmp olt double %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fneg double %i.b
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.b, double 1.000000e+00)
  %i.h = tail call noundef double @sqrt(double noundef %i.g) #18
  %i.i = fdiv double f0xC05CA5DC1A63C1F8, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi double [ %i.i, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.k = fneg double %i.j
  %i.l = select i1 %i.c, double %i.j, double %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98
  tail call void @_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq(ptr noundef nonnull align 8 dereferenceable(712) %i.n, i32 noundef 2)
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !98   ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.q = load double, ptr %i.p, align 8, !tbaa !108, !noalias !183
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.v = load double, ptr %i.u, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %i.ac = load double, ptr %i.r, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %i.ad = fadd double %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.af = fneg double %i.ab
  %i.ag = load <2 x double>, ptr %i.s, align 8, !tbaa !108, !noalias !183 ; 3 uses
  %i.ah = load <2 x double>, ptr %i.x, align 8, !tbaa !108, !noalias !183 ; 4 uses
  %i.ai = insertelement <2 x double> %i.ah, double %i.q, i64 0 ; 2 uses
  %i.aj = fadd <2 x double> %i.ai, %i.ag          ; 2 uses
  %i.ak = load <2 x double>, ptr %i.w, align 8, !tbaa !108, !noalias !183 ; 2 uses
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.am = fsub <2 x double> %i.aj, %i.al
  %i.an = fadd <2 x double> %i.aj, %i.al
  %i.ao = shufflevector <2 x double> %i.am, <2 x double> %i.an, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ae, align 8, !tbaa !108, !noalias !183 ; 3 uses
  %i.aq = insertelement <2 x double> %i.ap, double %i.v, i64 0 ; 3 uses
  %i.ar = fsub <2 x double> %i.ao, %i.aq
  %i.as = fadd <2 x double> %i.ao, %i.aq
  %i.at = shufflevector <2 x double> %i.ar, <2 x double> %i.as, <2 x i32> <i32 0, i32 3>
  %i.au = insertelement <2 x double> poison, double %i.l, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aw = fmul <2 x double> %i.av, %i.at          ; 3 uses
  %i.ax = load <2 x double>, ptr %i.y, align 8, !tbaa !108, !noalias !183 ; 3 uses
  %i.ay = load double, ptr %i.t, align 8, !tbaa !108, !noalias !183
  %foldExtExtBinop = fsub <2 x double> %i.ax, %i.ah
  %i.az = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ba = fsub double %i.az, %i.ay
  %i.bb = load <2 x double>, ptr %i.z, align 8, !tbaa !108, !noalias !183 ; 3 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  %i.bd = fadd double %i.ba, %i.bc
  %i.be = fmul double %i.l, %i.bd                 ; 2 uses
  %i.bf = shufflevector <2 x double> %i.ag, <2 x double> %i.ai, <2 x i32> <i32 1, i32 2>
  %i.bg = shufflevector <2 x double> %i.ah, <2 x double> %i.ag, <2 x i32> <i32 1, i32 2>
  %i.bh = fsub <2 x double> %i.bf, %i.bg          ; 2 uses
  %i.bi = fadd <2 x double> %i.bh, %i.ak
  %i.bj = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = fsub <2 x double> %i.bi, %i.bj
  %i.bl = fmul <2 x double> %i.av, %i.bk          ; 3 uses
  %i.bm = extractelement <2 x double> %i.ap, i64 0
  %i.bn = fadd double %i.ad, %i.bm
  %i.bo = extractelement <2 x double> %i.bb, i64 1
  %i.bp = fadd double %i.bn, %i.bo
  %i.bq = fmul double %i.l, %i.bp                 ; 2 uses
  %i.br = insertelement <2 x double> %i.ah, double %i.af, i64 1 ; 2 uses
  %i.bs = insertelement <2 x double> %i.ax, double %i.ac, i64 1 ; 2 uses
  %i.bt = fadd <2 x double> %i.br, %i.bs
  %i.bu = fsub <2 x double> %i.br, %i.bs
  %i.bv = shufflevector <2 x double> %i.bt, <2 x double> %i.bu, <2 x i32> <i32 0, i32 3>
  %i.bw = shufflevector <2 x double> %i.ax, <2 x double> %i.ap, <2 x i32> <i32 1, i32 2>
  %i.bx = fadd <2 x double> %i.bv, %i.bw
  %i.by = fadd <2 x double> %i.bx, %i.bb
  %i.bz = fmul <2 x double> %i.av, %i.by          ; 3 uses
  %shift = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop50 = fsub <2 x double> %shift, %i.al
  %i.ca = extractelement <2 x double> %foldExtExtBinop50, i64 0
  %i.cb = fadd double %i.ca, %i.v
  %i.cc = fmul double %i.l, %i.cb                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !102 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1144
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !107 ; 9 uses
  %.not = icmp eq i64 %i.cg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !125, !noalias !184 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !125, !noalias !184 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !125, !noalias !184 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 1272
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !100 ; 3 uses
  %.idx.i = shl i64 %i.cg, 4                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.cg, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cp = ptrtoaddr ptr %i.co to i64              ; 5 uses
  %i.cq = ptrtoaddr ptr %i.cm to i64              ; 3 uses
  %i.cr = ptrtoaddr ptr %i.ck to i64              ; 3 uses
  %i.cs = ptrtoaddr ptr %i.ci to i64              ; 3 uses
  %i.ct = shl i64 %i.cg, 3                        ; 2 uses
  %i.cu = add i64 %i.ct, -1
  %diff.check = icmp ult i64 %i.cu, 15
  %i.cv = sub i64 %i.cs, %i.cp
  %diff.check13 = icmp ugt i64 %i.cv, -16
  %conflict.rdx14 = or i1 %diff.check, %diff.check13
  %i.cw = sub i64 %i.cr, %i.cp
  %diff.check15 = icmp ugt i64 %i.cw, -16
  %conflict.rdx16 = or i1 %conflict.rdx14, %diff.check15
  %i.cx = sub i64 %i.cq, %i.cp
  %diff.check17 = icmp ugt i64 %i.cx, -16
  %conflict.rdx18 = or i1 %conflict.rdx16, %diff.check17
  %i.cy = add i64 %i.ct, %i.cp                    ; 3 uses
  %i.cz = sub i64 %i.cs, %i.cy
  %diff.check19 = icmp ugt i64 %i.cz, -16
  %conflict.rdx20 = or i1 %conflict.rdx18, %diff.check19
  %i.da = sub i64 %i.cr, %i.cy
  %diff.check21 = icmp ugt i64 %i.da, -16
  %conflict.rdx22 = or i1 %conflict.rdx20, %diff.check21
  %i.db = sub i64 %i.cq, %i.cy
  %diff.check23 = icmp ugt i64 %i.db, -16
  %conflict.rdx24 = or i1 %conflict.rdx22, %diff.check23
  %i.dc = add i64 %.idx.i, %i.cp                  ; 3 uses
  %i.dd = sub i64 %i.cs, %i.dc
  %diff.check25 = icmp ugt i64 %i.dd, -16
  %conflict.rdx26 = or i1 %conflict.rdx24, %diff.check25
  %i.de = sub i64 %i.cr, %i.dc
  %diff.check27 = icmp ugt i64 %i.de, -16
  %conflict.rdx28 = or i1 %conflict.rdx26, %diff.check27
  %i.df = sub i64 %i.cq, %i.dc
  %diff.check29 = icmp ugt i64 %i.df, -16
  %conflict.rdx30 = or i1 %conflict.rdx28, %diff.check29
  br i1 %conflict.rdx30, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cg, -2                      ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat32 = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat34 = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat36 = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat38 = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat40 = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert41 = insertelement <2 x double> poison, double %i.bq, i64 0
  %broadcast.splat42 = shufflevector <2 x double> %broadcast.splatinsert41, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert43 = insertelement <2 x double> poison, double %i.be, i64 0
  %broadcast.splat44 = shufflevector <2 x double> %broadcast.splatinsert43, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat46 = shufflevector <2 x double> %broadcast.splatinsert45, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %index
  %wide.load = load <2 x double>, ptr %i.dg, align 8, !tbaa !108, !noalias !184 ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %index
  %wide.load47 = load <2 x double>, ptr %i.dh, align 8, !tbaa !108, !noalias !184 ; 3 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %index
  %wide.load48 = load <2 x double>, ptr %i.di, align 8, !tbaa !108, !noalias !184 ; 3 uses
  %i.dj = fmul <2 x double> %broadcast.splat, %wide.load47
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat32, <2 x double> %wide.load, <2 x double> %i.dj)
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat34, <2 x double> %wide.load48, <2 x double> %i.dk)
  %i.dm = fmul <2 x double> %broadcast.splat36, %wide.load47
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat38, <2 x double> %wide.load, <2 x double> %i.dm)
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat40, <2 x double> %wide.load48, <2 x double> %i.dn)
  %i.dp = fmul <2 x double> %broadcast.splat42, %wide.load47
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat44, <2 x double> %wide.load, <2 x double> %i.dp)
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %wide.load48, <2 x double> %i.dq)
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index ; 3 uses
  store <2 x double> %i.dl, ptr %i.ds, align 8, !tbaa !108
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %i.cg
  store <2 x double> %i.do, ptr %i.dt, align 8, !tbaa !108
  %i.du = getelementptr i8, ptr %i.ds, i64 %.idx.i
  store <2 x double> %i.dr, ptr %i.du, align 8, !tbaa !108
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.et, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 5 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %.011
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !108, !noalias !184 ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %.011
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !108, !noalias !184 ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.011
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !108, !noalias !184 ; 2 uses
  %i.ec = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.bl, %i.ed
  %i.ef = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.eg, <2 x double> %i.ee)
  %i.ei = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ej, <2 x double> %i.eh) ; 2 uses
  %i.el = fmul double %i.bq, %i.dz
  %i.em = tail call double @llvm.fmuladd.f64(double %i.be, double %i.dx, double %i.el)
  %i.en = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.eb, double %i.em)
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.011 ; 3 uses
  %i.ep = extractelement <2 x double> %i.ek, i64 0
  store double %i.ep, ptr %i.eo, align 8, !tbaa !108
  %i.eq = getelementptr [8 x i8], ptr %i.eo, i64 %i.cg
  %i.er = extractelement <2 x double> %i.ek, i64 1
  store double %i.er, ptr %i.eq, align 8, !tbaa !108
  %i.es = getelementptr i8, ptr %i.eo, i64 %.idx.i
  store double %i.en, ptr %i.es, align 8, !tbaa !108
  %i.et = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.et, %i.cg
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !182
}

declare void @_ZN6colvar3cvc15debug_gradientsEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

declare void @_ZN6colvar3cvc17collect_gradientsERKSt6vectorIiSaIiEERS1_IN12colvarmodule7rvectorESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @_ZN6colvar3cvc19calc_force_invgradsEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

declare void @_ZN6colvar3cvc24calc_Jacobian_derivativeEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar17orientation_angle11apply_forceERK11colvarvalue(ptr noundef nonnull align 8 dereferenceable(2312) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6colvar3cvc11apply_forceERK11colvarvalue(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK6colvar17orientation_angle5dist2ERK11colvarvalueS3_(ptr noundef nonnull align 8 dereferenceable(2312) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(168) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK6colvar3cvc5dist2ERK11colvarvalueS3_(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(168) %2)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6colvar17orientation_angle11dist2_lgradERK11colvarvalueS3_(ptr dead_on_unwind noalias writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(2312) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %3) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNK6colvar3cvc11dist2_lgradERK11colvarvalueS3_(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(1608) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6colvar17orientation_angle11dist2_rgradERK11colvarvalueS3_(ptr dead_on_unwind noalias writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(2312) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %3) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNK6colvar3cvc11dist2_rgradERK11colvarvalueS3_(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(1608) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZNK6colvar17orientation_angle4wrapER11colvarvalue(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZN6colvar3cvc14get_param_gradERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef i32 @_ZN6colvar3cvc23init_total_force_paramsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar17orientation_angleD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11orientationE, i64 16), ptr %i.a, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11orientationE, i64 248), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 712) #17, !inline_history !99
  br label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1384
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.e) #18, !inline_history !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #17, !inline_history !99
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i, label %_ZN6colvar11orientationD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #17, !inline_history !99
  br label %_ZN6colvar11orientationD2Ev.exit

_ZN6colvar11orientationD2Ev.exit:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(2312) %i.a) #18, !inline_history !99
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar17orientation_angleD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320
  tail call void @_ZN6colvar17orientation_angleD0Ev(ptr noundef nonnull align 8 dereferenceable(2312) %i.a) #18
  ret void
}

; Function Attrs: uwtable
end_hunk_0
begin_hunk_1_@_ZN6colvar16orientation_projD0Ev:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #17, !inline_history !99
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i, label %_ZN6colvar11orientationD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #17, !inline_history !99
  br label %_ZN6colvar11orientationD2Ev.exit

_ZN6colvar11orientationD2Ev.exit:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(2312) %0) #18, !inline_history !99
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2312) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar16orientation_proj10calc_valueEv(ptr noundef nonnull align 8 dereferenceable(2312) initializes((1616, 1640), (1680, 1688)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.5", align 16    ; 7 uses
  %2 = alloca %"class.colvarmodule::rvector", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1528
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.f = load double, ptr %i.e, align 8, !tbaa !115, !noalias !187
  %i.g = fneg double %i.f
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !108, !noalias !187
  %i.i = fneg <2 x double> %i.h
  store <2 x double> %i.i, ptr %2, align 16, !tbaa !108, !alias.scope !187
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.g, ptr %i.j, align 16, !tbaa !115, !alias.scope !187
  call void @_ZNK12colvarmodule10atom_group17positions_shiftedERKNS_7rvectorE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1712) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101
  %i.o = load <2 x ptr>, ptr %1, align 16, !tbaa !119
  store <2 x ptr> %i.o, ptr %i.k, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !101
  store ptr %i.q, ptr %i.m, align 8, !tbaa !101
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #17
  %.pr = load ptr, ptr %1, align 16, !tbaa !100   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  %i.u = load ptr, ptr %i.p, align 16, !tbaa !101
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %.pr to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.x) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %_ZNSt6vectorIdSaIdEEaSEOS1_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !97
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1144
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !107
  call void @_ZN12colvarmodule8rotation25calc_optimal_rotation_soaERKSt6vectorIdSaIdEES5_mm(ptr noundef nonnull align 8 dereferenceable(568) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ab, i64 noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.ag = load double, ptr %i.af, align 8, !tbaa !123 ; 2 uses
  %i.ah = fmul double %i.ag, 2.000000e+00
  %i.ai = call double @llvm.fmuladd.f64(double %i.ah, double %i.ag, double -1.000000e+00)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.ai, ptr %i.aj, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar16orientation_proj14calc_gradientsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2312) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.b = load double, ptr %i.a, align 8, !tbaa !123
  %i.c = fmul double %i.b, 4.000000e+00           ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  tail call void @_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq(ptr noundef nonnull align 8 dereferenceable(712) %i.e, i32 noundef 2)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !98   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load double, ptr %i.g, align 8, !tbaa !108, !noalias !194
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.m = load double, ptr %i.l, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.s = load double, ptr %i.r, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %i.t = load double, ptr %i.i, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %i.u = fadd double %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.w = fneg double %i.s
  %i.x = load <2 x double>, ptr %i.j, align 8, !tbaa !108, !noalias !194 ; 3 uses
  %i.y = load <2 x double>, ptr %i.o, align 8, !tbaa !108, !noalias !194 ; 4 uses
  %i.z = insertelement <2 x double> %i.y, double %i.h, i64 0 ; 2 uses
  %i.aa = fadd <2 x double> %i.z, %i.x            ; 2 uses
  %i.ab = load <2 x double>, ptr %i.n, align 8, !tbaa !108, !noalias !194 ; 2 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ad = fsub <2 x double> %i.aa, %i.ac
  %i.ae = fadd <2 x double> %i.aa, %i.ac
  %i.af = shufflevector <2 x double> %i.ad, <2 x double> %i.ae, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ag = load <2 x double>, ptr %i.v, align 8, !tbaa !108, !noalias !194 ; 3 uses
  %i.ah = insertelement <2 x double> %i.ag, double %i.m, i64 0 ; 3 uses
  %i.ai = fsub <2 x double> %i.af, %i.ah
  %i.aj = fadd <2 x double> %i.af, %i.ah
  %i.ak = shufflevector <2 x double> %i.ai, <2 x double> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.al = insertelement <2 x double> poison, double %i.c, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.an = fmul <2 x double> %i.am, %i.ak          ; 3 uses
  %i.ao = load <2 x double>, ptr %i.p, align 8, !tbaa !108, !noalias !194 ; 3 uses
  %i.ap = load double, ptr %i.k, align 8, !tbaa !108, !noalias !194
  %foldExtExtBinop = fsub <2 x double> %i.ao, %i.y
  %i.aq = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ar = fsub double %i.aq, %i.ap
  %i.as = load <2 x double>, ptr %i.q, align 8, !tbaa !108, !noalias !194 ; 3 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  %i.au = fadd double %i.ar, %i.at
  %i.av = fmul double %i.c, %i.au                 ; 2 uses
  %i.aw = shufflevector <2 x double> %i.x, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.ax = shufflevector <2 x double> %i.y, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.ay = fsub <2 x double> %i.aw, %i.ax          ; 2 uses
  %i.az = fadd <2 x double> %i.ay, %i.ab
  %i.ba = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = fsub <2 x double> %i.az, %i.ba
  %i.bc = fmul <2 x double> %i.am, %i.bb          ; 3 uses
  %i.bd = extractelement <2 x double> %i.ag, i64 0
  %i.be = fadd double %i.u, %i.bd
  %i.bf = extractelement <2 x double> %i.as, i64 1
  %i.bg = fadd double %i.be, %i.bf
  %i.bh = fmul double %i.c, %i.bg                 ; 2 uses
  %i.bi = insertelement <2 x double> %i.y, double %i.w, i64 1 ; 2 uses
  %i.bj = insertelement <2 x double> %i.ao, double %i.t, i64 1 ; 2 uses
  %i.bk = fadd <2 x double> %i.bi, %i.bj
  %i.bl = fsub <2 x double> %i.bi, %i.bj
  %i.bm = shufflevector <2 x double> %i.bk, <2 x double> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.bn = shufflevector <2 x double> %i.ao, <2 x double> %i.ag, <2 x i32> <i32 1, i32 2>
  %i.bo = fadd <2 x double> %i.bm, %i.bn
  %i.bp = fadd <2 x double> %i.bo, %i.as
  %i.bq = fmul <2 x double> %i.am, %i.bp          ; 3 uses
  %shift = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = fsub <2 x double> %shift, %i.ac
  %i.br = extractelement <2 x double> %foldExtExtBinop49, i64 0
  %i.bs = fadd double %i.br, %i.m
  %i.bt = fmul double %i.c, %i.bs                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !102 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1144
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !107 ; 9 uses
  %.not = icmp eq i64 %i.bx, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !125, !noalias !195 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !125, !noalias !195 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !125, !noalias !195 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 1272
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !100 ; 3 uses
  %.idx.i = shl i64 %i.bx, 4                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bx, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cg = ptrtoaddr ptr %i.cf to i64              ; 5 uses
  %i.ch = ptrtoaddr ptr %i.cd to i64              ; 3 uses
  %i.ci = ptrtoaddr ptr %i.cb to i64              ; 3 uses
  %i.cj = ptrtoaddr ptr %i.bz to i64              ; 3 uses
  %i.ck = shl i64 %i.bx, 3                        ; 2 uses
  %i.cl = add i64 %i.ck, -1
  %diff.check = icmp ult i64 %i.cl, 15
  %i.cm = sub i64 %i.cj, %i.cg
  %diff.check12 = icmp ugt i64 %i.cm, -16
  %conflict.rdx13 = or i1 %diff.check, %diff.check12
  %i.cn = sub i64 %i.ci, %i.cg
  %diff.check14 = icmp ugt i64 %i.cn, -16
  %conflict.rdx15 = or i1 %conflict.rdx13, %diff.check14
  %i.co = sub i64 %i.ch, %i.cg
  %diff.check16 = icmp ugt i64 %i.co, -16
  %conflict.rdx17 = or i1 %conflict.rdx15, %diff.check16
  %i.cp = add i64 %i.ck, %i.cg                    ; 3 uses
  %i.cq = sub i64 %i.cj, %i.cp
  %diff.check18 = icmp ugt i64 %i.cq, -16
  %conflict.rdx19 = or i1 %conflict.rdx17, %diff.check18
  %i.cr = sub i64 %i.ci, %i.cp
  %diff.check20 = icmp ugt i64 %i.cr, -16
  %conflict.rdx21 = or i1 %conflict.rdx19, %diff.check20
  %i.cs = sub i64 %i.ch, %i.cp
  %diff.check22 = icmp ugt i64 %i.cs, -16
  %conflict.rdx23 = or i1 %conflict.rdx21, %diff.check22
  %i.ct = add i64 %.idx.i, %i.cg                  ; 3 uses
  %i.cu = sub i64 %i.cj, %i.ct
  %diff.check24 = icmp ugt i64 %i.cu, -16
  %conflict.rdx25 = or i1 %conflict.rdx23, %diff.check24
  %i.cv = sub i64 %i.ci, %i.ct
  %diff.check26 = icmp ugt i64 %i.cv, -16
  %conflict.rdx27 = or i1 %conflict.rdx25, %diff.check26
  %i.cw = sub i64 %i.ch, %i.ct
  %diff.check28 = icmp ugt i64 %i.cw, -16
  %conflict.rdx29 = or i1 %conflict.rdx27, %diff.check28
  br i1 %conflict.rdx29, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, -2                      ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat31 = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat33 = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat35 = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat37 = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat39 = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert40 = insertelement <2 x double> poison, double %i.bh, i64 0
  %broadcast.splat41 = shufflevector <2 x double> %broadcast.splatinsert40, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <2 x double> poison, double %i.av, i64 0
  %broadcast.splat43 = shufflevector <2 x double> %broadcast.splatinsert42, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %i.bt, i64 0
  %broadcast.splat45 = shufflevector <2 x double> %broadcast.splatinsert44, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %index
  %wide.load = load <2 x double>, ptr %i.cx, align 8, !tbaa !108, !noalias !195 ; 3 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %index
  %wide.load46 = load <2 x double>, ptr %i.cy, align 8, !tbaa !108, !noalias !195 ; 3 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %index
  %wide.load47 = load <2 x double>, ptr %i.cz, align 8, !tbaa !108, !noalias !195 ; 3 uses
  %i.da = fmul <2 x double> %broadcast.splat, %wide.load46
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat31, <2 x double> %wide.load, <2 x double> %i.da)
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat33, <2 x double> %wide.load47, <2 x double> %i.db)
  %i.dd = fmul <2 x double> %broadcast.splat35, %wide.load46
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat37, <2 x double> %wide.load, <2 x double> %i.dd)
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat39, <2 x double> %wide.load47, <2 x double> %i.de)
  %i.dg = fmul <2 x double> %broadcast.splat41, %wide.load46
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat43, <2 x double> %wide.load, <2 x double> %i.dg)
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat45, <2 x double> %wide.load47, <2 x double> %i.dh)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index ; 3 uses
  store <2 x double> %i.dc, ptr %i.dj, align 8, !tbaa !108
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %i.bx
  store <2 x double> %i.df, ptr %i.dk, align 8, !tbaa !108
  %i.dl = getelementptr i8, ptr %i.dj, i64 %.idx.i
  store <2 x double> %i.di, ptr %i.dl, align 8, !tbaa !108
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.010.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010 = phi i64 [ %i.ek, %scalar.ph ], [ %.010.ph, %scalar.ph.preheader ] ; 5 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.010
  %i.do = load double, ptr %i.dn, align 8, !tbaa !108, !noalias !195 ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.010
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !108, !noalias !195 ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.010
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !108, !noalias !195 ; 2 uses
  %i.dt = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x double> %i.bc, %i.du
  %i.dw = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.dx, <2 x double> %i.dv)
  %i.dz = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.ea, <2 x double> %i.dy) ; 2 uses
  %i.ec = fmul double %i.bh, %i.dq
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.av, double %i.do, double %i.ec)
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.ds, double %i.ed)
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.010 ; 3 uses
  %i.eg = extractelement <2 x double> %i.eb, i64 0
  store double %i.eg, ptr %i.ef, align 8, !tbaa !108
  %i.eh = getelementptr [8 x i8], ptr %i.ef, i64 %i.bx
  %i.ei = extractelement <2 x double> %i.eb, i64 1
  store double %i.ei, ptr %i.eh, align 8, !tbaa !108
  %i.ej = getelementptr i8, ptr %i.ef, i64 %.idx.i
  store double %i.ee, ptr %i.ej, align 8, !tbaa !108
  %i.ek = add nuw i64 %.010, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !193
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar16orientation_projD1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11orientationE, i64 16), ptr %i.a, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11orientationE, i64 248), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 712) #17, !inline_history !99
  br label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1384
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.e) #18, !inline_history !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #17, !inline_history !99
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i, label %_ZN6colvar11orientationD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #17, !inline_history !99
  br label %_ZN6colvar11orientationD2Ev.exit

_ZN6colvar11orientationD2Ev.exit:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %bb.c
  tail call void @_ZN6colvar3cvcD2Ev(ptr noundef nonnull align 8 dead_on_return(1608) dereferenceable(2312) %i.a) #18, !inline_history !99
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn320_N6colvar16orientation_projD0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -320
  tail call void @_ZN6colvar16orientation_projD0Ev(ptr noundef nonnull align 8 dereferenceable(2312) %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar4tiltD0Ev(ptr noundef nonnull align 8 dereferenceable(2336) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6colvar11orientationE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar11orientationE, i64 248), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 712) #17, !inline_history !99
  br label %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6colvar11orientation25rotation_derivative_impl_EEclEPS2_.exit.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1704
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.e) #18, !inline_history !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #17, !inline_history !99
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt10unique_ptrIN6colvar11orientation25rotation_derivative_impl_ESt14default_deleteIS2_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i, label %_ZN6colvar11orientationD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #17, !inline_history !99
end_hunk_1
