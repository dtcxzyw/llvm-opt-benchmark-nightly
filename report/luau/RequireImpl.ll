Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/RequireImpl?download=true
inline.NumInlined: 216
inline.NumDeleted: 76
begin_hunk_0_@_ZN4Luau7Require19lua_requireinternalEP9lua_StatePKc:bb.a
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZN4Luau7RequireL22checkRegisteredModulesEP9lua_StatePKc.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br i1 %i.ed, label %bb.p, label %bb.cu

bb.p:                                             ; preds = %_ZN4Luau7RequireL22checkRegisteredModulesEP9lua_StatePKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.en, ptr %13, align 8, !tbaa !20
  %i.eo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 %i.eo, ptr %i.c, align 8, !tbaa !22
  %i.ep = icmp ugt i64 %i.eo, 15
  br i1 %i.ep, label %.noexc.i50, label %._crit_edge.i.i

.noexc.i50:                                       ; preds = %bb.p
  %i.eq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc51 unwind label %bb.ch  ; 2 uses

.noexc51:                                         ; preds = %.noexc.i50
  store ptr %i.eq, ptr %13, align 8, !tbaa !24
  %i.er = load i64, ptr %i.c, align 8, !tbaa !22
  store i64 %i.er, ptr %i.en, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc51, %bb.p
  %i.es = phi ptr [ %i.eq, %.noexc51 ], [ %i.en, %bb.p ] ; 2 uses
  switch i64 %i.eo, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.et = load i8, ptr %i.g, align 1, !tbaa !25
  store i8 %i.et, ptr %i.es, align 1, !tbaa !25
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr nonnull align 1 %i.g, i64 %i.eo, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.eu = load i64, ptr %i.c, align 8, !tbaa !22  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !26
  %i.ew = load ptr, ptr %13, align 8, !tbaa !24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i8 0, ptr %i.ex, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ey = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !47
  %i.ez = invoke noundef zeroext i1 %i.ey(ptr noundef %0, ptr noundef %i.f, ptr noundef %1)
          to label %.noexc59 unwind label %bb.ci, !inline_history !46

.noexc59:                                         ; preds = %bb.s
  br i1 %i.ez, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.noexc59
  invoke void @_ZN4Luau7Require15ResolvedRequire16fromErrorMessageEPKc(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Require::ResolvedRequire") align 8 %12, ptr noundef nonnull @.str.65)
          to label %bb.cg unwind label %bb.ci

bb.u:                                             ; preds = %.noexc59
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !47
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.fa, ptr %3, align 8, !tbaa !20, !noalias !47
  %i.fb = icmp eq ptr %1, null
  br i1 %i.fb, label %.noexc.i58, label %bb.v

.noexc.i58:                                       ; preds = %bb.u
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #15
          to label %.noexc61 unwind label %bb.ci

.noexc61:                                         ; preds = %.noexc.i58
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.fc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16, !noalias !47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !47
  store i64 %i.fc, ptr %i.b, align 8, !tbaa !22, !noalias !47
  %i.fd = icmp ugt i64 %i.fc, 15
  br i1 %i.fd, label %.noexc.i.i57, label %._crit_edge.i.i.i52

.noexc.i.i57:                                     ; preds = %bb.v
  %i.fe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc62 unwind label %bb.ci  ; 2 uses

.noexc62:                                         ; preds = %.noexc.i.i57
  store ptr %i.fe, ptr %3, align 8, !tbaa !24, !noalias !47
  %i.ff = load i64, ptr %i.b, align 8, !tbaa !22, !noalias !47
  store i64 %i.ff, ptr %i.fa, align 8, !tbaa !25, !noalias !47
  br label %._crit_edge.i.i.i52

._crit_edge.i.i.i52:                              ; preds = %.noexc62, %bb.v
  %i.fg = phi ptr [ %i.fe, %.noexc62 ], [ %i.fa, %bb.v ] ; 2 uses
  switch i64 %i.fc, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i52
  %i.fh = load i8, ptr %1, align 1, !tbaa !25, !noalias !47
  store i8 %i.fh, ptr %i.fg, align 1, !tbaa !25
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fg, ptr nonnull align 1 %1, i64 %i.fc, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i52
  %i.fi = load i64, ptr %i.b, align 8, !tbaa !22, !noalias !47 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !26, !noalias !47
  %i.fk = load ptr, ptr %3, align 8, !tbaa !24, !noalias !47
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fi
  store i8 0, ptr %i.fl, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !47
  invoke void @_ZN4Luau7Require24RuntimeNavigationContextC1EP24luarequire_ConfigurationP9lua_StatePvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef %i.f, ptr noundef nonnull align 8 %3)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.fm = load ptr, ptr %3, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fa
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.z
  %i.fo = load i64, ptr %i.fa, align 8, !tbaa !25, !noalias !47
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !47
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.fq, ptr %5, align 8, !tbaa !20, !noalias !47
  %i.fr = load ptr, ptr %13, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.fs = load i64, ptr %i.ev, align 8, !tbaa !26, !noalias !47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !47
  store i64 %i.fs, ptr %i.a, align 8, !tbaa !22, !noalias !47
  %i.ft = icmp ugt i64 %i.fs, 15
  br i1 %i.ft, label %.noexc.i39.i, label %._crit_edge.i.i38.i

