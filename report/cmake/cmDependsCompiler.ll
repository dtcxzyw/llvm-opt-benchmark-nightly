Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmDependsCompiler?download=true
inline.NumInlined: 1112
inline.NumDeleted: 471
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17cmDependsCompiler17CheckDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EERSt3mapIS5_SA_St4lessIS5_ESaISt4pairIS6_SA_EEERKSt8functionIFbS7_EE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr nonnull align 1 %i.ca, i64 %i.cb, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !49, !noalias !128 ; 2 uses
  store i64 %i.ch, ptr %i.r, align 8, !tbaa !32, !alias.scope !128
  %i.ci = load ptr, ptr %12, align 8, !tbaa !20, !alias.scope !128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 0, ptr %i.cj, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !128
  %i.ck = load ptr, ptr %i.y, align 8, !tbaa !52  ; 6 uses
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !53
  %.not.i133 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i133, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !31
  %i.cn = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.q
  br i1 %i.co, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.cp = load i64, ptr %i.r, align 8, !tbaa !32  ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cq)
  %i.cr = add nuw nsw i64 %i.cp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !20
  %i.cs = load i64, ptr %i.q, align 8, !tbaa !33
  store i64 %i.cs, ptr %i.cm, align 8, !tbaa !33
  %.pre367 = load i64, ptr %i.r, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ct = phi i64 [ %.pre367, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cp, %bb.x ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !32
  store ptr %i.q, ptr %12, align 8, !tbaa !20
  store i64 0, ptr %i.r, align 8, !tbaa !32
  store i8 0, ptr %i.q, align 8, !tbaa !33
  %i.cv = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store ptr %i.cw, ptr %i.y, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.y:                                             ; preds = %bb.v
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.096.ph, ptr %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit unwind label %bb.z

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.y
  %.pre368 = load ptr, ptr %12, align 8, !tbaa !20 ; 2 uses
  %i.cx = icmp eq ptr %.pre368, %i.q
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.cy = load i64, ptr %i.q, align 8, !tbaa !33
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %.pre368, i64 noundef %i.cz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.backedge

.loopexit.split-lp295:                            ; preds = %.noexc10.i.i
  %lpad.loopexit351 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.z:                                             ; preds = %bb.y
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.q
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.z
  %i.dd = load i64, ptr %i.q, align 8, !tbaa !33
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %.loopexit.split-lp295
  %.pn114 = phi { ptr, i32 } [ %lpad.loopexit351, %.loopexit.split-lp295 ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %i.da, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.loopexit289.loopexit.split-lp

bb.aa:                                            ; preds = %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dg = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.df)
          to label %.noexc141 unwind label %.loopexit289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %bb.aa
  %.not.i140 = icmp eq ptr %i.dg, null
  br i1 %.not.i140, label %bb.ab, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit

bb.ab:                                            ; preds = %.noexc141
  %i.dh = load ptr, ptr %9, align 8, !tbaa !22
  %i.di = getelementptr i8, ptr %i.dh, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %9, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !127
  %i.dn = or i32 %i.dm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dk, i32 noundef %i.dn)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %.loopexit289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc141, %bb.ab
  %i.do = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.o
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.dq = load i64, ptr %i.o, align 8, !tbaa !33
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ds = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.m
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.du = load i64, ptr %i.m, align 8, !tbaa !33
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ac

.loopexit289.loopexit.split-lp:                   ; preds = %.loopexit289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %.pn116 = phi { ptr, i32 } [ %.pn114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %lpad.loopexit.split-lp516, %.loopexit289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dw = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.o
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %.loopexit289.loopexit.split-lp
  %i.dy = load i64, ptr %i.o, align 8, !tbaa !33
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %.loopexit289.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ea = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.m
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.ec = load i64, ptr %i.m, align 8, !tbaa !33
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ds

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.b
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store i64 0, ptr %13, align 8, !tbaa !126
  %i.ee = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !54
  %.not279343 = icmp eq ptr %i.ee, %i.eg
  br i1 %.not279343, label %._crit_edge347, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.4.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 10 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 11 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  br label %bb.ae

._crit_edge347:                                   ; preds = %bb.dq, %bb.ad
  %.0.lcssa = phi i1 [ true, %bb.ad ], [ %.2, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret i1 %.0.lcssa

bb.ae:                                            ; preds = %.lr.ph, %bb.dq
  %.0345 = phi i1 [ true, %.lr.ph ], [ %.2, %bb.dq ] ; 2 uses
  %.sroa.0270.0344 = phi ptr [ %i.ee, %.lr.ph ], [ %i.st, %bb.dq ] ; 16 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0270.0344, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0270.0344, i64 64
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0270.0344, i64 96 ; 6 uses
  %i.fl = call noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.fk)
  br i1 %i.fl, label %bb.af, label %bb.dq

bb.af:                                            ; preds = %bb.ae
  br i1 %i.c, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.fm = call noundef zeroext i1 @_ZN10cmFileTime4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.fk) ; 0 uses
  %.sroa.031.0.copyload = load i64, ptr %8, align 8, !tbaa !129
  %i.fn = load i64, ptr %13, align 8, !tbaa !126
  %.not280 = icmp slt i64 %i.fn, %.sroa.031.0.copyload
  br i1 %.not280, label %bb.dq, label %.critedge

