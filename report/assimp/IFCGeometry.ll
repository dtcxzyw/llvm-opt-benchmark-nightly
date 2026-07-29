inline.NumInlined: 2079
inline.NumDeleted: 821
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp3IFC24ProcessRevolvedAreaSolidERKNS0_10Schema_2x320IfcRevolvedAreaSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
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
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !40, !align !41
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
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %1, align 8               ; 5 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = sdiv exact i64 %i.cc, 24
  %i.ce = icmp ult i64 %i.cd, %i.bv
  br i1 %i.ce, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cb
  %i.cj = mul i64 %i.ab, %i.bu
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #28
          to label %.noexc119 unwind label %bb.am ; 4 uses

.noexc119:                                        ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.bz, %i.cg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc119, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i ], [ %i.ck, %.noexc119 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %i.bz, %.noexc119 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !42
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.cl, %i.cg
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc119
  %.not.i8.i = icmp eq ptr %i.bz, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.r, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ck, ptr %1, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store ptr %i.cn, ptr %i.cf, align 8
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.bv
  store ptr %i.co, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.cq = zext i32 %.sroa.speculated to i64
  %i.cr = mul i64 %i.ac, %i.cq
  %i.cs = add i64 %i.cr, 2                        ; 4 uses
  %i.ct = icmp ugt i64 %i.cs, 2305843009213693951
  br i1 %i.ct, label %.invoke, label %bb.s

.invoke:                                          ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
          to label %.cont unwind label %bb.am

.cont:                                            ; preds = %.invoke
  unreachable

bb.s:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = load ptr, ptr %i.cp, align 8            ; 4 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = ashr exact i64 %i.cz, 2
  %i.db = icmp ult i64 %i.da, %i.cs
  br i1 %i.db, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %bb.v

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.cy                    ; 3 uses
  %i.dg = shl nuw nsw i64 %i.cs, 2
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #28
          to label %.noexc122 unwind label %bb.am ; 4 uses

.noexc122:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.di = icmp sgt i64 %i.df, 0
  br i1 %i.di, label %bb.t, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.t:                                             ; preds = %.noexc122
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr align 4 %i.cw, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.t, %.noexc122
  %.not.i8.i120 = icmp eq ptr %i.cw, null
  br i1 %.not.i8.i120, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.u, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.dh, ptr %i.cp, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store ptr %i.dj, ptr %i.dc, align 8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.cs
  store ptr %i.dk, ptr %i.cu, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.s
  %i.dl = call double @cos(double noundef %i.bn) #30 ; 2 uses
  %i.dm = call double @sin(double noundef %i.bn) #30 ; 3 uses
  %i.dn = fsub double 1.000000e+00, %i.dl         ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dp = fadd <2 x double> %i.p, zeroinitializer ; 4 uses
  %i.dq = fadd double %i.r, 0.000000e+00          ; 4 uses
  %i.dr = load double, ptr %4, align 8            ; 2 uses
  %i.ds = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x double> poison, double %i.dl, i64 0 ; 2 uses
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul double %i.dm, %i.dr                ; 2 uses
  %i.dx = fneg double %i.dw
  %i.dy = load <2 x double>, ptr %i.do, align 8   ; 4 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 1 ; 3 uses
  %i.ea = extractelement <2 x double> %i.dy, i64 0 ; 4 uses
  %i.eb = fmul double %i.dm, %i.dz                ; 2 uses
  %i.ec = fneg double %i.eb
  %i.ed = fmul double %i.dn, %i.ea                ; 2 uses
  %i.ee = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.dr, i64 1 ; 2 uses
  %i.eg = fmul <2 x double> %i.dt, %i.ef          ; 3 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 1 ; 2 uses
  %i.ei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.ef, <2 x double> %i.dv) ; 3 uses
  %i.ej = call double @llvm.fmuladd.f64(double %i.eh, double %i.ea, double %i.eb) ; 2 uses
  %i.ek = fmul double %i.dm, %i.ea                ; 2 uses
  %i.el = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = insertelement <2 x double> %i.du, double %i.dx, i64 1
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.dy, <2 x double> %i.en) ; 3 uses
  %i.ep = fneg double %i.ek
  %i.eq = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.er = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.es = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.ek, i64 1
  %i.eu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.er, <2 x double> %i.et) ; 5 uses
  %7 = fmul double %i.ej, 0.000000e+00            ; 2 uses
  %8 = extractelement <2 x double> %i.ei, i64 1   ; 3 uses
  %9 = fadd double %8, %7
  %10 = extractelement <2 x double> %i.eo, i64 0
  %i.ev = extractelement <2 x double> %i.eo, i64 1
  %i.ew = call double @llvm.fmuladd.f64(double %8, double 0.000000e+00, double %i.ej)
  %11 = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x double> poison, double %9, i64 0
  %13 = insertelement <2 x double> %12, double %i.ew, i64 1
  %14 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> zeroinitializer, <2 x double> %13)
  %15 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> zeroinitializer, <2 x double> %14) ; 4 uses
  %i.ex = extractelement <2 x double> %i.eu, i64 1
  %16 = call double @llvm.fmuladd.f64(double %i.eh, double %i.ea, double %i.ec) ; 3 uses
  %17 = insertelement <2 x double> %i.eu, double %16, i64 0
  %18 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> zeroinitializer, <2 x double> %i.eo) ; 2 uses
  %i.ey = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = extractelement <2 x double> %i.eu, i64 0
  %20 = call double @llvm.fmuladd.f64(double %8, double 0.000000e+00, double %7)
  %21 = fmul double %10, 0.000000e+00             ; 2 uses
  %22 = fadd double %19, %20
  %23 = fadd double %16, %21
  %i.ez = insertelement <2 x double> poison, double %23, i64 0
  %24 = shufflevector <2 x double> %i.ez, <2 x double> %18, <2 x i32> <i32 0, i32 2>
  %i.fa = insertelement <2 x double> poison, double %i.r, i64 0
  %25 = insertelement <2 x double> %i.fa, double %16, i64 1
  %26 = insertelement <2 x double> poison, double %22, i64 0
  %i.fb = insertelement <2 x double> %26, double %21, i64 1
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> zeroinitializer, <2 x double> %i.fb) ; 2 uses
  %27 = extractelement <2 x double> %i.fc, i64 1
  %i.fd = call double @llvm.fmuladd.f64(double %i.ed, double %i.dz, double %i.dw) ; 2 uses
  %28 = insertelement <2 x double> poison, double %i.fd, i64 0
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fmul double %i.ev, 0.000000e+00         ; 2 uses
  %i.ff = fadd double %i.fd, %27
  %i.fg = fadd double %i.ex, %i.fe
  %i.fh = insertelement <2 x double> %18, double %i.fg, i64 0
  %30 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> zeroinitializer, <2 x double> %i.fh)
  %i.fi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> zeroinitializer, <2 x double> %30) ; 4 uses
  %i.fj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> zeroinitializer, <2 x double> %24)
  %31 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> zeroinitializer, <2 x double> %i.fj) ; 3 uses
  %i.fk = insertelement <2 x double> %i.eu, double %i.r, i64 0
  %i.fl = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fm = insertelement <2 x double> %i.fl, double %i.fe, i64 1
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> zeroinitializer, <2 x double> %i.fm) ; 2 uses
  %shift = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ei, %shift
  %i.fo = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fp = call double @llvm.fmuladd.f64(double %i.r, double 0.000000e+00, double %i.fo) ; 4 uses
  %i.fq = fmul <2 x double> %31, zeroinitializer  ; 2 uses
  %i.fr = fadd <2 x double> %15, %i.fq
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> zeroinitializer, <2 x double> %i.fr)
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> zeroinitializer, <2 x double> %31)
  %i.fu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> zeroinitializer, <2 x double> %i.ft)
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> zeroinitializer, <2 x double> %i.fq)
  %i.fw = fadd <2 x double> %i.fi, %i.fv
  %i.fx = insertelement <2 x double> poison, double %i.v, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = fmul <2 x double> %31, %i.fy
  %i.ga = insertelement <2 x double> poison, double %i.t, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %15, <2 x double> %i.fz)
  %i.gd = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.fi, <2 x double> %i.gc)
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> zeroinitializer, <2 x double> %i.fs) ; 2 uses
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> zeroinitializer, <2 x double> %i.fu) ; 2 uses
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> zeroinitializer, <2 x double> %i.fw) ; 2 uses
  %i.gj = fadd <2 x double> %i.dp, %i.gf          ; 2 uses
  %32 = extractelement <2 x double> %i.fn, i64 0  ; 3 uses
  %i.gk = fmul double %32, 0.000000e+00           ; 2 uses
  %i.gl = extractelement <2 x double> %i.fc, i64 0 ; 4 uses
  %i.gm = fadd double %i.gl, %i.gk
  %i.gn = call double @llvm.fmuladd.f64(double %i.fp, double 0.000000e+00, double %i.gm)
  %i.go = call double @llvm.fmuladd.f64(double %i.dq, double 0.000000e+00, double %i.gn) ; 2 uses
  %i.gp = call double @llvm.fmuladd.f64(double %i.gl, double 0.000000e+00, double %32)
  %i.gq = call double @llvm.fmuladd.f64(double %i.fp, double 0.000000e+00, double %i.gp)
  %i.gr = call double @llvm.fmuladd.f64(double %i.dq, double 0.000000e+00, double %i.gq) ; 2 uses
  %i.gs = call double @llvm.fmuladd.f64(double %i.gl, double 0.000000e+00, double %i.gk)
  %i.gt = fadd double %i.fp, %i.gs
  %i.gu = call double @llvm.fmuladd.f64(double %i.dq, double 0.000000e+00, double %i.gt) ; 2 uses
  %i.gv = fmul double %32, %i.v
  %i.gw = call double @llvm.fmuladd.f64(double %i.t, double %i.gl, double %i.gv)
  %i.gx = call double @llvm.fmuladd.f64(double %i.w, double %i.fp, double %i.gw)
  %i.gy = fadd double %i.dq, %i.gx                ; 2 uses
  %.not446 = icmp eq ptr %i.x, %i.y
  br i1 %.not446, label %.preheader410.thread, label %.lr.ph

