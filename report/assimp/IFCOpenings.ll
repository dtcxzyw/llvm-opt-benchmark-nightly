Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCOpenings?download=true
inline.NumInlined: 3954
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC19GetContourInPlane2DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdE10aiVector3tIdEdS9_RS9_RbSB_:bb.a
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
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.eo = load double, ptr %5, align 8, !noalias !325
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.er = fcmp ogt double %i.bh, 0.000000e+00
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ev = insertelement <2 x double> poison, double %4, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.y

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull @.str.13, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %bb.o
  %i.ez = load ptr, ptr %i.eb, align 8
  %i.fa = load ptr, ptr %i.e, align 8
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = sdiv exact i64 %i.fd, 24
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, i64 noundef %i.fe)
          to label %_ZNSolsEm.exit unwind label %bb.u

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull @.str.14, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZNSolsEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.fh, ptr %12, align 8, !alias.scope !328
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.fi, align 8, !alias.scope !328
  store i8 0, ptr %i.fh, align 8, !alias.scope !328
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !328 ; 3 uses
  %.not.i.not.i.i82 = icmp eq ptr %i.fk, null
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !328 ; 2 uses
  %i.fn = icmp ugt ptr %i.fk, %i.fm
  %.08.i.i.i83 = select i1 %i.fn, ptr %i.fk, ptr %i.fm ; 2 uses
  %.not5.i.i84 = icmp eq ptr %.08.i.i.i83, null
  %.not.i.i85 = select i1 %.not.i.not.i.i82, i1 true, i1 %.not5.i.i84
  br i1 %.not.i.i85, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !328 ; 2 uses
  %i.fq = ptrtoint ptr %.08.i.i.i83 to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.fp, i64 noundef %i.fs)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %12, align 8, !alias.scope !328 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fh
  br i1 %i.fw, label %.body89, label %.body89.sink.split

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.fx = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.fx)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91 unwind label %bb.q

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91: ; preds = %bb.r, %bb.p
  %i.fy = load ptr, ptr %12, align 8
  store ptr %i.fy, ptr %i.d, align 8
  %i.fz = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc92 unwind label %bb.v

.noexc92:                                         ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91
  br i1 %i.fz, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit96, label %bb.s

bb.s:                                             ; preds = %.noexc92
  %i.ga = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc93 unwind label %bb.v

.noexc93:                                         ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.gb = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc94 unwind label %bb.v

.noexc94:                                         ; preds = %.noexc93
  store ptr %i.gb, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc95 unwind label %bb.v

.noexc95:                                         ; preds = %.noexc94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit96

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit96: ; preds = %.noexc95, %.noexc92
  %i.gc = load ptr, ptr %12, align 8              ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fh
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit96
  %i.ge = load i64, ptr %i.fh, align 8
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  store i8 0, ptr %8, align 1
  %i.gg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gg, ptr %11, align 8
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.gi = getelementptr i8, ptr %i.gg, i64 -24
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds i8, ptr %11, i64 %i.gj
  store ptr %i.gh, ptr %i.gk, align 8
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.gl, ptr %i.ex, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.go = load ptr, ptr %i.gn, align 8            ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.gr = load i64, ptr %i.gp, align 8
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gm, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gt) #27
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gu, ptr %11, align 8
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gw = getelementptr i8, ptr %i.gu, i64 -24
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds i8, ptr %11, i64 %i.gx
  store ptr %i.gv, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ha) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.ah

bb.t:                                             ; preds = %bb.n
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78, %bb.o
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %.noexc94, %.noexc93, %bb.s, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.he = load ptr, ptr %12, align 8              ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.fh
  br i1 %i.hf, label %.body89, label %.body89.sink.split

.body89.sink.split:                               ; preds = %bb.v, %bb.q
  %.sink179 = phi ptr [ %i.fv, %bb.q ], [ %i.he, %bb.v ]
  %.pn47.ph = phi { ptr, i32 } [ %i.fu, %bb.q ], [ %i.hd, %bb.v ]
  %i.hg = load i64, ptr %i.fh, align 8
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %.sink179, i64 noundef %i.hh) #26
  br label %.body89

