Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZN7openvdb5v13_04math9AffineMap18updateAccelerationEv:bb.a
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #26 ; 0 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !1127  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !1126
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %i.ar, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.aq, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.at = call ptr @__cxa_begin_catch(ptr %.1) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.au, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.o unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %2, align 8, !tbaa !1127  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ah
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.k
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !1126
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.av

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZNK7openvdb5v13_04math4Mat4IdE7inverseEd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Mat4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.a, double noundef 0.000000e+00)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ba, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZNK7openvdb5v13_04math4Mat3IdE7inverseEd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Mat3") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef 0.000000e+00)
  %i.bb = load double, ptr %6, align 8, !tbaa !1104, !noalias !9105
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !1104, !noalias !9105
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bf = load double, ptr %i.be, align 8, !tbaa !1104, !noalias !9105
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !1104, !noalias !9105
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !1104, !noalias !9105
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !1104, !noalias !9105
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !1104, !noalias !9105
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !1104, !noalias !9105
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.br = load double, ptr %i.bq, align 8, !tbaa !1104, !noalias !9105
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %i.bb, ptr %i.bs, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store double %i.bd, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store double %i.bf, ptr %.sroa.551.0..sroa_idx, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.bh, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %i.bj, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store double %i.bl, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store double %i.bn, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1053.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.bp, ptr %.sroa.1053.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store double %i.br, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bx = load <4 x double>, ptr %i.bt, align 8, !tbaa !1104
  %i.by = load <2 x double>, ptr %i.bu, align 8, !tbaa !1104
  %i.bz = load <2 x double>, ptr %scevgep.2.i, align 8, !tbaa !1104
  %i.ca = load <2 x double>, ptr %i.bv, align 8, !tbaa !1104
  %i.cb = load <2 x double>, ptr %i.bw, align 8, !tbaa !1104
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> %i.ca, <12 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 3, i32 0, i32 1>
  %i.cd = shufflevector <2 x double> %i.bz, <2 x double> poison, <12 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <12 x double> %i.cc, <12 x double> %i.cd, <12 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 8, i32 9, i32 10, i32 11>
  %i.cf = shufflevector <4 x double> %i.bx, <4 x double> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cg = shufflevector <12 x double> %i.cf, <12 x double> %i.ce, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ch = shufflevector <2 x double> %i.by, <2 x double> poison, <12 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ci = shufflevector <12 x double> %i.cg, <12 x double> %i.ch, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.cj = call <12 x double> @llvm.fabs.v12f64(<12 x double> %i.ci) ; 12 uses
  %i.ck = extractelement <12 x double> %i.cj, i64 0
  %i.cl = extractelement <12 x double> %i.cj, i64 1
  %i.cm = fadd double %i.ck, %i.cl
  %i.cn = extractelement <12 x double> %i.cj, i64 2
  %i.co = fadd double %i.cm, %i.cn
  %i.cp = extractelement <12 x double> %i.cj, i64 3
  %i.cq = fadd double %i.co, %i.cp
  %i.cr = extractelement <12 x double> %i.cj, i64 4
  %i.cs = fadd double %i.cq, %i.cr
  %i.ct = extractelement <12 x double> %i.cj, i64 5
  %i.cu = fadd double %i.cs, %i.ct
  %i.cv = extractelement <12 x double> %i.cj, i64 6
  %i.cw = fadd double %i.cu, %i.cv
  %i.cx = extractelement <12 x double> %i.cj, i64 7
  %i.cy = fadd double %i.cw, %i.cx
  %i.cz = extractelement <12 x double> %i.cj, i64 8
  %i.da = fadd double %i.cy, %i.cz
  %i.db = extractelement <12 x double> %i.cj, i64 9
  %i.dc = fadd double %i.da, %i.db
  %i.dd = extractelement <12 x double> %i.cj, i64 10
  %i.de = fadd double %i.dc, %i.dd
  %i.df = extractelement <12 x double> %i.cj, i64 11
  %i.dg = fadd double %i.de, %i.df
  %i.dh = call noundef double @llvm.fabs.f64(double %i.dg)
  %i.di = fcmp ule double %i.dh, 1.000000e-15
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dk = zext i1 %i.di to i8
  store i8 %i.dk, ptr %i.dj, align 8, !tbaa !1201
  %i.dl = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity acquire, align 8
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.m, label %_ZN7openvdb5v13_04math10isIdentityINS1_4Mat4IdEEEEbRKT_.exit, !prof !1187