.preheader410.thread:                             ; preds = %bb.v
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

.lr.ph:                                           ; preds = %bb.v
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.an

.preheader410:                                    ; preds = %bb.ao
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.he = shl nsw i64 %i.ac, 2
  br label %.preheader389.us

.preheader389.us:                                 ; preds = %.preheader410, %._crit_edge.us
  %.094429.us = phi i32 [ %i.mr, %._crit_edge.us ], [ 0, %.preheader410 ]
  %.096428.us = phi i64 [ %i.mq, %._crit_edge.us ], [ 0, %.preheader410 ] ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.preheader389.us, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us
  %.093426.us = phi i64 [ 0, %.preheader389.us ], [ %i.hf, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us ] ; 2 uses
  %i.hf = add nuw i64 %.093426.us, 1              ; 3 uses
  %i.hg = load ptr, ptr %i.hc, align 8            ; 3 uses
  %i.hh = load ptr, ptr %i.cu, align 8
  %.not.i.i127.us = icmp eq ptr %i.hg, %i.hh
  br i1 %.not.i.i127.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 4, ptr %i.hg, align 4
  %i.hi = load ptr, ptr %i.hc, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store ptr %i.hj, ptr %i.hc, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

bb.y:                                             ; preds = %bb.w
  %i.hk = load ptr, ptr %i.cp, align 8            ; 4 uses
  %i.hl = ptrtoint ptr %i.hg to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 6 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775804
  br i1 %i.ho, label %.split.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.y
  %i.hp = ashr exact i64 %i.hn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.hp, i64 1)
  %i.hq = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.hp ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.hp
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hq, i64 2305843009213693951)
  %i.ht = select i1 %i.hr, i64 2305843009213693951, i64 %i.hs ; 3 uses
  %.not.i.i.i.i128.us = icmp ne i64 %i.ht, 0
  call void @llvm.assume(i1 %.not.i.i.i.i128.us)
  %i.hu = shl nuw nsw i64 %i.ht, 2
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #28
          to label %.noexc130.us unwind label %.loopexit390.split.us ; 4 uses

