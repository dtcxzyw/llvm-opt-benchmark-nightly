Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZNK7openvdb5v13_04math9AffineMap7applyJTERKNS1_4Vec3IdEE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap7applyJTERKNS1_4Vec3IdEES6_(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9208)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load <2 x double>, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load double, ptr %i.g, align 8, !tbaa !1104, !noalias !9208
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load double, ptr %i.i, align 8, !tbaa !1104, !noalias !9208
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load double, ptr %i.k, align 8, !tbaa !1104, !noalias !9208
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load double, ptr %i.m, align 8, !tbaa !1104, !noalias !9208
  %i.o = load double, ptr %2, align 8, !tbaa !1104, !noalias !9208 ; 2 uses
  %i.p = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9208 ; 2 uses
  %i.q = load double, ptr %i.b, align 8, !tbaa !1104, !noalias !9208 ; 2 uses
  %i.r = load double, ptr %i.e, align 8, !tbaa !1104, !noalias !9208 ; 2 uses
  %i.s = load <2 x double>, ptr %i.f, align 8, !tbaa !1104, !noalias !9208 ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.q, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x double> %i.p, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = fmul <2 x double> %i.u, %i.v
  %i.x = shufflevector <2 x double> %i.p, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.y = insertelement <2 x double> poison, double %i.o, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.z, <2 x double> %i.w)
  %i.ab = insertelement <2 x double> %i.d, double %i.h, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ad, <2 x double> %i.aa)
  %i.af = fmul double %i.q, %i.l
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.j, double %i.o, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.n, double %i.r, double %i.ag)
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !1104, !alias.scope !9208
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ah, ptr %i.ai, align 8, !tbaa !1104, !alias.scope !9208
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math9AffineMap10inverseMapEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #32 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_ZN7openvdb5v13_04math9AffineMapC2ERKNS1_4Mat4IdEE(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !1110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !1111
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_9AffineMapEvEEPT_.exit unwind label %bb.c ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 376) #35
  invoke void @__cxa_rethrow() #33
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #34
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_9AffineMapEvEEPT_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !1115
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !1116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !1113
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.m, align 8, !tbaa !1175
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1111
  ret void

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 376) #35
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math4Mat4IdE7inverseEd(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat4") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, double noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load double, ptr %i.c, align 8, !tbaa !1104 ; 8 uses
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !1104 ; 6 uses
  %i.f = load double, ptr %i.b, align 8, !tbaa !1104 ; 7 uses
  %i.g = extractelement <2 x double> %i.e, i64 0  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !1104 ; 3 uses
  %i.l = extractelement <2 x double> %i.k, i64 0  ; 4 uses
  %i.m = load <2 x double>, ptr %i.j, align 8, !tbaa !1104 ; 7 uses
  %i.n = extractelement <2 x double> %i.m, i64 0  ; 3 uses
  %i.o = fneg double %i.n                         ; 2 uses
  %i.p = extractelement <2 x double> %i.m, i64 1  ; 3 uses
  %i.q = fneg double %i.l                         ; 2 uses
  %i.r = load <2 x double>, ptr %1, align 8, !tbaa !1104 ; 6 uses
  %i.s = extractelement <2 x double> %i.r, i64 1  ; 6 uses
  %i.t = extractelement <2 x double> %i.r, i64 0  ; 5 uses
  %i.u = fmul double %i.t, %i.d                   ; 2 uses
  %i.v = fmul double %i.t, %i.f                   ; 2 uses
  %i.w = fmul double %i.s, %i.g                   ; 2 uses
  %i.x = load <2 x double>, ptr %i.h, align 8, !tbaa !1104 ; 8 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.e, %i.x
  %i.z = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aa = fmul double %i.s, %i.l                  ; 2 uses
  %i.ab = fmul double %i.u, %i.o
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.v, double %i.p, double %i.ab)
  %i.ad = fneg double %i.w
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.p, double %i.ac)
  %i.af = tail call double @llvm.fmuladd.f64(double %i.z, double %i.n, double %i.ae)
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.d, double %i.af)
  %i.ah = fmul double %i.y, %i.q                  ; 2 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.f, double %i.ag) ; 4 uses
  %i.aj = extractelement <2 x double> %i.x, i64 1
  %i.ak = fcmp oeq double %i.aj, 0.000000e+00
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load double, ptr %i.al, align 8, !tbaa !1104 ; 4 uses
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  %or.cond = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !1104 ; 2 uses
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.as = load double, ptr %i.ar, align 8, !tbaa !1104
  %i.at = fcmp une double %i.as, 1.000000e+00
  br i1 %i.at, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aw = load <2 x double>, ptr %i.au, align 8, !tbaa !1104 ; 3 uses
  %i.ax = load <2 x double>, ptr %i.av, align 8, !tbaa !1104 ; 4 uses
  %i.ay = fneg <2 x double> %i.aw                 ; 2 uses
  %i.az = fmul <2 x double> %i.k, %i.ay
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.ax, <2 x double> %i.az) ; 2 uses
  %i.bb = extractelement <2 x double> %i.ax, i64 0 ; 3 uses
  %i.bc = fneg double %i.bb                       ; 2 uses
  %i.bd = extractelement <2 x double> %i.aw, i64 1 ; 2 uses
  %i.be = insertelement <2 x double> poison, double %i.d, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bc, i64 1
  %i.bg = shufflevector <2 x double> %i.ba, <2 x double> %i.m, <2 x i32> <i32 0, i32 3>
  %i.bh = fmul <2 x double> %i.bf, %i.bg
  %i.bi = shufflevector <2 x double> %i.e, <2 x double> %i.k, <2 x i32> <i32 0, i32 2>
  %i.bj = shufflevector <2 x double> %i.ba, <2 x double> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bj, <2 x double> %i.bh) ; 2 uses
  %i.bl = extractelement <2 x double> %i.ax, i64 1
  %i.bm = insertelement <2 x double> poison, double %i.f, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.bo = shufflevector <2 x double> %i.bk, <2 x double> %i.ax, <2 x i32> <i32 1, i32 3>
  %i.bp = fmul <2 x double> %i.r, %i.ay           ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bk, <2 x double> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bo, <2 x double> %i.bq) ; 2 uses
  %i.bs = extractelement <2 x double> %i.bp, i64 0
  %i.bt = tail call noundef double @llvm.fmuladd.f64(double %i.s, double %i.bb, double %i.bs)
  %i.bu = fmul double %i.p, %i.bt
  %i.bv = extractelement <2 x double> %i.br, i64 1
  %i.bw = fmul double %i.y, %i.bc
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.by = load double, ptr %i.bx, align 8, !tbaa !1104 ; 2 uses
  %6 = tail call double @llvm.fmuladd.f64(double %i.l, double %i.bv, double %i.bu)
  %i.bz = tail call noundef double @llvm.fmuladd.f64(double %i.t, double %i.bd, double %i.bw)
  %i.ca = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.bz, double %6)
  %7 = fneg double %i.d
  %i.cb = insertelement <2 x double> poison, double %i.s, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.am, i64 1
  %i.cd = insertelement <2 x double> poison, double %7, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.ca, i64 1
  %i.cf = fmul <2 x double> %i.cc, %i.ce
  %i.cg = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ch = insertelement <2 x double> %i.cg, double %i.f, i64 0
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.ch, <2 x double> %i.cf) ; 2 uses
  %i.cj = fneg double %i.f
  %i.ck = fmul double %i.t, %i.cj
  %i.cl = tail call noundef double @llvm.fmuladd.f64(double %i.s, double %i.g, double %i.ck)
  %i.cm = fmul double %i.bd, %i.cl
  %i.cn = extractelement <2 x double> %i.ci, i64 0
  %i.co = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.cn, double %i.cm)
  %i.cp = fneg double %i.g
  %i.cq = fmul double %i.y, %i.cp
  %i.cr = tail call noundef double @llvm.fmuladd.f64(double %i.t, double %i.d, double %i.cq)
  %i.cs = tail call noundef double @llvm.fmuladd.f64(double %i.bl, double %i.cr, double %i.co)
  %i.ct = extractelement <2 x double> %i.ci, i64 1
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.by, double %i.cs, double %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !1104 ; 2 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.ai, double %i.cu)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.cy = phi double [ %i.cw, %.thread ], [ 1.000000e+00, %bb.c ]
  %i.cz = phi double [ %i.by, %.thread ], [ %i.ap, %bb.c ] ; 2 uses
  %i.da = phi i1 [ true, %.thread ], [ false, %bb.c ]
  %storemerge = phi double [ %i.cx, %.thread ], [ %i.ai, %bb.c ]
  %i.db = tail call noundef double @llvm.fabs.f64(double %storemerge)
  %i.dc = fcmp ule double %i.db, %2
  br i1 %i.dc, label %.critedge107, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dd = tail call noundef double @llvm.fabs.f64(double %i.ai)
  %i.de = fcmp ule double %i.dd, 1.000000e-08
  br i1 %i.de, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.df = fdiv double 1.000000e+00, %i.ai         ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.d, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.di = insertelement <2 x double> poison, double %i.o, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> %i.m, <2 x i32> <i32 0, i32 2>
  %i.dk = fmul <2 x double> %i.dh, %i.dj
  %i.dl = fneg double %i.f
  %i.dm = fmul double %i.y, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.s, double %i.d, double %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dp = fmul double %i.d, %i.l
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dr = fsub double %i.z, %i.u
  %i.ds = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dr, i64 1
  %i.du = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dw = fmul <2 x double> %i.dt, %i.dv          ; 5 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0 ; 3 uses
  store double %i.dx, ptr %i.do, align 8, !tbaa !1104
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dz = extractelement <2 x double> %i.dw, i64 1 ; 3 uses
  store double %i.dz, ptr %i.dy, align 8, !tbaa !1104
  %i.ea = fmul double %i.f, %i.q
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ec = fneg <2 x double> %i.r
  %i.ed = shufflevector <2 x double> %i.e, <2 x double> %i.ec, <2 x i32> <i32 1, i32 3>
  %i.ee = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ee, <2 x double> %i.dk)
  %i.eg = fmul <2 x double> %i.ef, %i.dv          ; 6 uses
  store <2 x double> %i.eg, ptr %0, align 8, !tbaa !1104
  %i.eh = fneg <2 x double> %i.e
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.ej = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ah, i64 1
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ee, <2 x double> %i.ek)
  %i.em = fmul <2 x double> %i.el, %i.dv          ; 6 uses
  store <2 x double> %i.em, ptr %i.dq, align 8, !tbaa !1104
  %i.en = fneg <2 x double> %i.r
  %i.eo = shufflevector <2 x double> %i.e, <2 x double> %i.en, <2 x i32> <i32 0, i32 2>
  %i.ep = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.aa, i64 1
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ep, <2 x double> %i.er)
  %i.et = fmul <2 x double> %i.es, %i.dv          ; 6 uses
  store <2 x double> %i.et, ptr %i.eb, align 8, !tbaa !1104
  %i.eu = fsub double %i.v, %i.w
  %i.ev = fmul double %i.eu, %i.df                ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store double %i.ev, ptr %i.ew, align 8, !tbaa !1104
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ez = load <2 x double>, ptr %i.ex, align 8, !tbaa !1104 ; 7 uses
  %i.fa = load double, ptr %i.ey, align 8, !tbaa !1104 ; 3 uses
  br i1 %i.da, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !1104 ; 3 uses
  %i.fd = shufflevector <2 x double> %i.eg, <2 x double> %i.em, <2 x i32> <i32 1, i32 3>
  %i.fe = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x double> %i.fd, %i.ff
  %i.fh = shufflevector <2 x double> %i.eg, <2 x double> %i.em, <2 x i32> <i32 0, i32 2>
  %i.fi = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fi, <2 x double> %i.fg)
  %i.fk = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.fl, <2 x double> %i.fj) ; 4 uses
  %i.fn = shufflevector <2 x double> %i.et, <2 x double> %i.fm, <2 x i32> <i32 1, i32 3>
  %i.fo = insertelement <2 x double> %i.ez, double %i.am, i64 0
  %i.fp = fmul <2 x double> %i.fn, %i.fo
  %i.fq = shufflevector <2 x double> %i.et, <2 x double> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.fr = shufflevector <2 x double> %i.x, <2 x double> %i.ez, <2 x i32> <i32 1, i32 2>
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fr, <2 x double> %i.fp) ; 2 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 0
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.cz, double %i.ft) ; 3 uses
  %i.fv = extractelement <2 x double> %i.fs, i64 1
  %i.fw = tail call noundef double @llvm.fmuladd.f64(double %i.fu, double %i.fc, double %i.fv)
  %i.fx = fsub double %i.cy, %i.fw                ; 2 uses
  %i.fy = tail call noundef double @llvm.fabs.f64(double %i.fx)
  %i.fz = fcmp ule double %i.fy, %2
  br i1 %i.fz, label %.critedge107, label %.split.thread

