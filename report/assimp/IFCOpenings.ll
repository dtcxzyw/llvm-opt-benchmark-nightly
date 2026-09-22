Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCOpenings?download=true
inline.NumInlined: 3954
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC19GetContourInPlane2DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdE10aiVector3tIdEdS9_RS9_RbSB_:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %_ZNSolsEd.exit66
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, double noundef %i.bg)
          to label %_ZNSolsEd.exit68 unwind label %bb.i ; 2 uses

_ZNSolsEd.exit68:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.12, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZNSolsEd.exit68
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, double noundef %i.bh)
          to label %_ZNSolsEd.exit70 unwind label %bb.i ; 0 uses

_ZNSolsEd.exit70:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.ca, ptr %10, align 8, !alias.scope !323
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.cb, align 8, !alias.scope !323
  store i8 0, ptr %i.ca, align 8, !alias.scope !323
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !323 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cd, null
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !323 ; 2 uses
  %i.cg = icmp ugt ptr %i.cd, %i.cf
  %.08.i.i.i = select i1 %i.cg, ptr %i.cd, ptr %i.cf ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSolsEd.exit70
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !323 ; 2 uses
  %i.cj = ptrtoint ptr %.08.i.i.i to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.ci, i64 noundef %i.cl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %10, align 8, !alias.scope !323 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ca
  br i1 %i.cp, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %_ZNSolsEd.exit70
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.cr = load ptr, ptr %10, align 8
  store ptr %i.cr, ptr %i.c, align 8
  %i.cs = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cs, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.ct = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc71 unwind label %bb.j

.noexc71:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.cu = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc72 unwind label %bb.j

.noexc72:                                         ; preds = %.noexc71
  store ptr %i.cu, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc73 unwind label %bb.j

.noexc73:                                         ; preds = %.noexc72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit: ; preds = %.noexc73, %.noexc
  %i.cv = load ptr, ptr %10, align 8              ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ca
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit
  %i.cx = load i64, ptr %i.ca, align 8
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  store i8 0, ptr %8, align 1
  %i.cz = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cz, ptr %9, align 8
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.db = getelementptr i8, ptr %i.cz, i64 -24
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds i8, ptr %9, i64 %i.dc
  store ptr %i.da, ptr %i.dd, align 8
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.de, ptr %i.bk, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = load i64, ptr %i.di, align 8
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.df, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dm) #27
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.dn, ptr %9, align 8
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dp = getelementptr i8, ptr %i.dn, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %9, i64 %i.dq
  store ptr %i.do, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dt) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.ah

bb.h:                                             ; preds = %bb.b
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %_ZNSolsEd.exit68, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67, %_ZNSolsEd.exit66, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65, %_ZNSolsEd.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %_ZNSolsEd.exit61, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZNSolsEd.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %.noexc72, %.noexc71, %bb.g, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %10, align 8              ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ca
  br i1 %i.dy, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.j, %bb.e
  %.sink = phi ptr [ %i.co, %bb.e ], [ %i.dx, %bb.j ]
  %.pn52.ph = phi { ptr, i32 } [ %i.cn, %bb.e ], [ %i.dw, %bb.j ]
  %i.dz = load i64, ptr %i.ca, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ea) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.j, %bb.e
  %.pn52 = phi { ptr, i32 } [ %i.cn, %bb.e ], [ %i.dw, %bb.j ], [ %.pn52.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.k

bb.k:                                             ; preds = %.body, %bb.i
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %.body ], [ %i.dv, %bb.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %bb.k ], [ %i.du, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

bb.m:                                             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8            ; 3 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.f to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = sdiv exact i64 %i.ef, 24
  %i.eh = icmp ult i64 %i.eg, 3
  br i1 %i.eh, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %.not131 = icmp eq ptr %i.f, %i.ec
  br i1 %.not131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ei = load double, ptr %2, align 8, !noalias !324
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 48
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.eo = load double, ptr %5, align 8, !noalias !325
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.es = fcmp ogt double %i.bh, 0.000000e+00
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ew = insertelement <2 x double> poison, double %4, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.y

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.13, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %bb.o
  %i.fa = load ptr, ptr %i.eb, align 8
  %i.fb = load ptr, ptr %i.e, align 8
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = sdiv exact i64 %i.fe, 24
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i64 noundef %i.ff)
          to label %_ZNSolsEm.exit unwind label %bb.u

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull @.str.14, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZNSolsEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.fi, ptr %12, align 8, !alias.scope !328
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.fj, align 8, !alias.scope !328
  store i8 0, ptr %i.fi, align 8, !alias.scope !328
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !328 ; 3 uses
  %.not.i.not.i.i82 = icmp eq ptr %i.fl, null
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !328 ; 2 uses
  %i.fo = icmp ugt ptr %i.fl, %i.fn
  %.08.i.i.i83 = select i1 %i.fo, ptr %i.fl, ptr %i.fn ; 2 uses
  %.not5.i.i84 = icmp eq ptr %.08.i.i.i83, null
  %.not.i.i85 = select i1 %.not.i.not.i.i82, i1 true, i1 %.not5.i.i84
  br i1 %.not.i.i85, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !328 ; 2 uses
  %i.fr = ptrtoint ptr %.08.i.i.i83 to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.fq, i64 noundef %i.ft)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %12, align 8, !alias.scope !328 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.fi
  br i1 %i.fx, label %.body89, label %.body89.sink.split

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.fy)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91 unwind label %bb.q

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91: ; preds = %bb.r, %bb.p
  %i.fz = load ptr, ptr %12, align 8
  store ptr %i.fz, ptr %i.d, align 8
  %i.ga = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc92 unwind label %bb.v