.noexc130.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hn ; 2 uses
  store i32 4, ptr %i.hw, align 4
  %i.hx = icmp sgt i64 %i.hn, 0
  br i1 %i.hx, label %bb.z, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.z:                                             ; preds = %.noexc130.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %i.hk, i64 %i.hn, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.z, %.noexc130.us
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.not.i17.i.i.i.us = icmp eq ptr %i.hk, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hn) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.hv, ptr %i.cp, align 8
  store ptr %i.hy, ptr %i.hc, align 8
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ht
  store ptr %i.hz, ptr %i.cu, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.x
  %i.ia = urem i64 %i.hf, %i.ac
  %i.ib = load ptr, ptr %1, align 8               ; 5 uses
  %i.ic = getelementptr [24 x i8], ptr %i.ib, i64 %.096428.us ; 2 uses
  %.idx382.us = mul i64 %.093426.us, 96
  %i.id = getelementptr i8, ptr %i.ic, i64 %.idx382.us ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 72
  %i.if = load <2 x double>, ptr %i.ie, align 8   ; 6 uses
  %.sroa.8269.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.id, i64 88
  %.sroa.8269.0.copyload.us = load double, ptr %.sroa.8269.0..sroa_idx.us, align 8 ; 4 uses
  %.idx383.us = mul i64 %i.ia, 96
  %i.ig = getelementptr i8, ptr %i.ic, i64 %.idx383.us ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 72
  %i.ii = load <2 x double>, ptr %i.ih, align 8   ; 6 uses
  %.sroa.8.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ig, i64 88
  %.sroa.8.0.copyload.us = load double, ptr %.sroa.8.0..sroa_idx.us, align 8 ; 4 uses
  %i.ij = load ptr, ptr %i.hd, align 8            ; 6 uses
  %i.ik = load ptr, ptr %i.bx, align 8
  %.not.i.us = icmp eq ptr %i.ij, %i.ik
  br i1 %.not.i.us, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  store <2 x double> %i.if, ptr %i.ij, align 8
  %.sroa.8269.0..sroa_idx270.us = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store double %.sroa.8269.0.copyload.us, ptr %.sroa.8269.0..sroa_idx270.us, align 8
  %i.il = load ptr, ptr %i.hd, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24 ; 2 uses
  store ptr %i.im, ptr %i.hd, align 8
  %.pre = load ptr, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = ptrtoint ptr %i.ib to i64
  %i.ip = sub i64 %i.in, %i.io                    ; 4 uses
  %i.iq = icmp eq i64 %i.ip, 9223372036854775800
  br i1 %i.iq, label %.split431.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.ac
  %i.ir = sdiv exact i64 %i.ip, 24                ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.ir, i64 1)
  %i.is = add nsw i64 %.sroa.speculated.i.i.i.us, %i.ir ; 2 uses
  %i.it = icmp ult i64 %i.is, %i.ir
  %i.iu = call i64 @llvm.umin.i64(i64 %i.is, i64 384307168202282325)
  %i.iv = select i1 %i.it, i64 384307168202282325, i64 %i.iu ; 3 uses
  %.not.i.i.i131.us = icmp ne i64 %i.iv, 0
  call void @llvm.assume(i1 %.not.i.i.i131.us)
  %i.iw = mul nuw nsw i64 %i.iv, 24
  %i.ix = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #28
          to label %.noexc133.us unwind label %.loopexit395.split.us ; 5 uses

