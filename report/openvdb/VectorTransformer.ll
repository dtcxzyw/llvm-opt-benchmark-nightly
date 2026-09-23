Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VectorTransformer?download=true
inline.NumInlined: 3364
inline.NumDeleted: 1699
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN7openvdb5v13_015ArithmeticErrorD0Ev:bb.a
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
  %i.bz = tail call noundef double @llvm.fmuladd.f64(double %i.t, double %i.bd, double %i.bw)
  %i.ca = fneg double %i.d
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.l, double %i.bv, double %i.bu)
  %i.cc = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.bz, double %i.cb)
  %i.cd = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.am, i64 1
  %i.cf = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.cc, i64 1
  %i.ch = fmul <2 x double> %i.ce, %i.cg
  %i.ci = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x double> %i.ci, double %i.f, i64 0
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.cj, <2 x double> %i.ch) ; 2 uses
  %i.cl = fneg double %i.f
  %i.cm = fmul double %i.t, %i.cl
  %i.cn = tail call noundef double @llvm.fmuladd.f64(double %i.s, double %i.g, double %i.cm)
  %i.co = fmul double %i.bd, %i.cn
  %i.cp = extractelement <2 x double> %i.ck, i64 0
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.cp, double %i.co)
  %i.cr = fneg double %i.g
  %i.cs = fmul double %i.y, %i.cr
  %i.ct = tail call noundef double @llvm.fmuladd.f64(double %i.t, double %i.d, double %i.cs)
  %i.cu = tail call noundef double @llvm.fmuladd.f64(double %i.bl, double %i.ct, double %i.cq)
  %i.cv = extractelement <2 x double> %i.ck, i64 1
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.by, double %i.cu, double %i.cv)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !41 ; 2 uses
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.ai, double %i.cw)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.da = phi double [ %i.cy, %.thread ], [ 1.000000e+00, %bb.c ]
  %i.db = phi double [ %i.by, %.thread ], [ %i.ap, %bb.c ] ; 2 uses
  %i.dc = phi i1 [ true, %.thread ], [ false, %bb.c ]
  %storemerge = phi double [ %i.cz, %.thread ], [ %i.ai, %bb.c ]
  %i.dd = tail call noundef double @llvm.fabs.f64(double %storemerge)
  %i.de = fcmp ule double %i.dd, %2
  br i1 %i.de, label %.critedge107, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = tail call noundef double @llvm.fabs.f64(double %i.ai)
  %i.dg = fcmp ule double %i.df, 1.000000e-08
  br i1 %i.dg, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dh = fdiv double 1.000000e+00, %i.ai         ; 2 uses
  %i.di = insertelement <2 x double> poison, double %i.d, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.dk = insertelement <2 x double> poison, double %i.o, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> %i.m, <2 x i32> <i32 0, i32 2>
  %i.dm = fmul <2 x double> %i.dj, %i.dl
  %i.dn = fneg double %i.f
  %i.do = fmul double %i.y, %i.dn
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.s, double %i.d, double %i.do)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dr = fmul double %i.d, %i.l
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dt = fsub double %i.z, %i.u
  %i.du = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dt, i64 1
  %i.dw = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dy = fmul <2 x double> %i.dv, %i.dx          ; 5 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0 ; 3 uses
  store double %i.dz, ptr %i.dq, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eb = extractelement <2 x double> %i.dy, i64 1 ; 3 uses
  store double %i.eb, ptr %i.ea, align 8, !tbaa !41
  %i.ec = fmul double %i.f, %i.q
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ee = fneg <2 x double> %i.r
  %i.ef = shufflevector <2 x double> %i.e, <2 x double> %i.ee, <2 x i32> <i32 1, i32 3>
  %i.eg = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eg, <2 x double> %i.dm)
  %i.ei = fmul <2 x double> %i.eh, %i.dx          ; 6 uses
  store <2 x double> %i.ei, ptr %0, align 8, !tbaa !41
  %i.ej = fneg <2 x double> %i.e
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.el = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.ah, i64 1
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.eg, <2 x double> %i.em)
  %i.eo = fmul <2 x double> %i.en, %i.dx          ; 6 uses
  store <2 x double> %i.eo, ptr %i.ds, align 8, !tbaa !41
  %i.ep = fneg <2 x double> %i.r
  %i.eq = shufflevector <2 x double> %i.e, <2 x double> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.er = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.aa, i64 1
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.er, <2 x double> %i.et)
  %i.ev = fmul <2 x double> %i.eu, %i.dx          ; 6 uses
  store <2 x double> %i.ev, ptr %i.ed, align 8, !tbaa !41
  %i.ew = fsub double %i.v, %i.w
  %i.ex = fmul double %i.ew, %i.dh                ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store double %i.ex, ptr %i.ey, align 8, !tbaa !41
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.fb = load <2 x double>, ptr %i.ez, align 8, !tbaa !41 ; 7 uses
  %i.fc = load double, ptr %i.fa, align 8, !tbaa !41 ; 3 uses
  br i1 %i.dc, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !41 ; 3 uses
  %i.ff = shufflevector <2 x double> %i.ei, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.fg = insertelement <2 x double> poison, double %i.am, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x double> %i.ff, %i.fh
  %i.fj = shufflevector <2 x double> %i.ei, <2 x double> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.fk = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> %i.fk, <2 x double> %i.fi)
  %i.fm = insertelement <2 x double> poison, double %i.db, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.fn, <2 x double> %i.fl) ; 4 uses
  %i.fp = shufflevector <2 x double> %i.ev, <2 x double> %i.fo, <2 x i32> <i32 1, i32 3>
  %i.fq = insertelement <2 x double> %i.fb, double %i.am, i64 0
  %i.fr = fmul <2 x double> %i.fp, %i.fq
  %i.fs = shufflevector <2 x double> %i.ev, <2 x double> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.ft = shufflevector <2 x double> %i.x, <2 x double> %i.fb, <2 x i32> <i32 1, i32 2>
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.ft, <2 x double> %i.fr) ; 2 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 0
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.db, double %i.fv) ; 3 uses
  %i.fx = extractelement <2 x double> %i.fu, i64 1
  %i.fy = tail call noundef double @llvm.fmuladd.f64(double %i.fw, double %i.fe, double %i.fx)
  %i.fz = fsub double %i.da, %i.fy                ; 2 uses
  %i.ga = tail call noundef double @llvm.fabs.f64(double %i.fz)
  %i.gb = fcmp ule double %i.ga, %2
  br i1 %i.gb, label %.critedge107, label %.split.thread