.split.thread:                                    ; preds = %bb.g
  %i.ga = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = shufflevector <2 x double> %i.fm, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <2 x double> %i.fm, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gd = fmul double %i.dz, %i.fa
  %i.ge = extractelement <2 x double> %i.ez, i64 0
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.dx, double %i.gd)
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ev, double %i.gf) ; 4 uses
  %i.gh = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = fmul <2 x double> %i.em, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.eg, <2 x double> %i.gi)
  %i.gm = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.et, <2 x double> %i.gl) ; 3 uses
  %i.gp = fdiv double 1.000000e+00, %i.fx         ; 4 uses
  store double %i.gp, ptr %i.gj, align 8, !tbaa !1104
  %i.gq = fneg double %i.gp                       ; 4 uses
  %i.gr = fmul double %i.gg, %i.gq
  store double %i.gr, ptr %i.gk, align 8, !tbaa !1104
  %i.gs = insertelement <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, double %i.gp, i64 0
  %i.gt = shufflevector <4 x double> %i.gs, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.gu = fmul <4 x double> %i.gc, %i.gt          ; 3 uses
  %i.gv = fmul double %i.fu, %i.gp                ; 2 uses
  %i.gw = shufflevector <4 x double> %i.gu, <4 x double> poison, <2 x i32> zeroinitializer
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.go, <2 x double> %i.eg)
  store <2 x double> %i.gx, ptr %0, align 8, !tbaa !1104
  %i.gy = shufflevector <2 x double> %i.go, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1> ; 2 uses
  %i.gz = insertelement <4 x double> %i.gy, double %i.gg, i64 0
  %i.ha = insertelement <4 x double> %i.gz, double %i.gq, i64 1
  %i.hb = shufflevector <2 x double> %i.em, <2 x double> %i.dw, <4 x i32> <i32 2, i32 poison, i32 0, i32 1>
  %i.hc = insertelement <4 x double> %i.hb, double -0.000000e+00, i64 1
  %i.hd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gu, <4 x double> %i.ha, <4 x double> %i.hc)
  store <4 x double> %i.hd, ptr %i.do, align 8, !tbaa !1104
  %i.he = shufflevector <4 x double> %i.gu, <4 x double> %i.gb, <2 x i32> <i32 2, i32 5>
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> %i.go, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hg = insertelement <4 x double> poison, double %i.gg, i64 0
  %i.hh = insertelement <4 x double> %i.hg, double %i.gq, i64 1
  %i.hi = insertelement <4 x double> %i.hh, double %i.gv, i64 2
  %i.hj = shufflevector <4 x double> %i.hi, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.hk = shufflevector <2 x double> %i.dw, <2 x double> %i.et, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.hl = insertelement <4 x double> %i.hk, double -0.000000e+00, i64 1
  %i.hm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hf, <4 x double> %i.hj, <4 x double> %i.hl)
  store <4 x double> %i.hm, ptr %i.dy, align 8, !tbaa !1104
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gg, double %i.ev)
  %i.ho = insertelement <4 x double> %i.gy, double %i.hn, i64 0
  %i.hp = insertelement <4 x double> %i.ho, double %i.fu, i64 1
  %i.hq = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %i.gq, i64 1
  %i.hr = shufflevector <4 x double> %i.hq, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hs = fmul <4 x double> %i.hp, %i.hr
  store <4 x double> %i.hs, ptr %i.ew, align 8, !tbaa !1104
  br label %bb.r

