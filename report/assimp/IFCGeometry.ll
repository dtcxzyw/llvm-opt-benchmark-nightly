Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCGeometry?download=true
inline.NumInlined: 2077
inline.NumDeleted: 820
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb:bb.a
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bs
  %i.ca = shl nuw nsw i64 %i.bm, 2
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #28 ; 4 uses
  %i.cc = load ptr, ptr %.sroa.gep500, align 8    ; 4 uses
  %i.cd = load ptr, ptr %i.bw, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %bb.j, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr align 4 %i.cc, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.j, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.not.i8.i197 = icmp eq ptr %i.cc, null
  br i1 %.not.i8.i197, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ci = load ptr, ptr %i.bo, align 8
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ck) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.cb, ptr %.sroa.gep500, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store ptr %i.cl, ptr %i.bw, align 8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bm
  store ptr %i.cm, ptr %i.bo, align 8
  %.pre862 = load ptr, ptr %i.ae, align 8         ; 2 uses
  %.pre863 = load ptr, ptr %1, align 8            ; 2 uses
  %.pre904 = ptrtoint ptr %.pre862 to i64
  %.pre906 = ptrtoint ptr %.pre863 to i64
  %.pre908 = sub i64 %.pre904, %.pre906
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.i, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %.pre-phi909 = phi i64 [ %.pre-phi901, %bb.i ], [ %.pre908, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ] ; 4 uses
  %i.cn = phi ptr [ %i.bk, %bb.i ], [ %.pre863, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ]
  %i.co = phi ptr [ %i.bl, %bb.i ], [ %.pre862, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ]
  %.not.i.i.i.i198 = icmp eq ptr %i.co, %i.cn
  br i1 %.not.i.i.i.i198, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.cp = sdiv exact i64 %.pre-phi909, 24
  %i.cq = icmp ugt i64 %i.cp, 384307168202282325
  br i1 %i.cq, label %.noexc.i.i, label %bb.m, !prof !14

.noexc.i.i:                                       ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi909) #28 ; 4 uses
  %.pre864 = load ptr, ptr %1, align 8            ; 2 uses
  %.pre865 = load ptr, ptr %i.ae, align 8         ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %.pre864, %.pre865
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i ], [ %i.cr, %bb.m ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i ], [ %.pre864, %bb.m ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cs, %.pre865
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !134

_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIjSaIjEE7reserveEm.exit, %bb.m
  %i.cu = phi ptr [ %i.cr, %bb.m ], [ null, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %i.cr, %.lr.ph.i.i.i.i.i ] ; 18 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cr, %bb.m ], [ null, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %i.ct, %.lr.ph.i.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store double 1.000000e+00, ptr %7, align 16
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cx, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcAxis2Placement3DEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.db)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit
  invoke void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement3DE(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(104) %i.dc)
          to label %.preheader719 unwind label %bb.o

.preheader719:                                    ; preds = %bb.n
  %.not665779 = icmp eq ptr %i.cu, %.0.lcssa.i.i.i.i.i ; 4 uses
  %i.dd = load <2 x double>, ptr %7, align 16     ; 3 uses
  %i.de = load <2 x double>, ptr %i.cv, align 8   ; 3 uses
  br i1 %.not665779, label %.preheader719.._crit_edge_crit_edge, label %.lr.ph

.preheader719.._crit_edge_crit_edge:              ; preds = %.preheader719
  %.phi.trans.insert869 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.pre870 = load double, ptr %.phi.trans.insert869, align 16
  %.pre871 = load double, ptr %i.cw, align 8
  %.pre872 = load double, ptr %i.cx, align 16
  %.phi.trans.insert873 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre874 = load double, ptr %.phi.trans.insert873, align 16
  %.phi.trans.insert875 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %.pre876 = load double, ptr %.phi.trans.insert875, align 8
  %.pre877 = load double, ptr %i.cy, align 16
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader719
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dh = load <2 x double>, ptr %i.df, align 8, !noalias !198 ; 2 uses
  %i.di = load double, ptr %i.dg, align 16, !noalias !198
  %i.dj = load <2 x double>, ptr %i.cw, align 8, !noalias !198 ; 3 uses
  %i.dk = load double, ptr %i.cx, align 16, !noalias !198
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.dm = load double, ptr %i.dl, align 8, !noalias !198
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.do = load double, ptr %i.dn, align 16, !noalias !198 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.dq = load double, ptr %i.dp, align 8, !noalias !198 ; 2 uses
  %i.dr = load double, ptr %i.cy, align 16, !noalias !198 ; 2 uses
  %i.ds = load double, ptr %i.cz, align 8, !noalias !198
  %i.dt = shufflevector <2 x double> %i.de, <2 x double> %i.dj, <2 x i32> <i32 1, i32 3>
  %i.du = shufflevector <2 x double> %i.de, <2 x double> %i.dj, <2 x i32> <i32 0, i32 2>
  %i.dv = insertelement <2 x double> %i.dh, double %i.dm, i64 1
  %i.dw = shufflevector <2 x double> %i.dd, <2 x double> %i.dh, <2 x i32> <i32 0, i32 3>
  br label %bb.p

