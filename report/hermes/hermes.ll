inline.NumInlined: 5074
inline.NumDeleted: 2523
begin_hunk_0_@_ZN8facebook6hermes13HermesRootAPI20getExecutedFunctionsB5cxx11Ev:bb.a
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.h, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #47
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !16
  store i32 24, ptr %i.ao, align 8, !tbaa !108
  store ptr %i.t, ptr %i.n, align 8, !tbaa !112
  store i64 0, ptr %i.u, align 8, !tbaa !26
  store i8 0, ptr %i.t, align 8, !tbaa !50
  %i.bx = load ptr, ptr %2, align 8, !tbaa !16
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %2, i64 %i.bz
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ca, ptr noundef nonnull %i.s)
          to label %.noexc unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.s) #47
  store ptr %i.w, ptr %2, align 8, !tbaa !16
  %i.cd = load i64, ptr %i.y, align 8
  %i.ce = getelementptr inbounds i8, ptr %2, i64 %i.cd
  store ptr %i.x, ptr %i.ce, align 8, !tbaa !16
  store i64 0, ptr %i.z, align 8, !tbaa !106
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.g, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %i.cc, %bb.h ], [ %i.cb, %bb.g ], [ %i.bs, %bb.e ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aa) #47
  br label %.body

.noexc:                                           ; preds = %bb.f
  %i.cf = load i32, ptr %.sroa.06.013.i, align 8, !tbaa !113, !noalias !86
  %i.cg = zext i32 %i.cf to i64
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.cg)
          to label %_ZNSolsEj.exit.i.i unwind label %bb.l, !noalias !86 ; 0 uses

_ZNSolsEj.exit.i.i:                               ; preds = %.noexc
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.l, !noalias !86 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %_ZNSolsEj.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !115, !noalias !86
  %i.cl = zext i32 %i.ck to i64
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.cl)
          to label %_ZNSolsEj.exit4.i.i unwind label %bb.l, !noalias !86 ; 0 uses

_ZNSolsEj.exit4.i.i:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5.i.i unwind label %bb.l, !noalias !86 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5.i.i: ; preds = %_ZNSolsEj.exit4.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22, !noalias !86
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !26, !noalias !86
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.cp, i64 noundef %i.cr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.l, !noalias !86 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  store ptr %i.i, ptr %3, align 8, !tbaa !112, !alias.scope !122
  store i64 0, ptr %i.j, align 8, !tbaa !26, !alias.scope !122
  store i8 0, ptr %i.i, align 8, !tbaa !50, !alias.scope !122
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !123, !noalias !122 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.ct, null
  %i.cu = load ptr, ptr %i.l, align 8, !noalias !122 ; 2 uses
  %i.cv = icmp ugt ptr %i.ct, %i.cu
  %.08.i.i.i.i.i = select i1 %i.cv, ptr %i.ct, ptr %i.cu ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.cw = load ptr, ptr %i.m, align 8, !tbaa !124, !noalias !122 ; 2 uses
  %i.cx = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.cw, i64 noundef %i.cz)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %3, align 8, !tbaa !22, !alias.scope !122 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.i
  br i1 %i.dd, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.de = load i64, ptr %i.i, align 8, !tbaa !50, !alias.scope !122
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #50
  br label %.body.i.i

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.j

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.k, %bb.i
  store ptr %i.o, ptr %2, align 8, !tbaa !16, !noalias !86
  %i.dg = load i64, ptr %i.q, align 8
  %i.dh = getelementptr inbounds i8, ptr %2, i64 %i.dg
  store ptr %i.p, ptr %i.dh, align 8, !tbaa !16, !noalias !86
  store ptr %i.r, ptr %i.h, align 8, !tbaa !16, !noalias !86
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !16, !noalias !86
  %i.di = load ptr, ptr %i.n, align 8, !tbaa !22, !noalias !86 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.t
  br i1 %i.dj, label %"_ZZN8facebook6hermes13HermesRootAPI20getExecutedFunctionsB5cxx11EvENK3$_0clB5cxx11ERKN6hermes2vm20CodeCoverageProfiler8FuncInfoE.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  %i.dk = load i64, ptr %i.t, align 8, !tbaa !50, !noalias !86
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #50
  br label %"_ZZN8facebook6hermes13HermesRootAPI20getExecutedFunctionsB5cxx11EvENK3$_0clB5cxx11ERKN6hermes2vm20CodeCoverageProfiler8FuncInfoE.exit.i"

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5.i.i, %_ZNSolsEj.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %_ZNSolsEj.exit.i.i, %.noexc
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.dm, %bb.l ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.db, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47, !noalias !86
  br label %.body