.critedge:                                        ; preds = %bb.f
  %i.ht = extractelement <2 x double> %i.ez, i64 0
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !1104 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hx = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.em, %i.hy
  %i.ia = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.eg, <2 x double> %i.hz)
  %i.ic = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.et, <2 x double> %i.ib)
  %i.if = fneg <2 x double> %i.ie
  store <2 x double> %i.if, ptr %i.hw, align 8, !tbaa !1104
  %i.ig = fmul double %i.dz, %i.fa
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.dx, double %i.ig)
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.ev, double %i.ih)
  %i.ij = fneg double %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ij, ptr %i.ik, align 8, !tbaa !1104
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.il, align 8, !tbaa !1104
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.im, align 8, !tbaa !1104
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04math4Mat4IdE2eqERKS3_d:bb.a
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !1104
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !1104
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.ae)
  %i.ag = fcmp ule double %i.af, %2
  br i1 %i.ag, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !1104
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !1104
  %i.al = fsub double %i.aj, %i.ak
  %i.am = tail call noundef double @llvm.fabs.f64(double %i.al)
  %i.an = fcmp ule double %i.am, %2
  br i1 %i.an, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !1104
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !1104
  %i.as = fsub double %i.aq, %i.ar
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp ule double %i.at, %2
  br i1 %i.au, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load double, ptr %i.av, align 8, !tbaa !1104
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !1104
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ule double %i.ba, %2
  br i1 %i.bb, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = load double, ptr %i.bc, align 8, !tbaa !1104
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !1104
  %i.bg = fsub double %i.be, %i.bf
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ule double %i.bh, %2
  br i1 %i.bi, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !1104
  %i.bm = load double, ptr %i.bk, align 8, !tbaa !1104
  %i.bn = fsub double %i.bl, %i.bm
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp ule double %i.bo, %2
  br i1 %i.bp, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !1104
  %i.bt = load double, ptr %i.br, align 8, !tbaa !1104
  %i.bu = fsub double %i.bs, %i.bt
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp ule double %i.bv, %2
  br i1 %i.bw, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !1104
  %i.ca = load double, ptr %i.by, align 8, !tbaa !1104
  %i.cb = fsub double %i.bz, %i.ca
  %i.cc = tail call noundef double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp ule double %i.cc, %2
  br i1 %i.cd, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !1104
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !1104
  %i.ci = fsub double %i.cg, %i.ch
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp ule double %i.cj, %2
  br i1 %i.ck, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !1104
  %i.co = load double, ptr %i.cm, align 8, !tbaa !1104
  %i.cp = fsub double %i.cn, %i.co
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp ule double %i.cq, %2
  br i1 %i.cr, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !1104
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !1104
  %i.cw = fsub double %i.cu, %i.cv
  %i.cx = tail call noundef double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp ule double %i.cx, %2
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.db = load double, ptr %i.cz, align 8, !tbaa !1104
  %i.dc = load double, ptr %i.da, align 8, !tbaa !1104
  %i.dd = fsub double %i.db, %i.dc
  %i.de = tail call noundef double @llvm.fabs.f64(double %i.dd)
  %i.df = fcmp ule double %i.de, %2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.b ], [ %i.df, %bb.p ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.m ]
  ret i1 %.lcssa
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04math9isUnitaryINS1_4Mat3IdEEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load <2 x double>, ptr %i.b, align 8, !tbaa !1104 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !1104 ; 5 uses
  %i.g = load double, ptr %i.a, align 8, !tbaa !1104 ; 5 uses
  %i.h = load <2 x double>, ptr %i.c, align 8, !tbaa !1104 ; 7 uses
  %i.i = fneg <2 x double> %i.h
  %i.j = shufflevector <2 x double> %i.d, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.k = fmul <2 x double> %i.j, %i.i
  %i.l = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.m = insertelement <2 x double> %i.l, double %i.g, i64 0
  %i.n = shufflevector <2 x double> %i.d, <2 x double> %i.h, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.n, <2 x double> %i.k) ; 2 uses
  %i.p = load <2 x double>, ptr %0, align 8, !tbaa !1104 ; 7 uses
  %i.q = insertelement <2 x double> %i.p, double %i.g, i64 0
  %i.r = fneg <2 x double> %i.d
  %i.s = shufflevector <2 x double> %i.o, <2 x double> %i.r, <2 x i32> <i32 3, i32 1>
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x double> %i.h, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.v, <2 x double> %i.t) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !1104 ; 3 uses
  %i.z = extractelement <2 x double> %i.w, i64 0
  %i.aa = extractelement <2 x double> %i.w, i64 1
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.y, double %i.z, double %i.aa)
  %i.ac = tail call noundef double @llvm.fabs.f64(double %i.ab)
  %i.ad = fadd double %i.ac, -1.000000e+00
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp ule double %i.ae, 1.000000e-15
  br i1 %i.af, label %bb.b, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !1104
  %i.ai = extractelement <2 x double> %i.d, i64 1 ; 2 uses
  %i.aj = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 3, i32 1>
  %i.ak = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <2 x double> %i.p, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.al)
  %i.ap = insertelement <2 x double> poison, double %i.y, i64 0 ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = shufflevector <2 x double> %i.ap, <2 x double> %i.d, <2 x i32> <i32 0, i32 2>
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ar, <2 x double> %i.ao) ; 2 uses
  %i.at = extractelement <2 x double> %i.h, i64 0 ; 2 uses
  %i.au = fmul double %i.at, %i.ah
  %i.av = extractelement <2 x double> %i.p, i64 0
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ai, double %i.au)
  %i.ax = extractelement <2 x double> %i.h, i64 1 ; 3 uses
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.y, double %i.ax, double %i.aw) ; 2 uses
  %i.az = fmul double %i.g, %i.g
  %i.ba = extractelement <2 x double> %i.f, i64 0 ; 3 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.az)
  %i.bc = extractelement <2 x double> %i.d, i64 0 ; 2 uses
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %i.bb)
  %i.be = fmul double %i.g, %i.at
  %1 = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ai, double %i.be)
  %foldExtExtBinop = fmul <2 x double> %i.h, %i.h
  %i.bf = insertelement <2 x double> poison, double %1, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> %i.n, <2 x double> %i.bg) ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 1
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.bi)
  %i.bk = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity acquire, align 8
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, !prof !1187

