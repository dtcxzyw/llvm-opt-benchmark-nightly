Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvaratoms?download=true
inline.NumInlined: 2814
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN12colvarmodule10atom_group15read_velocitiesEv:bb.a
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #29, !noalias !750
  br label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit

bb.f:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %2, align 8, !tbaa !42, !noalias !750 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.an
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.f
  %i.cl = load i64, ptr %i.an, align 8, !tbaa !32, !noalias !750
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #29, !noalias !750
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !750
  br label %common.resume

_ZN17colvarproxy_atoms17get_atom_velocityEi.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !750
  %i.cn = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.01639 ; 3 uses
  store double %i.bq, ptr %i.co, align 8, !tbaa !109
  %i.cp = load i64, ptr %i.r, align 8, !tbaa !108 ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.co, i64 %i.cp
  store double %i.bz, ptr %i.cq, align 8, !tbaa !109
  %.idx.i = shl i64 %i.cp, 4
  %i.cr = getelementptr i8, ptr %i.co, i64 %.idx.i
  store double %i.by, ptr %i.cr, align 8, !tbaa !109
  %i.cs = add nuw i64 %.01639, 1                  ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cp
  br i1 %i.ct, label %bb.d, label %.loopexit, !llvm.loop !745

bb.g:                                             ; preds = %bb.b
  %i.cu = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !108
  %.not = icmp eq i64 %i.cw, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1224
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22
  %.038 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !751
  store ptr %i.cx, ptr %1, align 8, !tbaa !28, !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !751
  store i64 71, ptr %i.a, align 8, !tbaa !35, !noalias !751
  %i.da = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0), !noalias !751 ; 3 uses
  store ptr %i.da, ptr %1, align 8, !tbaa !42, !noalias !751
  %i.db = load i64, ptr %i.a, align 8, !tbaa !35, !noalias !751 ; 3 uses
  store i64 %i.db, ptr %i.cx, align 8, !tbaa !32, !noalias !751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.da, ptr noundef nonnull align 1 dereferenceable(71) @.str.119, i64 71, i1 false), !noalias !751
  store i64 %i.db, ptr %i.cy, align 8, !tbaa !31, !noalias !751
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  store i8 0, ptr %i.dc, align 1, !tbaa !32, !noalias !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !751
  %i.dd = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.i unwind label %bb.j, !noalias !751 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.de = load ptr, ptr %1, align 8, !tbaa !42, !noalias !751 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cx
  br i1 %i.df, label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.dg = load i64, ptr %i.cx, align 8, !tbaa !32, !noalias !751
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #29, !noalias !751
  br label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22

bb.j:                                             ; preds = %bb.h
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %1, align 8, !tbaa !42, !noalias !751 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cx
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17: ; preds = %bb.j
  %i.dl = load i64, ptr %i.cx, align 8, !tbaa !32, !noalias !751
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #29, !noalias !751
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !751
  br label %common.resume

_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !751
  %i.dn = load ptr, ptr %i.cz, align 8, !tbaa !114
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.038 ; 3 uses
  store double 0.000000e+00, ptr %i.do, align 8, !tbaa !109
  %i.dp = load i64, ptr %i.cv, align 8, !tbaa !108 ; 3 uses
  %i.dq = getelementptr [8 x i8], ptr %i.do, i64 %i.dp
  store double 0.000000e+00, ptr %i.dq, align 8, !tbaa !109
  %.idx.i23 = shl i64 %i.dp, 4
  %i.dr = getelementptr i8, ptr %i.do, i64 %.idx.i23
  store double 0.000000e+00, ptr %i.dr, align 8, !tbaa !109
  %i.ds = add nuw i64 %.038, 1                    ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dp
  br i1 %i.dt, label %bb.h, label %.loopexit, !llvm.loop !748