"_ZZN8facebook6hermes13HermesRootAPI20getExecutedFunctionsB5cxx11EvENK3$_0clB5cxx11ERKN6hermes2vm20CodeCoverageProfiler8FuncInfoE.exit.i": ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !16, !noalias !86
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #47
  store ptr %i.w, ptr %2, align 8, !tbaa !16, !noalias !86
  %i.dn = load i64, ptr %i.y, align 8
  %i.do = getelementptr inbounds i8, ptr %2, i64 %i.dn
  store ptr %i.x, ptr %i.do, align 8, !tbaa !16, !noalias !86
  store i64 0, ptr %i.z, align 8, !tbaa !106, !noalias !86
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aa) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47, !noalias !86
  %i.dp = load ptr, ptr %i.ab, align 8, !tbaa !125 ; 9 uses
  %i.dq = load ptr, ptr %i.ac, align 8, !tbaa !128
  %.not.i.i.i1.i = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i.i.i1.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %"_ZZN8facebook6hermes13HermesRootAPI20getExecutedFunctionsB5cxx11EvENK3$_0clB5cxx11ERKN6hermes2vm20CodeCoverageProfiler8FuncInfoE.exit.i"
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !112
  %i.ds = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.i
  br i1 %i.dt, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.du = load i64, ptr %i.j, align 8, !tbaa !26  ; 3 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i64 %i.du, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dr, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.dw, i1 false)
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  store ptr %i.ds, ptr %i.dp, align 8, !tbaa !22
  %i.dx = load i64, ptr %i.i, align 8, !tbaa !50
  store i64 %i.dx, ptr %i.dr, align 8, !tbaa !50
  %.pre.i = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread.i

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.n
  %i.dy = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.du, %bb.n ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !26
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store ptr %i.ea, ptr %i.ab, align 8, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.o:                                             ; preds = %"_ZZN8facebook6hermes13HermesRootAPI20getExecutedFunctionsB5cxx11EvENK3$_0clB5cxx11ERKN6hermes2vm20CodeCoverageProfiler8FuncInfoE.exit.i"
  %i.eb = load ptr, ptr %5, align 8, !tbaa !129   ; 5 uses
  %i.ec = ptrtoint ptr %i.dp to i64
  %i.ed = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 3 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775776
  br i1 %i.ef, label %bb.p, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #53
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.eg = ashr exact i64 %i.ee, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eh = add nsw i64 %.sroa.speculated.i.i, %i.eg ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.eg
  %i.ej = call i64 @llvm.umin.i64(i64 %i.eh, i64 288230376151711743)
  %i.ek = select i1 %i.ei, i64 288230376151711743, i64 %i.ej ; 3 uses
  %.not.i.i = icmp ne i64 %i.ek, 0
  call void @llvm.assume(i1 %.not.i.i)
  %6 = shl nuw nsw i64 %i.ek, 5
  %7 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #49
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i unwind label %.loopexit ; 5 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 %i.ee ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 3 uses
  store ptr %i.em, ptr %i.el, align 8, !tbaa !112
  %i.en = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.i
  br i1 %i.eo, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.q:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.ep = load i64, ptr %i.j, align 8, !tbaa !26  ; 3 uses
  %i.eq = icmp ult i64 %i.ep, 16
  call void @llvm.assume(i1 %i.eq)
  %i.er = add nuw nsw i64 %i.ep, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.er, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  store ptr %i.en, ptr %i.el, align 8, !tbaa !22
  %i.es = load i64, ptr %i.i, align 8, !tbaa !50
  store i64 %i.es, ptr %i.em, align 8, !tbaa !50
  %.pre.i14 = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %i.et = phi i64 [ %i.ep, %bb.q ], [ %.pre.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !26
  store ptr %i.i, ptr %3, align 8, !tbaa !22
  store i64 0, ptr %i.j, align 8, !tbaa !26
  store i8 0, ptr %i.i, align 8, !tbaa !50
  %.not10.i.i.i.i = icmp eq ptr %i.eb, %i.dp
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fi, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.fh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ev, ptr %.012.i.i.i.i, align 8, !tbaa !112, !alias.scope !130, !noalias !133
  %i.ew = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !22, !alias.scope !133, !noalias !130 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i15

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !26, !alias.scope !133, !noalias !130 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fb)
  %i.fc = add nuw nsw i64 %i.fa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ev, ptr noundef nonnull align 8 dereferenceable(1) %i.ex, i64 %i.fc, i1 false), !alias.scope !135
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i15: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ew, ptr %.012.i.i.i.i, align 8, !tbaa !22, !alias.scope !130, !noalias !133
  %i.fd = load i64, ptr %i.ex, align 8, !tbaa !50, !alias.scope !133, !noalias !130
  store i64 %i.fd, ptr %i.ev, align 8, !tbaa !50, !alias.scope !130, !noalias !133
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !26, !alias.scope !133, !noalias !130
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i15, %bb.r
  %i.fe = phi i64 [ %i.fa, %bb.r ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i15 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.fe, ptr %i.fg, align 8, !tbaa !26, !alias.scope !130, !noalias !133
  store ptr %i.ex, ptr %.0911.i.i.i.i, align 8, !tbaa !22, !alias.scope !133, !noalias !130
  store i64 0, ptr %i.ff, align 8, !tbaa !26, !alias.scope !133, !noalias !130
  store i8 0, ptr %i.ex, align 8, !tbaa !50, !alias.scope !133, !noalias !130
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.fh, %i.dp
  br i1 %.not.i.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i, !llvm.loop !136

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.fi, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i27.i = icmp eq ptr %i.eb, null
  br i1 %.not.i27.i, label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  %i.fk = load ptr, ptr %i.ac, align 8, !tbaa !128
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.fm) #50
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i: ; preds = %bb.s, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  store ptr %7, ptr %5, align 8, !tbaa !129
  store ptr %i.fj, ptr %i.ab, align 8, !tbaa !125
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %i.ek
  store ptr %i.fn, ptr %i.ac, align 8, !tbaa !128
  %.pre14.i = load ptr, ptr %3, align 8, !tbaa !22 ; 2 uses
  %i.fo = icmp eq ptr %.pre14.i, %i.i
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i
  %i.fp = load i64, ptr %i.i, align 8, !tbaa !50
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %.pre14.i, i64 noundef %i.fq) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread.i, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.fr, %i.bf
  br i1 %.not.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm20CodeCoverageProfiler8FuncInfoESt6vectorIS5_SaIS5_EEEESt20back_insert_iteratorIS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEZN8facebook6hermes13HermesRootAPI20getExecutedFunctionsEvE3$_0ET0_T_SR_SQ_T1_.exit", label %.lr.ph.i, !llvm.loop !137