bb.c:                                             ; preds = %bb.b
  %i.bm = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #26
  %.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !1104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !1104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !1104
  %i.bn = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #26
  br label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit

_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit:   ; preds = %bb.b, %bb.c, %bb.d
  %i.bo = load double, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !1104
  %i.bp = extractelement <2 x double> %i.as, i64 0
  %i.bq = fsub double %i.bp, %i.bo
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp ule double %i.br, 1.000000e-08
  br i1 %i.bs, label %bb.e, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.e:                                             ; preds = %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit
  %i.bt = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), align 8, !tbaa !1104
  %i.bu = extractelement <2 x double> %i.as, i64 1 ; 2 uses
  %i.bv = fsub double %i.bu, %i.bt
  %i.bw = tail call noundef double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ule double %i.bw, 1.000000e-08
  br i1 %i.bx, label %bb.f, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.f:                                             ; preds = %bb.e
  %i.by = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 16), align 8, !tbaa !1104
  %i.bz = fsub double %i.ay, %i.by
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp ule double %i.ca, 1.000000e-08
  br i1 %i.cb, label %bb.g, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.g:                                             ; preds = %bb.f
  %i.cc = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 24), align 8, !tbaa !1104
  %i.cd = fsub double %i.bu, %i.cc
  %i.ce = tail call noundef double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp ule double %i.ce, 1.000000e-08
  br i1 %i.cf, label %bb.h, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.h:                                             ; preds = %bb.g
  %i.cg = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !1104
  %i.ch = fsub double %i.bd, %i.cg
  %i.ci = tail call noundef double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ule double %i.ci, 1.000000e-08
  br i1 %i.cj, label %bb.i, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.i:                                             ; preds = %bb.h
  %i.ck = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !1104
  %i.cl = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.cm = fsub double %i.cl, %i.ck
  %i.cn = tail call noundef double @llvm.fabs.f64(double %i.cm)
  %i.co = fcmp ule double %i.cn, 1.000000e-08
  br i1 %i.co, label %bb.j, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.j:                                             ; preds = %bb.i
  %i.cp = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 48), align 8, !tbaa !1104
  %i.cq = fsub double %i.ay, %i.cp
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.cq)
  %i.cs = fcmp ule double %i.cr, 1.000000e-08
  br i1 %i.cs, label %bb.k, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.k:                                             ; preds = %bb.j
  %i.ct = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 56), align 8, !tbaa !1104
  %i.cu = fsub double %i.cl, %i.ct
  %i.cv = tail call noundef double @llvm.fabs.f64(double %i.cu)
  %i.cw = fcmp ule double %i.cv, 1.000000e-08
  br i1 %i.cw, label %bb.l, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.l:                                             ; preds = %bb.k
  %i.cx = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !1104
  %i.cy = fsub double %i.bj, %i.cx
  %i.cz = tail call noundef double @llvm.fabs.f64(double %i.cy)
  %i.da = fcmp ule double %i.cz, 1.000000e-08
  br label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit:   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit ], [ %i.da, %bb.l ]
  ret i1 %.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math3MatILj4EdE3strB5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1122
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  store i64 0, ptr %i.b, align 8, !tbaa !1125
  store i8 0, ptr %i.a, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !1122
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !1125
  store i8 0, ptr %i.c, align 8, !tbaa !1126
  %i.e = add i32 %2, 1
  %i.f = zext i32 %i.e to i64
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef %i.f, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !1125
  %i.i = icmp eq i64 %i.h, 4611686018427387903
  br i1 %i.i, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !1125
  %i.n = icmp eq i64 %i.m, 4611686018427387903
  br i1 %i.n, label %.invoke96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit35
  %i.o = icmp eq i64 %i.ck, 4611686018427387903
  br i1 %i.o, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i24