.loopexit:                                        ; preds = %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit, %bb.g, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load i8, ptr %i.a, align 8, !tbaa !130, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 97
  %i.g = load i8, ptr %i.f, align 1, !tbaa !53, !range !55, !noundef !56
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !109, !noalias !762 ; 9 uses
  %i.l = extractelement <2 x double> %i.k, i64 1  ; 4 uses
  %i.m = extractelement <2 x double> %i.k, i64 0  ; 4 uses
  %i.n = load <2 x double>, ptr %i.j, align 8, !tbaa !109, !noalias !762 ; 9 uses
  %i.o = extractelement <2 x double> %i.n, i64 0  ; 5 uses
  %i.p = fneg double %i.o                         ; 3 uses
  %i.q = extractelement <2 x double> %i.n, i64 1  ; 5 uses
  %i.r = fneg double %i.l                         ; 2 uses
  %i.s = fmul double %i.l, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.s) ; 2 uses
  %i.u = tail call double @llvm.fmuladd.f64(double %i.p, double %i.o, double %i.t)
  %i.v = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.u)
  %i.w = insertelement <2 x double> %i.n, double %i.r, i64 0
  %i.x = fmul <2 x double> %i.k, %i.w
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.z = shufflevector <2 x double> %i.k, <2 x double> %i.n, <2 x i32> <i32 0, i32 2>
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.n, <2 x double> %i.y)
  %i.ab = fmul <2 x double> %i.aa, splat (double 2.000000e+00)
  %i.ac = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !108 ; 4 uses
  %.not32 = icmp eq i64 %i.ae, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.c
  %i.af = shufflevector <2 x double> %i.k, <2 x double> %i.n, <2 x i32> <i32 1, i32 3>
  %i.ag = shufflevector <2 x double> %i.n, <2 x double> %i.k, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ai = insertelement <2 x double> %i.ah, double %i.p, i64 1
  %i.aj = fmul <2 x double> %i.ag, %i.ai
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.af, <2 x double> %i.aj)
  %i.al = fmul <2 x double> %i.ak, splat (double 2.000000e+00) ; 2 uses
  %i.am = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = fneg double %i.q                        ; 3 uses
  %i.ao = insertelement <2 x double> %i.ah, double %i.an, i64 0
  %i.ap = fmul <2 x double> %i.k, %i.ao
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.n, <2 x double> %i.ap)
  %i.ar = fmul <2 x double> %i.aq, splat (double 2.000000e+00) ; 2 uses
  %i.as = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.t)
  %i.at = tail call double @llvm.fmuladd.f64(double %i.an, double %i.q, double %i.as)
  %i.au = fmul double %i.l, %i.l
  %i.av = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.au)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.p, double %i.o, double %i.av)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.an, double %i.q, double %i.aw)
  %i.ay = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 392
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !113, !noalias !763
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !114
  %.idx.i = shl i64 %i.ae, 4
  %i.bf = insertelement <2 x double> %i.ar, double %i.at, i64 1
  %i.bg = insertelement <2 x double> %i.ar, double %i.ax, i64 0
  %i.bh = extractelement <2 x double> %i.al, i64 0
  %i.bi = extractelement <2 x double> %i.al, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph31, %bb.d
  %.01630 = phi i64 [ 0, %.lr.ph31 ], [ %i.bz, %bb.d ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.01630
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !122
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bl ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01630 ; 3 uses
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !109 ; 2 uses
  %.sroa.018.0.copyload = load double, ptr %i.bm, align 8, !tbaa !109 ; 2 uses
  %.sroa.018.0.copyload.a = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !109 ; 2 uses
  %1 = insertelement <2 x double> poison, double %.sroa.6.0.copyload, i64 0
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x double> %i.bf, %2
  %3 = insertelement <2 x double> poison, double %.sroa.018.0.copyload, i64 0
  %i.bp = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bp, <2 x double> %i.bo)
  %4 = insertelement <2 x double> poison, double %.sroa.018.0.copyload.a, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %5, <2 x double> %i.bq) ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0
  store double %i.bs, ptr %i.bn, align 8, !tbaa !109
  %i.bt = getelementptr [8 x i8], ptr %i.bn, i64 %i.ae
  %i.bu = extractelement <2 x double> %i.br, i64 1
  store double %i.bu, ptr %i.bt, align 8, !tbaa !109
  %i.bv = fmul double %i.bh, %.sroa.6.0.copyload
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bi, double %.sroa.018.0.copyload, double %i.bv)
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.v, double %.sroa.018.0.copyload.a, double %i.bw)
  %i.by = getelementptr i8, ptr %i.bn, i64 %.idx.i
  store double %i.bx, ptr %i.by, align 8, !tbaa !109
  %i.bz = add nuw i64 %.01630, 1                  ; 2 uses
  %exitcond34.not = icmp eq i64 %i.bz, %i.ae
  br i1 %exitcond34.not, label %.loopexit, label %bb.d, !llvm.loop !758