._crit_edge.loopexit:                             ; preds = %bb.p
  %foldExtExtBinop = fsub <2 x double> %i.fz, %i.fv
  %i.dx = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop1111 = fsub <2 x double> %i.fz, %i.fv ; 2 uses
  %i.dy = fsub double %i.gb, %i.fx                ; 2 uses
  %foldExtExtBinop1113 = fmul <2 x double> %foldExtExtBinop1111, %foldExtExtBinop1111
  %i.dz = extractelement <2 x double> %foldExtExtBinop1113, i64 1
  %i.ea = call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double %i.dz)
  %i.eb = call double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.ea)
  %i.ec = call double @llvm.sqrt.f64(double %i.eb)
  %i.ed = fmul double %i.ec, 1.000000e-01
  %i.ee = extractelement <2 x double> %i.dj, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader719.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.ef = phi double [ %.pre877, %.preheader719.._crit_edge_crit_edge ], [ %i.dr, %._crit_edge.loopexit ]
  %i.eg = phi double [ %.pre876, %.preheader719.._crit_edge_crit_edge ], [ %i.dq, %._crit_edge.loopexit ]
  %i.eh = phi double [ %.pre874, %.preheader719.._crit_edge_crit_edge ], [ %i.do, %._crit_edge.loopexit ]
  %i.ei = phi double [ %.pre872, %.preheader719.._crit_edge_crit_edge ], [ %i.dk, %._crit_edge.loopexit ]
  %i.ej = phi double [ %.pre871, %.preheader719.._crit_edge_crit_edge ], [ %i.ee, %._crit_edge.loopexit ]
  %i.ek = phi double [ %.pre870, %.preheader719.._crit_edge_crit_edge ], [ %i.di, %._crit_edge.loopexit ]
  %sqrt.i = phi double [ f0x41E9CF3FDDE4687D, %.preheader719.._crit_edge_crit_edge ], [ %i.ed, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.el = load <3 x double>, ptr %2, align 8, !noalias !199 ; 5 uses
  %i.em = load double, ptr %2, align 8, !noalias !199
  %i.en = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.eo = insertelement <2 x double> %i.en, double %i.ej, i64 1
  %i.ep = shufflevector <3 x double> %i.el, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eq = fmul <2 x double> %i.eo, %i.ep
  %i.er = insertelement <2 x double> %i.dd, double %i.ek, i64 1
  %i.es = shufflevector <3 x double> %i.el, <3 x double> poison, <2 x i32> zeroinitializer
  %i.et = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.es, <2 x double> %i.eq)
  %i.eu = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ev = insertelement <2 x double> %i.eu, double %i.ei, i64 1
  %i.ew = shufflevector <3 x double> %i.el, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> %i.ew, <2 x double> %i.et)
  store <2 x double> %i.ex, ptr %8, align 16, !alias.scope !199
  %i.ey = extractelement <3 x double> %i.el, i64 1
  %i.ez = fmul double %i.eg, %i.ey
  %i.fa = call double @llvm.fmuladd.f64(double %i.eh, double %i.em, double %i.ez)
  %i.fb = extractelement <3 x double> %i.el, i64 2
  %i.fc = call double @llvm.fmuladd.f64(double %i.ef, double %i.fb, double %i.fa)
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store double %i.fc, ptr %i.fd, align 16, !alias.scope !199
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.fe = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.ff = ptrtoint ptr %i.cu to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 24                ; 8 uses
  invoke void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %9, ptr noundef %i.cu, i64 noundef %i.fh, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.s