.noexc92:                                         ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91
  br i1 %i.ga, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit96, label %bb.s

bb.s:                                             ; preds = %.noexc92
  %i.gb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc93 unwind label %bb.v

.noexc93:                                         ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.gc = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc94 unwind label %bb.v

.noexc94:                                         ; preds = %.noexc93
  store ptr %i.gc, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.gb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc95 unwind label %bb.v

.noexc95:                                         ; preds = %.noexc94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit96

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit96: ; preds = %.noexc95, %.noexc92
  %i.gd = load ptr, ptr %12, align 8              ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fi
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit96
  %i.gf = load i64, ptr %i.fi, align 8
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  store i8 0, ptr %8, align 1
  %i.gh = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gh, ptr %11, align 8
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.gj = getelementptr i8, ptr %i.gh, i64 -24
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds i8, ptr %11, i64 %i.gk
  store ptr %i.gi, ptr %i.gl, align 8
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.gm, ptr %i.ey, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.gp = load ptr, ptr %i.go, align 8            ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.gs = load i64, ptr %i.gq, align 8
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gn, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gu) #27
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gv, ptr %11, align 8
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gx = getelementptr i8, ptr %i.gv, i64 -24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds i8, ptr %11, i64 %i.gy
  store ptr %i.gw, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.hb) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.ah

bb.t:                                             ; preds = %bb.n
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78, %bb.o
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %.noexc94, %.noexc93, %bb.s, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %12, align 8              ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.fi
  br i1 %i.hg, label %.body89, label %.body89.sink.split

.body89.sink.split:                               ; preds = %bb.v, %bb.q
  %.sink179 = phi ptr [ %i.fw, %bb.q ], [ %i.hf, %bb.v ]
  %.pn47.ph = phi { ptr, i32 } [ %i.fv, %bb.q ], [ %i.he, %bb.v ]
  %i.hh = load i64, ptr %i.fi, align 8
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %.sink179, i64 noundef %i.hi) #26
  br label %.body89