.critedge:                                        ; preds = %bb.af, %bb.ag
  %i.fo = load i8, ptr %0, align 8, !tbaa !130, !range !57, !noundef !58
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !131
  store i64 19, ptr %7, align 8, !tbaa !49, !alias.scope !132, !noalias !131
  store ptr @.str, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !59, !alias.scope !132, !noalias !131
  store ptr null, ptr %i.eh, align 8, !tbaa !134, !alias.scope !132, !noalias !131
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !20, !noalias !131
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0270.0344, i64 104
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !32, !noalias !131
  store i64 %i.fs, ptr %i.ei, align 8, !tbaa !49, !alias.scope !135, !noalias !131
  store ptr %i.fq, ptr %.sroa.4.0..sroa_idx.i12.i, align 8, !tbaa !59, !alias.scope !135, !noalias !131
  store ptr null, ptr %i.ej, align 8, !tbaa !134, !alias.scope !135, !noalias !131
  store i64 30, ptr %i.ek, align 8, !tbaa !49, !alias.scope !136, !noalias !131
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx.i20.i, align 8, !tbaa !59, !alias.scope !136, !noalias !131
  store ptr null, ptr %i.el, align 8, !tbaa !134, !alias.scope !136, !noalias !131
  %i.ft = load ptr, ptr %1, align 8, !tbaa !20, !noalias !131
  %i.fu = load i64, ptr %i.en, align 8, !tbaa !32, !noalias !131
  store i64 %i.fu, ptr %i.em, align 8, !tbaa !49, !alias.scope !137, !noalias !131
  store ptr %i.ft, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !tbaa !59, !alias.scope !137, !noalias !131
  store ptr null, ptr %i.eo, align 8, !tbaa !134, !alias.scope !137, !noalias !131
  store i64 3, ptr %i.ep, align 8, !tbaa !49, !alias.scope !138, !noalias !131
  store ptr @.str.3, ptr %.sroa.4.0..sroa_idx.i36.i, align 8, !tbaa !59, !alias.scope !138, !noalias !131
  store ptr null, ptr %i.eq, align 8, !tbaa !134, !alias.scope !138, !noalias !131
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull %7, i64 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !131
  invoke void @_ZN13cmSystemTools6StdoutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fv = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.er
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.ai
  %i.fx = load i64, ptr %i.er, align 8, !tbaa !33
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.er
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.aj
  %i.gc = load i64, ptr %i.er, align 8, !tbaa !33
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.dr

bb.ak:                                            ; preds = %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.ge = load ptr, ptr %i.fj, align 8, !tbaa !20 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0270.0344, i64 72
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !32
  switch i64 %i.gg, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250 [
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i182
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i205
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.ak
  %i.gh = load i32, ptr %i.ge, align 1
  %i.gi = xor i32 %i.gh, 1953723747
  %i.gj = getelementptr i8, ptr %i.ge, i64 4
  %i.gk = load i16, ptr %i.gj, align 1
  %i.gl = zext i16 %i.gk to i32
  %i.gm = xor i32 %i.gl, 28015
  %i.gn = or i32 %i.gi, %i.gm
  %i.go = icmp ne i32 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.gr = load ptr, ptr %i.fk, align 8, !tbaa !20
  %i.gs = load ptr, ptr %i.es, align 8, !tbaa !61
  %i.gt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16cmLocalGenerator25GetCurrentBinaryDirectoryB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(816) %i.gs)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  invoke void @_Z16cmReadGccDepfilePKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE22GccDepfilePrependPaths(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %16, ptr noundef %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i32 noundef 0)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gu = load i8, ptr %i.fc, align 8, !tbaa !63, !range !57, !noundef !58
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.an, label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit179

bb.an:                                            ; preds = %bb.am
  %i.gw = load ptr, ptr %16, align 8, !tbaa !139  ; 3 uses
  %i.gx = load ptr, ptr %i.fd, align 8, !tbaa !139 ; 3 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.bk, label %.preheader

bb.ao:                                            ; preds = %bb.al, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.critedge121:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit176
  %i.ha = load i8, ptr %i.fc, align 8, !tbaa !63, !range !57, !noundef !58
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.ap, label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit

bb.ap:                                            ; preds = %.critedge121
  store i8 0, ptr %i.fc, align 8, !tbaa !63
  %i.hc = load ptr, ptr %16, align 8, !tbaa !66
  %i.hd = load ptr, ptr %i.fd, align 8, !tbaa !67
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP20cmGccStyleDependencyEEvT_S4_(ptr noundef %i.hc, ptr noundef %i.hd)
          to label %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i unwind label %bb.ar

_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.ap
  %i.he = load ptr, ptr %16, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i
  %i.hf = load ptr, ptr %i.fh, align 8, !tbaa !68
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.he to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hi) #24
  br label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #23
  unreachable

_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit: ; preds = %.critedge121, %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250