.noexc.i39.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54
  %i.fu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc40.i unwind label %bb.aj ; 2 uses

.noexc40.i:                                       ; preds = %.noexc.i39.i
  store ptr %i.fu, ptr %5, align 8, !tbaa !24, !noalias !47
  %i.fv = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !47
  store i64 %i.fv, ptr %i.fq, align 8, !tbaa !25, !noalias !47
  br label %._crit_edge.i.i38.i

._crit_edge.i.i38.i:                              ; preds = %.noexc40.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54
  %i.fw = phi ptr [ %i.fu, %.noexc40.i ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54 ] ; 2 uses
  switch i64 %i.fs, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i38.i
  %i.fx = load i8, ptr %i.fr, align 1, !tbaa !25
  store i8 %i.fx, ptr %i.fw, align 1, !tbaa !25
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i38.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr align 1 %i.fr, i64 %i.fs, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i38.i
  %i.fy = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !47 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !26, !noalias !47
  %i.ga = load ptr, ptr %5, align 8, !tbaa !24, !noalias !47
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fy
  store i8 0, ptr %i.gb, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !47
  invoke void @_ZN4Luau7Require19RuntimeErrorHandlerC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 %5)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.gc = load ptr, ptr %5, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fq
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i: ; preds = %bb.ad
  %i.ge = load i64, ptr %i.fq, align 8, !tbaa !25, !noalias !47
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !47
  invoke void @_ZN4Luau7Require9NavigatorC1ERNS0_17NavigationContextERNS0_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ae unwind label %14

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.gg, ptr %7, align 8, !tbaa !20, !noalias !47
  %i.gh = load ptr, ptr %13, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.en
  br i1 %i.gi, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.af:                                            ; preds = %bb.ae
  %i.gj = load i64, ptr %i.ev, align 8, !tbaa !26, !noalias !47 ; 3 uses
  %i.gk = icmp ult i64 %i.gj, 16
  call void @llvm.assume(i1 %i.gk)
  %i.gl = add nuw nsw i64 %i.gj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gg, ptr noundef nonnull align 8 dereferenceable(1) %i.en, i64 %i.gl, i1 false), !noalias !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  store ptr %i.gh, ptr %7, align 8, !tbaa !24, !noalias !47
  %i.gm = load i64, ptr %i.en, align 8, !tbaa !25, !noalias !47
  store i64 %i.gm, ptr %i.gg, align 8, !tbaa !25, !noalias !47
  %.pre.i55 = load i64, ptr %i.ev, align 8, !tbaa !26, !noalias !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %i.gn = phi i64 [ %i.gj, %bb.af ], [ %.pre.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !26, !noalias !47
  store ptr %i.en, ptr %13, align 8, !tbaa !24, !noalias !47
  store i64 0, ptr %i.ev, align 8, !tbaa !26, !noalias !47
  store i8 0, ptr %i.en, align 8, !tbaa !25, !noalias !47
  %i.gp = invoke noundef i32 @_ZN4Luau7Require9Navigator8navigateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 %7)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.gq = load ptr, ptr %7, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gg
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %bb.ag
  %i.gs = load i64, ptr %i.gg, align 8, !tbaa !25, !noalias !47
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i
  %i.gu = icmp eq i32 %i.gp, 1
  br i1 %i.gu, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i
  invoke void @_ZN4Luau7Require15ResolvedRequire16fromErrorHandlerERKNS0_19RuntimeErrorHandlerE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Require::ResolvedRequire") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.cd unwind label %bb.am