.body89:                                          ; preds = %.body89.sink.split, %bb.v, %bb.q
  %.pn47 = phi { ptr, i32 } [ %i.fv, %bb.q ], [ %i.he, %bb.v ], [ %.pn47.ph, %.body89.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.w

bb.w:                                             ; preds = %.body89, %bb.u
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %.body89 ], [ %i.hd, %bb.u ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %bb.w ], [ %i.hc, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit, %.preheader
  %.lcssa128 = phi ptr [ null, %.preheader ], [ %i.kl, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ]
  store ptr %.lcssa128, ptr %0, align 8
  store i8 1, ptr %8, align 1
  br label %bb.ah

bb.y:                                             ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit
  %i.hj = phi ptr [ null, %.lr.ph ], [ %i.kk, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ] ; 7 uses
  %.sroa.0112.0132 = phi ptr [ %i.f, %.lr.ph ], [ %i.km, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ] ; 4 uses
  %i.hk = phi ptr [ null, %.lr.ph ], [ %i.kl, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0112.0132, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0112.0132, i64 16
  %i.hn = load <4 x double>, ptr %i.ej, align 8, !noalias !324 ; 2 uses
  %i.ho = load double, ptr %i.ek, align 8, !noalias !324
  %i.hp = shufflevector <4 x double> %i.hn, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hq = shufflevector <4 x double> %i.hn, <4 x double> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.hr = insertelement <2 x double> %i.hq, double %i.ei, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.hs = load double, ptr %i.hm, align 8, !noalias !324 ; 2 uses
  %i.ht = load <2 x double>, ptr %i.el, align 8, !noalias !324 ; 3 uses
  %i.hu = shufflevector <2 x double> %i.hq, <2 x double> %i.ht, <2 x i32> <i32 0, i32 3>
  %i.hv = insertelement <2 x double> poison, double %i.hs, i64 0 ; 2 uses
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = load double, ptr %i.eq, align 8, !noalias !325
  %i.hy = load double, ptr %i.ep, align 8, !noalias !325
  %i.hz = fadd double %i.hs, %i.hx                ; 2 uses
  %i.ia = shufflevector <2 x double> %i.hp, <2 x double> %i.ht, <2 x i32> <i32 0, i32 2>
  %i.ib = insertelement <2 x double> %i.ht, double %i.ho, i64 0
  %i.ic = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = load <2 x double>, ptr %15, align 8
  %18 = load <2 x double>, ptr %i.em, align 8
  %19 = load double, ptr %16, align 8, !noalias !324
  %i.ie = load <2 x double>, ptr %.sroa.0112.0132, align 8, !noalias !324 ; 5 uses
  %i.if = load double, ptr %i.hl, align 8, !noalias !324
  %i.ig = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ih = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ii = fmul <2 x double> %i.ih, %i.hp
  %i.ij = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.ij, <2 x double> %i.ii)
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.hw, <2 x double> %i.ik)
  store <2 x double> %i.il, ptr %13, align 16, !alias.scope !324
  %i.im = fadd double %i.if, %i.hy                ; 2 uses
  %i.in = extractelement <2 x double> %i.ie, i64 0
  %i.io = fadd double %i.in, %i.eo                ; 2 uses
  %20 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = insertelement <2 x double> %i.ig, double %i.im, i64 1
  %i.iq = fmul <2 x double> %20, %i.ip
  %i.ir = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.is = insertelement <2 x double> %i.ie, double %i.io, i64 1
  %i.it = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %i.is, <2 x double> %i.iq)
  %21 = insertelement <2 x double> poison, double %19, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = insertelement <2 x double> %i.hv, double %i.hz, i64 1
  %i.iv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> %i.iu, <2 x double> %i.it) ; 3 uses
  %i.iw = extractelement <2 x double> %i.iv, i64 0
  store double %i.iw, ptr %i.en, align 16, !alias.scope !324
  %i.ix = insertelement <2 x double> poison, double %i.im, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x double> %i.ia, %i.iy
  %i.ja = insertelement <2 x double> poison, double %i.io, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.jb, <2 x double> %i.iz)
  %i.jd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.id, <2 x double> %i.jc)
  store <2 x double> %i.jd, ptr %14, align 16, !alias.scope !329
  %i.je = extractelement <2 x double> %i.iv, i64 1
  store double %i.je, ptr %i.er, align 16, !alias.scope !329
  %i.jf = fsub <2 x double> %i.iv, %i.ex
  %i.jg = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.jf) ; 2 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0
  %i.ji = extractelement <2 x double> %i.jg, i64 1
  %i.jj = fcmp ogt double %i.jh, %i.ji            ; 2 uses
  %i.jk = load i8, ptr %7, align 1, !range !22, !noundef !23
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %7, align 1
  br i1 %i.es, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br i1 %i.jj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jm = load double, ptr %i.et, align 8, !noalias !330
  %i.jn = fneg double %i.jm
  %i.jo = load <2 x double>, ptr %6, align 8, !noalias !330
  %i.jp = fneg <2 x double> %i.jo
  store <2 x double> %i.jp, ptr %6, align 8
  store double %i.jn, ptr %i.et, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.aa, %bb.y
  %. = select i1 %i.jj, ptr %14, ptr %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, ptr noundef nonnull align 16 dereferenceable(24) %., i64 24, i1 false)
  %i.jq = load ptr, ptr %i.ev, align 8
  %.not.i = icmp eq ptr %i.hj, %i.jq
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jr = load <2 x double>, ptr %13, align 16
  store <2 x double> %i.jr, ptr %i.hj, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  store ptr %i.js, ptr %i.eu, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.jt = ptrtoint ptr %i.hj to i64
  %i.ju = ptrtoint ptr %i.hk to i64
  %i.jv = sub i64 %i.jt, %i.ju                    ; 4 uses
  %i.jw = icmp eq i64 %i.jv, 9223372036854775792
  br i1 %i.jw, label %bb.af, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  store ptr %i.hk, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
          to label %.noexc106 unwind label %.loopexit.split-lp