.body89:                                          ; preds = %.body89.sink.split, %bb.v, %bb.q
  %.pn47 = phi { ptr, i32 } [ %i.fu, %bb.q ], [ %i.hd, %bb.v ], [ %.pn47.ph, %.body89.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.w

bb.w:                                             ; preds = %.body89, %bb.u
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %.body89 ], [ %i.hc, %bb.u ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %bb.w ], [ %i.hb, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit, %.preheader
  %.lcssa128 = phi ptr [ null, %.preheader ], [ %i.jg, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ]
  store ptr %.lcssa128, ptr %0, align 8
  store i8 1, ptr %8, align 1
  br label %bb.ah

bb.y:                                             ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit
  %i.hi = phi ptr [ null, %.lr.ph ], [ %i.jf, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ] ; 7 uses
  %.sroa.0112.0132 = phi ptr [ %i.f, %.lr.ph ], [ %i.jh, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ] ; 3 uses
  %i.hj = phi ptr [ null, %.lr.ph ], [ %i.jg, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %16 = load <3 x double>, ptr %.sroa.0112.0132, align 8, !noalias !324 ; 6 uses
  %17 = load double, ptr %.sroa.0112.0132, align 8, !noalias !324 ; 2 uses
  %i.hk = load <4 x double>, ptr %i.ej, align 8, !noalias !324 ; 2 uses
  %i.hl = load double, ptr %i.ek, align 8, !noalias !324
  %18 = shufflevector <3 x double> %16, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %19 = shufflevector <4 x double> %i.hk, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %20 = fmul <2 x double> %18, %19
  %21 = shufflevector <4 x double> %i.hk, <4 x double> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %22 = insertelement <2 x double> %21, double %i.ei, i64 0 ; 2 uses
  %23 = shufflevector <3 x double> %16, <3 x double> poison, <2 x i32> zeroinitializer
  %24 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> %23, <2 x double> %20)
  %25 = shufflevector <3 x double> %16, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %26 = extractelement <3 x double> %16, i64 1
  %27 = extractelement <3 x double> %16, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %28 = load <2 x double>, ptr %i.el, align 8, !noalias !324 ; 3 uses
  %29 = shufflevector <2 x double> %21, <2 x double> %28, <2 x i32> <i32 0, i32 3>
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %25, <2 x double> %24)
  store <2 x double> %i.hm, ptr %13, align 16, !alias.scope !324
  %30 = load double, ptr %15, align 8, !noalias !325
  %31 = load double, ptr %i.ep, align 8, !noalias !325
  %32 = fadd double %26, %31                      ; 2 uses
  %33 = fadd double %17, %i.eo                    ; 2 uses
  %34 = fadd double %27, %30                      ; 2 uses
  %35 = shufflevector <2 x double> %19, <2 x double> %28, <2 x i32> <i32 0, i32 2>
  %36 = insertelement <2 x double> poison, double %32, i64 0
  %37 = shufflevector <2 x double> %36, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = fmul <2 x double> %35, %37
  %38 = insertelement <2 x double> poison, double %33, i64 0
  %i.ho = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> %i.ho, <2 x double> %i.hn)
  %39 = insertelement <2 x double> %28, double %i.hl, i64 0
  %i.hq = insertelement <2 x double> poison, double %34, i64 0
  %40 = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> %40, <2 x double> %i.hp)
  store <2 x double> %i.hr, ptr %14, align 16, !alias.scope !329
  %i.hs = load <3 x double>, ptr %i.em, align 8, !noalias !324 ; 3 uses
  %41 = insertelement <2 x double> %18, double %32, i64 1
  %42 = shufflevector <3 x double> %i.hs, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ht = fmul <2 x double> %41, %42
  %i.hu = shufflevector <3 x double> %i.hs, <3 x double> poison, <2 x i32> zeroinitializer
  %43 = insertelement <2 x double> poison, double %17, i64 0
  %44 = insertelement <2 x double> %43, double %33, i64 1
  %i.hv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %44, <2 x double> %i.ht)
  %i.hw = shufflevector <3 x double> %i.hs, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %45 = shufflevector <3 x double> %16, <3 x double> poison, <2 x i32> <i32 2, i32 poison>
  %46 = insertelement <2 x double> %45, double %34, i64 1
  %i.hx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %46, <2 x double> %i.hv) ; 3 uses
  %i.hy = extractelement <2 x double> %i.hx, i64 0
  store double %i.hy, ptr %i.en, align 16, !alias.scope !324
  %i.hz = extractelement <2 x double> %i.hx, i64 1
  store double %i.hz, ptr %i.eq, align 16, !alias.scope !329
  %i.ia = fsub <2 x double> %i.hx, %i.ew
  %i.ib = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ia) ; 2 uses
  %i.ic = extractelement <2 x double> %i.ib, i64 0
  %i.id = extractelement <2 x double> %i.ib, i64 1
  %i.ie = fcmp ogt double %i.ic, %i.id            ; 2 uses
  %i.if = load i8, ptr %7, align 1, !range !22, !noundef !23
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %7, align 1
  br i1 %i.er, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br i1 %i.ie, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ih = load double, ptr %i.es, align 8, !noalias !330
  %i.ii = fneg double %i.ih
  %i.ij = load <2 x double>, ptr %6, align 8, !noalias !330
  %i.ik = fneg <2 x double> %i.ij
  store <2 x double> %i.ik, ptr %6, align 8
  store double %i.ii, ptr %i.es, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.aa, %bb.y
  %. = select i1 %i.ie, ptr %14, ptr %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, ptr noundef nonnull align 16 dereferenceable(24) %., i64 24, i1 false)
  %i.il = load ptr, ptr %i.eu, align 8
  %.not.i = icmp eq ptr %i.hi, %i.il
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.im = load <2 x double>, ptr %13, align 16
  store <2 x double> %i.im, ptr %i.hi, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  store ptr %i.in, ptr %i.et, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.io = ptrtoint ptr %i.hi to i64
  %i.ip = ptrtoint ptr %i.hj to i64
  %i.iq = sub i64 %i.io, %i.ip                    ; 4 uses
  %i.ir = icmp eq i64 %i.iq, 9223372036854775792
  br i1 %i.ir, label %bb.af, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  store ptr %i.hj, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
          to label %.noexc106 unwind label %.loopexit.split-lp