bb.ai:                                            ; preds = %bb.y
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %3, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.fa
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %bb.ai
  %i.gy = load i64, ptr %i.fa, align 8, !tbaa !25, !noalias !47
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i

bb.aj:                                            ; preds = %.noexc.i39.i
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

bb.ak:                                            ; preds = %bb.ac
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %5, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.fq
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %bb.ak
  %i.he = load i64, ptr %i.fq, align 8, !tbaa !25, !noalias !47
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

14:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = load ptr, ptr %7, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gg
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %bb.al
  %i.hj = load i64, ptr %i.gg, align 8, !tbaa !25, !noalias !47
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

bb.am:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i
  %i.hm = invoke noundef zeroext i1 @_ZNK4Luau7Require24RuntimeNavigationContext15isModulePresentEv(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.ao unwind label %bb.am

bb.ao:                                            ; preds = %bb.an
  br i1 %i.hm, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4Luau7Require15ResolvedRequire16fromErrorMessageEPKc(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Require::ResolvedRequire") align 8 %12, ptr noundef nonnull @.str.79)
          to label %bb.cd unwind label %bb.am

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !47
  invoke void @_ZNK4Luau7Require24RuntimeNavigationContext11getCacheKeyB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.0") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !31, !range !17, !noalias !47, !noundef !18
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4Luau7Require15ResolvedRequire16fromErrorMessageEPKc(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Require::ResolvedRequire") align 8 %12, ptr noundef nonnull @.str.80)
          to label %bb.bz unwind label %bb.au

bb.at:                                            ; preds = %bb.aq
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit89.i

bb.au:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %.noexc67.i, %.noexc66.i, %.noexc65.i, %.noexc64.i, %.noexc63.i, %bb.az, %.noexc61.i, %bb.ay, %bb.ax, %bb.aw, %.noexc57.i, %.noexc56.i, %bb.av, %bb.as
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.av:                                            ; preds = %bb.ar
  %i.hs = invoke noundef ptr @_Z14luaL_findtableP9lua_StateiPKci(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.77, i32 noundef 1)
          to label %.noexc56.i unwind label %bb.au ; 0 uses

.noexc56.i:                                       ; preds = %bb.av
  %i.ht = load ptr, ptr %8, align 8, !tbaa !24, !noalias !47
  %i.hu = invoke noundef i32 @_Z12lua_getfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -1, ptr noundef %i.ht)
          to label %.noexc57.i unwind label %bb.au ; 0 uses

.noexc57.i:                                       ; preds = %.noexc56.i
  %i.hv = invoke noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef -1)
          to label %.noexc58.i unwind label %bb.au

.noexc58.i:                                       ; preds = %.noexc57.i
  %i.hw = icmp ne i32 %i.hv, 0                    ; 2 uses
  %i.hx = load i8, ptr @_ZN5FFlag29LuauCyclicRequireShortCircuitE, align 8, !tbaa !16, !range !17, !noalias !47, !noundef !18
  %i.hy = trunc nuw i8 %i.hx to i1
  %or.cond.i.i = and i1 %i.hw, %i.hy
  br i1 %or.cond.i.i, label %bb.aw, label %.noexc67.i

bb.aw:                                            ; preds = %.noexc58.i
  %i.hz = invoke noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef -1)
          to label %.noexc59.i unwind label %bb.au

.noexc59.i:                                       ; preds = %bb.aw
  %i.ia = icmp eq i32 %i.hz, 7
  br i1 %i.ia, label %bb.ax, label %.noexc67.i

bb.ax:                                            ; preds = %.noexc59.i
  %i.ib = invoke noundef i32 @_Z16lua_getmetatableP9lua_Statei(ptr noundef %0, i32 noundef -1)
          to label %.noexc60.i unwind label %bb.au

.noexc60.i:                                       ; preds = %bb.ax
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %bb.ay, label %.noexc67.i

bb.ay:                                            ; preds = %.noexc60.i
  %i.id = invoke noundef i32 @_Z17lua_rawgetptaggedP9lua_StateiPvi(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @_ZN4Luau7RequireL34cyclicPlaceholderMetatableSentinelE, i32 noundef 0)
          to label %.noexc61.i unwind label %bb.au ; 0 uses