.noexc106:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.jx = ashr exact i64 %i.jv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jx, i64 1)
  %i.jy = add nsw i64 %.sroa.speculated.i.i.i, %i.jx ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jx
  %i.ka = tail call i64 @llvm.umin.i64(i64 %i.jy, i64 576460752303423487)
  %i.kb = select i1 %i.jz, i64 576460752303423487, i64 %i.ka ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.kb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.kc = shl nuw nsw i64 %i.kb, 4
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #25
          to label %.noexc107 unwind label %.loopexit ; 5 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jv
  %i.kf = load <2 x double>, ptr %13, align 16
  store <2 x double> %i.kf, ptr %i.ke, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.hk, %i.hj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc107, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i ], [ %i.kd, %.noexc107 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i ], [ %i.hk, %.noexc107 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !331
  %i.kg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kg, %i.hj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc107
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kd, %.noexc107 ], [ %i.kh, %.lr.ph.i.i.i.i.i ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.jv) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.ki, ptr %i.eu, align 8
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %i.kb
  store ptr %i.kj, ptr %i.ev, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ad
  %i.kk = phi ptr [ %i.ki, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.js, %bb.ad ]
  %i.kl = phi ptr [ %i.kd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hk, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0112.0132, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.km, %i.ec
  br i1 %.not, label %._crit_edge, label %bb.y

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hk, ptr %0, align 8
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102, %._crit_edge, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void

bb.ai:                                            ; preds = %.loopexit, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %.not.i.i.i108 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kn = ptrtoint ptr %i.hj to i64
  %i.ko = ptrtoint ptr %i.hk to i64
  %i.kp = sub i64 %i.kn, %i.ko
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.kp) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit:    ; preds = %bb.x, %bb.l, %bb.ai, %bb.aj
  %.pn52.pn.pn.pn.pn162 = phi { ptr, i32 } [ %lpad.phi, %bb.aj ], [ %lpad.phi, %bb.ai ], [ %.pn47.pn.pn, %bb.x ], [ %.pn52.pn.pn, %bb.l ]
  resume { ptr, i32 } %.pn52.pn.pn.pn.pn162
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20GetContoursInPlane3DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdEd(ptr dead_on_unwind noalias writable sret(%"class.std::vector.119") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly byval(%class.aiMatrix3x3t) align 8 captures(none) %2, double noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::deque", align 8        ; 33 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"struct.std::pair.3", align 16    ; 8 uses
  %14 = alloca %"struct.std::pair.3", align 16    ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::deque.125", align 8   ; 31 uses
  %18 = alloca [2 x %class.aiVector2t], align 8   ; 6 uses
  %19 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %20 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %21 = alloca %"class.std::vector.5", align 8    ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.15, i64 noundef 37)
end_hunk_0
