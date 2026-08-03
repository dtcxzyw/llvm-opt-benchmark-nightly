inline.NumInlined: 3958
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC20GetContoursInPlane3DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdEd:bb.a
  store ptr %i.cc, ptr %6, align 8
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 5 uses
  %i.ce = getelementptr i8, ptr %i.cc, i64 -24    ; 5 uses
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %6, i64 %i.cf
  store ptr %i.cd, ptr %i.cg, align 8
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 5 uses
  store ptr %i.ch, ptr %i.n, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = load i64, ptr %i.cl, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ci, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cp) #27
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 6 uses
  store ptr %i.cq, ptr %6, align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 5 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 -24    ; 5 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %6, i64 %i.ct
  store ptr %i.cr, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cw) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %8, i64 noundef 0)
  %i.cx = load ptr, ptr %1, align 8               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not583736 = icmp eq ptr %i.cz, %i.db
  br i1 %.not583736, label %._crit_edge740, label %.lr.ph739

.lr.ph739:                                        ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %.sroa.7515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.ej = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ak, i64 1 ; 2 uses
  %i.el = insertelement <2 x double> poison, double %i.p, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.ac, i64 1 ; 2 uses
  %i.en = insertelement <2 x double> poison, double %i.t, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %i.ag, i64 1 ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.ap, i64 1
  br label %bb.i

._crit_edge740:                                   ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15)
          to label %bb.az unwind label %bb.be

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182, %_ZNSolsEd.exit181, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180, %_ZNSolsEd.exit179, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178, %_ZNSolsEd.exit177, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175, %_ZNSolsEd.exit174, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173, %_ZNSolsEd.exit172, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171, %_ZNSolsEd.exit170, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit169, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168, %_ZNSolsEd.exit167, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166, %_ZNSolsEd.exit165, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %.noexc187, %.noexc186, %bb.e, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %7, align 8               ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.bd
  br i1 %i.eu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.c
  %.sink = phi ptr [ %i.br, %bb.c ], [ %i.et, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.bq, %bb.c ], [ %i.es, %bb.g ]
  %i.ev = load i64, ptr %i.bd, align 8
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ew) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.c ], [ %i.es, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.er, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.gi

bb.i:                                             ; preds = %.lr.ph739, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit
  %.0111738 = phi i64 [ 0, %.lr.ph739 ], [ %i.fa, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit ] ; 5 uses
  %.sroa.0575.0737 = phi ptr [ %i.cz, %.lr.ph739 ], [ %i.nr, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit ] ; 2 uses
  %i.ex = load i32, ptr %.sroa.0575.0737, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.19, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.preheader unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.preheader: ; preds = %bb.j
  %i.ez = zext i32 %i.ex to i64                   ; 2 uses
  %i.fa = add i64 %.0111738, %i.ez                ; 5 uses
  %i.fb = icmp ult i64 %.0111738, %i.fa
  br i1 %i.fb, label %.lr.ph, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  store ptr %i.dd, ptr %10, align 8, !alias.scope !348
  store i64 0, ptr %i.de, align 8, !alias.scope !348
  store i8 0, ptr %i.dd, align 8, !alias.scope !348
  %i.fc = load ptr, ptr %i.df, align 8, !noalias !348 ; 3 uses
  %.not.i.not.i.i194 = icmp eq ptr %i.fc, null
  %i.fd = load ptr, ptr %i.dg, align 8, !noalias !348 ; 2 uses
  %i.fe = icmp ugt ptr %i.fc, %i.fd
  %.08.i.i.i195 = select i1 %i.fe, ptr %i.fc, ptr %i.fd ; 2 uses
  %.not5.i.i196 = icmp eq ptr %.08.i.i.i195, null
  %.not.i.i197 = select i1 %.not.i.not.i.i194, i1 true, i1 %.not5.i.i196
  br i1 %.not.i.i197, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193._crit_edge
  %i.ff = load ptr, ptr %i.dh, align 8, !noalias !348 ; 2 uses
  %i.fg = ptrtoint ptr %.08.i.i.i195 to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.ff, i64 noundef %i.fi)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit203 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %10, align 8, !alias.scope !348 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.dd
  br i1 %i.fm, label %.body201, label %.body201.sink.split

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit203 unwind label %bb.l

bb.n:                                             ; preds = %bb.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  %.0113724 = phi i64 [ %i.gq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 ], [ %.0111738, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.preheader ] ; 2 uses
  %i.fp = load ptr, ptr %1, align 8
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %.0113724 ; 3 uses
  %i.fs = load double, ptr %i.fr, align 8, !noalias !349 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %24 = load double, ptr %i.ft, align 8, !noalias !349 ; 3 uses
  %25 = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.fu = load double, ptr %25, align 8, !noalias !349 ; 3 uses
  %i.fv = fmul double %24, %i.ag
  %i.fw = call double @llvm.fmuladd.f64(double %i.ac, double %i.fs, double %i.fv)
  %26 = fmul double %24, %i.at
  %i.fx = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %i.fs, i64 1
  %i.fz = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %26, i64 1
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.fy, <2 x double> %i.ga) ; 2 uses
  %i.gc = extractelement <2 x double> %i.gb, i64 1
  %i.gd = call double @llvm.fmuladd.f64(double %i.ax, double %i.fu, double %i.gc)
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.20, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205: ; preds = %.lr.ph
  %i.gf = fmul double %i.t, %24
  %i.gg = call double @llvm.fmuladd.f64(double %i.p, double %i.fs, double %i.gf)
  %i.gh = call double @llvm.fmuladd.f64(double %i.x, double %i.fu, double %i.gg)
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, double noundef %i.gh)
          to label %_ZNSolsEd.exit207 unwind label %bb.p ; 2 uses