.split.thread:                                    ; preds = %bb.g
  %i.gc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = shufflevector <2 x double> %i.fo, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <2 x double> %i.fo, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gd = fmul double %i.eb, %i.fc
  %i.ge = extractelement <2 x double> %i.fb, i64 0
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.dz, double %i.gd)
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.ex, double %i.gf) ; 4 uses
  %i.gh = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = fmul <2 x double> %i.eo, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.ei, <2 x double> %i.gi)
  %9 = insertelement <2 x double> poison, double %i.fe, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %i.ev, <2 x double> %8) ; 3 uses
  %12 = fdiv double 1.000000e+00, %i.fz           ; 4 uses
  store double %12, ptr %i.gj, align 8, !tbaa !41
  %13 = fneg double %12                           ; 4 uses
  %14 = fmul double %i.gg, %13
  store double %14, ptr %i.gk, align 8, !tbaa !41
  %15 = insertelement <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, double %12, i64 0
  %16 = shufflevector <4 x double> %15, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %17 = fmul <4 x double> %7, %16                 ; 3 uses
  %i.gl = fmul double %i.fw, %12                  ; 2 uses
  %i.gm = shufflevector <4 x double> %17, <4 x double> poison, <2 x i32> zeroinitializer
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %11, <2 x double> %i.ei)
  store <2 x double> %i.gn, ptr %0, align 8, !tbaa !41
  %18 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1> ; 2 uses
  %19 = insertelement <4 x double> %18, double %i.gg, i64 0
  %20 = insertelement <4 x double> %19, double %13, i64 1
  %21 = shufflevector <2 x double> %i.eo, <2 x double> %i.dy, <4 x i32> <i32 2, i32 poison, i32 0, i32 1>
  %22 = insertelement <4 x double> %21, double -0.000000e+00, i64 1
  %23 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %17, <4 x double> %20, <4 x double> %22)
  store <4 x double> %23, ptr %i.dq, align 8, !tbaa !41
  %24 = shufflevector <4 x double> %17, <4 x double> %6, <2 x i32> <i32 2, i32 5>
  %25 = shufflevector <2 x double> %24, <2 x double> %11, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %26 = insertelement <4 x double> poison, double %i.gg, i64 0
  %27 = insertelement <4 x double> %26, double %13, i64 1
  %28 = insertelement <4 x double> %27, double %i.gl, i64 2
  %29 = shufflevector <4 x double> %28, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %30 = shufflevector <2 x double> %i.dy, <2 x double> %i.ev, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %31 = insertelement <4 x double> %30, double -0.000000e+00, i64 1
  %32 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %25, <4 x double> %29, <4 x double> %31)
  store <4 x double> %32, ptr %i.ea, align 8, !tbaa !41
  %33 = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.gg, double %i.ex)
  %34 = insertelement <4 x double> %18, double %33, i64 0
  %35 = insertelement <4 x double> %34, double %i.fw, i64 1
  %36 = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %13, i64 1
  %37 = shufflevector <4 x double> %36, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %38 = fmul <4 x double> %35, %37
  store <4 x double> %38, ptr %i.ey, align 8, !tbaa !41
  br label %bb.r

