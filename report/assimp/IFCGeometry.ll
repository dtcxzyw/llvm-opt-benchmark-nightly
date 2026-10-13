Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCGeometry?download=true
inline.NumInlined: 2077
inline.NumDeleted: 820
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp3IFC24ProcessRevolvedAreaSolidERKNS0_10Schema_2x320IfcRevolvedAreaSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
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
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 22 uses
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
  %7 = extractelement <2 x double> %i.ev, i64 0
  %8 = extractelement <2 x double> %i.ev, i64 1   ; 2 uses
  %i.fd = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fg = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fh = insertelement <2 x double> %i.fg, double %i.ed, i64 1
  %i.fi = insertelement <2 x double> %i.el, double %i.ep, i64 1
  %i.fj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.fh, <2 x double> %i.fi) ; 3 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 0
  %i.fl = fmul double %i.fk, 0.000000e+00         ; 2 uses
  %i.fm = fadd double %8, %i.fl
  %i.fn = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fo = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fp = call double @llvm.fmuladd.f64(double %8, double 0.000000e+00, double %i.fl)
  %i.fq = extractelement <2 x double> %i.fb, i64 1
  %i.fr = fadd double %i.fq, %i.fp
  %i.fs = call double @llvm.fmuladd.f64(double %i.r, double 0.000000e+00, double %i.fr) ; 3 uses
  %i.ft = insertelement <2 x double> poison, double %i.v, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = insertelement <2 x double> poison, double %i.t, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = insertelement <2 x double> poison, double %i.w, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = fmul double %i.fs, 0.000000e+00         ; 2 uses
  %i.ga = call double @llvm.fmuladd.f64(double %i.ew, double %i.ej, double %i.ee) ; 2 uses
  %i.gb = call double @llvm.fmuladd.f64(double %i.fc, double %i.ed, double %i.dz) ; 2 uses
  %i.gc = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gd = insertelement <2 x double> %i.gc, double %i.ga, i64 1
  %i.ge = fmul <2 x double> %i.gd, zeroinitializer ; 2 uses
  %i.gf = call double @llvm.fmuladd.f64(double %7, double 0.000000e+00, double %i.ga)
  %i.gg = call double @llvm.fmuladd.f64(double %i.ew, double %i.ed, double %i.en) ; 2 uses
  %i.gh = insertelement <2 x double> %i.fo, double %i.gg, i64 0 ; 2 uses
  %i.gi = fadd <2 x double> %i.gh, %i.ge          ; 2 uses
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gk = insertelement <2 x double> %i.gj, double %i.gf, i64 1
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> zeroinitializer, <2 x double> %i.gk)
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.gl) ; 4 uses
  %i.gn = insertelement <2 x double> %i.fo, double %i.gg, i64 1
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> zeroinitializer, <2 x double> %i.fj) ; 2 uses
  %i.gp = shufflevector <2 x double> %i.fn, <2 x double> %i.go, <2 x i32> <i32 0, i32 2>
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> zeroinitializer, <2 x double> %i.gp)
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.gq) ; 3 uses
  %i.gs = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = shufflevector <2 x double> %i.gi, <2 x double> %i.go, <2 x i32> <i32 0, i32 3>
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> zeroinitializer, <2 x double> %i.gu)
  %i.gw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.gv) ; 4 uses
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> zeroinitializer, <2 x double> %i.ge)
  %i.gy = insertelement <2 x double> %i.fd, double %i.gb, i64 0
  %i.gz = fadd <2 x double> %i.gy, %i.gx
  %i.ha = insertelement <2 x double> poison, double %i.r, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> zeroinitializer, <2 x double> %i.gz) ; 6 uses
  %i.hd = fmul <2 x double> %i.gr, zeroinitializer ; 2 uses
  %i.he = fadd <2 x double> %i.gm, %i.hd
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> zeroinitializer, <2 x double> %i.he)
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> zeroinitializer, <2 x double> %i.gr)
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> zeroinitializer, <2 x double> %i.hg)
  %i.hi = fmul <2 x double> %i.gr, %i.fu
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.gm, <2 x double> %i.hi)
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.gw, <2 x double> %i.hj)
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> zeroinitializer, <2 x double> %i.hf) ; 2 uses
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> zeroinitializer, <2 x double> %i.hh) ; 2 uses
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> zeroinitializer, <2 x double> %i.hd)
  %i.ho = fadd <2 x double> %i.gw, %i.hn
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> zeroinitializer, <2 x double> %i.ho) ; 2 uses
  %i.hq = fadd <2 x double> %i.eg, %i.hk          ; 2 uses
  %i.hr = extractelement <2 x double> %i.hc, i64 1 ; 2 uses
  %i.hs = fadd double %i.hr, %i.fz
  %i.ht = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.fs, i64 1
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> zeroinitializer, <2 x double> %i.hu)
  %i.hw = extractelement <2 x double> %i.hc, i64 0
  %i.hx = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hy = insertelement <2 x double> %i.hx, double %i.eh, i64 0
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> zeroinitializer, <2 x double> %i.hv) ; 2 uses
  %i.ia = insertelement <2 x double> %i.hc, double %i.eh, i64 0
  %i.ib = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ic = insertelement <2 x double> %i.ib, double %i.fz, i64 1
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> zeroinitializer, <2 x double> %i.ic) ; 3 uses
  %shift = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.hc, %shift
  %i.ie = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.if = call double @llvm.fmuladd.f64(double %i.eh, double 0.000000e+00, double %i.ie) ; 2 uses
  %i.ig = fmul double %i.fs, %i.v
  %i.ih = call double @llvm.fmuladd.f64(double %i.t, double %i.hr, double %i.ig)
  %i.ii = call double @llvm.fmuladd.f64(double %i.w, double %i.hw, double %i.ih)
  %i.ij = fadd double %i.eh, %i.ii                ; 2 uses
  %.not446 = icmp eq ptr %i.x, %i.y
  br i1 %.not446, label %.preheader410.thread, label %.lr.ph