.loopexit:                                        ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fs = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.i
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.t
  %i.fu = load i64, ptr %i.i, align 8, !tbaa !50
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %.body

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm20CodeCoverageProfiler8FuncInfoESt6vectorIS5_SaIS5_EEEESt20back_insert_iteratorIS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEZN8facebook6hermes13HermesRootAPI20getExecutedFunctionsEvE3$_0ET0_T_SR_SQ_T1_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.d
  %i.fw = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS7_RSA_EEES6_INSD_14_Node_iteratorISB_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRSE_RS8_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.v ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRSE_RS8_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit: ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm20CodeCoverageProfiler8FuncInfoESt6vectorIS5_SaIS5_EEEESt20back_insert_iteratorIS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEZN8facebook6hermes13HermesRootAPI20getExecutedFunctionsEvE3$_0ET0_T_SR_SQ_T1_.exit"
  %i.fx = load ptr, ptr %5, align 8, !tbaa !129   ; 3 uses
  %i.fy = load ptr, ptr %i.ab, align 8, !tbaa !125 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fx, %i.fy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRSE_RS8_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.fx, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRSE_RS8_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit ] ; 3 uses
  %i.fz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i12: ; preds = %.lr.ph.i.i.i
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !50
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #50
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i12
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ge, %i.fy
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !138

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !129
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRSE_RS8_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit
  %i.gf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.fx, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJRSE_RS8_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb1EEEbEDpOT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gg = load ptr, ptr %i.ac, align 8, !tbaa !128
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gj) #50
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.gk = load ptr, ptr %.sroa.021.081, align 8, !tbaa !139 ; 2 uses
  %.not = icmp eq ptr %i.gk, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d

bb.v:                                             ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm20CodeCoverageProfiler8FuncInfoESt6vectorIS5_SaIS5_EEEESt20back_insert_iteratorIS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEZN8facebook6hermes13HermesRootAPI20getExecutedFunctionsEvE3$_0ET0_T_SR_SQ_T1_.exit"
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %.body.i, %.body.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.gl, %bb.v ], [ %.pn.pn.i, %.body.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #47
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN6hermes2vm20CodeCoverageProfiler20getExecutedFunctionsB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::unordered_map.36") align 8) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !129    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !50
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #50
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !138

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !129
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #50
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEELb1EEEEE19_M_deallocate_nodesEPSE_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.b)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #48
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !78
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !78
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #50
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISE_EEELb1EEEEE19_M_deallocate_nodesEPSI_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.b)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #48
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !83
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
end_hunk_0