bb.o:                                             ; preds = %bb.n, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.12621.0784 = phi double [ 1.000000e+10, %.lr.ph ], [ %i.fx, %bb.p ] ; 2 uses
  %.sroa.16614.0781 = phi double [ -1.000000e+10, %.lr.ph ], [ %i.gb, %bb.p ] ; 2 uses
  %.sroa.0604.0780 = phi ptr [ %i.cu, %.lr.ph ], [ %i.gc, %bb.p ] ; 5 uses
  %i.fj = phi <2 x double> [ splat (double 1.000000e+10), %.lr.ph ], [ %i.fv, %bb.p ] ; 2 uses
  %i.fk = phi <2 x double> [ splat (double -1.000000e+10), %.lr.ph ], [ %i.fz, %bb.p ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0604.0780, i64 16
  %22 = load <3 x double>, ptr %.sroa.0604.0780, align 8, !noalias !198 ; 5 uses
  %i.fm = load double, ptr %.sroa.0604.0780, align 8, !noalias !198
  %23 = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = fmul <2 x double> %23, %i.du
  %i.fo = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> zeroinitializer
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.fo, <2 x double> %i.fn)
  %24 = shufflevector <3 x double> %22, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %25 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %24, <2 x double> %i.fp)
  %26 = fadd <2 x double> %25, %i.dv              ; 5 uses
  %27 = extractelement <3 x double> %22, i64 1
  %i.fq = fmul double %27, %i.dq
  %i.fr = call double @llvm.fmuladd.f64(double %i.do, double %i.fm, double %i.fq)
  %28 = extractelement <3 x double> %22, i64 2
  %i.fs = call double @llvm.fmuladd.f64(double %i.dr, double %28, double %i.fr)
  %i.ft = fadd double %i.ds, %i.fs                ; 5 uses
  store <2 x double> %26, ptr %.sroa.0604.0780, align 8
  store double %i.ft, ptr %i.fl, align 8
  %i.fu = fcmp olt <2 x double> %26, %i.fj
  %i.fv = select <2 x i1> %i.fu, <2 x double> %26, <2 x double> %i.fj ; 3 uses
  %i.fw = fcmp olt double %i.ft, %.sroa.12621.0784
  %i.fx = select i1 %i.fw, double %i.ft, double %.sroa.12621.0784 ; 2 uses
  %i.fy = fcmp olt <2 x double> %i.fk, %26
  %i.fz = select <2 x i1> %i.fy, <2 x double> %26, <2 x double> %i.fk ; 3 uses
  %i.ga = fcmp olt double %.sroa.16614.0781, %i.ft
  %i.gb = select i1 %i.ga, double %i.ft, double %.sroa.16614.0781 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0604.0780, i64 24 ; 2 uses
  %.not665 = icmp eq ptr %i.gc, %.0.lcssa.i.i.i.i.i
  br i1 %.not665, label %._crit_edge.loopexit, label %bb.p

bb.q:                                             ; preds = %._crit_edge
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ge = load double, ptr %9, align 8
  %i.gf = load double, ptr %8, align 16
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gh = load double, ptr %i.gg, align 8
  %i.gi = load double, ptr %i.gd, align 8
  %i.gj = fmul double %i.gh, %i.gi
  %i.gk = call double @llvm.fmuladd.f64(double %i.ge, double %i.gf, double %i.gj)
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gm = load double, ptr %i.gl, align 8
  %i.gn = load double, ptr %i.fd, align 16
  %i.go = call noundef double @llvm.fmuladd.f64(double %i.gm, double %i.gn, double %i.gk)
  %i.gp = fcmp olt double %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.r, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.r:                                             ; preds = %bb.q
  %i.gq = icmp ne ptr %i.cu, %.0.lcssa.i.i.i.i.i
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i.i.i, i64 -24 ; 2 uses
  %i.gr = icmp ult ptr %i.cu, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %bb.r ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.gs, %.lr.ph.i.i ], [ %i.cu, %bb.r ] ; 3 uses
  %.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.05.09.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i, i64 24, i1 false)
  store <3 x double> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 24 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -24 ; 2 uses
  %i.gt = icmp ult ptr %i.gs, %.sroa.0.0.i.i
  br i1 %i.gt, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, !llvm.loop !139

bb.s:                                             ; preds = %._crit_edge
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit458

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.lr.ph.i.i, %bb.r, %bb.q
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 328 ; 6 uses
  %i.gw = load ptr, ptr %i.gv, align 8            ; 3 uses
  %.not = icmp eq ptr %i.gw, null
  br i1 %.not, label %.thread, label %bb.t