.preheader410.thread:                             ; preds = %bb.v
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

.lr.ph:                                           ; preds = %bb.v
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.an

.preheader410:                                    ; preds = %bb.ao
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.ip = shl nsw i64 %i.ac, 2
  %i.iq = extractelement <2 x double> %i.hz, i64 0 ; 2 uses
  br label %.preheader389.us

.preheader389.us:                                 ; preds = %.preheader410, %._crit_edge.us
  %.084429.us = phi i32 [ %i.oq, %._crit_edge.us ], [ 0, %.preheader410 ]
  %.096428.us = phi i64 [ %i.op, %._crit_edge.us ], [ 0, %.preheader410 ] ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.preheader389.us, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us
  %.083426.us = phi i64 [ 0, %.preheader389.us ], [ %i.ir, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us ] ; 2 uses
  %i.ir = add nuw i64 %.083426.us, 1              ; 3 uses
  %i.is = load ptr, ptr %i.in, align 8            ; 3 uses
  %i.it = load ptr, ptr %i.da, align 8
  %.not.i.i127.us = icmp eq ptr %i.is, %i.it
  br i1 %.not.i.i127.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 4, ptr %i.is, align 4
  %i.iu = load ptr, ptr %i.in, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store ptr %i.iv, ptr %i.in, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

bb.y:                                             ; preds = %bb.w
  %i.iw = load ptr, ptr %i.cv, align 8            ; 4 uses
  %i.ix = ptrtoint ptr %i.is to i64
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.iz = sub i64 %i.ix, %i.iy                    ; 5 uses
  %i.ja = icmp eq i64 %i.iz, 9223372036854775804
  br i1 %i.ja, label %.split.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.y
  %i.jb = ashr exact i64 %i.iz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.jb, i64 1)
  %i.jc = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.jb ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.jb
  %i.je = call i64 @llvm.umin.i64(i64 %i.jc, i64 2305843009213693951)
  %i.jf = select i1 %i.jd, i64 2305843009213693951, i64 %i.je ; 3 uses
  %.not.i.i.i.i128.us = icmp ne i64 %i.jf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i128.us)
  %i.jg = shl nuw nsw i64 %i.jf, 2
  %i.jh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jg) #28
          to label %.noexc130.us unwind label %.loopexit390.split.us ; 4 uses

