Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCGeometry?download=true
inline.NumInlined: 2077
inline.NumDeleted: 820
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp3IFC24ProcessRevolvedAreaSolidERKNS0_10Schema_2x320IfcRevolvedAreaSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  %i.ak = icmp ne i32 %i.aj, 1095062081
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j, %bb.i
  %i.an = phi i1 [ false, %bb.i ], [ %i.am, %bb.j ]
  %i.ao = icmp ugt i64 %i.ac, 2
  %i.ap = and i1 %i.ao, %i.an                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load double, ptr %i.as, align 8
  %i.au = fmul double %i.ar, %i.at                ; 2 uses
  %i.av = call double @llvm.fabs.f64(double %i.au) ; 3 uses
  %i.aw = fcmp olt double %i.av, 1.000000e-03
  br i1 %i.aw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  br i1 %i.ap, label %bb.l, label %_ZN6Assimp3IFC8TempMeshaSERKS1_.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.o     ; 0 uses

.noexc:                                           ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_ZN6Assimp3IFC8TempMeshaSERKS1_.exit unwind label %bb.o ; 0 uses

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.n:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.o:                                             ; preds = %.noexc, %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !15, !align !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = sitofp i32 %i.bh to double
  %i.bj = fmul double %i.av, %i.bi
  %i.bk = fdiv double %i.bj, f0x3FF921FB60000000
  %i.bl = fptoui double %i.bk to i32
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.bl, i32 2) ; 4 uses
  %i.bm = uitofp i32 %.sroa.speculated to double
  %i.bn = fdiv double %i.au, %i.bm                ; 2 uses
  %i.bo = fcmp olt double %i.av, f0x4018E1A46199999A
  %i.bp = and i1 %i.ap, %i.bo                     ; 2 uses
  %i.bq = shl i32 %.sroa.speculated, 2
  %i.br = add i32 %i.bq, 4
  %i.bs = select i1 %i.bp, i32 2, i32 0
  %i.bt = or disjoint i32 %i.br, %i.bs
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = mul i64 %i.ac, %i.bu                    ; 3 uses
  %i.bw = icmp ugt i64 %i.bv, 384307168202282325
  br i1 %i.bw, label %.invoke, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 21 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %1, align 8
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 24
  %i.ce = icmp ult i64 %i.cd, %i.bv
  br i1 %i.ce, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cb
  %i.cj = mul i64 %i.ab, %i.bu
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #28
          to label %.noexc119 unwind label %bb.am ; 4 uses

.noexc119:                                        ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.cl = load ptr, ptr %1, align 8               ; 5 uses
  %i.cm = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc119, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %i.ck, %.noexc119 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %i.cl, %.noexc119 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !74
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc119
  %.not.i8.i = icmp eq ptr %i.cl, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.cp = load ptr, ptr %i.bx, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cl to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cs) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.r, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ck, ptr %1, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store ptr %i.ct, ptr %i.cf, align 8
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.bv
  store ptr %i.cu, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.cw = zext i32 %.sroa.speculated to i64
  %i.cx = mul i64 %i.ac, %i.cw
  %i.cy = add i64 %i.cx, 2                        ; 4 uses
  %i.cz = icmp ugt i64 %i.cy, 2305843009213693951
  br i1 %i.cz, label %.invoke, label %bb.s

.invoke:                                          ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
          to label %.cont unwind label %bb.am

.cont:                                            ; preds = %.invoke
  unreachable

bb.s:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = load ptr, ptr %i.cv, align 8
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 2
  %i.dh = icmp ult i64 %i.dg, %i.cy
  br i1 %i.dh, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %bb.v

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.de
  %i.dm = shl nuw nsw i64 %i.cy, 2
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #28
          to label %.noexc122 unwind label %bb.am ; 4 uses