.preheader:                                       ; preds = %bb.an, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit176
  %.sroa.0263.0342 = phi ptr [ %i.ks, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit176 ], [ %i.gw, %bb.an ] ; 7 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0263.0342, i64 24 ; 2 uses
  %i.hm = load ptr, ptr %15, align 16, !tbaa !69  ; 5 uses
  %i.hn = load ptr, ptr %i.ev, align 8, !tbaa !52 ; 2 uses
  %i.ho = load ptr, ptr %i.ew, align 16, !tbaa !53
  %i.hp = load <2 x ptr>, ptr %i.hl, align 8, !tbaa !54
  store <2 x ptr> %i.hp, ptr %15, align 16, !tbaa !54
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0263.0342, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !53
  store ptr %i.hr, ptr %i.ew, align 16, !tbaa !53
  %.not4.i.i.i.i.i = icmp eq ptr %i.hm, %i.hn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.hx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.hm, %.preheader ] ; 3 uses
  %i.hs = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !33
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hx, %i.hn
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %.preheader
  %.not.i.i1.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.hy = ptrtoint ptr %i.ho to i64
  %i.hz = ptrtoint ptr %i.hm to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.ia) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.as
  %i.ib = load ptr, ptr %i.ex, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.not, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  %i.ic = invoke noundef zeroext i1 %i.ib(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.ax unwind label %bb.au     ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = load ptr, ptr %i.fe, align 8, !tbaa !71 ; 2 uses
  %.not.i.i161 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i161, label %_ZNSt14_Function_baseD2Ev.exit164, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.if = invoke noundef zeroext i1 %i.ie(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit164 unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #23
  unreachable

bb.ax:                                            ; preds = %bb.at
  %i.ii = load <2 x ptr>, ptr %i.ex, align 8, !tbaa !72
  store <2 x ptr> %i.ii, ptr %i.fe, align 8, !tbaa !72
  invoke void @_ZN2cm8erase_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ESt8functionIFbRKS6_EEEEvRSt6vectorIT_T0_ET1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 %17)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.ij = load ptr, ptr %i.fe, align 8, !tbaa !71 ; 2 uses
  %.not.i162 = icmp eq ptr %i.ij, null
  br i1 %.not.i162, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ik = invoke noundef zeroext i1 %i.ij(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ba ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #23
  unreachable

bb.bb:                                            ; preds = %bb.ax
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %i.fe, align 8, !tbaa !71 ; 2 uses
  %.not.i163 = icmp eq ptr %i.io, null
  br i1 %.not.i163, label %_ZNSt14_Function_baseD2Ev.exit164, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ip = invoke noundef zeroext i1 %i.io(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit164 unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.az, %bb.ay, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0263.0342, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !52
  %i.iu = load ptr, ptr %.sroa.0263.0342, align 8, !tbaa !69
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = ashr exact i64 %i.ix, 5
  %.0101501 = add nsw i64 %i.iy, -1               ; 2 uses
  %.not502 = icmp eq i64 %.0101501, 0
  %i.iz = load ptr, ptr %.sroa.0263.0342, align 8, !tbaa !54 ; 2 uses
  br i1 %.not502, label %._crit_edge, label %.lr.ph504

bb.be:                                            ; preds = %bb.bh
  %.0101 = add i64 %.0101503, -1                  ; 2 uses
  %.not = icmp eq i64 %.0101, 0
  %i.ja = load ptr, ptr %.sroa.0263.0342, align 8, !tbaa !54 ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph504, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.be, %_ZNSt14_Function_baseD2Ev.exit
  %.lcssa = phi ptr [ %i.iz, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.ja, %bb.be ]
  %i.jb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %.lcssa)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.lr.ph504:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.be
  %i.jc = phi ptr [ %i.ja, %bb.be ], [ %i.iz, %_ZNSt14_Function_baseD2Ev.exit ]
  %.0101503 = phi i64 [ %.0101, %bb.be ], [ %.0101501, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %i.jd = getelementptr inbounds nuw [32 x i8], ptr %i.jc, i64 %.0101503 ; 3 uses
  %i.je = load ptr, ptr %i.ff, align 8, !tbaa !77 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph504
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !32 ; 4 uses
  %i.jh = load ptr, ptr %i.jd, align 8            ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.je, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.fg, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !32 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.jg, i64 %i.jj) ; 2 uses
  %i.jk = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.jk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.bf
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !20
  %i.jn = call i32 @memcmp(ptr noundef %i.jm, ptr noundef %i.jh, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i165 = icmp eq i32 %i.jn, 0
  br i1 %.not.i.i.i.i.i.i.i165, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.bf
  %i.jo = sub i64 %i.jj, %i.jg
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.jo, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
end_hunk_0
begin_hunk_1_@_ZN17cmDependsCompiler17CheckDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EERSt3mapIS5_SA_St4lessIS5_ESaISt4pairIS6_SA_EEERKSt8functionIFbS7_EE:bb.a

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store ptr %i.ez, ptr %19, align 8, !tbaa !31
  store i64 0, ptr %i.fa, align 8, !tbaa !32
  store i8 0, ptr %i.ez, align 8, !tbaa !33
  %i.ln = load ptr, ptr %i.ex, align 8, !tbaa !71
  %.not.i.i186.not = icmp eq ptr %i.ln, null
  br i1 %.not.i.i186.not, label %bb.br, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.preheader

bb.br:                                            ; preds = %bb.bq
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0270.0344, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !32 ; 5 uses
  %i.lq = icmp eq i64 %i.lp, 0
  br i1 %i.lq, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.preheader, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lr = load ptr, ptr %i.ev, align 8, !tbaa !52 ; 8 uses
  %i.ls = load ptr, ptr %i.ew, align 16, !tbaa !53
  %.not.i187 = icmp eq ptr %i.lr, %i.ls
  br i1 %.not.i187, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 16 ; 4 uses
  store ptr %i.lt, ptr %i.lr, align 8, !tbaa !31
  %i.lu = load ptr, ptr %.sroa.0270.0344, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.lp, ptr %i.a, align 8, !tbaa !49
  %i.lv = icmp ugt i64 %i.lp, 15
  br i1 %i.lv, label %.noexc.i.i, label %._crit_edge.i.i.i188

.noexc.i.i:                                       ; preds = %bb.bt
  %i.lw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.i188.thread unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp ; 2 uses

._crit_edge.i.i.i188.thread:                      ; preds = %.noexc.i.i
  store ptr %i.lw, ptr %i.lr, align 8, !tbaa !20
  %i.lx = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.lx, ptr %i.lt, align 8, !tbaa !33
  br label %bb.bv

._crit_edge.i.i.i188:                             ; preds = %bb.bt
  %cond = icmp eq i64 %i.lp, 1
  br i1 %cond, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i.i188
  %i.ly = load i8, ptr %i.lu, align 1, !tbaa !33
  store i8 %i.ly, ptr %i.lt, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bv:                                            ; preds = %._crit_edge.i.i.i188.thread, %._crit_edge.i.i.i188
  %i.lz = phi ptr [ %i.lw, %._crit_edge.i.i.i188.thread ], [ %i.lt, %._crit_edge.i.i.i188 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lz, ptr align 1 %i.lu, i64 %i.lp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bv, %bb.bu
  %i.ma = load i64, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i64 %i.ma, ptr %i.mb, align 8, !tbaa !32
  %i.mc = load ptr, ptr %i.lr, align 8, !tbaa !20
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ma
  store i8 0, ptr %i.md, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.me = load ptr, ptr %i.ev, align 8, !tbaa !52
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.sink.split

bb.bw:                                            ; preds = %bb.bs
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0270.0344)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.preheader unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %.noexc.i.i, %bb.bw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.mf = load ptr, ptr %19, align 8, !tbaa !20   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.ez
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp
  %i.mh = load i64, ptr %i.ez, align 8, !tbaa !33
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %18) #21
  br label %bb.cd

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i196
  %.sink505 = phi ptr [ %i.ml, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i196 ], [ %i.me, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.sink505, i64 32
  store ptr %i.mj, ptr %i.ev, align 8, !tbaa !52
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.preheader

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.preheader: ; preds = %bb.bw, %bb.br, %bb.bq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.sink.split
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.preheader, %bb.cb
  %i.mk = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools17GetLineFromStreamERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbm(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef null, i64 noundef -1)
          to label %bb.bx unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  br i1 %i.mk, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %i.ml = load ptr, ptr %i.ev, align 8, !tbaa !52 ; 7 uses
  %i.mm = load ptr, ptr %i.ew, align 16, !tbaa !53
  %.not.i194 = icmp eq ptr %i.ml, %i.mm
  br i1 %.not.i194, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 16 ; 3 uses
  store ptr %i.mn, ptr %i.ml, align 8, !tbaa !31
  %i.mo = load ptr, ptr %19, align 8, !tbaa !20   ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.ez
  br i1 %i.mp, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

bb.ca:                                            ; preds = %bb.bz
  %i.mq = load i64, ptr %i.fa, align 8, !tbaa !32 ; 3 uses
  %i.mr = icmp ult i64 %i.mq, 16
  call void @llvm.assume(i1 %i.mr)
  %i.ms = add nuw nsw i64 %i.mq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mn, ptr noundef nonnull align 8 dereferenceable(1) %i.ez, i64 %i.ms, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %bb.bz
  store ptr %i.mo, ptr %i.ml, align 8, !tbaa !20
  %i.mt = load i64, ptr %i.ez, align 8, !tbaa !33
  store i64 %i.mt, ptr %i.mn, align 8, !tbaa !33
  %.pre364 = load i64, ptr %i.fa, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i196: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195, %bb.ca
  %i.mu = phi i64 [ %.pre364, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ], [ %i.mq, %bb.ca ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !32
  store ptr %i.ez, ptr %19, align 8, !tbaa !20
  store i64 0, ptr %i.fa, align 8, !tbaa !32
  store i8 0, ptr %i.ez, align 8, !tbaa !33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.sink.split

bb.cb:                                            ; preds = %bb.by
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.ml, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.bx
  %i.mw = load ptr, ptr %19, align 8, !tbaa !20   ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.ez
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.cc
  %i.my = load i64, ptr %i.ez, align 8, !tbaa !33
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.cv

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %bb.bp
  %.pn104.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %i.lm, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.body234

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i205: ; preds = %bb.ak
  %i.na = load i16, ptr %i.ge, align 1
  %i.nb = xor i16 %i.na, 25447
  %i.nc = getelementptr i8, ptr %i.ge, i64 2
  %i.nd = load i8, ptr %i.nc, align 1
  %i.ne = zext i8 %i.nd to i16
  %i.nf = xor i16 %i.ne, 99
  %i.ng = or i16 %i.nb, %i.nf
  %i.nh = icmp ne i16 %i.ng, 0
  %i.ni = zext i1 %i.nh to i32
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit208, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit208: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i205
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.nk = load ptr, ptr %i.fk, align 8, !tbaa !20
  %i.nl = load ptr, ptr %i.es, align 8, !tbaa !61
  %i.nm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16cmLocalGenerator25GetCurrentBinaryDirectoryB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(816) %i.nl)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit208
  invoke void @_Z16cmReadGccDepfilePKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE22GccDepfilePrependPaths(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %20, ptr noundef %i.nk, ptr noundef nonnull align 8 dereferenceable(32) %i.nm, i32 noundef 1)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.nn = load i8, ptr %i.et, align 8, !tbaa !63, !range !57, !noundef !58
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.cg, label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit253

bb.cg:                                            ; preds = %bb.cf
  %i.np = load ptr, ptr %20, align 8, !tbaa !139  ; 3 uses
  %i.nq = load ptr, ptr %i.eu, align 8, !tbaa !139
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %bb.dm, label %bb.ci

bb.ch:                                            ; preds = %bb.ce, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit208
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ci:                                            ; preds = %bb.cg
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 24 ; 2 uses
  %i.nu = load ptr, ptr %15, align 16, !tbaa !69  ; 5 uses
  %i.nv = load ptr, ptr %i.ev, align 8, !tbaa !52 ; 2 uses
  %i.nw = load ptr, ptr %i.ew, align 16, !tbaa !53
  %i.nx = load <2 x ptr>, ptr %i.nt, align 8, !tbaa !54
  store <2 x ptr> %i.nx, ptr %15, align 16, !tbaa !54
  %i.ny = getelementptr inbounds nuw i8, ptr %i.np, i64 40
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !53
  store ptr %i.nz, ptr %i.ew, align 16, !tbaa !53
  %.not4.i.i.i.i.i209 = icmp eq ptr %i.nu, %i.nv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nt, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i209, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i215, label %.lr.ph.i.i.i.i.i210

.lr.ph.i.i.i.i.i210:                              ; preds = %bb.ci, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i213
  %.05.i.i.i.i.i211 = phi ptr [ %i.of, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i213 ], [ %i.nu, %bb.ci ] ; 3 uses
  %i.oa = load ptr, ptr %.05.i.i.i.i.i211, align 8, !tbaa !20 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i211, i64 16 ; 2 uses
  %i.oc = icmp eq ptr %i.oa, %i.ob
  br i1 %i.oc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i212: ; preds = %.lr.ph.i.i.i.i.i210
  %i.od = load i64, ptr %i.ob, align 8, !tbaa !33
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.oe) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i213

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i213: ; preds = %.lr.ph.i.i.i.i.i210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i212
  %i.of = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i211, i64 32 ; 2 uses
  %.not.i.i.i.i.i214 = icmp eq ptr %i.of, %i.nv
  br i1 %.not.i.i.i.i.i214, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i215, label %.lr.ph.i.i.i.i.i210, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i215: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i213, %bb.ci
  %.not.i.i1.i.i.i216 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i1.i.i.i216, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit218, label %bb.cj

bb.cj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i215
  %i.og = ptrtoint ptr %i.nw to i64
  %i.oh = ptrtoint ptr %i.nu to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %i.nu, i64 noundef %i.oi) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit218

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit218: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i215, %bb.cj
  %i.oj = load ptr, ptr %15, align 16, !tbaa !54  ; 4 uses
  %i.ok = load ptr, ptr %i.ev, align 8, !tbaa !54
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %.critedge125, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit218
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.on = load i64, ptr %i.om, align 8, !tbaa !32 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.0270.0344, i64 40
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !32
  %i.oq = icmp eq i64 %i.on, %i.op
  br i1 %i.oq, label %bb.cl, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

bb.cl:                                            ; preds = %bb.ck
  %i.or = icmp eq i64 %i.on, 0
  br i1 %i.or, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.cl
  %i.os = load ptr, ptr %i.fi, align 8, !tbaa !20
  %i.ot = load ptr, ptr %i.oj, align 8, !tbaa !20
  %bcmp.i219 = call i32 @bcmp(ptr %i.ot, ptr %i.os, i64 %i.on)
  %i.ou = icmp eq i32 %bcmp.i219, 0
  br i1 %i.ou, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.cl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ov = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr nonnull %i.oj)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit unwind label %bb.cq ; 0 uses

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %bb.ck, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.0270.0344, i64 8
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !32 ; 3 uses
  %i.oy = icmp eq i64 %i.ox, 0
  br i1 %i.oy, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit226, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.oz = load ptr, ptr %15, align 16, !tbaa !54  ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !32
  %i.pc = icmp eq i64 %i.pb, %i.ox
  br i1 %i.pc, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.cm
  %i.pd = load ptr, ptr %.sroa.0270.0344, align 8, !tbaa !20
  %i.pe = load ptr, ptr %i.oz, align 8, !tbaa !20
  %bcmp.i.i = call i32 @bcmp(ptr %i.pe, ptr %i.pd, i64 %i.ox)
  %.not281 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not281, label %bb.co, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.cm, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.pf = load ptr, ptr %i.ev, align 8, !tbaa !54
  %i.pg = invoke ptr @_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_(ptr nonnull %i.oz, ptr %i.pf, ptr nonnull align 8 dereferenceable(32) %.sroa.0270.0344)
          to label %.noexc221 unwind label %bb.cq