.noexc130.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 %i.iz ; 2 uses
  store i32 4, ptr %i.ji, align 4
  %i.jj = icmp sgt i64 %i.iz, 0
  br i1 %i.jj, label %bb.z, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.z:                                             ; preds = %.noexc130.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jh, ptr align 4 %i.iw, i64 %i.iz, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.z, %.noexc130.us
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %.not.i17.i.i.i.us = icmp eq ptr %i.iw, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  %i.jl = load ptr, ptr %i.da, align 8
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.jm, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.jn) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.jh, ptr %i.cv, align 8
  store ptr %i.jk, ptr %i.in, align 8
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jf
  store ptr %i.jo, ptr %i.da, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.x
  %i.jp = urem i64 %i.ir, %i.ac
  %i.jq = load ptr, ptr %1, align 8               ; 5 uses
  %i.jr = getelementptr [24 x i8], ptr %i.jq, i64 %.096428.us ; 2 uses
  %.idx382.us = mul i64 %.083426.us, 96
  %i.js = getelementptr i8, ptr %i.jr, i64 %.idx382.us ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  %.sroa.8269.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.js, i64 88
  %i.ju = load <2 x double>, ptr %i.jt, align 8   ; 6 uses
  %.sroa.8269.0.copyload.us = load double, ptr %.sroa.8269.0..sroa_idx.us, align 8 ; 4 uses
  %.idx383.us = mul i64 %i.jp, 96
  %i.jv = getelementptr i8, ptr %i.jr, i64 %.idx383.us ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 72
  %.sroa.8.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jv, i64 88
  %i.jx = load <2 x double>, ptr %i.jw, align 8   ; 6 uses
  %.sroa.8.0.copyload.us = load double, ptr %.sroa.8.0..sroa_idx.us, align 8 ; 4 uses
  %i.jy = load ptr, ptr %i.io, align 8            ; 6 uses
  %i.jz = load ptr, ptr %i.bx, align 8
  %.not.i.us = icmp eq ptr %i.jy, %i.jz
  br i1 %.not.i.us, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  store <2 x double> %i.ju, ptr %i.jy, align 8
  %.sroa.8269.0..sroa_idx270.us = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store double %.sroa.8269.0.copyload.us, ptr %.sroa.8269.0..sroa_idx270.us, align 8
  %i.ka = load ptr, ptr %i.io, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24 ; 2 uses
  store ptr %i.kb, ptr %i.io, align 8
  %.pre = load ptr, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %i.kc = ptrtoint ptr %i.jy to i64
  %i.kd = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.ke = sub i64 %i.kc, %i.kd                    ; 3 uses
  %i.kf = icmp eq i64 %i.ke, 9223372036854775800
  br i1 %i.kf, label %.split431.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.ac
  %i.kg = sdiv exact i64 %i.ke, 24                ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.kg, i64 1)
  %i.kh = add nsw i64 %.sroa.speculated.i.i.i.us, %i.kg ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.kg
  %i.kj = call i64 @llvm.umin.i64(i64 %i.kh, i64 384307168202282325)
  %i.kk = select i1 %i.ki, i64 384307168202282325, i64 %i.kj ; 3 uses
  %.not.i.i.i131.us = icmp ne i64 %i.kk, 0
  call void @llvm.assume(i1 %.not.i.i.i131.us)
  %i.kl = mul nuw nsw i64 %i.kk, 24
  %i.km = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kl) #28
          to label %.noexc133.us unwind label %.loopexit395.split.us ; 5 uses

.noexc133.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ke ; 2 uses
end_hunk_0