.noexc122:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.do = load ptr, ptr %i.cv, align 8            ; 4 uses
  %i.dp = load ptr, ptr %i.di, align 8
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %bb.t, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.t:                                             ; preds = %.noexc122
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dn, ptr align 4 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.t, %.noexc122
  %.not.i8.i120 = icmp eq ptr %i.do, null
  br i1 %.not.i8.i120, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.du = load ptr, ptr %i.da, align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dw) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.u, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.dn, ptr %i.cv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl
  store ptr %i.dx, ptr %i.di, align 8
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cy
  store ptr %i.dy, ptr %i.da, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.s
  %i.dz = call double @cos(double noundef %i.bn) #30 ; 3 uses
  %i.ea = call double @sin(double noundef %i.bn) #30 ; 3 uses
  %i.eb = fsub double 1.000000e+00, %i.dz         ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ed = load double, ptr %i.ec, align 16        ; 6 uses
  %i.ee = fmul double %i.ea, %i.ed                ; 2 uses
  %i.ef = fneg double %i.ee
  %i.eg = fadd <2 x double> %i.q, zeroinitializer ; 4 uses
  %i.eh = fadd double %i.r, 0.000000e+00          ; 4 uses
  %i.ei = load <2 x double>, ptr %4, align 16     ; 5 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 1 ; 2 uses
  %i.ek = extractelement <2 x double> %i.ei, i64 0
  %i.el = insertelement <2 x double> poison, double %i.dz, i64 0 ; 2 uses
  %i.em = insertelement <2 x double> %i.el, double %i.ef, i64 1
  %i.en = fmul double %i.ea, %i.ej                ; 2 uses
  %i.eo = fmul double %i.ea, %i.ek                ; 2 uses
  %i.ep = fneg double %i.eo
  %i.eq = fneg double %i.en
  %i.er = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x double> %i.es, %i.ei          ; 4 uses
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.ei, <2 x double> %i.em) ; 3 uses
  %i.ew = extractelement <2 x double> %i.et, i64 0 ; 2 uses
  %i.ex = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.eo, i64 1
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.ey, <2 x double> %i.fa) ; 3 uses
  %i.fc = fmul double %i.eb, %i.ed
  %i.fd = extractelement <2 x double> %i.ev, i64 0
  %i.fe = extractelement <2 x double> %i.ev, i64 1 ; 2 uses
  %i.ff = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fi = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fj = insertelement <2 x double> %i.fi, double %i.ed, i64 1
  %i.fk = insertelement <2 x double> %i.el, double %i.ep, i64 1
  %i.fl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fj, <2 x double> %i.fk) ; 3 uses
  %i.fm = extractelement <2 x double> %i.fl, i64 0
  %i.fn = fmul double %i.fm, 0.000000e+00         ; 2 uses
  %i.fo = fadd double %i.fe, %i.fn
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fr = call double @llvm.fmuladd.f64(double %i.fe, double 0.000000e+00, double %i.fn)
  %i.fs = extractelement <2 x double> %i.fb, i64 1
  %i.ft = fadd double %i.fs, %i.fr
  %i.fu = call double @llvm.fmuladd.f64(double %i.r, double 0.000000e+00, double %i.ft) ; 3 uses
  %i.fv = insertelement <2 x double> poison, double %i.v, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = insertelement <2 x double> poison, double %i.t, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fmul double %i.fu, 0.000000e+00         ; 2 uses
  %i.gc = call double @llvm.fmuladd.f64(double %i.ew, double %i.ej, double %i.ee) ; 2 uses
  %i.gd = call double @llvm.fmuladd.f64(double %i.fc, double %i.ed, double %i.dz) ; 2 uses
  %i.ge = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = insertelement <2 x double> %i.ge, double %i.gc, i64 1
  %i.gg = fmul <2 x double> %i.gf, zeroinitializer ; 2 uses
  %i.gh = call double @llvm.fmuladd.f64(double %i.fd, double 0.000000e+00, double %i.gc)
  %i.gi = call double @llvm.fmuladd.f64(double %i.ew, double %i.ed, double %i.en) ; 2 uses
  %i.gj = insertelement <2 x double> %i.fq, double %i.gi, i64 0 ; 2 uses
  %i.gk = fadd <2 x double> %i.gj, %i.gg          ; 2 uses
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gm = insertelement <2 x double> %i.gl, double %i.gh, i64 1
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> zeroinitializer, <2 x double> %i.gm)
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.gn) ; 4 uses
  %i.gp = insertelement <2 x double> %i.fq, double %i.gi, i64 1
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> zeroinitializer, <2 x double> %i.fl) ; 2 uses
  %i.gr = shufflevector <2 x double> %i.fp, <2 x double> %i.gq, <2 x i32> <i32 0, i32 2>
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> zeroinitializer, <2 x double> %i.gr)
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.gs) ; 3 uses
  %i.gu = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = shufflevector <2 x double> %i.gk, <2 x double> %i.gq, <2 x i32> <i32 0, i32 3>
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> zeroinitializer, <2 x double> %i.gw)
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.gx) ; 4 uses
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> zeroinitializer, <2 x double> %i.gg)
  %i.ha = insertelement <2 x double> %i.ff, double %i.gd, i64 0
  %i.hb = fadd <2 x double> %i.ha, %i.gz
  %i.hc = insertelement <2 x double> poison, double %i.r, i64 0
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> zeroinitializer, <2 x double> %i.hb) ; 6 uses
  %i.hf = fmul <2 x double> %i.gt, zeroinitializer ; 2 uses
  %i.hg = fadd <2 x double> %i.go, %i.hf
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> zeroinitializer, <2 x double> %i.hg)
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> zeroinitializer, <2 x double> %i.gt)
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> zeroinitializer, <2 x double> %i.hi)
  %i.hk = fmul <2 x double> %i.gt, %i.fw
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.go, <2 x double> %i.hk)
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.gy, <2 x double> %i.hl)
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> zeroinitializer, <2 x double> %i.hh) ; 2 uses
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> zeroinitializer, <2 x double> %i.hj) ; 2 uses
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> zeroinitializer, <2 x double> %i.hf)
  %i.hq = fadd <2 x double> %i.gy, %i.hp
  %i.hr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> zeroinitializer, <2 x double> %i.hq) ; 2 uses
  %i.hs = fadd <2 x double> %i.eg, %i.hm          ; 2 uses
  %i.ht = extractelement <2 x double> %i.he, i64 1 ; 2 uses
  %i.hu = fadd double %i.ht, %i.gb
  %i.hv = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.fu, i64 1
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> zeroinitializer, <2 x double> %i.hw)
  %i.hy = extractelement <2 x double> %i.he, i64 0
  %7 = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %8 = insertelement <2 x double> %7, double %i.eh, i64 0
  %9 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> zeroinitializer, <2 x double> %i.hx) ; 2 uses
  %i.hz = insertelement <2 x double> %i.he, double %i.eh, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %11 = insertelement <2 x double> %10, double %i.gb, i64 1
  %12 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> zeroinitializer, <2 x double> %11) ; 3 uses
  %shift = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.he, %shift
  %13 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %14 = call double @llvm.fmuladd.f64(double %i.eh, double 0.000000e+00, double %13) ; 2 uses
  %i.ia = fmul double %i.fu, %i.v
  %i.ib = call double @llvm.fmuladd.f64(double %i.t, double %i.ht, double %i.ia)
  %i.ic = call double @llvm.fmuladd.f64(double %i.w, double %i.hy, double %i.ib)
  %i.id = fadd double %i.eh, %i.ic                ; 2 uses
  %.not446 = icmp eq ptr %i.x, %i.y
  br i1 %.not446, label %.preheader410.thread, label %.lr.ph