.noexc106:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.is = ashr exact i64 %i.iq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.is, i64 1)
  %i.it = add nsw i64 %.sroa.speculated.i.i.i, %i.is ; 2 uses
  %i.iu = icmp ult i64 %i.it, %i.is
  %i.iv = tail call i64 @llvm.umin.i64(i64 %i.it, i64 576460752303423487)
  %i.iw = select i1 %i.iu, i64 576460752303423487, i64 %i.iv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.iw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ix = shl nuw nsw i64 %i.iw, 4
  %i.iy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #25
          to label %.noexc107 unwind label %.loopexit ; 5 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.iq
  %i.ja = load <2 x double>, ptr %13, align 16
  store <2 x double> %i.ja, ptr %i.iz, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.hj, %i.hi
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc107, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i ], [ %i.iy, %.noexc107 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i ], [ %i.hj, %.noexc107 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !331
  %i.jb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jb, %i.hi
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc107
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.iy, %.noexc107 ], [ %i.jc, %.lr.ph.i.i.i.i.i ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.iq) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.jd, ptr %i.et, align 8
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.iw
  store ptr %i.je, ptr %i.eu, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ad
  %i.jf = phi ptr [ %i.jd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.in, %bb.ad ]
  %i.jg = phi ptr [ %i.iy, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hj, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0112.0132, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.jh, %i.ec
  br i1 %.not, label %._crit_edge, label %bb.y

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hj, ptr %0, align 8
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
  %.not.i.i.i108 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ji = ptrtoint ptr %i.hi to i64
  %i.jj = ptrtoint ptr %i.hj to i64
  %i.jk = sub i64 %i.ji, %i.jj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.jk) #26
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
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.p = load double, ptr %2, align 8             ; 3 uses
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, double noundef %i.p)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC20GetContoursInPlane3DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdEd:bb.a
  %i.hk = icmp ult i32 %i.ez, 3
  br i1 %i.hk, label %bb.r, label %bb.af