.critedge:                                        ; preds = %bb.f
  %i.go = extractelement <2 x double> %i.fb, i64 0
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !41 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gs = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x double> %i.eo, %i.gt
  %i.gv = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.ei, <2 x double> %i.gu)
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.ev, <2 x double> %i.gw)
  %i.ha = fneg <2 x double> %i.gz
  store <2 x double> %i.ha, ptr %i.gr, align 8, !tbaa !41
  %i.hb = fmul double %i.eb, %i.fc
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.go, double %i.dz, double %i.hb)
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.ex, double %i.hc)
  %i.he = fneg double %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.he, ptr %i.hf, align 8, !tbaa !41
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.hg, align 8, !tbaa !41
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.hh, align 8, !tbaa !41
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.hi, align 8, !tbaa !41
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %i.hj, align 8, !tbaa !41
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.hk = tail call noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE6invertERS3_d(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %0, double noundef %2)
  br i1 %i.hk, label %bb.r, label %.critedge107

.critedge107:                                     ; preds = %bb.g, %bb.d, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.hl, ptr %3, align 8, !tbaa !237
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.hm, align 8, !tbaa !240
  store i8 0, ptr %i.hl, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.critedge107
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.12, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ho = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #20 ; 0 uses
  %i.hp = load ptr, ptr %5, align 8, !tbaa !242   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !241
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.p