_ZNSolsEd.exit207:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209: ; preds = %_ZNSolsEd.exit207
  %i.gk = extractelement <2 x double> %i.gb, i64 0
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, double noundef %i.gk)
          to label %_ZNSolsEd.exit211 unwind label %bb.p ; 2 uses

_ZNSolsEd.exit211:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213: ; preds = %_ZNSolsEd.exit211
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, double noundef %i.gd)
          to label %_ZNSolsEd.exit215 unwind label %bb.p ; 2 uses

_ZNSolsEd.exit215:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217: ; preds = %_ZNSolsEd.exit215
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217
  %i.gq = add i64 %.0113724, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, %i.fa
  br i1 %exitcond.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193._crit_edge, label %.lr.ph, !llvm.loop !352

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217, %_ZNSolsEd.exit215, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213, %_ZNSolsEd.exit211, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209, %_ZNSolsEd.exit207, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205, %.lr.ph
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit203: ; preds = %bb.m, %bb.k
  %i.gs = load ptr, ptr %10, align 8
  store ptr %i.gs, ptr %i.j, align 8
  %i.gt = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc220 unwind label %bb.x

.noexc220:                                        ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit203
  br i1 %i.gt, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit224, label %bb.q

bb.q:                                             ; preds = %.noexc220
  %i.gu = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc221 unwind label %bb.x

.noexc221:                                        ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  %i.gv = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc222 unwind label %bb.x

.noexc222:                                        ; preds = %.noexc221
  store ptr %i.gv, ptr %i.g, align 8
  invoke void @_ZN6Assimp6Logger4infoIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc223 unwind label %bb.x

.noexc223:                                        ; preds = %.noexc222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit224

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit224: ; preds = %.noexc223, %.noexc220
  %i.gw = load ptr, ptr %10, align 8              ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.dd
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit224
  %i.gy = load i64, ptr %i.dd, align 8
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  store ptr %i.cc, ptr %9, align 8
  %i.ha = load i64, ptr %i.ce, align 8
  %i.hb = getelementptr inbounds i8, ptr %9, i64 %i.ha
  store ptr %i.cd, ptr %i.hb, align 8
  store ptr %i.ch, ptr %i.dc, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dj, align 8
  %i.hc = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.dk
  br i1 %i.hd, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %i.he = load i64, ptr %i.dk, align 8
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit230

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i228
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dj, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dl) #27
  store ptr %i.cq, ptr %9, align 8
  %i.hg = load i64, ptr %i.cs, align 8
  %i.hh = getelementptr inbounds i8, ptr %9, i64 %i.hg
  store ptr %i.cr, ptr %i.hh, align 8
  store i64 0, ptr %i.dm, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dn) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.hi = icmp ult i32 %i.ex, 3
  br i1 %i.hi, label %bb.r, label %bb.af

bb.r:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit230
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.21, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232: ; preds = %bb.s
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, i64 noundef %i.ez)
          to label %_ZNSolsEj.exit unwind label %bb.ab

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.22, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235: ; preds = %_ZNSolsEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  store ptr %i.dy, ptr %12, align 8, !alias.scope !359
  store i64 0, ptr %i.dz, align 8, !alias.scope !359
  store i8 0, ptr %i.dy, align 8, !alias.scope !359
  %i.hm = load ptr, ptr %i.ea, align 8, !noalias !359 ; 3 uses
  %.not.i.not.i.i236 = icmp eq ptr %i.hm, null
  %i.hn = load ptr, ptr %i.eb, align 8, !noalias !359 ; 2 uses
  %i.ho = icmp ugt ptr %i.hm, %i.hn
  %.08.i.i.i237 = select i1 %i.ho, ptr %i.hm, ptr %i.hn ; 2 uses
  %.not5.i.i238 = icmp eq ptr %.08.i.i.i237, null
  %.not.i.i239 = select i1 %.not.i.not.i.i236, i1 true, i1 %.not5.i.i238
  br i1 %.not.i.i239, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  %i.hp = load ptr, ptr %i.ec, align 8, !noalias !359 ; 2 uses
  %i.hq = ptrtoint ptr %.08.i.i.i237 to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.hp, i64 noundef %i.hs)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit245 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load ptr, ptr %12, align 8, !alias.scope !359 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.dy
  br i1 %i.hw, label %.body243, label %.body243.sink.split

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.ed)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit245 unwind label %bb.u

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit245: ; preds = %bb.v, %bb.t
  %i.hx = load ptr, ptr %12, align 8
  store ptr %i.hx, ptr %i.k, align 8
  %i.hy = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc246 unwind label %bb.ac

.noexc246:                                        ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit245
  br i1 %i.hy, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %.noexc246
  %i.hz = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc247 unwind label %bb.ac

.noexc247:                                        ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.ia = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc248 unwind label %bb.ac

.noexc248:                                        ; preds = %.noexc247
  store ptr %i.ia, ptr %i.f, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.hz, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc249 unwind label %bb.ac

.noexc249:                                        ; preds = %.noexc248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_.exit: ; preds = %.noexc249, %.noexc246
  %i.ib = load ptr, ptr %12, align 8              ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.dy
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_.exit
  %i.id = load i64, ptr %i.dy, align 8
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

end_hunk_0