.noexc221:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ph = load ptr, ptr %i.ev, align 8, !tbaa !54
  %i.pi = load ptr, ptr %15, align 16, !tbaa !54  ; 3 uses
  %i.pj = ptrtoint ptr %i.pg to i64
  %i.pk = ptrtoint ptr %i.pi to i64               ; 2 uses
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = getelementptr inbounds i8, ptr %i.pi, i64 %i.pl
  %i.pn = ptrtoint ptr %i.ph to i64
  %i.po = sub i64 %i.pn, %i.pk
  %i.pp = getelementptr inbounds i8, ptr %i.pi, i64 %i.po
  %i.pq = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.pm, ptr %i.pp)
          to label %_ZN2cm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ES6_EEvRSt6vectorIT_T0_ERKT1_.exit unwind label %bb.cq ; 0 uses

_ZN2cm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ES6_EEvRSt6vectorIT_T0_ERKT1_.exit: ; preds = %.noexc221
  %i.pr = load ptr, ptr %i.ex, align 8, !tbaa !71
  %.not.i.i223.not = icmp eq ptr %i.pr, null
  br i1 %.not.i.i223.not, label %bb.cn, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit226

bb.cn:                                            ; preds = %_ZN2cm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ES6_EEvRSt6vectorIT_T0_ERKT1_.exit
  %i.ps = load ptr, ptr %15, align 16, !tbaa !54
  %i.pt = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.ps, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0270.0344)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit226 unwind label %bb.cq ; 0 uses