bb.k:                                             ; preds = %.critedge107
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.hw, %bb.m ], [ %i.hv, %bb.l ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.hu, %bb.k ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.hx = call ptr @__cxa_begin_catch(ptr %.1) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hy = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.hy, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.hy, align 8, !tbaa !234
  invoke void @__cxa_throw(ptr nonnull %i.hy, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #24
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %3, align 8, !tbaa !242   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.hl
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.q
  %i.ic = load i64, ptr %i.hl, align 8, !tbaa !241
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.hz

bb.r:                                             ; preds = %.split.thread, %.critedge, %bb.h
  ret void

bb.s:                                             ; preds = %bb.p
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04math4Mat4IdE6invertERS3_d(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, double noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Mat4", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false)
  store double 1.000000e+00, ptr %1, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !41
  br label %bb.b

.loopexit115:                                     ; preds = %.loopexit113, %.loopexit116
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond157 = icmp eq i64 %indvars.iv.next155, 4
  br i1 %exitcond157, label %.critedge.preheader, label %bb.b, !llvm.loop !518

bb.b:                                             ; preds = %bb.a, %.loopexit115
  %indvars.iv154 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next155, %.loopexit115 ] ; 10 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.loopexit115 ] ; 6 uses
  %.093128 = phi double [ 1.000000e+00, %bb.a ], [ %i.bs, %.loopexit115 ] ; 2 uses
  %i.g = shl nuw nsw i64 %indvars.iv154, 2        ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.g ; 11 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv154 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !41 ; 2 uses
  %i.k = tail call double @llvm.fabs.f64(double %i.j) ; 4 uses
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv154 ; 3 uses
  %i.l = icmp samesign ult i64 %indvars.iv154, 3  ; 2 uses
  %i.m = trunc nuw nsw i64 %indvars.iv154 to i32  ; 3 uses
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.n = and i64 %indvars.iv154, 1
  %lcmp.mod.not.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.idx.prol = shl nuw nsw i64 %indvars.iv, 5
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %gep.idx.prol
  %i.o = load double, ptr %gep.prol, align 8, !tbaa !41
  %i.p = tail call double @llvm.fabs.f64(double %i.o) ; 2 uses
  %i.q = fcmp ogt double %i.p, %i.k               ; 2 uses
  %.1109.prol = select i1 %i.q, double %i.p, double %i.k ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %.1.prol = select i1 %i.q, i32 %i.r, i32 %i.m   ; 2 uses
  %indvars.iv.next136.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.1109.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %.1109.prol, %.lr.ph.prol ]
  %.1.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.1.prol, %.lr.ph.prol ]
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree13IteratorRangeINS5_21TreeValueIteratorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSA_INS5_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSI_9ValueIterISI_St17_Rb_tree_iteratorISt4pairIKNSC_5CoordENSI_10NodeStructEEENSI_12ValueAllPredESE_EEEEEENS4_5tools8valxform15SharedOpApplierISU_KNSW_17HomogeneousMatMulEEEKNS1_16auto_partitionerEE15offer_work_implIJRS14_RKSV_RhEEEvRNS1_14execution_dataEDpOT_:bb.a
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !362
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i8 0, ptr %i.ci, align 8, !tbaa !379
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !460
  store ptr %i.cd, ptr %i.bq, align 8, !tbaa !460
  %i.cj = load ptr, ptr %1, align 8, !tbaa !380
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17HomogeneousMatMulclINS0_4tree21TreeValueIteratorBaseINS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSG_9ValueIterISG_St17_Rb_tree_iteratorISt4pairIKNSA_5CoordENSG_10NodeStructEEENSG_12ValueAllPredESC_EEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !430
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !444
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.g
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !268
  %i.l = tail call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.q = load i32, ptr %i.p, align 8, !tbaa !269
  %i.r = tail call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !447
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit

_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.n, %bb.c ], [ %i.t, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.z = load i32, ptr %i.x, align 4, !tbaa !46
  %i.aa = load i32, ptr %.0.i.i.i, align 4, !tbaa !46
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !46
  %i.ac = sitofp i32 %i.z to double               ; 3 uses
  %i.ad = sitofp i32 %i.aa to double              ; 3 uses
  %i.ae = sitofp i32 %i.ab to double              ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !41, !noalias !789
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !41, !noalias !789
  %i.aj = fmul double %i.ai, %i.ac
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ag, double %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load double, ptr %i.al, align 8, !tbaa !41, !noalias !789
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.am, double %i.ak)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !41, !noalias !789
  %i.aq = fadd double %i.ap, %i.an                ; 3 uses
  %i.ar = fcmp oeq double %i.aq, 0.000000e+00
  br i1 %i.ar, label %_ZNK7openvdb5v13_04math4Mat4IdE10transformHIdEENS1_4Vec3IT_EERKS7_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load <2 x double>, ptr %0, align 8, !tbaa !41, !noalias !789
  %i.aw = load <2 x double>, ptr %i.as, align 8, !tbaa !41, !noalias !789
  %i.ax = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.aw, %i.ay
  %i.ba = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.av, <2 x double> %i.az)
  %i.bd = load <2 x double>, ptr %i.at, align 8, !tbaa !41, !noalias !789
  %i.be = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bd, <2 x double> %i.bc)
  %i.bh = load <2 x double>, ptr %i.au, align 8, !tbaa !41, !noalias !789
  %i.bi = fadd <2 x double> %i.bh, %i.bg
  %i.bj = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fdiv <2 x double> %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !41, !noalias !789
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !41, !noalias !789
  %i.bq = fmul double %i.bp, %i.ac
  %i.br = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.bn, double %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !41, !noalias !789
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.bt, double %i.br)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !41, !noalias !789
  %i.bx = fadd double %i.bw, %i.bu
  %i.by = fdiv double %i.bx, %i.aq
  %i.bz = fptosi <2 x double> %i.bl to <2 x i32>
  %i.ca = fptosi double %i.by to i32
  br label %_ZNK7openvdb5v13_04math4Mat4IdE10transformHIdEENS1_4Vec3IT_EERKS7_.exit