bb.t:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8            ; 7 uses
  %i.gz = load ptr, ptr %i.gw, align 8            ; 7 uses
  %.not666 = icmp eq ptr %i.gy, %i.gz
  br i1 %.not666, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !15, !align !16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.hd = load i8, ptr %i.hc, align 1, !range !200, !noundef !15
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false)
  %i.hf = ptrtoint ptr %i.gy to i64
  %i.hg = ptrtoint ptr %i.gz to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 2 uses
  %i.hi = sdiv exact i64 %i.hh, 88
  %i.hj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hi, i1 true)
  %i.hk = shl nuw nsw i64 %i.hj, 1
  %i.hl = xor i64 %i.hk, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_T0_T1_(ptr %i.gz, ptr %i.gy, i64 noundef %i.hl, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %i.cu)
          to label %.noexc unwind label %.thread658.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  %i.hm = icmp sgt i64 %i.hh, 1408
  br i1 %i.hm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gz, i64 1408 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_T0_(ptr %i.gz, ptr nonnull %i.hn, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
          to label %.noexc201 unwind label %.thread658.loopexit.split-lp

.noexc201:                                        ; preds = %bb.w
  %.not6.i.i.i.i = icmp eq ptr %i.hn, %i.gy
  br i1 %.not6.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS4_14DistanceSorterEEvT_SB_T0_.exit, label %.lr.ph.i.i.i.i199

.lr.ph.i.i.i.i199:                                ; preds = %.noexc201, %.noexc202
  %.sroa.02.07.i.i.i.i = phi ptr [ %i.ho, %.noexc202 ], [ %i.hn, %.noexc201 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS4_14DistanceSorterEEEEvT_T0_(ptr nonnull %.sroa.02.07.i.i.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Val_comp_iter") align 8 %6)
          to label %.noexc202 unwind label %.thread658.loopexit

.noexc202:                                        ; preds = %.lr.ph.i.i.i.i199
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i200 = icmp eq ptr %i.ho, %i.gy
  br i1 %.not.i.i.i.i200, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS4_14DistanceSorterEEvT_SB_T0_.exit, label %.lr.ph.i.i.i.i199, !llvm.loop !140

bb.x:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_T0_(ptr %i.gz, ptr %i.gy, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS4_14DistanceSorterEEvT_SB_T0_.exit unwind label %.thread658.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS4_14DistanceSorterEEvT_SB_T0_.exit: ; preds = %.noexc202, %bb.x, %.noexc201
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.pre878 = load ptr, ptr %i.gv, align 8         ; 2 uses
  %.phi.trans.insert879 = getelementptr inbounds nuw i8, ptr %.pre878, i64 8
  %.pre880 = load ptr, ptr %.phi.trans.insert879, align 8
  %.pre881 = load ptr, ptr %.pre878, align 8
  br label %bb.y

.thread658.loopexit:                              ; preds = %.lr.ph.i.i.i.i199
  %lpad.loopexit716 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit458

.thread658.loopexit.split-lp:                     ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i204, %bb.z, %bb.x, %bb.w, %bb.v
  %lpad.loopexit.split-lp717 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit458

bb.y:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS4_14DistanceSorterEEvT_SB_T0_.exit, %bb.u
  %i.hp = phi ptr [ %.pre881, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS4_14DistanceSorterEEvT_SB_T0_.exit ], [ %i.gz, %bb.u ] ; 2 uses
  %i.hq = phi ptr [ %.pre880, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS4_14DistanceSorterEEvT_SB_T0_.exit ], [ %i.gy, %bb.u ] ; 2 uses
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = sdiv exact i64 %i.ht, 88                ; 3 uses
  %i.hv = icmp ugt i64 %i.hu, 384307168202282325
  br i1 %i.hv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
          to label %.noexc213 unwind label %.thread658.loopexit.split-lp

.noexc213:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %.not667 = icmp eq ptr %i.hq, %i.hp
  br i1 %.not667, label %.thread, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i204

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i204: ; preds = %bb.aa
  %i.hw = mul nuw nsw i64 %i.hu, 24
  %i.hx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #28
          to label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit215 unwind label %.thread658.loopexit.split-lp ; 4 uses

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit215: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i204
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %i.hu ; 2 uses
  %.pre882 = load ptr, ptr %i.gv, align 8         ; 2 uses
  %.pre883 = load ptr, ptr %.pre882, align 8      ; 2 uses
  %.phi.trans.insert884 = getelementptr inbounds nuw i8, ptr %.pre882, i64 8
  %.pre885 = load ptr, ptr %.phi.trans.insert884, align 8 ; 2 uses
  %.not668795 = icmp eq ptr %.pre883, %.pre885
  br i1 %.not668795, label %.thread, label %.lr.ph800

.lr.ph800:                                        ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit215
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.id = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ie = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.if = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.ig = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ii = getelementptr i8, ptr %i.ig, i64 -24
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.in = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ip = getelementptr i8, ptr %i.in, i64 -24
  %i.iq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %10, i64 128
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph800, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %.sroa.0571.0799 = phi ptr [ %.pre883, %.lr.ph800 ], [ %i.qy, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 2 uses
  %.sroa.24.0798 = phi ptr [ %i.hy, %.lr.ph800 ], [ %.sroa.24.1, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 15 uses
  %.sroa.13.0797 = phi ptr [ %i.hx, %.lr.ph800 ], [ %.sroa.13.1, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 8 uses
  %.sroa.0575.0796 = phi ptr [ %i.hx, %.lr.ph800 ], [ %.sroa.0575.1, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 17 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0571.0799, i64 32
  %i.it = load ptr, ptr %i.is, align 8            ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = load ptr, ptr %i.it, align 8            ; 8 uses
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = sdiv exact i64 %i.iz, 24
  %i.jb = icmp ult i64 %i.ja, 3
  br i1 %i.jb, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %.not.i = icmp eq ptr %.sroa.13.0797, %.sroa.24.0798
end_hunk_0