bb.co:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.pu = load ptr, ptr %i.ex, align 8, !tbaa !71
  %.not.i.i224.not = icmp eq ptr %i.pu, null
  br i1 %.not.i.i224.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit226, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pv = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr nonnull %i.oz)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit226 unwind label %bb.cq ; 0 uses

bb.cq:                                            ; preds = %bb.cn, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %.noexc221, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.cp
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %20) #21
  br label %bb.cu

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit226: ; preds = %bb.cp, %bb.cn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, %bb.co, %_ZN2cm5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ES6_EEvRSt6vectorIT_T0_ERKT1_.exit
  %i.px = load i8, ptr %i.et, align 8, !tbaa !63, !range !57, !noundef !58
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %bb.cr, label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit229

bb.cr:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit226
  store i8 0, ptr %i.et, align 8, !tbaa !63
  %i.pz = load ptr, ptr %20, align 8, !tbaa !66
  %i.qa = load ptr, ptr %i.eu, align 8, !tbaa !67
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP20cmGccStyleDependencyEEvT_S4_(ptr noundef %i.pz, ptr noundef %i.qa)
          to label %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i227 unwind label %bb.ct

_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i227: ; preds = %bb.cr
  %i.qb = load ptr, ptr %20, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i.i.i.i.i228 = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i.i.i.i.i228, label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit229, label %bb.cs