.preheader410.thread:                             ; preds = %bb.v
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

.lr.ph:                                           ; preds = %bb.v
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.an

.preheader410:                                    ; preds = %bb.ao
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.ij = shl nsw i64 %i.ac, 2
  %i.ik = extractelement <2 x double> %9, i64 0   ; 2 uses
  br label %.preheader389.us

.preheader389.us:                                 ; preds = %.preheader410, %._crit_edge.us
  %.084429.us = phi i32 [ %i.ok, %._crit_edge.us ], [ 0, %.preheader410 ]
  %.096428.us = phi i64 [ %i.oj, %._crit_edge.us ], [ 0, %.preheader410 ] ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.preheader389.us, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us
  %.083426.us = phi i64 [ 0, %.preheader389.us ], [ %i.il, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us ] ; 2 uses
  %i.il = add nuw i64 %.083426.us, 1              ; 3 uses
  %i.im = load ptr, ptr %i.ih, align 8            ; 3 uses
  %i.in = load ptr, ptr %i.da, align 8
  %.not.i.i127.us = icmp eq ptr %i.im, %i.in
  br i1 %.not.i.i127.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 4, ptr %i.im, align 4
  %i.io = load ptr, ptr %i.ih, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store ptr %i.ip, ptr %i.ih, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

bb.y:                                             ; preds = %bb.w
  %i.iq = load ptr, ptr %i.cv, align 8            ; 4 uses
  %i.ir = ptrtoint ptr %i.im to i64
  %i.is = ptrtoint ptr %i.iq to i64               ; 2 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 5 uses
  %i.iu = icmp eq i64 %i.it, 9223372036854775804
  br i1 %i.iu, label %.split.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.y
  %i.iv = ashr exact i64 %i.it, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.iv, i64 1)
  %i.iw = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.iv ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.iv
  %i.iy = call i64 @llvm.umin.i64(i64 %i.iw, i64 2305843009213693951)
  %i.iz = select i1 %i.ix, i64 2305843009213693951, i64 %i.iy ; 3 uses
  %.not.i.i.i.i128.us = icmp ne i64 %i.iz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i128.us)
  %i.ja = shl nuw nsw i64 %i.iz, 2
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #28
          to label %.noexc130.us unwind label %.loopexit390.split.us ; 4 uses