bb.e:                                             ; preds = %bb.b
  %i.ca = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !108 ; 9 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.cd = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !54 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 392
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !113, !noalias !764 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !114 ; 3 uses
  %.idx.i17 = shl i64 %i.cc, 4                    ; 3 uses
  %xtraiter = and i64 %i.cc, 1
  %i.ck = icmp eq i64 %i.cc, 1
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cc, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.029 = phi i64 [ 0, %.lr.ph.new ], [ %i.da, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.029
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !122
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.cn ; 3 uses
  %.sroa.0.0.copyload = load double, ptr %i.co, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !109
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !109
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.029 ; 3 uses
  store double %.sroa.0.0.copyload, ptr %i.cp, align 8, !tbaa !109
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.cc
  store double %.sroa.4.0.copyload, ptr %i.cq, align 8, !tbaa !109
  %i.cr = getelementptr i8, ptr %i.cp, i64 %.idx.i17
  store double %.sroa.5.0.copyload, ptr %i.cr, align 8, !tbaa !109
  %i.cs = or disjoint i64 %.029, 1                ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !122
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.cv ; 3 uses
  %.sroa.0.0.copyload.1 = load double, ptr %i.cw, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.4.0.copyload.1 = load double, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !109
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.5.0.copyload.1 = load double, ptr %.sroa.5.0..sroa_idx.1, align 8, !tbaa !109
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cs ; 3 uses
  store double %.sroa.0.0.copyload.1, ptr %i.cx, align 8, !tbaa !109
  %i.cy = getelementptr [8 x i8], ptr %i.cx, i64 %i.cc
  store double %.sroa.4.0.copyload.1, ptr %i.cy, align 8, !tbaa !109
  %i.cz = getelementptr i8, ptr %i.cx, i64 %.idx.i17
  store double %.sroa.5.0.copyload.1, ptr %i.cz, align 8, !tbaa !109
  %i.da = add nuw i64 %.029, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit38.unr-lcssa, label %bb.f, !llvm.loop !761

.loopexit.loopexit38.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit38.unr-lcssa, %.lr.ph
  %.029.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.da, %.loopexit.loopexit38.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.029.epil.init
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !122
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.dd ; 3 uses
  %.sroa.0.0.copyload.epil = load double, ptr %i.de, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.4.0.copyload.epil = load double, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !109
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.5.0.copyload.epil = load double, ptr %.sroa.5.0..sroa_idx.epil, align 8, !tbaa !109
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.029.epil.init ; 3 uses
  store double %.sroa.0.0.copyload.epil, ptr %i.df, align 8, !tbaa !109
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.cc
  store double %.sroa.4.0.copyload.epil, ptr %i.dg, align 8, !tbaa !109
  %i.dh = getelementptr i8, ptr %i.df, i64 %.idx.i17
  store double %.sroa.5.0.copyload.epil, ptr %i.dh, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit38.unr-lcssa, %bb.d, %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN12colvarmodule10atom_group24calc_required_propertiesEv(ptr noundef nonnull align 8 dereferenceable(1712) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !130, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 257
  %i.g = load i8, ptr %i.f, align 1, !tbaa !53, !range !55, !noundef !56
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.k = load i32, ptr %i.j, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 568
  %i.m = sext i32 %i.k to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !113, !noalias !769
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !108
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.s = load i64, ptr %i.r, align 8, !tbaa !108  ; 5 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !114
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %.idx.i.i = shl i64 %i.s, 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1616
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %i.z = phi double [ 0.000000e+00, %bb.d ], [ %i.ba, %bb.e ]
  %i.aa = phi double [ 0.000000e+00, %bb.d ], [ %i.aw, %bb.e ]
  %i.ab = phi double [ 0.000000e+00, %bb.d ], [ %i.at, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !109 ; 2 uses
  %i.ae = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.aa, i64 1
  %i.ag = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.af, %i.ah
  store <2 x double> %i.ai, ptr %i.q, align 8, !tbaa !109
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.ak = fdiv double %i.z, %i.ad
  store double %i.ak, ptr %i.aj, align 8, !tbaa !119
  br label %bb.g

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.al = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ba, %bb.e ]
  %i.am = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.aw, %bb.e ]
  %.036.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bb, %bb.e ] ; 3 uses
  %i.an = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.at, %bb.e ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.036.i ; 3 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !109
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.036.i ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !109
  %i.as = getelementptr [8 x i8], ptr %i.aq, i64 %i.s
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ar, double %i.an) ; 3 uses
  store double %i.at, ptr %i.q, align 8, !tbaa !211
  %i.au = load double, ptr %i.ao, align 8, !tbaa !109
  %i.av = load double, ptr %i.as, align 8, !tbaa !109
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.av, double %i.am) ; 3 uses
  store double %i.aw, ptr %i.x, align 8, !tbaa !212
  %i.ax = load double, ptr %i.ao, align 8, !tbaa !109
  %i.ay = getelementptr i8, ptr %i.aq, i64 %.idx.i.i
  %i.az = load double, ptr %i.ay, align 8, !tbaa !109
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.az, double %i.al) ; 3 uses
  store double %i.ba, ptr %i.y, align 8, !tbaa !213
  %i.bb = add nuw i64 %.036.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.s
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !8

bb.f:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !tbaa.struct !203
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !tbaa.struct !203
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.pre72 = load ptr, ptr %.phi.trans.insert71, align 8, !tbaa !46
  br label %_ZN12colvarmodule10atom_group23calc_center_of_geometryEv.exit

bb.g:                                             ; preds = %bb.c, %._crit_edge.i
  %i.bf = phi i64 [ %.pre, %bb.c ], [ %i.s, %._crit_edge.i ] ; 10 uses
end_hunk_0