bb.r:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit230
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.21, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232: ; preds = %bb.s
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, i64 noundef %i.fb)
          to label %_ZNSolsEj.exit unwind label %bb.ab

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull @.str.22, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235: ; preds = %_ZNSolsEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  store ptr %i.dy, ptr %12, align 8, !alias.scope !394
  store i64 0, ptr %i.dz, align 8, !alias.scope !394
  store i8 0, ptr %i.dy, align 8, !alias.scope !394
  %i.ho = load ptr, ptr %i.ea, align 8, !noalias !394 ; 3 uses
  %.not.i.not.i.i236 = icmp eq ptr %i.ho, null
  %i.hp = load ptr, ptr %i.eb, align 8, !noalias !394 ; 2 uses
  %i.hq = icmp ugt ptr %i.ho, %i.hp
  %.08.i.i.i237 = select i1 %i.hq, ptr %i.ho, ptr %i.hp ; 2 uses
  %.not5.i.i238 = icmp eq ptr %.08.i.i.i237, null
  %.not.i.i239 = select i1 %.not.i.not.i.i236, i1 true, i1 %.not5.i.i238
  br i1 %.not.i.i239, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  %i.hr = load ptr, ptr %i.ec, align 8, !noalias !394 ; 2 uses
  %i.hs = ptrtoint ptr %.08.i.i.i237 to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.hr, i64 noundef %i.hu)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit245 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = load ptr, ptr %12, align 8, !alias.scope !394 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.dy
  br i1 %i.hy, label %.body243, label %.body243.sink.split

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.ed)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit245 unwind label %bb.u

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit245: ; preds = %bb.v, %bb.t
  %i.hz = load ptr, ptr %12, align 8
  store ptr %i.hz, ptr %i.k, align 8
  %i.ia = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc246 unwind label %bb.ac

.noexc246:                                        ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit245
  br i1 %i.ia, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %.noexc246
  %i.ib = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc247 unwind label %bb.ac

.noexc247:                                        ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.ic = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc248 unwind label %bb.ac

.noexc248:                                        ; preds = %.noexc247
  store ptr %i.ic, ptr %i.f, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ib, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc249 unwind label %bb.ac

.noexc249:                                        ; preds = %.noexc248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_.exit: ; preds = %.noexc249, %.noexc246
  %i.id = load ptr, ptr %12, align 8              ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.dy
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_.exit
  %i.if = load i64, ptr %i.dy, align 8
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  store ptr %i.cc, ptr %11, align 8
  %i.ih = load i64, ptr %i.ce, align 8
  %i.ii = getelementptr inbounds i8, ptr %11, i64 %i.ih
  store ptr %i.cd, ptr %i.ii, align 8
  store ptr %i.ch, ptr %i.dx, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ee, align 8
  %i.ij = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ef
  br i1 %i.ik, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
  %i.il = load i64, ptr %i.ef, align 8
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit255

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ee, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eg) #27
  store ptr %i.cq, ptr %11, align 8
  %i.in = load i64, ptr %i.cs, align 8
  %i.io = getelementptr inbounds i8, ptr %11, i64 %i.in
  store ptr %i.cr, ptr %i.io, align 8
  store i64 0, ptr %i.eh, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ei) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit

bb.x:                                             ; preds = %.noexc222, %.noexc221, %bb.q, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit203
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iq = load ptr, ptr %10, align 8              ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.dd
  br i1 %i.ir, label %.body201, label %.body201.sink.split

.body201.sink.split:                              ; preds = %bb.x, %bb.l
  %.sink979 = phi ptr [ %i.fn, %bb.l ], [ %i.iq, %bb.x ]
  %.pn147.ph = phi { ptr, i32 } [ %i.fm, %bb.l ], [ %i.ip, %bb.x ]
  %i.is = load i64, ptr %i.dd, align 8
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %.sink979, i64 noundef %i.it) #26
  br label %.body201