bb.cs:                                            ; preds = %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i227
  %i.qc = load ptr, ptr %i.ey, align 8, !tbaa !68
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = ptrtoint ptr %i.qb to i64
  %i.qf = sub i64 %i.qd, %i.qe
  call void @_ZdlPvm(ptr noundef nonnull %i.qb, i64 noundef %i.qf) #24
  br label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit229

bb.ct:                                            ; preds = %bb.cr
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  %i.qh = extractvalue { ptr, i32 } %i.qg, 0
  call void @__clang_call_terminate(ptr %i.qh) #23
  unreachable

_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit229: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit226, %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i227, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cq, %bb.ch
  %.pn.pn = phi { ptr, i32 } [ %i.pw, %bb.cq ], [ %i.ns, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %.body234

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit229
  %i.qi = load ptr, ptr %i.ex, align 8, !tbaa !71 ; 2 uses
  %.not.i.i230.not = icmp eq ptr %i.qi, null
  br i1 %.not.i.i230.not, label %bb.dj, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, i8 0, i64 32, i1 false)
  %i.qj = invoke noundef zeroext i1 %i.qi(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.da unwind label %bb.cx     ; 0 uses

bb.cx:                                            ; preds = %bb.cw
  %i.qk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ql = load ptr, ptr %i.fb, align 8, !tbaa !71 ; 2 uses
  %.not.i.i232 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i232, label %.body234, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qm = invoke noundef zeroext i1 %i.ql(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3)
          to label %.body234 unwind label %bb.cz  ; 0 uses

bb.cz:                                            ; preds = %bb.cy
  %i.qn = landingpad { ptr, i32 }
          catch ptr null
  %i.qo = extractvalue { ptr, i32 } %i.qn, 0
  call void @__clang_call_terminate(ptr %i.qo) #23
  unreachable

bb.da:                                            ; preds = %bb.cw
  %i.qp = load <2 x ptr>, ptr %i.ex, align 8, !tbaa !72
  store <2 x ptr> %i.qp, ptr %i.fb, align 8, !tbaa !72
  invoke void @_ZN2cm8erase_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ESt8functionIFbRKS6_EEEEvRSt6vectorIT_T0_ET1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 %21)
          to label %bb.db unwind label %bb.df

bb.db:                                            ; preds = %bb.da
  %i.qq = load ptr, ptr %i.fb, align 8, !tbaa !71 ; 2 uses
  %.not.i237 = icmp eq ptr %i.qq, null
  br i1 %.not.i237, label %_ZNSt14_Function_baseD2Ev.exit238, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qr = invoke noundef zeroext i1 %i.qq(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit238 unwind label %bb.dd ; 0 uses

bb.dd:                                            ; preds = %bb.dc
  %i.qs = landingpad { ptr, i32 }
          catch ptr null
  %i.qt = extractvalue { ptr, i32 } %i.qs, 0
  call void @__clang_call_terminate(ptr %i.qt) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit238:                ; preds = %bb.db, %bb.dc
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0270.0344, i64 8
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !32
  %i.qw = icmp eq i64 %i.qv, 0
  br i1 %i.qw, label %bb.dj, label %bb.de

bb.de:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit238
  %i.qx = load ptr, ptr %15, align 16, !tbaa !54
  %i.qy = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.qx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0270.0344)
          to label %bb.dj unwind label %bb.di     ; 0 uses