.noexc130.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 %i.it ; 2 uses
  store i32 4, ptr %i.jc, align 4
  %i.jd = icmp sgt i64 %i.it, 0
  br i1 %i.jd, label %bb.z, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.z:                                             ; preds = %.noexc130.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jb, ptr align 4 %i.iq, i64 %i.it, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.z, %.noexc130.us
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %.not.i17.i.i.i.us = icmp eq ptr %i.iq, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  %i.jf = load ptr, ptr %i.da, align 8
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = sub i64 %i.jg, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.jh) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.jb, ptr %i.cv, align 8
  store ptr %i.je, ptr %i.ih, align 8
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.iz
  store ptr %i.ji, ptr %i.da, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.x
  %i.jj = urem i64 %i.il, %i.ac
  %i.jk = load ptr, ptr %1, align 8               ; 5 uses
  %i.jl = getelementptr [24 x i8], ptr %i.jk, i64 %.096428.us ; 2 uses
  %.idx382.us = mul i64 %.083426.us, 96
  %i.jm = getelementptr i8, ptr %i.jl, i64 %.idx382.us ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 72
  %.sroa.8269.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jm, i64 88
  %i.jo = load <2 x double>, ptr %i.jn, align 8   ; 6 uses
  %.sroa.8269.0.copyload.us = load double, ptr %.sroa.8269.0..sroa_idx.us, align 8 ; 4 uses
  %.idx383.us = mul i64 %i.jj, 96
  %i.jp = getelementptr i8, ptr %i.jl, i64 %.idx383.us ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  %.sroa.8.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jp, i64 88
  %i.jr = load <2 x double>, ptr %i.jq, align 8   ; 6 uses
  %.sroa.8.0.copyload.us = load double, ptr %.sroa.8.0..sroa_idx.us, align 8 ; 4 uses
  %i.js = load ptr, ptr %i.ii, align 8            ; 6 uses
  %i.jt = load ptr, ptr %i.bx, align 8
  %.not.i.us = icmp eq ptr %i.js, %i.jt
  br i1 %.not.i.us, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  store <2 x double> %i.jo, ptr %i.js, align 8
  %.sroa.8269.0..sroa_idx270.us = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store double %.sroa.8269.0.copyload.us, ptr %.sroa.8269.0..sroa_idx270.us, align 8
  %i.ju = load ptr, ptr %i.ii, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24 ; 2 uses
  store ptr %i.jv, ptr %i.ii, align 8
  %.pre = load ptr, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %i.jw = ptrtoint ptr %i.js to i64
  %i.jx = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.jy = sub i64 %i.jw, %i.jx                    ; 3 uses
  %i.jz = icmp eq i64 %i.jy, 9223372036854775800
  br i1 %i.jz, label %.split431.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.ac
  %i.ka = sdiv exact i64 %i.jy, 24                ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.ka, i64 1)
  %i.kb = add nsw i64 %.sroa.speculated.i.i.i.us, %i.ka ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.ka
  %i.kd = call i64 @llvm.umin.i64(i64 %i.kb, i64 384307168202282325)
  %i.ke = select i1 %i.kc, i64 384307168202282325, i64 %i.kd ; 3 uses
  %.not.i.i.i131.us = icmp ne i64 %i.ke, 0
  call void @llvm.assume(i1 %.not.i.i.i131.us)
  %i.kf = mul nuw nsw i64 %i.ke, 24
  %i.kg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #28
          to label %.noexc133.us unwind label %.loopexit395.split.us ; 5 uses

.noexc133.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.jy ; 2 uses
  store <2 x double> %i.jo, ptr %i.kh, align 8
  %.sroa.8269.0..sroa_idx272.us = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store double %.sroa.8269.0.copyload.us, ptr %.sroa.8269.0..sroa_idx272.us, align 8
  %.not10.i.i.i.i.i.us = icmp eq ptr %i.jk, %i.js
  br i1 %.not10.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %.noexc133.us, %.lr.ph.i.i.i.i.i.us
  %.012.i.i.i.i.i.us = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.us ], [ %i.kg, %.noexc133.us ] ; 2 uses
  %.0911.i.i.i.i.i.us = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.us ], [ %i.jk, %.noexc133.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.us, i64 24, i1 false), !alias.scope !75
  %i.ki = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.us, i64 24 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i.us = icmp eq ptr %i.ki, %i.js
  br i1 %.not.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, label %.lr.ph.i.i.i.i.i.us, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us: ; preds = %.lr.ph.i.i.i.i.i.us, %.noexc133.us
  %.0.lcssa.i.i.i.i.i.us = phi ptr [ %i.kg, %.noexc133.us ], [ %i.kj, %.lr.ph.i.i.i.i.i.us ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.us, i64 24 ; 2 uses
  %i.kl = load ptr, ptr %i.bx, align 8
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %i.km, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.kn) #29
  store ptr %i.kg, ptr %1, align 8
  store ptr %i.kk, ptr %i.ii, align 8
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.ke ; 2 uses
  store ptr %i.ko, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, %bb.ab
  %i.kp = phi ptr [ %i.ko, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %.pre, %bb.ab ] ; 4 uses
  %i.kq = phi ptr [ %i.kk, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %i.jv, %bb.ab ] ; 3 uses
  %.not.i134.us = icmp eq ptr %i.kq, %i.kp
  br i1 %.not.i134.us, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us
  store <2 x double> %i.jr, ptr %i.kq, align 8
  %.sroa.8.0..sroa_idx257.us = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store double %.sroa.8.0.copyload.us, ptr %.sroa.8.0..sroa_idx257.us, align 8
  %i.kr = load ptr, ptr %i.ii, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24 ; 2 uses
  store ptr %i.ks, ptr %i.ii, align 8
  %.pre460 = load ptr, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit149.us