.body201:                                         ; preds = %.body201.sink.split, %bb.x, %bb.l
  %.pn147 = phi { ptr, i32 } [ %i.fm, %bb.l ], [ %i.ip, %bb.x ], [ %.pn147.ph, %.body201.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  br label %bb.y

bb.y:                                             ; preds = %.body201, %bb.p, %bb.o
  %.pn158 = phi { ptr, i32 } [ %i.gt, %bb.p ], [ %.pn147, %.body201 ], [ %i.fq, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.n
  %.pn158.pn = phi { ptr, i32 } [ %.pn158, %bb.y ], [ %i.fp, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

bb.aa:                                            ; preds = %bb.r
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232, %bb.s
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %.noexc248, %.noexc247, %bb.w, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit245
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load ptr, ptr %12, align 8              ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.dy
  br i1 %i.iy, label %.body243, label %.body243.sink.split

.body243.sink.split:                              ; preds = %bb.ac, %bb.u
  %.sink982 = phi ptr [ %i.hx, %bb.u ], [ %i.ix, %bb.ac ]
  %.pn154.ph = phi { ptr, i32 } [ %i.hw, %bb.u ], [ %i.iw, %bb.ac ]
  %i.iz = load i64, ptr %i.dy, align 8
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %.sink982, i64 noundef %i.ja) #26
  br label %.body243

.body243:                                         ; preds = %.body243.sink.split, %bb.ac, %bb.u
  %.pn154 = phi { ptr, i32 } [ %i.hw, %bb.u ], [ %i.iw, %bb.ac ], [ %.pn154.ph, %.body243.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  br label %bb.ad

bb.ad:                                            ; preds = %.body243, %bb.ab
  %.pn154.pn = phi { ptr, i32 } [ %.pn154, %.body243 ], [ %i.iv, %bb.ab ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.pn154.pn.pn = phi { ptr, i32 } [ %.pn154.pn, %bb.ad ], [ %i.iu, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

bb.af:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit230
  %i.jb = load ptr, ptr %1, align 8
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.jc, i64 %.0111738 ; 2 uses
  %24 = load <3 x double>, ptr %i.jd, align 8, !noalias !395 ; 5 uses
  %i.je = load double, ptr %i.jd, align 8, !noalias !395
  %25 = extractelement <3 x double> %24, i64 1
  %26 = fmul double %25, %i.at
  %27 = call double @llvm.fmuladd.f64(double %i.ap, double %i.je, double %26)
  %28 = extractelement <3 x double> %24, i64 2
  %i.jf = call double @llvm.fmuladd.f64(double %i.ax, double %28, double %27) ; 2 uses
  %i.jg = fsub double %i.jf, %3
  %i.jh = call double @llvm.fabs.f64(double %i.jg)
  %i.ji = fcmp olt double %i.jh, f0x3EB0C6F7A0000000 ; 3 uses
  %.0118726 = add i64 %.0111738, 1                ; 2 uses
  %i.jj = icmp ult i64 %.0118726, %i.fc
  br i1 %i.jj, label %.lr.ph734.preheader, label %._crit_edge

.lr.ph734.preheader:                              ; preds = %bb.af
  %.0114 = zext i1 %i.ji to i8
  %29 = shufflevector <3 x double> %24, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jk = fmul <2 x double> %i.eo, %29
  %i.jl = shufflevector <3 x double> %24, <3 x double> poison, <2 x i32> zeroinitializer
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.jl, <2 x double> %i.jk)
  %30 = shufflevector <3 x double> %24, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %30, <2 x double> %i.jm) ; 2 uses
  %i.jo = insertelement <2 x i1> poison, i1 %i.ji, i64 0
  %i.jp = shufflevector <2 x i1> %i.jo, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.jq = select <2 x i1> %i.jp, <2 x double> %i.jn, <2 x double> zeroinitializer
  br label %.lr.ph734

._crit_edge.loopexit:                             ; preds = %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265
  %i.jr = trunc nuw i8 %.3117 to i1
  br i1 %i.jr, label %bb.aw, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit

._crit_edge:                                      ; preds = %bb.af
  br i1 %i.ji, label %bb.aw, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit

.lr.ph734:                                        ; preds = %.lr.ph734.preheader, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265
  %.0118733 = phi i64 [ %.0118, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %.0118726, %.lr.ph734.preheader ] ; 2 uses
  %.1115732 = phi i8 [ %.3117, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %.0114, %.lr.ph734.preheader ] ; 2 uses
  %.sroa.12.0729 = phi double [ %i.kd, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %i.jf, %.lr.ph734.preheader ] ; 4 uses
  %i.js = phi <2 x double> [ %34, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %i.jn, %.lr.ph734.preheader ] ; 4 uses
  %i.jt = phi <2 x double> [ %i.mt, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %i.jq, %.lr.ph734.preheader ] ; 6 uses
  %i.ju = load ptr, ptr %1, align 8
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %.0118733 ; 2 uses
  %31 = load <3 x double>, ptr %i.jw, align 8, !noalias !396 ; 5 uses
  %i.jx = load double, ptr %i.jw, align 8, !noalias !396
  %32 = shufflevector <3 x double> %31, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jy = fmul <2 x double> %i.eo, %32
  %i.jz = shufflevector <3 x double> %31, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ka = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.jz, <2 x double> %i.jy)
  %33 = shufflevector <3 x double> %31, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %34 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %33, <2 x double> %i.ka) ; 3 uses
  %35 = extractelement <3 x double> %31, i64 1
  %i.kb = fmul double %i.at, %35
  %i.kc = call double @llvm.fmuladd.f64(double %i.ap, double %i.jx, double %i.kb)
  %36 = extractelement <3 x double> %31, i64 2
  %i.kd = call double @llvm.fmuladd.f64(double %i.ax, double %36, double %i.kc) ; 4 uses
  %i.ke = fsub double %i.kd, %3
  %i.kf = call double @llvm.fabs.f64(double %i.ke)
  %i.kg = fcmp olt double %i.kf, f0x3EB0C6F7A0000000
  br i1 %i.kg, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph734
  %i.kh = fcmp ogt double %i.kd, %3
  %i.ki = fcmp ule double %.sroa.12.0729, %3
  %.not = xor i1 %i.ki, %i.kh
  br i1 %.not, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kj = fsub <2 x double> %34, %i.js
  %i.kk = fsub double %i.kd, %.sroa.12.0729
  %i.kl = fsub double %3, %.sroa.12.0729
  %i.km = fdiv double %i.kl, %i.kk
  %i.kn = insertelement <2 x double> poison, double %i.km, i64 0
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = fmul <2 x double> %i.kj, %i.ko
  %i.kq = fadd <2 x double> %i.js, %i.kp
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph734, %bb.ah
  %i.kr = phi <2 x double> [ %i.kq, %bb.ah ], [ %34, %.lr.ph734 ] ; 5 uses
  %i.ks = trunc nuw i8 %.1115732 to i1
  br i1 %i.ks, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kt = fsub double %.sroa.12.0729, %3
  %i.ku = call double @llvm.fabs.f64(double %i.kt)
  %i.kv = fcmp olt double %i.ku, f0x3EB0C6F7A0000000
  br i1 %i.kv, label %bb.ak, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store <2 x double> %i.js, ptr %13, align 16
  store <2 x double> %i.kr, ptr %i.do, align 16
  invoke fastcc void @_ZN6Assimp3IFCL10logSegmentESt4pairI10aiVector2tIdES3_E(ptr noundef nonnull byval(%"struct.std::pair.3") align 8 %13)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.kw = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.kx = load ptr, ptr %i.dq, align 8
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -32
  %.not.i = icmp eq ptr %i.kw, %i.ky
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kw, ptr noundef nonnull align 16 dereferenceable(32) %13, i64 32, i1 false)
  %i.kz = load ptr, ptr %i.dp, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  store ptr %i.la, ptr %i.dp, align 8
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit

bb.an:                                            ; preds = %bb.al
  invoke void @_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit unwind label %bb.ao

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

bb.ap:                                            ; preds = %bb.ai
  store <2 x double> %i.jt, ptr %14, align 16
  store <2 x double> %i.kr, ptr %.sroa.7515.0..sroa_idx, align 16
  invoke fastcc void @_ZN6Assimp3IFCL10logSegmentESt4pairI10aiVector2tIdES3_E(ptr noundef nonnull byval(%"struct.std::pair.3") align 8 %14)
          to label %bb.aq unwind label %.loopexit600

bb.aq:                                            ; preds = %bb.ap
  %i.lc = load ptr, ptr %i.dp, align 8            ; 4 uses
  %i.ld = load ptr, ptr %i.dq, align 8
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -32
  %.not.i263 = icmp eq ptr %i.lc, %i.le
  br i1 %.not.i263, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store <2 x double> %i.jt, ptr %i.lc, align 8
  %.sroa.7515.0..sroa_idx516 = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store <2 x double> %i.kr, ptr %.sroa.7515.0..sroa_idx516, align 8
  %i.lf = load ptr, ptr %i.dp, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  store ptr %i.lg, ptr %i.dp, align 8
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265

bb.as:                                            ; preds = %bb.aq
  %i.lh = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.li = load ptr, ptr %i.dt, align 8
  %i.lj = ptrtoint ptr %i.lh to i64               ; 2 uses
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = ashr exact i64 %i.ll, 3
  %i.ln = icmp ne ptr %i.lh, null
  %.neg.i.i.i = sext i1 %i.ln to i64
  %i.lo = add nsw i64 %i.lm, %.neg.i.i.i
  %i.lp = shl nsw i64 %i.lo, 4
  %i.lq = load ptr, ptr %i.du, align 8
  %i.lr = ptrtoint ptr %i.lc to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = ashr exact i64 %i.lt, 5
  %i.lv = add nsw i64 %i.lp, %i.lu
  %i.lw = load ptr, ptr %i.dv, align 8
  %i.lx = load ptr, ptr %i.dr, align 8
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = ashr exact i64 %i.ma, 5
  %i.mc = add nsw i64 %i.lv, %i.mb
  %i.md = icmp eq i64 %i.mc, 288230376151711743
  br i1 %i.md, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
          to label %.noexc407 unwind label %.loopexit.split-lp601