.noexc61.i:                                       ; preds = %bb.ay
  %i.ie = invoke noundef i32 @_Z12lua_rawequalP9lua_Stateii(ptr noundef %0, i32 noundef -1, i32 noundef -2)
          to label %.noexc62.i unwind label %bb.au

.noexc62.i:                                       ; preds = %.noexc61.i
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %bb.az, label %.noexc66.i

bb.az:                                            ; preds = %.noexc62.i
  %i.ig = invoke noundef ptr @_Z14luaL_findtableP9lua_StateiPKci(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.78, i32 noundef 1)
          to label %.noexc63.i unwind label %bb.au ; 0 uses

.noexc63.i:                                       ; preds = %bb.az
  invoke void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef %0, i32 noundef 1)
          to label %.noexc64.i unwind label %bb.au

.noexc64.i:                                       ; preds = %.noexc63.i
  %i.ih = load ptr, ptr %8, align 8, !tbaa !24, !noalias !47
  invoke void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef %i.ih)
          to label %.noexc65.i unwind label %bb.au

.noexc65.i:                                       ; preds = %.noexc64.i
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %0, i32 noundef -2)
          to label %.noexc66.i unwind label %bb.au

.noexc66.i:                                       ; preds = %.noexc65.i, %.noexc62.i
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %0, i32 noundef -3)
          to label %.noexc67.i unwind label %bb.au

.noexc67.i:                                       ; preds = %.noexc66.i, %.noexc60.i, %.noexc59.i, %.noexc58.i
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %0, i32 noundef -3)
          to label %_ZN4Luau7RequireL8isCachedEP9lua_StateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.au

_ZN4Luau7RequireL8isCachedEP9lua_StateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.noexc67.i
  br i1 %i.hw, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %_ZN4Luau7RequireL8isCachedEP9lua_StateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ii = invoke noundef i32 @_Z12lua_getfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.77)
          to label %bb.bb unwind label %bb.au     ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  %i.ij = load ptr, ptr %8, align 8, !tbaa !24, !noalias !47
  %i.ik = invoke noundef i32 @_Z12lua_getfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -1, ptr noundef %i.ij)
          to label %bb.bc unwind label %bb.au     ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  invoke void @_Z10lua_removeP9lua_Statei(ptr noundef %0, i32 noundef -2)
          to label %bb.bd unwind label %bb.au

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %12, align 8, !tbaa !34, !alias.scope !47
  %i.il = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %i.im, ptr %i.il, align 8, !tbaa !20, !alias.scope !47
  %i.in = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.in, align 8, !tbaa !26, !alias.scope !47
  store i8 0, ptr %i.im, align 8, !tbaa !25, !alias.scope !47
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr %i.ip, ptr %i.io, align 8, !tbaa !20, !alias.scope !47
  %i.iq = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 0, ptr %i.iq, align 8, !tbaa !26, !alias.scope !47
  store i8 0, ptr %i.ip, align 8, !tbaa !25, !alias.scope !47
  %i.ir = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  store ptr %i.is, ptr %i.ir, align 8, !tbaa !20, !alias.scope !47
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 80
  store i64 0, ptr %i.it, align 8, !tbaa !26, !alias.scope !47
  store i8 0, ptr %i.is, align 8, !tbaa !25, !alias.scope !47
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  store ptr %i.iv, ptr %i.iu, align 8, !tbaa !20, !alias.scope !47
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 112
  store i64 0, ptr %i.iw, align 8, !tbaa !26, !alias.scope !47
  store i8 0, ptr %i.iv, align 8, !tbaa !25, !alias.scope !47
  br label %bb.bz