bb.ae:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us
  %i.kt = load ptr, ptr %1, align 8               ; 5 uses
  %i.ku = ptrtoint ptr %i.kp to i64
  %i.kv = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kw = sub i64 %i.ku, %i.kv                    ; 3 uses
  %i.kx = icmp eq i64 %i.kw, 9223372036854775800
  br i1 %i.kx, label %.split431.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i135.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i135.us: ; preds = %bb.ae
  %i.ky = sdiv exact i64 %i.kw, 24                ; 3 uses
  %.sroa.speculated.i.i.i136.us = call i64 @llvm.umax.i64(i64 %i.ky, i64 1)
  %i.kz = add nsw i64 %.sroa.speculated.i.i.i136.us, %i.ky ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.ky
  %i.lb = call i64 @llvm.umin.i64(i64 %i.kz, i64 384307168202282325)
  %i.lc = select i1 %i.la, i64 384307168202282325, i64 %i.lb ; 3 uses
  %.not.i.i.i137.us = icmp ne i64 %i.lc, 0
  call void @llvm.assume(i1 %.not.i.i.i137.us)
  %i.ld = mul nuw nsw i64 %i.lc, 24
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #28
          to label %.noexc148.us unwind label %.loopexit395.split.us ; 5 uses

.noexc148.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i135.us
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.kw ; 2 uses
  store <2 x double> %i.jr, ptr %i.lf, align 8
  %.sroa.8.0..sroa_idx259.us = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store double %.sroa.8.0.copyload.us, ptr %.sroa.8.0..sroa_idx259.us, align 8
  %.not10.i.i.i.i.i138.us = icmp eq ptr %i.kt, %i.kp
  br i1 %.not10.i.i.i.i.i138.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i143.us, label %.lr.ph.i.i.i.i.i139.us

.lr.ph.i.i.i.i.i139.us:                           ; preds = %.noexc148.us, %.lr.ph.i.i.i.i.i139.us
  %.012.i.i.i.i.i140.us = phi ptr [ %i.lh, %.lr.ph.i.i.i.i.i139.us ], [ %i.le, %.noexc148.us ] ; 2 uses
  %.0911.i.i.i.i.i141.us = phi ptr [ %i.lg, %.lr.ph.i.i.i.i.i139.us ], [ %i.kt, %.noexc148.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i140.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i141.us, i64 24, i1 false), !alias.scope !76
  %i.lg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i141.us, i64 24 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i140.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i142.us = icmp eq ptr %i.lg, %i.kp
  br i1 %.not.i.i.i.i.i142.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i143.us, label %.lr.ph.i.i.i.i.i139.us, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i143.us: ; preds = %.lr.ph.i.i.i.i.i139.us, %.noexc148.us
  %.0.lcssa.i.i.i.i.i144.us = phi ptr [ %i.le, %.noexc148.us ], [ %i.lh, %.lr.ph.i.i.i.i.i139.us ]
  %i.li = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i144.us, i64 24 ; 2 uses
  %.not.i23.i.i145.us = icmp eq ptr %i.kt, null
  br i1 %.not.i23.i.i145.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i143.us
  %i.lj = load ptr, ptr %i.bx, align 8
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = sub i64 %i.lk, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.ll) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us: ; preds = %bb.af, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i143.us
  store ptr %i.le, ptr %1, align 8
  store ptr %i.li, ptr %i.ii, align 8
  %i.lm = getelementptr inbounds nuw [24 x i8], ptr %i.le, i64 %i.lc ; 2 uses
  store ptr %i.lm, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit149.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit149.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us, %bb.ad
  %i.ln = phi ptr [ %i.lm, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us ], [ %.pre460, %bb.ad ] ; 4 uses
  %i.lo = phi ptr [ %i.li, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i146.us ], [ %i.ks, %bb.ad ] ; 3 uses
  %i.lp = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lq = fmul <2 x double> %i.ho, %i.lp
  %i.lr = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ls = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.lr, <2 x double> %i.lq)
  %i.lt = insertelement <2 x double> poison, double %.sroa.8.0.copyload.us, i64 0
  %i.lu = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.lu, <2 x double> %i.ls)
  %i.lw = fadd <2 x double> %i.hs, %i.lv          ; 2 uses
  %shift539 = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop540 = fmul <2 x double> %12, %shift539
  %i.lx = extractelement <2 x double> %foldExtExtBinop540, i64 0
  %i.ly = extractelement <2 x double> %i.jr, i64 0
  %i.lz = call double @llvm.fmuladd.f64(double %i.ik, double %i.ly, double %i.lx)
  %i.ma = call double @llvm.fmuladd.f64(double %14, double %.sroa.8.0.copyload.us, double %i.lz)
  %i.mb = fadd double %i.id, %i.ma                ; 2 uses
  %.not.i.i150.us = icmp eq ptr %i.lo, %i.ln
  br i1 %.not.i.i150.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit149.us
  store <2 x double> %i.lw, ptr %i.lo, align 8
  %.sroa.7246.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store double %i.mb, ptr %.sroa.7246.0..sroa_idx.us, align 8
  %i.mc = load ptr, ptr %i.ii, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24 ; 2 uses
  store ptr %i.md, ptr %i.ii, align 8
  %.pre461 = load ptr, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit.us