_ZNK7openvdb5v13_04math4Mat4IdE10transformHIdEENS1_4Vec3IT_EERKS7_.exit: ; preds = %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit, %bb.f
  %.sink.i = phi i32 [ %i.ca, %bb.f ], [ 0, %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit ]
  %i.cb = phi <2 x i32> [ %i.bz, %bb.f ], [ zeroinitializer, %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEdeEv.exit ]
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !430
  switch i32 %i.cc, label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE8setValueERKS9_.exit [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04math4Mat4IdE10transformHIdEENS1_4Vec3IT_EERKS7_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !270 ; 2 uses
  %i.cf = icmp ult i32 %i.ce, 512
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !444
  %i.ci = zext nneg i32 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.ch, i64 %i.ci
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04math4Mat4IdE10transformHIdEENS1_4Vec3IT_EERKS7_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !268
  %i.cn = tail call noundef nonnull align 8 dereferenceable(66576) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ck)
  %i.co = zext i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.co
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.i:                                             ; preds = %_ZNK7openvdb5v13_04math4Mat4IdE10transformHIdEENS1_4Vec3IT_EERKS7_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !269
  %i.ct = tail call noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cq)
  %i.cu = zext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cu
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

bb.j:                                             ; preds = %_ZNK7openvdb5v13_04math4Mat4IdE10transformHIdEENS1_4Vec3IT_EERKS7_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !447
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  br label %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i

_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.sink.i.sink.i.sink.i.i = phi ptr [ %i.cj, %bb.g ], [ %i.cp, %bb.h ], [ %i.cy, %bb.j ], [ %i.cv, %bb.i ] ; 2 uses
  store <2 x i32> %i.cb, ptr %.sink.i.sink.i.sink.i.i, align 4
  %.sroa.5.0..sink.i.sink.i.sink.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i.sink.i.sink.i.i, i64 8
  store i32 %.sink.i, ptr %.sroa.5.0..sink.i.sink.i.sink.i.i.sroa_idx, align 4
  br label %_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE8setValueERKS9_.exit

_ZNK7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE8setValueERKS9_.exit: ; preds = %_ZNK7openvdb5v13_04math4Mat4IdE10transformHIdEENS1_4Vec3IT_EERKS7_.exit, %_ZNK7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EE8setValueEjRKSA_.exit.sink.split.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #8

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { builtin allocsize(0) }

!llvm.module.flags = !{!32, !33}
!llvm.ident = !{!34}
!llvm.errno.tbaa = !{!39}