bb.df:                                            ; preds = %bb.da
  %i.qz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ra = load ptr, ptr %i.fb, align 8, !tbaa !71 ; 2 uses
  %.not.i239 = icmp eq ptr %i.ra, null
  br i1 %.not.i239, label %.body234, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.rb = invoke noundef zeroext i1 %i.ra(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3)
          to label %.body234 unwind label %bb.dh  ; 0 uses

bb.dh:                                            ; preds = %bb.dg
  %i.rc = landingpad { ptr, i32 }
          catch ptr null
  %i.rd = extractvalue { ptr, i32 } %i.rc, 0
  call void @__clang_call_terminate(ptr %i.rd) #23
  unreachable

bb.di:                                            ; preds = %bb.dj, %bb.de
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %.body234

bb.dj:                                            ; preds = %bb.de, %_ZNSt14_Function_baseD2Ev.exit238, %bb.cv
  %i.rf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.fi)
          to label %bb.dk unwind label %bb.di     ; 4 uses

bb.dk:                                            ; preds = %bb.dj
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !69 ; 5 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !52 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 16 ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !53
  %i.rl = load <2 x ptr>, ptr %15, align 16, !tbaa !54
  store <2 x ptr> %i.rl, ptr %i.rf, align 8, !tbaa !54
  %i.rm = load ptr, ptr %i.ew, align 16, !tbaa !53
  store ptr %i.rm, ptr %i.rj, align 8, !tbaa !53
  %.not4.i.i.i.i.i241 = icmp eq ptr %i.rg, %i.ri
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i241, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i247, label %.lr.ph.i.i.i.i.i242

.lr.ph.i.i.i.i.i242:                              ; preds = %bb.dk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i245
  %.05.i.i.i.i.i243 = phi ptr [ %i.rs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i245 ], [ %i.rg, %bb.dk ] ; 3 uses
  %i.rn = load ptr, ptr %.05.i.i.i.i.i243, align 8, !tbaa !20 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i243, i64 16 ; 2 uses
  %i.rp = icmp eq ptr %i.rn, %i.ro
  br i1 %i.rp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i244: ; preds = %.lr.ph.i.i.i.i.i242
  %i.rq = load i64, ptr %i.ro, align 8, !tbaa !33
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rr) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i245

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i245: ; preds = %.lr.ph.i.i.i.i.i242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i244
  %i.rs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i243, i64 32 ; 2 uses
  %.not.i.i.i.i.i246 = icmp eq ptr %i.rs, %i.ri
  br i1 %.not.i.i.i.i.i246, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i247, label %.lr.ph.i.i.i.i.i242, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i247: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i245, %bb.dk
  %.not.i.i1.i.i.i248 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i1.i.i.i248, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250, label %bb.dl

bb.dl:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i247
  %i.rt = ptrtoint ptr %i.rk to i64
  %i.ru = ptrtoint ptr %i.rg to i64
  %i.rv = sub i64 %i.rt, %i.ru
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef %i.rv) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250

.critedge123:                                     ; preds = %bb.bo
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250

.critedge125:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit218
  %.pre = load i8, ptr %i.et, align 8, !tbaa !63, !range !57
  %i.rw = trunc nuw i8 %.pre to i1
  br i1 %i.rw, label %bb.dm, label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit253

bb.dm:                                            ; preds = %bb.cg, %.critedge125
  store i8 0, ptr %i.et, align 8, !tbaa !63
  %i.rx = load ptr, ptr %20, align 8, !tbaa !66
  %i.ry = load ptr, ptr %i.eu, align 8, !tbaa !67
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP20cmGccStyleDependencyEEvT_S4_(ptr noundef %i.rx, ptr noundef %i.ry)
          to label %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i251 unwind label %bb.do

_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i251: ; preds = %bb.dm
  %i.rz = load ptr, ptr %20, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i.i.i.i.i252 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i.i.i.i.i.i252, label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit253, label %bb.dn

bb.dn:                                            ; preds = %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i251
  %i.sa = load ptr, ptr %i.ey, align 8, !tbaa !68
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = ptrtoint ptr %i.rz to i64
  %i.sd = sub i64 %i.sb, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %i.rz, i64 noundef %i.sd) #24
  br label %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit253

bb.do:                                            ; preds = %bb.dm
  %i.se = landingpad { ptr, i32 }
          catch ptr null
  %i.sf = extractvalue { ptr, i32 } %i.se, 0
  call void @__clang_call_terminate(ptr %i.sf) #23
  unreachable

_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit253: ; preds = %bb.cf, %.critedge125, %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i251, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250: ; preds = %bb.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i182, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i205, %bb.dl, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i247, %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit, %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit253, %.critedge123, %_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev.exit179
  %i.sg = load ptr, ptr %15, align 16, !tbaa !69  ; 3 uses
  %i.sh = load ptr, ptr %i.ev, align 8, !tbaa !52 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.sg, %i.sh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.sn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.sg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250 ] ; 3 uses
  %i.si = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.sk = icmp eq ptr %i.si, %i.sj
  br i1 %i.sk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.sl = load i64, ptr %i.sj, align 8, !tbaa !33
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sm) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.sn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %i.sn, %i.sh
  br i1 %.not.i.i.i254, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %15, align 16, !tbaa !69
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250
  %i.so = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.sg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit250 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.so, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.sp = load ptr, ptr %i.ew, align 16, !tbaa !53
  %i.sq = ptrtoint ptr %i.sp to i64
  %i.sr = ptrtoint ptr %i.so to i64
  %i.ss = sub i64 %i.sq, %i.sr
  call void @_ZdlPvm(ptr noundef nonnull %i.so, i64 noundef %i.ss) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.dq