bb.ah:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit149.us
  %i.me = load ptr, ptr %1, align 8               ; 5 uses
  %i.mf = ptrtoint ptr %i.ln to i64
  %i.mg = ptrtoint ptr %i.me to i64               ; 2 uses
  %i.mh = sub i64 %i.mf, %i.mg                    ; 3 uses
  %i.mi = icmp eq i64 %i.mh, 9223372036854775800
  br i1 %i.mi, label %.split436.us, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.ah
  %i.mj = sdiv exact i64 %i.mh, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i151.us = call i64 @llvm.umax.i64(i64 %i.mj, i64 1)
  %i.mk = add nsw i64 %.sroa.speculated.i.i.i.i151.us, %i.mj ; 2 uses
  %i.ml = icmp ult i64 %i.mk, %i.mj
  %i.mm = call i64 @llvm.umin.i64(i64 %i.mk, i64 384307168202282325)
  %i.mn = select i1 %i.ml, i64 384307168202282325, i64 %i.mm ; 3 uses
  %.not.i.i.i.i152.us = icmp ne i64 %i.mn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i152.us)
  %i.mo = mul nuw nsw i64 %i.mn, 24
  %i.mp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mo) #28
          to label %.noexc154.us unwind label %.loopexit400.split.us ; 5 uses

.noexc154.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mh ; 2 uses
  store <2 x double> %i.lw, ptr %i.mq, align 8
  %.sroa.7246.0..sroa_idx247.us = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store double %i.mb, ptr %.sroa.7246.0..sroa_idx247.us, align 8
  %.not10.i.i.i.i.i.i.us = icmp eq ptr %i.me, %i.ln
  br i1 %.not10.i.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.noexc154.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi ptr [ %i.ms, %.lr.ph.i.i.i.i.i.i.us ], [ %i.mp, %.noexc154.us ] ; 2 uses
  %.0911.i.i.i.i.i.i.us = phi ptr [ %i.mr, %.lr.ph.i.i.i.i.i.i.us ], [ %i.me, %.noexc154.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.us, i64 24, i1 false), !alias.scope !77
  %i.mr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us, i64 24 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq ptr %i.mr, %i.ln
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.us, %.noexc154.us
  %.0.lcssa.i.i.i.i.i.i.us = phi ptr [ %i.mp, %.noexc154.us ], [ %i.ms, %.lr.ph.i.i.i.i.i.i.us ]
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i23.i.i.i.us = icmp eq ptr %i.me, null
  br i1 %.not.i23.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us
  %i.mu = load ptr, ptr %i.bx, align 8
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = sub i64 %i.mv, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef %i.mw) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us: ; preds = %bb.ai, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us
  store ptr %i.mp, ptr %1, align 8
  store ptr %i.mt, ptr %i.ii, align 8
  %i.mx = getelementptr inbounds nuw [24 x i8], ptr %i.mp, i64 %i.mn ; 2 uses
  store ptr %i.mx, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us, %bb.ag
  %i.my = phi ptr [ %i.mx, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us ], [ %.pre461, %bb.ag ] ; 4 uses
  %i.mz = phi ptr [ %i.mt, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us ], [ %i.md, %bb.ag ] ; 3 uses
  %i.na = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nb = fmul <2 x double> %i.ho, %i.na
  %i.nc = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.nc, <2 x double> %i.nb)
  %i.ne = insertelement <2 x double> poison, double %.sroa.8269.0.copyload.us, i64 0
  %i.nf = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ng = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.nf, <2 x double> %i.nd)
  %i.nh = fadd <2 x double> %i.hs, %i.ng          ; 2 uses
  %shift542 = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop543 = fmul <2 x double> %12, %shift542
  %i.ni = extractelement <2 x double> %foldExtExtBinop543, i64 0
  %i.nj = extractelement <2 x double> %i.jo, i64 0
  %i.nk = call double @llvm.fmuladd.f64(double %i.ik, double %i.nj, double %i.ni)
  %i.nl = call double @llvm.fmuladd.f64(double %14, double %.sroa.8269.0.copyload.us, double %i.nk)
  %i.nm = fadd double %i.id, %i.nl                ; 2 uses
  %.not.i.i155.us = icmp eq ptr %i.mz, %i.my
  br i1 %.not.i.i155.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit.us
  store <2 x double> %i.nh, ptr %i.mz, align 8
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store double %i.nm, ptr %.sroa.7.0..sroa_idx.us, align 8
  %i.nn = load ptr, ptr %i.ii, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  store ptr %i.no, ptr %i.ii, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us