bb.be:                                            ; preds = %_ZN4Luau7RequireL8isCachedEP9lua_StateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16, !noalias !47
  invoke void @_ZNK4Luau7Require24RuntimeNavigationContext12getChunknameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.0") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ix = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !31, !range !17, !noalias !47, !noundef !18
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN4Luau7Require15ResolvedRequire16fromErrorMessageEPKc(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Require::ResolvedRequire") align 8 %12, ptr noundef nonnull @.str.81)
          to label %bb.bv unwind label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit83.i

bb.bi:                                            ; preds = %bb.bg
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16, !noalias !47
  invoke void @_ZNK4Luau7Require24RuntimeNavigationContext11getLoadnameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.0") align 8 %10, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.jc = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !31, !range !17, !noalias !47, !noundef !18
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN4Luau7Require15ResolvedRequire16fromErrorMessageEPKc(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Require::ResolvedRequire") align 8 %12, ptr noundef nonnull @.str.82)
          to label %bb.bt unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bj
  %i.jf = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN4Luau7Require19lua_requireinternalEP9lua_StatePKc:bb.a
  %i.ky = phi i64 [ %i.ku, %bb.bs ], [ %.pre97.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i73.i ]
  %i.kz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %12, i64 80
  store i64 %i.ky, ptr %i.la, align 8, !tbaa !26, !alias.scope !47
  store ptr %i.kr, ptr %8, align 8, !tbaa !24, !noalias !47
  store i64 0, ptr %i.kz, align 8, !tbaa !26, !noalias !47
  store i8 0, ptr %i.kr, align 8, !tbaa !25, !noalias !47
  %i.lb = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.lc = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  store ptr %i.lc, ptr %i.lb, align 8, !tbaa !20, !alias.scope !47
  %i.ld = getelementptr inbounds nuw i8, ptr %12, i64 112
  store i64 0, ptr %i.ld, align 8, !tbaa !26, !alias.scope !47
  store i8 0, ptr %i.lc, align 8, !tbaa !25, !alias.scope !47
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit77.i

bb.bt:                                            ; preds = %bb.bl
  %.pre98.i = load i8, ptr %i.jc, align 8, !tbaa !31, !range !17, !noalias !47
  %i.le = trunc nuw i8 %.pre98.i to i1
  store i8 0, ptr %i.jc, align 8, !tbaa !31, !noalias !47
  br i1 %i.le, label %bb.bu, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit77.i

bb.bu:                                            ; preds = %bb.bt
  %.pre = load ptr, ptr %10, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %.pre, %i.lf
  br i1 %i.lg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit77.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i75.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i75.i: ; preds = %bb.bu
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !25, !noalias !47
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.li) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit77.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit77.i: ; preds = %bb.bu, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i75.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16, !noalias !47
  br label %bb.bv

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.bn, %bb.bm
  %.pn25.i = phi { ptr, i32 } [ %i.jf, %bb.bm ], [ %i.jg, %bb.bn ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.jg, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16, !noalias !47
  br label %bb.bx

bb.bv:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit77.i, %bb.bg
  %i.lj = load i8, ptr %i.ix, align 8, !tbaa !31, !range !17, !noalias !47, !noundef !18
  %i.lk = trunc nuw i8 %i.lj to i1
  store i8 0, ptr %i.ix, align 8, !tbaa !31, !noalias !47
  br i1 %i.lk, label %bb.bw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80.i

bb.bw:                                            ; preds = %bb.bv
  %i.ll = load ptr, ptr %9, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ln = icmp eq ptr %i.ll, %i.lm
  br i1 %i.ln, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i78.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i78.i: ; preds = %bb.bw
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !25, !noalias !47
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lp) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80.i: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i78.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !47
  br label %bb.bz

bb.bx:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %bb.bi
  %.pn25.pn.i = phi { ptr, i32 } [ %.pn25.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ], [ %i.jb, %bb.bi ] ; 3 uses
  %i.lq = load i8, ptr %i.ix, align 8, !tbaa !31, !range !17, !noalias !47, !noundef !18
  %i.lr = trunc nuw i8 %i.lq to i1
  store i8 0, ptr %i.ix, align 8, !tbaa !31, !noalias !47
  br i1 %i.lr, label %bb.by, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit83.i

bb.by:                                            ; preds = %bb.bx
  %i.ls = load ptr, ptr %9, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i81.i: ; preds = %bb.by
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !25, !noalias !47
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit83.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit83.i: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i81.i, %bb.bx, %bb.bh
  %.pn25.pn.pn.i = phi { ptr, i32 } [ %i.ja, %bb.bh ], [ %.pn25.pn.i, %bb.bx ], [ %.pn25.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i81.i ], [ %.pn25.pn.i, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !47
  br label %bb.cb

bb.bz:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80.i, %bb.bd, %bb.as
  %i.lx = load i8, ptr %i.hn, align 8, !tbaa !31, !range !17, !noalias !47, !noundef !18
  %i.ly = trunc nuw i8 %i.lx to i1
  store i8 0, ptr %i.hn, align 8, !tbaa !31, !noalias !47
  br i1 %i.ly, label %bb.ca, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit86.i

bb.ca:                                            ; preds = %bb.bz
  %i.lz = load ptr, ptr %8, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i84.i: ; preds = %bb.ca
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !25, !noalias !47
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit86.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit86.i: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i84.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !47
  br label %bb.cd

bb.cb:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit83.i, %bb.au
  %.pn29.i = phi { ptr, i32 } [ %i.hr, %bb.au ], [ %.pn25.pn.pn.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit83.i ] ; 3 uses
  %i.me = load i8, ptr %i.hn, align 8, !tbaa !31, !range !17, !noalias !47, !noundef !18
  %i.mf = trunc nuw i8 %i.me to i1
  store i8 0, ptr %i.hn, align 8, !tbaa !31, !noalias !47
  br i1 %i.mf, label %bb.cc, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit89.i

bb.cc:                                            ; preds = %bb.cb
  %i.mg = load ptr, ptr %8, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit89.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87.i: ; preds = %bb.cc
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !25, !noalias !47
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit89.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit89.i: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87.i, %bb.cb, %bb.at
  %.pn29.pn.i = phi { ptr, i32 } [ %i.hq, %bb.at ], [ %.pn29.i, %bb.cb ], [ %.pn29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87.i ], [ %.pn29.i, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

bb.cd:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit86.i, %bb.ap, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !47
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4Luau7Require19RuntimeErrorHandlerE, i64 16), ptr %4, align 8, !tbaa !36, !noalias !47
  %i.ml = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cd
  %i.mp = load i64, ptr %i.mn, align 8, !tbaa !25, !noalias !47
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mq) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZN4Luau7Require19RuntimeErrorHandlerD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !25, !noalias !47
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #17
  br label %_ZN4Luau7Require19RuntimeErrorHandlerD2Ev.exit.i

_ZN4Luau7Require19RuntimeErrorHandlerD2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !47
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4Luau7Require24RuntimeNavigationContextE, i64 16), ptr %2, align 8, !tbaa !36, !noalias !47
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !24, !noalias !47 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i: ; preds = %_ZN4Luau7Require19RuntimeErrorHandlerD2Ev.exit.i
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !25, !noalias !47
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91.i: ; preds = %_ZN4Luau7Require19RuntimeErrorHandlerD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4Luau7Require17NavigationContextE, i64 16), ptr %2, align 8, !tbaa !36, !noalias !47
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !38, !noalias !47 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau7Require24RuntimeNavigationContextD2Ev.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91.i
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ng = invoke noundef zeroext i1 %i.ne(ptr noundef nonnull align 8 dereferenceable(32) %i.nf, ptr noundef nonnull align 8 dereferenceable(32) %i.nf, i32 noundef 3)
          to label %_ZN4Luau7Require24RuntimeNavigationContextD2Ev.exit.i unwind label %bb.cf, !inline_history !39 ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  %i.nh = landingpad { ptr, i32 }
          catch ptr null
  %i.ni = extractvalue { ptr, i32 } %i.nh, 0
  call void @__clang_call_terminate(ptr %i.ni) #18, !inline_history !39
  unreachable