.noexc133.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.ip ; 2 uses
  store <2 x double> %i.if, ptr %i.iy, align 8
  %.sroa.8269.0..sroa_idx272.us = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store double %.sroa.8269.0.copyload.us, ptr %.sroa.8269.0..sroa_idx272.us, align 8
  %.not10.i.i.i.i.i.us = icmp eq ptr %i.ib, %i.ij
  br i1 %.not10.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %.noexc133.us, %.lr.ph.i.i.i.i.i.us
  %.012.i.i.i.i.i.us = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i.us ], [ %i.ix, %.noexc133.us ] ; 2 uses
  %.0911.i.i.i.i.i.us = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i.us ], [ %i.ib, %.noexc133.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.us, i64 24, i1 false), !alias.scope !46
  %i.iz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.us, i64 24 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i.us = icmp eq ptr %i.iz, %i.ij
  br i1 %.not.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, label %.lr.ph.i.i.i.i.i.us, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us: ; preds = %.lr.ph.i.i.i.i.i.us, %.noexc133.us
  %.0.lcssa.i.i.i.i.i.us = phi ptr [ %i.ix, %.noexc133.us ], [ %i.ja, %.lr.ph.i.i.i.i.i.us ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.us, i64 24 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.ip) #29
  store ptr %i.ix, ptr %1, align 8
  store ptr %i.jb, ptr %i.hd, align 8
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.ix, i64 %i.iv ; 2 uses
  store ptr %i.jc, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, %bb.ab
  %i.jd = phi ptr [ %i.jc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %.pre, %bb.ab ] ; 4 uses
  %i.je = phi ptr [ %i.jb, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %i.im, %bb.ab ] ; 3 uses
  %.not.i134.us = icmp eq ptr %i.je, %i.jd
  br i1 %.not.i134.us, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us
  store <2 x double> %i.ii, ptr %i.je, align 8
  %.sroa.8.0..sroa_idx257.us = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store double %.sroa.8.0.copyload.us, ptr %.sroa.8.0..sroa_idx257.us, align 8
  %i.jf = load ptr, ptr %i.hd, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24 ; 2 uses
  store ptr %i.jg, ptr %i.hd, align 8
  %.pre460 = load ptr, ptr %i.bx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit149.us

bb.ae:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us
  %i.jh = load ptr, ptr %1, align 8               ; 5 uses
  %i.ji = ptrtoint ptr %i.jd to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 4 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775800
  br i1 %i.jl, label %.split431.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i135.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i135.us: ; preds = %bb.ae
  %i.jm = sdiv exact i64 %i.jk, 24                ; 3 uses
  %.sroa.speculated.i.i.i136.us = call i64 @llvm.umax.i64(i64 %i.jm, i64 1)
  %i.jn = add nsw i64 %.sroa.speculated.i.i.i136.us, %i.jm ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.jm
  %i.jp = call i64 @llvm.umin.i64(i64 %i.jn, i64 384307168202282325)
  %i.jq = select i1 %i.jo, i64 384307168202282325, i64 %i.jp ; 3 uses
  %.not.i.i.i137.us = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %.not.i.i.i137.us)
  %i.jr = mul nuw nsw i64 %i.jq, 24
end_hunk_0