bb.ak:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit.us
  %i.np = load ptr, ptr %1, align 8               ; 5 uses
  %i.nq = ptrtoint ptr %i.my to i64
  %i.nr = ptrtoint ptr %i.np to i64               ; 2 uses
  %i.ns = sub i64 %i.nq, %i.nr                    ; 3 uses
  %i.nt = icmp eq i64 %i.ns, 9223372036854775800
  br i1 %i.nt, label %.split439.us, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i156.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i156.us: ; preds = %bb.ak
  %i.nu = sdiv exact i64 %i.ns, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i157.us = call i64 @llvm.umax.i64(i64 %i.nu, i64 1)
  %i.nv = add nsw i64 %.sroa.speculated.i.i.i.i157.us, %i.nu ; 2 uses
  %i.nw = icmp ult i64 %i.nv, %i.nu
  %i.nx = call i64 @llvm.umin.i64(i64 %i.nv, i64 384307168202282325)
  %i.ny = select i1 %i.nw, i64 384307168202282325, i64 %i.nx ; 3 uses
  %.not.i.i.i.i158.us = icmp ne i64 %i.ny, 0
  call void @llvm.assume(i1 %.not.i.i.i.i158.us)
  %i.nz = mul nuw nsw i64 %i.ny, 24
  %i.oa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nz) #28
          to label %.noexc169.us unwind label %.loopexit405.split.us ; 5 uses

.noexc169.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i156.us
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ns ; 2 uses
  store <2 x double> %i.nh, ptr %i.ob, align 8
  %.sroa.7.0..sroa_idx239.us = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  store double %i.nm, ptr %.sroa.7.0..sroa_idx239.us, align 8
  %.not10.i.i.i.i.i.i159.us = icmp eq ptr %i.np, %i.my
  br i1 %.not10.i.i.i.i.i.i159.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i164.us, label %.lr.ph.i.i.i.i.i.i160.us

.lr.ph.i.i.i.i.i.i160.us:                         ; preds = %.noexc169.us, %.lr.ph.i.i.i.i.i.i160.us
  %.012.i.i.i.i.i.i161.us = phi ptr [ %i.od, %.lr.ph.i.i.i.i.i.i160.us ], [ %i.oa, %.noexc169.us ] ; 2 uses
  %.0911.i.i.i.i.i.i162.us = phi ptr [ %i.oc, %.lr.ph.i.i.i.i.i.i160.us ], [ %i.np, %.noexc169.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i161.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i162.us, i64 24, i1 false), !alias.scope !78
  %i.oc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i162.us, i64 24 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i161.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i163.us = icmp eq ptr %i.oc, %i.my
  br i1 %.not.i.i.i.i.i.i163.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i164.us, label %.lr.ph.i.i.i.i.i.i160.us, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i164.us: ; preds = %.lr.ph.i.i.i.i.i.i160.us, %.noexc169.us
  %.0.lcssa.i.i.i.i.i.i165.us = phi ptr [ %i.oa, %.noexc169.us ], [ %i.od, %.lr.ph.i.i.i.i.i.i160.us ]
  %i.oe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i165.us, i64 24
  %.not.i23.i.i.i166.us = icmp eq ptr %i.np, null
  br i1 %.not.i23.i.i.i166.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i167.us, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i164.us
  %i.of = load ptr, ptr %i.bx, align 8
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = sub i64 %i.og, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef %i.oh) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i167.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i167.us: ; preds = %bb.al, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i164.us
  store ptr %i.oa, ptr %1, align 8
  store ptr %i.oe, ptr %i.ii, align 8
  %i.oi = getelementptr inbounds nuw [24 x i8], ptr %i.oa, i64 %i.ny
  store ptr %i.oi, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i167.us, %bb.aj
  %exitcond457.not = icmp eq i64 %i.il, %i.ac
  br i1 %exitcond457.not, label %._crit_edge.us, label %bb.w, !llvm.loop !64