_ZN4Luau7Require24RuntimeNavigationContextD2Ev.exit.i: ; preds = %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !47
  br label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i: ; preds = %bb.al, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit89.i, %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i, %14
  %.pn32.pn.i = phi { ptr, i32 } [ %15, %14 ], [ %i.hl, %bb.am ], [ %.pn29.pn.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit89.i ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i ], [ %i.hg, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !47
  call void @_ZN4Luau7Require19RuntimeErrorHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i, %bb.aj
  %.pn32.pn.pn.i = phi { ptr, i32 } [ %.pn32.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i ], [ %i.ha, %bb.aj ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i ], [ %i.hb, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !47
  call void @_ZN4Luau7Require24RuntimeNavigationContextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i
  %.pn32.pn.pn.pn.i = phi { ptr, i32 } [ %.pn32.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i ], [ %i.gv, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !47
  br label %.body

bb.cg:                                            ; preds = %_ZN4Luau7Require24RuntimeNavigationContextD2Ev.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.nj = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.en
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.cg
  %i.nl = load i64, ptr %i.en, align 8, !tbaa !25
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  %i.nn = load i32, ptr %12, align 8, !tbaa !34   ; 2 uses
  %.not48 = icmp eq i32 %i.nn, 0
  br i1 %.not48, label %.critedge, label %bb.cj

bb.ch:                                            ; preds = %.noexc.i50
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.ci:                                            ; preds = %.noexc.i.i57, %.noexc.i58, %bb.t, %bb.s
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, %bb.ci
  %eh.lpad-body = phi { ptr, i32 } [ %i.np, %bb.ci ], [ %.pn32.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i ] ; 2 uses
  %i.nq = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.en
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %.body
  %i.ns = load i64, ptr %i.en, align 8, !tbaa !25
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nt) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.nu = icmp eq i32 %i.nn, 2                    ; 2 uses
  br i1 %i.nu, label %.invoke, label %bb.cl

bb.ck:                                            ; preds = %.invoke, %bb.cm, %bb.cl
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7Require15ResolvedRequireD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.cl:                                            ; preds = %bb.cj
  %i.nw = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !24
  invoke void @_Z14lua_pushstringP9lua_StatePKc(ptr noundef %0, ptr noundef %i.nx)
          to label %bb.cm unwind label %bb.ck

bb.cm:                                            ; preds = %bb.cl
  %i.ny = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !24
  invoke void @_Z14lua_pushstringP9lua_StatePKc(ptr noundef %0, ptr noundef %i.nz)
          to label %.invoke unwind label %bb.ck

.invoke:                                          ; preds = %bb.cm, %bb.cj
  %.sink151.sroa.phi = phi ptr [ %.sink151.sroa.gep, %bb.cj ], [ %.sink151.sroa.gep228, %bb.cm ]
  %i.oa = load ptr, ptr %.sink151.sroa.phi, align 8, !tbaa !24
  invoke void @_Z14lua_pushstringP9lua_StatePKc(ptr noundef %0, ptr noundef %i.oa)
          to label %bb.cn unwind label %bb.ck

bb.cn:                                            ; preds = %.invoke
  %i.ob = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !24 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %bb.cn
  %i.of = load i64, ptr %i.od, align 8, !tbaa !25
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.og) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67
  %i.oh = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !24 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68
  %i.ol = load i64, ptr %i.oj, align 8, !tbaa !25
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.om) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.on = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !24 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.or = load i64, ptr %i.op, align 8, !tbaa !25
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.ot = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !24 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.ox = load i64, ptr %i.ov, align 8, !tbaa !25
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.oy) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br i1 %i.nu, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i
  call void @_Z9lua_errorP9lua_State(ptr noundef %0) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %.body, %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.ck
  %.pn46 = phi { ptr, i32 } [ %i.nv, %bb.ck ], [ %i.no, %bb.ch ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %common.resume

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i
  %i.oz = call noundef ptr @_Z13lua_tolstringP9lua_StateiPm(ptr noundef %0, i32 noundef 3, ptr noundef null)
  %i.pa = call noundef ptr @_Z13lua_tolstringP9lua_StateiPm(ptr noundef %0, i32 noundef 4, ptr noundef null)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !50
  %i.pd = call noundef i32 %i.pc(ptr noundef %0, ptr noundef %i.f, ptr noundef nonnull %i.g, ptr noundef %i.oz, ptr noundef %i.pa)
  %i.pe = icmp eq i32 %i.pd, -1
  br i1 %i.pe, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.pf = call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0)
  %.not49 = icmp eq i32 %i.pf, 4
  br i1 %.not49, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.63) #15
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.pg = call noundef i32 @_Z9lua_yieldP9lua_Statei(ptr noundef %0, i32 noundef 0)
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cp
  %i.ph = call noundef i32 @_ZN4Luau7Require15lua_requirecontEP9lua_Statei(ptr noundef %0, i32 poison)
  br label %bb.cu

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.pi = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !24 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %.critedge
  %i.pm = load i64, ptr %i.pk, align 8, !tbaa !25
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pn) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70
  %i.po = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !24 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71
  %i.ps = load i64, ptr %i.pq, align 8, !tbaa !25
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.pt) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i73
end_hunk_1