!0 = distinct !{!0, !244}
!1 = distinct !{!1, !244}
!2 = distinct !{!2, !244}
!3 = distinct !{!3, !244}
!4 = distinct !{!4, !244}
!5 = distinct !{!5, !244}
!6 = distinct !{!6, !244}
!7 = distinct !{!7, !244}
!8 = distinct !{!8, !244}
!9 = distinct !{!9, !244}
!10 = distinct !{!10, !244}
!11 = distinct !{!11, !244}
!12 = distinct !{ptr @_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!13 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !244}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{!20, !244}
!21 = distinct !{!21, !244}
!22 = distinct !{!22, !244}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{!26, !244}
!27 = distinct !{!27, !244}
!28 = distinct !{!28, !244}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = !{i32 8, !"PIC Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!35 = !{!"Simple C++ TBAA"}
!36 = !{!"omnipotent char", !35, i64 0}
!37 = !{!"int", !36, i64 0}
!38 = !{!"__libc_errno", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!"double", !36, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!"p1 _ZTSN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEE", !42, i64 0}
!44 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0}
!45 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !44, i64 0}
!46 = !{!37, !37, i64 0}
!47 = !{!"p1 _ZTSN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EEE", !42, i64 0}
!48 = !{!"p1 _ZTSN7openvdb5v13_04util8NodeMaskILj3EEE", !42, i64 0}
!49 = !{!"_ZTSN7openvdb5v13_04util16BaseMaskIteratorINS1_8NodeMaskILj3EEEEE", !37, i64 0, !48, i64 8}
!50 = !{!"_ZTSN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj3EEEEE", !49, i64 0}
!51 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEEE", !47, i64 0, !50, i64 8}
!52 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EE9ChildIterIS7_KSC_NSC_7ChildOnEEESE_SB_EE", !51, i64 0}
!53 = !{!"_ZTSN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE9ChildIterINS0_4util14OnMaskIteratorINS8_8NodeMaskILj3EEEEEKS6_NS6_7ChildOnEEE", !52, i64 0}
!54 = !{!"p1 _ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEE", !42, i64 0}
!55 = !{!"p1 _ZTSN7openvdb5v13_04util8NodeMaskILj4EEE", !42, i64 0}
!56 = !{!"_ZTSN7openvdb5v13_04util16BaseMaskIteratorINS1_8NodeMaskILj4EEEEE", !37, i64 0, !55, i64 8}
!57 = !{!"_ZTSN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEE", !56, i64 0}
!58 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEEE", !54, i64 0, !57, i64 8}
!59 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE9ChildIterIKSE_KSD_S7_NSE_7ChildOnEEESG_SH_EE", !58, i64 0}
!60 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE9ChildIterIKS8_KS7_NS0_4util14OnMaskIteratorINSC_8NodeMaskILj4EEEEENS8_7ChildOnEEE", !59, i64 0}
!61 = !{!"p1 _ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEE", !42, i64 0}
!62 = !{!"p1 _ZTSN7openvdb5v13_04util8NodeMaskILj5EEE", !42, i64 0}
!63 = !{!"_ZTSN7openvdb5v13_04util16BaseMaskIteratorINS1_8NodeMaskILj5EEEEE", !37, i64 0, !62, i64 8}
!64 = !{!"_ZTSN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj5EEEEE", !63, i64 0}
!65 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEE", !61, i64 0, !64, i64 8}
!66 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE9ChildIterIKSF_KSE_S7_NSF_7ChildOnEEESH_SI_EE", !65, i64 0}
!67 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE9ChildIterIKS9_KS8_NS0_4util14OnMaskIteratorINSD_8NodeMaskILj5EEEEENS9_7ChildOnEEE", !66, i64 0}
!68 = !{!"p1 _ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEE", !42, i64 0}
!69 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !42, i64 0}
!70 = !{!"_ZTSSt23_Rb_tree_const_iteratorISt4pairIKN7openvdb5v13_04math5CoordENS2_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS3_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEEE", !69, i64 0}
!71 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE8BaseIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEEE", !68, i64 0, !70, i64 8}
!72 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EE", !71, i64 0}
!73 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEE", !42, i64 0}
!74 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EEE", !72, i64 0, !73, i64 16}
!75 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEE", !42, i64 0}
!76 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEE", !67, i64 0, !74, i64 24, !75, i64 48}
!77 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEE", !42, i64 0}
!78 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEE", !60, i64 0, !76, i64 24, !77, i64 80}
!79 = !{!"p1 _ZTSN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE13PrevChildItemE", !42, i64 0}
!80 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEE", !53, i64 0, !78, i64 24, !79, i64 112}
!81 = !{!"_ZTSN7openvdb5v13_04util17DenseMaskIteratorINS1_8NodeMaskILj3EEEEE", !49, i64 0}
!82 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util17DenseMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EEEEE", !47, i64 0, !81, i64 8}
!83 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util17DenseMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IfEELj3EE9ValueIterIS7_SC_KSB_NSC_8ValueAllEEESC_SE_EE", !82, i64 0}
!84 = !{!"p1 _ZTSN7openvdb5v13_04math4Vec3IfEE", !42, i64 0}
!85 = !{!"_ZTSN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IfEELj3EE9ValueIterINS0_4util17DenseMaskIteratorINS8_8NodeMaskILj3EEEEES6_KS5_NS6_8ValueAllEEE", !83, i64 0, !84, i64 24}
!86 = !{!"_ZTSN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEE", !56, i64 0}
!87 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEEE", !54, i64 0, !86, i64 8}
!88 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE9ValueIterISE_KSC_S7_NSE_8ValueAllEEESE_SG_EE", !87, i64 0}
!89 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE9ValueIterIS8_KS6_NS0_4util15OffMaskIteratorINSB_8NodeMaskILj4EEEEENS8_8ValueAllEEE", !88, i64 0}
!90 = !{!"_ZTSN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEE", !63, i64 0}
!91 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEE", !61, i64 0, !90, i64 8}
!92 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE9ValueIterISF_KSC_S7_NSF_8ValueAllEEESF_SH_EE", !91, i64 0}
!93 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE9ValueIterIS9_KS6_NS0_4util15OffMaskIteratorINSC_8NodeMaskILj5EEEEENS9_8ValueAllEEE", !92, i64 0}
!94 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKN7openvdb5v13_04math5CoordENS2_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS3_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEEE", !69, i64 0}
!95 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE8BaseIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_12ValueAllPredEEE", !68, i64 0, !94, i64 8}
!96 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ValueIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_12ValueAllPredES7_EE", !95, i64 0}
!97 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEE", !42, i64 0}
!98 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EEE", !96, i64 0, !97, i64 16}
!99 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEE", !42, i64 0}
!100 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEE", !93, i64 0, !98, i64 24, !99, i64 48}
!101 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEE", !42, i64 0}
!102 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEE", !89, i64 0, !100, i64 24, !101, i64 80}
!103 = !{!"p1 _ZTSN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE13PrevValueItemE", !42, i64 0}
!104 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEE", !85, i64 0, !102, i64 32, !103, i64 120}
!105 = !{!"_ZTSN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEEE", !80, i64 0, !104, i64 120, !37, i64 248, !37, i64 252, !37, i64 256, !43, i64 264}
!106 = !{!105, !37, i64 256}
!107 = !{!105, !43, i64 264}
!108 = !{!80, !79, i64 112}
!109 = !{!78, !77, i64 80}
!110 = !{!76, !75, i64 48}
!111 = !{!74, !73, i64 16}
!112 = !{!102, !101, i64 80}
!113 = !{!100, !99, i64 48}
!114 = !{!98, !97, i64 16}
!115 = !{!"p1 _ZTSN7openvdb5v13_05tools15MatMulNormalizeE", !42, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!"p1 _ZTSN7openvdb5v13_05tools6MatMulE", !42, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!"p1 _ZTSN7openvdb5v13_05tools17HomogeneousMatMulE", !42, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"p1 _ZTSN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEE", !42, i64 0}
!122 = !{!"p1 _ZTSN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EEE", !42, i64 0}
!123 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEEE", !122, i64 0, !50, i64 8}
!124 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IdEELj3EE9ChildIterIS7_KSC_NSC_7ChildOnEEESE_SB_EE", !123, i64 0}
!125 = !{!"_ZTSN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EE9ChildIterINS0_4util14OnMaskIteratorINS8_8NodeMaskILj3EEEEEKS6_NS6_7ChildOnEEE", !124, i64 0}
!126 = !{!"p1 _ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEE", !42, i64 0}
!127 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEEE", !126, i64 0, !57, i64 8}
!128 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE9ChildIterIKSE_KSD_S7_NSE_7ChildOnEEESG_SH_EE", !127, i64 0}
!129 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE9ChildIterIKS8_KS7_NS0_4util14OnMaskIteratorINSC_8NodeMaskILj4EEEEENS8_7ChildOnEEE", !128, i64 0}
!130 = !{!"p1 _ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEE", !42, i64 0}
!131 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEE", !130, i64 0, !64, i64 8}
!132 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE9ChildIterIKSF_KSE_S7_NSF_7ChildOnEEESH_SI_EE", !131, i64 0}
!133 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE9ChildIterIKS9_KS8_NS0_4util14OnMaskIteratorINSD_8NodeMaskILj5EEEEENS9_7ChildOnEEE", !132, i64 0}
!134 = !{!"p1 _ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEE", !42, i64 0}
!135 = !{!"_ZTSSt23_Rb_tree_const_iteratorISt4pairIKN7openvdb5v13_04math5CoordENS2_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS3_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEEE", !69, i64 0}
!136 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE8BaseIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEEE", !134, i64 0, !135, i64 8}
!137 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ChildIterIKSB_St23_Rb_tree_const_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredEKSA_EE", !136, i64 0}
!138 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEE", !42, i64 0}
!139 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EEE", !137, i64 0, !138, i64 16}
!140 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEE", !42, i64 0}
!141 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEE", !133, i64 0, !139, i64 24, !140, i64 48}
!142 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEE", !42, i64 0}
!143 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEE", !129, i64 0, !141, i64 24, !142, i64 80}
!144 = !{!"p1 _ZTSN7openvdb5v13_04tree21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSD_9ValueIterISD_St17_Rb_tree_iteratorISt4pairIKNS7_5CoordENSD_10NodeStructEEENSD_12ValueAllPredES9_EEE13PrevChildItemE", !42, i64 0}
!145 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevChildItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEE", !125, i64 0, !143, i64 24, !144, i64 112}
!146 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util17DenseMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IdEELj3EEEEE", !122, i64 0, !81, i64 8}
!147 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util17DenseMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_4math4Vec3IdEELj3EE9ValueIterIS7_SC_KSB_NSC_8ValueAllEEESC_SE_EE", !146, i64 0}
!148 = !{!"p1 _ZTSN7openvdb5v13_04math4Vec3IdEE", !42, i64 0}
!149 = !{!"_ZTSN7openvdb5v13_04tree8LeafNodeINS0_4math4Vec3IdEELj3EE9ValueIterINS0_4util17DenseMaskIteratorINS8_8NodeMaskILj3EEEEES6_KS5_NS6_8ValueAllEEE", !147, i64 0, !148, i64 24}
!150 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEEE", !126, i64 0, !86, i64 8}
!151 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE9ValueIterISE_KSC_S7_NSE_8ValueAllEEESE_SG_EE", !150, i64 0}
!152 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE9ValueIterIS8_KS6_NS0_4util15OffMaskIteratorINSB_8NodeMaskILj4EEEEENS8_8ValueAllEEE", !151, i64 0}
!153 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEE", !130, i64 0, !90, i64 8}
!154 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE9ValueIterISF_KSC_S7_NSF_8ValueAllEEESF_SH_EE", !153, i64 0}
!155 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE9ValueIterIS9_KS6_NS0_4util15OffMaskIteratorINSC_8NodeMaskILj5EEEEENS9_8ValueAllEEE", !154, i64 0}
!156 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKN7openvdb5v13_04math5CoordENS2_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS3_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEEE", !69, i64 0}
!157 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE8BaseIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_12ValueAllPredEEE", !134, i64 0, !156, i64 8}
!158 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ValueIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_12ValueAllPredES7_EE", !157, i64 0}
!159 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEE", !42, i64 0}
!160 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEENSS_IJSD_SE_EEELm2ELj2EEENSS_IJSE_EEELm1ELj3EEE", !158, i64 0, !159, i64 16}
!161 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_21TreeValueIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEENSE_9ValueIterISE_St17_Rb_tree_iteratorISt4pairIKNS8_5CoordENSE_10NodeStructEEENSE_12ValueAllPredESA_EEE13PrevValueItemENS0_8TypeListIJSB_SC_SD_SE_EEELm4ELj0EEENSS_IJSC_SD_SE_EEELm3ELj1EEE", !42, i64 0}
end_hunk_1