bb.m:                                             ; preds = %bb.l
  %i.dn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) #26
  %.not.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04math10isIdentityINS1_4Mat4IdEEEEbRKT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, align 8, !tbaa !1104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 8), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !1104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 48), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 80), align 8, !tbaa !1104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 88), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 120), align 8, !tbaa !1104
  %i.do = call ptr @llvm.invariant.start.p0(i64 128, ptr nonnull @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) #26
  br label %_ZN7openvdb5v13_04math10isIdentityINS1_4Mat4IdEEEEbRKT_.exit

_ZN7openvdb5v13_04math10isIdentityINS1_4Mat4IdEEEEbRKT_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = call noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, double noundef 1.000000e-08)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.du = zext i1 %i.ds to i8
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !1202
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dw = load double, ptr %i.dr, align 8, !tbaa !1104, !noalias !9106 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !1104, !noalias !9106 ; 3 uses
  %i.dz = load double, ptr %i.dp, align 8, !tbaa !1104, !noalias !9106 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 344
  %7 = load <1 x double>, ptr %scevgep.1.i, align 8
  %i.eb = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x double> %i.eb, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %8 = load <1 x double>, ptr %i.dv, align 8
  %i.ed = shufflevector <1 x double> %8, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.ed, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.ef = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9106 ; 3 uses
  %i.eg = load <2 x double>, ptr %scevgep.2.i, align 8, !tbaa !1104, !noalias !9106 ; 5 uses
  %9 = shufflevector <2 x double> %i.ec, <2 x double> %i.ee, <2 x i32> <i32 1, i32 3>
  %i.eh = fadd <2 x double> %i.ef, %9
  %i.ei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> zeroinitializer, <2 x double> %i.eh)
  %i.ej = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> zeroinitializer, <2 x double> %i.ec) ; 2 uses
  %i.el = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> zeroinitializer, <2 x double> %i.ek)
  %i.en = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> zeroinitializer, <2 x double> %i.ee) ; 2 uses
  %i.ep = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> zeroinitializer, <2 x double> %i.eo)
  %i.er = load <1 x double>, ptr %i.bu, align 8
  %i.es = shufflevector <1 x double> %i.er, <1 x double> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x double> %i.es, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.eu = extractelement <2 x double> %i.et, i64 1
  %i.ev = fadd double %i.dw, %i.eu
  %i.ew = call double @llvm.fmuladd.f64(double %i.dy, double 0.000000e+00, double %i.ev)
  %i.ex = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> zeroinitializer, <2 x double> %i.et) ; 2 uses
  %i.fa = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> zeroinitializer, <2 x double> %i.ez)
  %i.fd = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = fadd <2 x double> %i.fe, %i.fc          ; 3 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 1
  %i.fh = load <2 x double>, ptr %i.dq, align 8, !tbaa !1104, !noalias !9106 ; 5 uses
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fadd <2 x double> %i.em, %i.fi          ; 3 uses
  %i.fk = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fl = fadd <2 x double> %i.fk, %i.eq          ; 3 uses
  %i.fm = fadd <2 x double> %i.fh, %i.ei          ; 2 uses
  %i.fn = fadd double %i.dz, %i.ew
  %i.fo = shufflevector <2 x double> %i.fm, <2 x double> %i.fj, <2 x i32> <i32 0, i32 2>
  %i.fp = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = fsub <2 x double> %i.fo, %i.fp          ; 2 uses
  %i.fr = shufflevector <2 x double> %i.fm, <2 x double> %i.fl, <2 x i32> <i32 1, i32 2>
  %i.fs = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = fsub <2 x double> %i.fr, %i.fs          ; 2 uses
  %i.fu = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fv = insertelement <2 x double> %i.fu, double %i.fn, i64 0
  %i.fw = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = fsub <2 x double> %i.fv, %i.fw          ; 2 uses
  %i.fy = fmul <2 x double> %i.ft, %i.ft
  %i.fz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fq, <2 x double> %i.fy)
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fx, <2 x double> %i.fz) ; 2 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 0
  %i.gc = call noundef double @sqrt(double noundef %i.gb) #26
  store double %i.gc, ptr %i.ea, align 8, !tbaa !1104
  %i.gd = extractelement <2 x double> %i.ga, i64 1
  %i.ge = call noundef double @sqrt(double noundef %i.gd) #26
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 352
  store double %i.ge, ptr %i.gf, align 8, !tbaa !1104
  %shift = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.eg, %shift
  %foldExtExtBinop58 = fadd <2 x double> %i.fh, %foldExtExtBinop
  %foldExtExtBinop60 = fadd <2 x double> %i.eg, %i.eo
  %foldExtExtBinop62 = fadd <2 x double> %i.fh, %foldExtExtBinop60
  %i.gg = extractelement <2 x double> %i.ez, i64 1
  %i.gh = fadd double %i.dy, %i.gg
  %i.gi = fadd double %i.dz, %i.gh
  %shift64 = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop65 = fsub <2 x double> %foldExtExtBinop58, %shift64
  %i.gj = extractelement <2 x double> %foldExtExtBinop65, i64 0 ; 2 uses
  %foldExtExtBinop67 = fsub <2 x double> %foldExtExtBinop62, %i.fl ; 2 uses
  %i.gk = fsub double %i.gi, %i.fg                ; 2 uses
  %foldExtExtBinop69 = fmul <2 x double> %foldExtExtBinop67, %foldExtExtBinop67
  %i.gl = extractelement <2 x double> %foldExtExtBinop69, i64 1
  %i.gm = call double @llvm.fmuladd.f64(double %i.gj, double %i.gj, double %i.gl)
  %i.gn = call double @llvm.fmuladd.f64(double %i.gk, double %i.gk, double %i.gm)
  %i.go = call noundef double @sqrt(double noundef %i.gn) #26
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double %i.go, ptr %i.gp, align 8, !tbaa !1104
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.o:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math9AffineMapD0Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 376) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap12getAffineMapEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #32 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math9AffineMapE, i64 16), ptr %i.a, align 8, !tbaa !1113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.j = load double, ptr %i.i, align 8, !tbaa !1200
  store double %i.j, ptr %i.h, align 8, !tbaa !1200
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.o = load i8, ptr %i.n, align 8, !tbaa !1201, !range !1154, !noundef !1155
  store i8 %i.o, ptr %i.m, align 8, !tbaa !1201
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 369
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 369
  %i.r = load i8, ptr %i.q, align 1, !tbaa !1202, !range !1154, !noundef !1155
  store i8 %i.r, ptr %i.p, align 1, !tbaa !1202
  store ptr %i.a, ptr %0, align 8, !tbaa !1173
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !1111
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2IS3_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 376) #35
  invoke void @__cxa_rethrow() #33
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.x

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #34
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math9AffineMapEEC2IS3_vEEPT_.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 1, ptr %i.aa, align 8, !tbaa !1115
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 1, ptr %i.ab, align 4, !tbaa !1116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.t, align 8, !tbaa !1113
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !1175
  store ptr %i.t, ptr %i.s, align 8, !tbaa !1111
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap4typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1122, !alias.scope !9109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.17, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.b, align 8, !tbaa !1125, !alias.scope !9109
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.c, align 1, !tbaa !1126, !alias.scope !9109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math9AffineMap7isEqualERKNS1_7MapBaseE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !1113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !9110
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !1122, !alias.scope !9113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @.str.17, i64 9, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.e, align 8, !tbaa !1125, !alias.scope !9113
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.f, align 1, !tbaa !1126, !alias.scope !9113
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1125 ; 2 uses
  %i.i = icmp eq i64 %i.h, 9
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !1127 ; 4 uses
  br i1 %i.i, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %.pre.i.i, align 1
end_hunk_0