.invoke:                                          ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i24: ; preds = %bb.b
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit27 unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.invoke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.invoke96:                                        ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
          to label %.cont97 unwind label %.loopexit.split-lp69

.cont97:                                          ; preds = %.invoke96
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit53
  %indvars.iv98 = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit53 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader ] ; 3 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39 unwind label %.loopexit68 ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit35 unwind label %.loopexit68 ; 0 uses

.loopexit68:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i50
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp69:                             ; preds = %.invoke96
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

split:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %split
  unreachable

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i36.1
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28
  %i.t = shl nuw nsw i64 %indvars.iv98, 2         ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04math19NonlinearFrustumMap6createEv:bb.a
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #34
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_19NonlinearFrustumMapEvEEPT_.exit: ; preds = %_ZN7openvdb5v13_04math19NonlinearFrustumMapC2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !1115
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !1116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math19NonlinearFrustumMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !1113
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.a, ptr %i.p, align 8, !tbaa !1277
  store ptr %i.g, ptr %i.f, align 8, !tbaa !1111
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 520) #35
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMap4initEv(ptr noundef nonnull align 8 dereferenceable(520) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.881.0.copyload = load double, ptr %.sroa.881.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !1104, !noalias !9686
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.f = load <2 x double>, ptr %i.b, align 8
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9686
  %i.h = fsub <2 x double> %i.f, %i.g             ; 5 uses
  store <2 x double> %i.h, ptr %i.e, align 8, !tbaa !1104
  %i.i = fsub double %.sroa.881.0.copyload, %i.d  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  store double %i.i, ptr %i.j, align 8, !tbaa !9687
  %i.k = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.h)
  %i.l = fcmp ule <2 x double> %i.k, splat (double 1.000000e-15) ; 2 uses
  %i.m = extractelement <2 x i1> %i.l, i64 0
  %i.n = extractelement <2 x i1> %i.l, i64 1
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  %i.o = tail call double @llvm.fabs.f64(double %i.i)
  %i.p = fcmp ule double %i.o, 1.000000e-15
  %or.cond84 = select i1 %or.cond, i1 true, i1 %i.p
  br i1 %or.cond84, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !1122
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !1125
  store i8 0, ptr %i.q, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.critedge
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.70, i64 noundef 83)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #26 ; 0 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !1127   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1126
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.i