.noexc407:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.me = load i64, ptr %i.dw, align 8
  %i.mf = load ptr, ptr %8, align 8
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = sub i64 %i.lj, %i.mg
  %i.mi = ashr exact i64 %i.mh, 3
  %i.mj = sub i64 %i.me, %i.mi
  %i.mk = icmp ult i64 %i.mj, 2
  br i1 %i.mk, label %bb.av, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %8, i64 noundef 1, i1 noundef zeroext false)
          to label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit.i unwind label %.loopexit600

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit.i: ; preds = %bb.av, %bb.au
  %i.ml = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc264 unwind label %.loopexit600

.noexc264:                                        ; preds = %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit.i
  %i.mm = load ptr, ptr %i.ds, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store ptr %i.ml, ptr %i.mn, align 8
  %i.mo = load ptr, ptr %i.dp, align 8            ; 2 uses
  store <2 x double> %i.jt, ptr %i.mo, align 8
  %.sroa.7515.0..sroa_idx518 = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store <2 x double> %i.kr, ptr %.sroa.7515.0..sroa_idx518, align 8
  %i.mp = load ptr, ptr %i.ds, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 2 uses
  store ptr %i.mq, ptr %i.ds, align 8
  %i.mr = load ptr, ptr %i.mq, align 8            ; 3 uses
  store ptr %i.mr, ptr %i.du, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 512
  store ptr %i.ms, ptr %i.dq, align 8
  store ptr %i.mr, ptr %i.dp, align 8
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265

.loopexit600:                                     ; preds = %bb.ap, %bb.av, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit.i
  %lpad.loopexit602 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

.loopexit.split-lp601:                            ; preds = %bb.at
  %lpad.loopexit.split-lp603 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265: ; preds = %bb.ar, %.noexc264, %bb.aj, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit, %bb.ag
  %.3117 = phi i8 [ 1, %bb.aj ], [ 0, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ], [ %.1115732, %bb.ag ], [ 0, %.noexc264 ], [ 0, %bb.ar ] ; 2 uses
  %i.mt = phi <2 x double> [ %i.kr, %bb.aj ], [ %i.js, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ], [ %i.jt, %bb.ag ], [ %i.jt, %.noexc264 ], [ %i.jt, %bb.ar ]
  %.0118 = add nuw i64 %.0118733, 1               ; 2 uses
  %exitcond788.not = icmp eq i64 %.0118, %i.fc
  br i1 %exitcond788.not, label %._crit_edge.loopexit, label %.lr.ph734, !llvm.loop !351

bb.aw:                                            ; preds = %._crit_edge.loopexit, %._crit_edge
  %i.mu = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc266 unwind label %bb.ay

.noexc266:                                        ; preds = %bb.aw
  br i1 %i.mu, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit, label %bb.ax

bb.ax:                                            ; preds = %.noexc266
  %i.mv = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc267 unwind label %bb.ay

.noexc267:                                        ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.mw = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc268 unwind label %bb.ay

.noexc268:                                        ; preds = %.noexc267
  store ptr %i.mw, ptr %i.e, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA61_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.mv, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(61) @.str.23)
          to label %.noexc269 unwind label %bb.ay

.noexc269:                                        ; preds = %.noexc268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit

bb.ay:                                            ; preds = %.noexc268, %.noexc267, %bb.ax, %bb.aw
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit: ; preds = %._crit_edge.loopexit, %._crit_edge, %.noexc266, %.noexc269, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit255
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0575.0737, i64 4 ; 2 uses
  %.not583 = icmp eq ptr %i.my, %i.db
  br i1 %.not583, label %._crit_edge740, label %bb.i

bb.az:                                            ; preds = %._crit_edge740
  %i.mz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.na = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mz, ptr noundef nonnull @.str.24, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271 unwind label %bb.bf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271: ; preds = %bb.az
  %i.nb = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 7 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8            ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 6 uses
  %i.ng = load ptr, ptr %i.nf, align 8
end_hunk_1