._crit_edge.us:                                   ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us
  %i.oj = add i64 %.096428.us, %i.ij              ; 3 uses
  %i.ok = add nuw i32 %.084429.us, 1              ; 2 uses
  %exitcond458.not = icmp eq i32 %i.ok, %.sroa.speculated
  br i1 %exitcond458.not, label %.split442.us, label %.preheader389.us, !llvm.loop !65

.loopexit390.split.us:                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit392.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit395.split.us:                            ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i135.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit397.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit400.split.us:                            ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit402.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit405.split.us:                            ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i156.us
  %lpad.loopexit407.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.am:                                            ; preds = %.invoke, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.an:                                            ; preds = %.lr.ph, %bb.ao
  %.095425 = phi i64 [ 0, %.lr.ph ], [ %i.ou, %bb.ao ] ; 2 uses
  %i.om = load ptr, ptr %i.ig, align 8
  %i.on = load ptr, ptr %3, align 8
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.on, i64 %.095425
  %i.op = load ptr, ptr %1, align 8               ; 2 uses
  %i.oq = ptrtoint ptr %i.om to i64
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = getelementptr inbounds i8, ptr %i.op, i64 %i.os
  invoke void @_ZNSt6vectorI10aiVector3tIdESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ot, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %i.oo)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ou = add nuw i64 %.095425, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ou, %i.ac
  br i1 %exitcond.not, label %.preheader410, label %bb.an, !llvm.loop !66

bb.ap:                                            ; preds = %bb.an
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.split442.us:                                     ; preds = %._crit_edge.us
  %i.ow = load ptr, ptr %1, align 8               ; 4 uses
  %.idx = mul nsw i64 %i.ac, 96
  %i.ox = getelementptr inbounds i8, ptr %i.ow, i64 %.idx ; 4 uses
  %i.oy = ptrtoint ptr %i.ox to i64               ; 2 uses
  %i.oz = load ptr, ptr %i.ii, align 8            ; 2 uses
  %.not11.i.i = icmp eq ptr %i.ox, %i.oz
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %.split442.us
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = sub i64 %i.pa, %i.oy                    ; 3 uses
  %i.pc = icmp sgt i64 %i.pb, 24
  br i1 %i.pc, label %bb.ar, label %bb.as, !prof !17

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ow, ptr nonnull align 8 %i.ox, i64 %i.pb, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.pd = icmp eq i64 %i.pb, 24
  br i1 %i.pd, label %bb.at, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ow, ptr noundef nonnull align 8 dereferenceable(24) %i.ox, i64 24, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %bb.at, %bb.as, %bb.ar, %.split442.us
  %i.pe = load ptr, ptr %i.ii, align 8            ; 2 uses
  %i.pf = ptrtoint ptr %i.pe to i64
  %i.pg = sub i64 %i.pf, %i.oy
  %i.ph = getelementptr inbounds i8, ptr %i.ow, i64 %i.pg ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.pe, %i.ph
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i
  store ptr %i.ph, ptr %i.ii, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

.split.us:                                        ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc129 unwind label %.loopexit.split-lp391

.noexc129:                                        ; preds = %.split.us
  unreachable

.split431.us.invoke:                              ; preds = %bb.ae, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.split431.us.cont unwind label %.loopexit.split-lp396

.split431.us.cont:                                ; preds = %.split431.us.invoke
  unreachable

.split436.us:                                     ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc153 unwind label %.loopexit.split-lp401

.noexc153:                                        ; preds = %.split436.us
  unreachable

.split439.us:                                     ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc168 unwind label %.loopexit.split-lp406

.noexc168:                                        ; preds = %.split439.us
  unreachable

.loopexit.split-lp391:                            ; preds = %.split.us
  %lpad.loopexit.split-lp393 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx
end_hunk_0