bb.d:                                             ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.aa, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.z, %bb.d ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ac = call ptr @__cxa_begin_catch(ptr %.1) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.ad, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.q unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %1, align 8, !tbaa !1127  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.q
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.j
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !1126
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.ae

bb.k:                                             ; preds = %bb.a
  %i.aj = fmul nnan <2 x double> %i.h, splat (double 5.000000e-01)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x double> %i.aj, ptr %i.ak, align 8, !tbaa !1104
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load double, ptr %i.al, align 8, !tbaa !1278
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fadd double %i.an, -1.000000e+00
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !1274 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 1
  %i.au = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.i, i64 1
  %i.aw = fdiv <2 x double> %i.at, %i.av          ; 2 uses
  store <2 x double> %i.aw, ptr %i.ar, align 8, !tbaa !1104
  %foldExtExtBinop = fmul nnan <2 x double> %i.h, %i.h
  %i.ax = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ay = extractelement <2 x double> %i.aw, i64 1
  %i.az = fdiv double %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double %i.az, ptr %i.ba, align 8, !tbaa !1279
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store i8 1, ptr %i.bb, align 8, !tbaa !1280
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.064.0.copyload = load double, ptr %i.bc, align 8 ; 2 uses
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.566.0.copyload = load double, ptr %.sroa.566.0..sroa_idx, align 8
  %i.bd = fsub double %.sroa.064.0.copyload, %.sroa.566.0.copyload
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp ule double %i.be, 1.000000e-15
  br i1 %i.bf, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.667.0.copyload = load double, ptr %.sroa.667.0..sroa_idx, align 8
  %i.bg = fsub double %.sroa.064.0.copyload, %.sroa.667.0.copyload
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ule double %i.bh, 1.000000e-15
  br i1 %i.bi, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load <2 x double>, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bm = load <2 x double>, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !1104, !noalias !9688 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.by = load double, ptr %i.bx, align 8, !tbaa !1104, !noalias !9688
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !1104, !noalias !9688
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !1104, !noalias !9688 ; 3 uses
  %i.cf = insertelement <2 x double> poison, double %i.bo, i64 0 ; 2 uses
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x double> %i.bm, double %i.ca, i64 1 ; 2 uses
  %i.ck = fmul <2 x double> %i.cj, zeroinitializer ; 2 uses
  %i.cl = insertelement <2 x double> %i.bk, double %i.by, i64 1 ; 3 uses
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> zeroinitializer, <2 x double> %i.ck) ; 4 uses
  %i.cn = fadd <2 x double> %i.cl, %i.ck          ; 2 uses
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> zeroinitializer, <2 x double> %i.co)
  %i.cq = fadd <2 x double> %i.ci, %i.cp          ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = shufflevector <2 x double> %i.cn, <2 x double> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> zeroinitializer, <2 x double> %i.ct)
  %i.cv = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fadd <2 x double> %i.cw, %i.cu          ; 2 uses
  %i.cy = extractelement <2 x double> %i.cq, i64 0
  %i.cz = extractelement <2 x double> %i.cq, i64 1 ; 3 uses
  %i.da = fsub double %i.cy, %i.cz                ; 2 uses
  %i.db = extractelement <2 x double> %i.cx, i64 0
  %i.dc = extractelement <2 x double> %i.cx, i64 1 ; 3 uses
  %i.dd = fsub double %i.db, %i.dc                ; 2 uses
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> zeroinitializer, <2 x double> %i.cj)
  %i.df = insertelement <2 x double> %i.cf, double %i.cc, i64 1
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> zeroinitializer, <2 x double> %i.de) ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 0
  %i.di = fadd double %i.dh, %i.bq
  %i.dj = extractelement <2 x double> %i.dg, i64 1
  %i.dk = fadd double %i.ce, %i.dj
  %i.dl = fsub double %i.di, %i.cz                ; 2 uses
  %4 = load double, ptr %i.br, align 8, !tbaa !1104, !noalias !9688 ; 2 uses
  %i.dm = load <2 x double>, ptr %i.bs, align 8
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %i.dn, <double 0.000000e+00, double 1.000000e+00> ; 2 uses
  %i.dp = insertelement <2 x double> poison, double %4, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> zeroinitializer, <2 x double> %i.do) ; 2 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 0 ; 2 uses
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.bu, double 0.000000e+00, double %i.ds)
  %i.du = fadd double %i.bw, %i.dt                ; 2 uses
  %i.dv = extractelement <2 x double> %i.do, i64 0
  %i.dw = fadd double %4, %i.dv
  %i.dx = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ea = insertelement <2 x double> %i.dz, double %i.dw, i64 1
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> zeroinitializer, <2 x double> %i.ea)
  %i.ec = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fadd <2 x double> %i.ed, %i.eb
  %i.ef = insertelement <2 x double> poison, double %i.du, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fsub <2 x double> %i.ee, %i.eg          ; 2 uses
  %i.ei = fsub double %i.dk, %i.dc                ; 2 uses
  %i.ej = extractelement <2 x double> %i.cm, i64 0
  %i.ek = fadd double %i.bo, %i.ej
  %i.el = fadd double %i.bq, %i.ek
  %i.em = fadd double %i.bu, %i.ds
  %i.en = fadd double %i.bw, %i.em
  %i.eo = extractelement <2 x double> %i.cm, i64 1
  %i.ep = fadd double %i.cc, %i.eo
  %i.eq = fadd double %i.ce, %i.ep
  %i.er = fsub double %i.el, %i.cz                ; 2 uses
  %i.es = fsub double %i.en, %i.du                ; 2 uses
  %i.et = fsub double %i.eq, %i.dc                ; 2 uses
  %i.eu = extractelement <2 x double> %i.eh, i64 0 ; 2 uses
  %i.ev = extractelement <2 x double> %i.eh, i64 1 ; 2 uses
  %i.ew = fmul double %i.ev, %i.eu
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dl, double %i.ew)
  %i.ey = tail call noundef double @llvm.fmuladd.f64(double %i.dd, double %i.ei, double %i.ex)
  %i.ez = tail call noundef double @llvm.fabs.f64(double %i.ey)
  %i.fa = fcmp ule double %i.ez, f0x3E7AD7F29ABCAF48
  br i1 %i.fa, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.fb = fmul double %i.eu, %i.es
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.er, double %i.fb)
  %i.fd = tail call noundef double @llvm.fmuladd.f64(double %i.ei, double %i.et, double %i.fc)
  %i.fe = tail call noundef double @llvm.fabs.f64(double %i.fd)
  %i.ff = fcmp ule double %i.fe, f0x3E7AD7F29ABCAF48
  br i1 %i.ff, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.fg = fmul double %i.es, %i.ev
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.er, double %i.da, double %i.fg)
  %i.fi = tail call noundef double @llvm.fmuladd.f64(double %i.et, double %i.dd, double %i.fh)
  %i.fj = tail call noundef double @llvm.fabs.f64(double %i.fi)
  %i.fk = fcmp ule double %i.fj, f0x3E7AD7F29ABCAF48
  br i1 %i.fk, label %bb.p, label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  store i8 0, ptr %i.bb, align 8, !tbaa !1280
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.o
  ret void

