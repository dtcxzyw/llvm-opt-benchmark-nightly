Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VectorTransformer?download=true
inline.NumInlined: 3364
inline.NumDeleted: 1699
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          catch ptr null                          ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !242   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.j
  br i1 %i.aj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.h, %bb.f
  %.sink = phi ptr [ %i.v, %bb.f ], [ %i.ai, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ah, %bb.h ]
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !241
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.al) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ah, %bb.h ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.f, %bb.c ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.am = call ptr @__cxa_begin_catch(ptr %.1) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  ret void

bb.k:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #23
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_015ArithmeticErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !234
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !241
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25, !inline_history !243
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #20, !inline_history !243
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7openvdb5v13_09Exception4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !234
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !241
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25, !inline_history !243
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #20, !inline_history !243
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math4Mat4IdE7inverseEd(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat4") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, double noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load double, ptr %i.c, align 8, !tbaa !41 ; 8 uses
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !41 ; 6 uses
  %i.f = load double, ptr %i.b, align 8, !tbaa !41 ; 7 uses
  %i.g = extractelement <2 x double> %i.e, i64 0  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !41 ; 3 uses
  %i.l = extractelement <2 x double> %i.k, i64 0  ; 4 uses
  %i.m = load <2 x double>, ptr %i.j, align 8, !tbaa !41 ; 7 uses
  %i.n = extractelement <2 x double> %i.m, i64 0  ; 3 uses
  %i.o = fneg double %i.n                         ; 2 uses
  %i.p = extractelement <2 x double> %i.m, i64 1  ; 3 uses
  %i.q = fneg double %i.l                         ; 2 uses
  %i.r = load <2 x double>, ptr %1, align 8, !tbaa !41 ; 6 uses
  %i.s = extractelement <2 x double> %i.r, i64 1  ; 6 uses
  %i.t = extractelement <2 x double> %i.r, i64 0  ; 5 uses
  %i.u = fmul double %i.t, %i.d                   ; 2 uses
  %i.v = fmul double %i.t, %i.f                   ; 2 uses
  %i.w = fmul double %i.s, %i.g                   ; 2 uses
  %i.x = load <2 x double>, ptr %i.h, align 8, !tbaa !41 ; 8 uses
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
  %i.am = load double, ptr %i.al, align 8, !tbaa !41 ; 4 uses
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  %or.cond = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !41 ; 2 uses
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.as = load double, ptr %i.ar, align 8, !tbaa !41
  %i.at = fcmp une double %i.as, 1.000000e+00
  br i1 %i.at, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aw = load <2 x double>, ptr %i.au, align 8, !tbaa !41 ; 3 uses
  %i.ax = load <2 x double>, ptr %i.av, align 8, !tbaa !41 ; 4 uses
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
  %i.by = load double, ptr %i.bx, align 8, !tbaa !41 ; 2 uses
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
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !41 ; 2 uses
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
  store double %i.dx, ptr %i.do, align 8, !tbaa !41
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dz = extractelement <2 x double> %i.dw, i64 1 ; 3 uses
  store double %i.dz, ptr %i.dy, align 8, !tbaa !41
  %i.ea = fmul double %i.f, %i.q
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ec = fneg <2 x double> %i.r
  %i.ed = shufflevector <2 x double> %i.e, <2 x double> %i.ec, <2 x i32> <i32 1, i32 3>
  %i.ee = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ee, <2 x double> %i.dk)
  %i.eg = fmul <2 x double> %i.ef, %i.dv          ; 6 uses
  store <2 x double> %i.eg, ptr %0, align 8, !tbaa !41
  %i.eh = fneg <2 x double> %i.e
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.ej = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ah, i64 1
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ee, <2 x double> %i.ek)
  %i.em = fmul <2 x double> %i.el, %i.dv          ; 6 uses
  store <2 x double> %i.em, ptr %i.dq, align 8, !tbaa !41
  %i.en = fneg <2 x double> %i.r
  %i.eo = shufflevector <2 x double> %i.e, <2 x double> %i.en, <2 x i32> <i32 0, i32 2>
  %i.ep = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.aa, i64 1
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ep, <2 x double> %i.er)
  %i.et = fmul <2 x double> %i.es, %i.dv          ; 6 uses
  store <2 x double> %i.et, ptr %i.eb, align 8, !tbaa !41
  %i.eu = fsub double %i.v, %i.w
  %i.ev = fmul double %i.eu, %i.df                ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store double %i.ev, ptr %i.ew, align 8, !tbaa !41
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ez = load <2 x double>, ptr %i.ex, align 8, !tbaa !41 ; 7 uses
  %i.fa = load double, ptr %i.ey, align 8, !tbaa !41 ; 3 uses
  br i1 %i.da, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !41 ; 3 uses
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
  store double %i.gp, ptr %i.gj, align 8, !tbaa !41
  %i.gq = fneg double %i.gp                       ; 4 uses
  %i.gr = fmul double %i.gg, %i.gq
  store double %i.gr, ptr %i.gk, align 8, !tbaa !41
  %i.gs = insertelement <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, double %i.gp, i64 0
  %i.gt = shufflevector <4 x double> %i.gs, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.gu = fmul <4 x double> %i.gc, %i.gt          ; 3 uses
  %i.gv = fmul double %i.fu, %i.gp                ; 2 uses
  %i.gw = shufflevector <4 x double> %i.gu, <4 x double> poison, <2 x i32> zeroinitializer
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.go, <2 x double> %i.eg)
  store <2 x double> %i.gx, ptr %0, align 8, !tbaa !41
  %i.gy = shufflevector <2 x double> %i.go, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1> ; 2 uses
  %i.gz = insertelement <4 x double> %i.gy, double %i.gg, i64 0
  %i.ha = insertelement <4 x double> %i.gz, double %i.gq, i64 1
  %i.hb = shufflevector <2 x double> %i.em, <2 x double> %i.dw, <4 x i32> <i32 2, i32 poison, i32 0, i32 1>
  %i.hc = insertelement <4 x double> %i.hb, double -0.000000e+00, i64 1
  %i.hd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gu, <4 x double> %i.ha, <4 x double> %i.hc)
  store <4 x double> %i.hd, ptr %i.do, align 8, !tbaa !41
  %i.he = shufflevector <4 x double> %i.gu, <4 x double> %i.gb, <2 x i32> <i32 2, i32 5>
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> %i.go, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hg = insertelement <4 x double> poison, double %i.gg, i64 0
  %i.hh = insertelement <4 x double> %i.hg, double %i.gq, i64 1
  %i.hi = insertelement <4 x double> %i.hh, double %i.gv, i64 2
  %i.hj = shufflevector <4 x double> %i.hi, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.hk = shufflevector <2 x double> %i.dw, <2 x double> %i.et, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.hl = insertelement <4 x double> %i.hk, double -0.000000e+00, i64 1
  %i.hm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hf, <4 x double> %i.hj, <4 x double> %i.hl)
  store <4 x double> %i.hm, ptr %i.dy, align 8, !tbaa !41
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gg, double %i.ev)
  %i.ho = insertelement <4 x double> %i.gy, double %i.hn, i64 0
  %i.hp = insertelement <4 x double> %i.ho, double %i.fu, i64 1
  %i.hq = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %i.gq, i64 1
  %i.hr = shufflevector <4 x double> %i.hq, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hs = fmul <4 x double> %i.hp, %i.hr
  store <4 x double> %i.hs, ptr %i.ew, align 8, !tbaa !41
  br label %bb.r

.critedge:                                        ; preds = %bb.f
  %i.ht = extractelement <2 x double> %i.ez, i64 0
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !41 ; 2 uses
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
  store <2 x double> %i.if, ptr %i.hw, align 8, !tbaa !41
  %i.ig = fmul double %i.dz, %i.fa
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.dx, double %i.ig)
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.ev, double %i.ih)
  %i.ij = fneg double %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ij, ptr %i.ik, align 8, !tbaa !41
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.il, align 8, !tbaa !41
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.im, align 8, !tbaa !41
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