.body234:                                         ; preds = %bb.dg, %bb.df, %bb.cy, %bb.cx, %bb.di, %bb.cu, %bb.cd, %bb.bn
  %.pn107.pn.pn = phi { ptr, i32 } [ %.pn107.pn, %bb.bn ], [ %.pn.pn, %bb.cu ], [ %i.re, %bb.di ], [ %i.qk, %bb.cx ], [ %.pn104.pn, %bb.cd ], [ %i.qz, %bb.dg ], [ %i.qk, %bb.cy ], [ %i.qz, %bb.df ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.dr

bb.dq:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.ag, %bb.ae
  %.2 = phi i1 [ %.0345, %bb.ae ], [ %.0345, %bb.ag ], [ false, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0270.0344, i64 128 ; 2 uses
  %i.su = load ptr, ptr %i.ef, align 8, !tbaa !54
  %.not279 = icmp eq ptr %i.st, %i.su
  br i1 %.not279, label %._crit_edge347, label %bb.ae, !llvm.loop !123

bb.dr:                                            ; preds = %.body234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn, %.body234 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %.pn116.pn.pn = phi { ptr, i32 } [ %.pn116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %.pn107.pn.pn.pn, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn116.pn.pn
}

declare noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN10cmFileTime4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #4 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.330", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.333", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !1

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #21 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %1, ptr %2, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
end_hunk_1
begin_hunk_2_@_ZN2cm8erase_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ESt8functionIFbRKS6_EEEEvRSt6vectorIT_T0_ET1_:bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !71  ; 2 uses
  %.not.i9 = icmp eq ptr %i.ad, null
  br i1 %.not.i9, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !69     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = load ptr, ptr %0, align 8, !tbaa !69     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !33
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !69
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.c
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !53
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ah, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.g, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !140

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !54
  %.pre45 = ptrtoint ptr %i.ak to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.f
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.l, %bb.f ]
  %i.an = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.af, %bb.f ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.j, %bb.f ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.an
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit
  %i.ao = sub i64 %.pre-phi46, %i.l
  %i.ap = getelementptr inbounds i8, ptr %i.j, i64 %i.ao
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28 ], [ %i.ap, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !20 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26, !llvm.loop !141

bb.g:                                             ; preds = %bb.e
  %i.aw = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i32 ], [ %i.aw, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i32 ], [ %i.j, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i32 ], [ %i.c, %bb.g ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i35)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 32
  %i.ba = add nsw i64 %.012.i.i.i.i.i33, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i33, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !142

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i32
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !69
  %.pre37 = load ptr, ptr %i.ae, align 8, !tbaa !52 ; 2 uses
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !69
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !52
  %.pre40 = ptrtoint ptr %.pre37 to i64
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre43 = sub i64 %.pre40, %.pre41
  br label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, %bb.g
  %.pre-phi44 = phi i64 [ %.pre43, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.ah, %bb.g ]
  %i.bc = phi ptr [ %.pre39, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.b, %bb.g ]
  %i.bd = phi ptr [ %.pre37, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.af, %bb.g ]
  %i.be = phi ptr [ %.pre36, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.c, %bb.g ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.pre-phi44
  %i.bg = tail call noundef ptr @_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_(ptr noundef %i.bf, ptr noundef %i.bc, ptr noundef %i.bd) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63, !range !57, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !63
  %i.d = load ptr, ptr %0, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP20cmGccStyleDependencyEEvT_S4_(ptr noundef %i.d, ptr noundef %i.f)
          to label %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i unwind label %bb.d

_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !66     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt17_Optional_payloadISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #24
  br label %_ZNSt17_Optional_payloadISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23
  unreachable

_ZNSt17_Optional_payloadISt6vectorI20cmGccStyleDependencySaIS1_EELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIP20cmGccStyleDependencyS0_EvT_S2_RSaIT0_E.exit.i.i.i.i, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZN5cmsys11SystemTools17GetLineFromStreamERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", align 8 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %.not = icmp eq ptr %i.h, %i.j
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.k = icmp eq ptr %1, %i.h
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !31
  %i.m = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.o, ptr %i.b, align 8, !tbaa !49
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %i.h, align 8, !tbaa !20
  %i.r = load i64, ptr %i.b, align 8, !tbaa !49
  store i64 %i.r, ptr %i.l, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc.i ], [ %i.l, %bb.c ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.m, align 1, !tbaa !33
  store i8 %i.t, ptr %i.s, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.u = load i64, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !32
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.z, ptr %i.g, align 8, !tbaa !52
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !145
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !31
  %i.ad = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.af, ptr %i.a, align 8, !tbaa !49
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !20
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.f
  %i.aj = phi ptr [ %i.ah, %.noexc.i.i ], [ %i.ac, %bb.f ] ; 2 uses
  switch i64 %i.af, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !33
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.al = load i64, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.al, ptr %i.am, align 8, !tbaa !32
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ac
  br i1 %i.aq, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.ar = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ac
  br i1 %i.av, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.j
  %i.aw = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit10

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit10: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.at

bb.k:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueD2Ev.exit, %bb.k
  %i.az = load ptr, ptr %0, align 8, !tbaa !69
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.f
  ret ptr %i.ba
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
end_hunk_2