bb.q:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMapD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math19NonlinearFrustumMapD0Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 520) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap12getAffineMapEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZNK7openvdb5v13_04math9AffineMap12getAffineMapEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(376) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap4typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9691)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !1122, !alias.scope !9691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !9691
  store i64 19, ptr %i.a, align 8, !tbaa !1156, !noalias !9691
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !1127, !alias.scope !9691
  %i.d = load i64, ptr %i.a, align 8, !tbaa !1156, !noalias !9691 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !1126, !alias.scope !9691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.69, i64 19, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !1125, !alias.scope !9691
  %i.f = load ptr, ptr %0, align 8, !tbaa !1127, !alias.scope !9691
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !9691
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap7isEqualERKNS1_7MapBaseE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math7MapBase6isTypeINS1_19NonlinearFrustumMapEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.a, label %bb.b, label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_19NonlinearFrustumMapEEEbRKT_RKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMapeqERKS2_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(520) %1)
  br label %_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_19NonlinearFrustumMapEEEbRKT_RKS2_.exit

_ZN7openvdb5v13_04math7MapBase11isEqualBaseINS1_19NonlinearFrustumMapEEEbRKT_RKS2_.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8isLinearEv(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math19NonlinearFrustumMap15hasUniformScaleEv(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math19NonlinearFrustumMap8applyMapERKNS1_4Vec3IdEE(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x double>, ptr %2, align 8
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !1104, !noalias !9700
  %i.d = fsub <2 x double> %i.b, %i.c             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !1104, !noalias !9700
  %i.g = fsub double %.sroa.9.0.copyload, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.i = load double, ptr %i.h, align 8, !tbaa !1281, !noalias !9701
  %i.j = extractelement <2 x double> %i.d, i64 0
  %i.k = fsub double %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.m = load double, ptr %i.l, align 8, !tbaa !1282, !noalias !9701
  %i.n = extractelement <2 x double> %i.d, i64 1
  %i.o = fsub double %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.q = load double, ptr %i.p, align 8, !tbaa !1283, !noalias !9701
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.s = load double, ptr %i.r, align 8, !tbaa !1284, !noalias !9701
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.u = load double, ptr %i.t, align 8, !tbaa !1285, !noalias !9701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9702)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9703)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1104, !noalias !9704
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !1104, !noalias !9704
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !1104, !noalias !9704
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ag = load double, ptr %i.af, align 8, !tbaa !1104, !noalias !9704
  %i.ah = fmul double %i.g, %i.q                  ; 3 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ah, double 1.000000e+00)
  %i.aj = fdiv double %i.ai, %i.u                 ; 2 uses
  %i.ak = fmul double %i.k, %i.aj                 ; 2 uses
  %i.al = fmul double %i.o, %i.aj                 ; 2 uses
  %i.am = load <2 x double>, ptr %i.v, align 8, !tbaa !1104, !noalias !9704
  %i.an = load <2 x double>, ptr %i.w, align 8, !tbaa !1104, !noalias !9704
  %i.ao = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ap, %i.an
  %i.ar = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.am, <2 x double> %i.aq)
  %i.au = load <2 x double>, ptr %i.x, align 8, !tbaa !1104, !noalias !9704
  %i.av = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.au, <2 x double> %i.at)
  %i.ay = load <2 x double>, ptr %i.y, align 8, !tbaa !1104, !noalias !9704
  %i.az = fadd <2 x double> %i.ay, %i.ax
end_hunk_2
