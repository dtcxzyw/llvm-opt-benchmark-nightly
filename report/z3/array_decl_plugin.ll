Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/array_decl_plugin?download=true
inline.NumInlined: 1941
inline.NumDeleted: 828
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN17array_decl_plugin6mk_mapEP9func_decljPKP4sort:bb.a
  store ptr @.str.60, ptr %i.cm, align 8, !tbaa !115
  tail call void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_Z16get_array_domainPK4sortj.exit71:              ; preds = %_Z16get_array_domainPK4sortj.exit
  %i.cn = load ptr, ptr %i.by, align 8, !tbaa !116
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !116
  %.not54 = icmp eq ptr %i.cn, %i.co
  br i1 %.not54, label %bb.t, label %bb.x

bb.x:                                             ; preds = %_Z16get_array_domainPK4sortj.exit71
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !313
  store i64 %indvars.iv140, ptr %5, align 16, !noalias !313
  call void @_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 93, ptr nonnull @.str.23, i64 65, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !313
  invoke void @_ZN11ast_manager15raise_exceptionEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(952) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %12) #24
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %12, align 8, !tbaa !142  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.z
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !143
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.av

bb.aa:                                            ; preds = %_Z15get_array_rangePK4sort.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !314
  store i64 %indvars.iv140, ptr %4, align 16, !noalias !314
  call void @_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 88, ptr nonnull @.str.24, i64 65, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !314
  invoke void @_ZN11ast_manager15raise_exceptionEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(952) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %13) #24
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = load ptr, ptr %13, align 8, !tbaa !142  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ac
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !143
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.av

._crit_edge:                                      ; preds = %bb.ag, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !144
  store ptr %i.dg, ptr %15, align 8, !tbaa !108
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 1, ptr %i.dh, align 8, !tbaa !110
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI9parameterLb1EjE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %bb.ai unwind label %bb.ap     ; 0 uses

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %bb.ag
  %i.dj = phi ptr [ null, %.lr.ph126.preheader ], [ %i.ea, %bb.ag ] ; 4 uses
  %indvars.iv145 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next146, %bb.ag ] ; 2 uses
  %i.dk = load ptr, ptr %3, align 8, !tbaa !137
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !120
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !125
  %i.dp = getelementptr inbounds nuw [40 x i8], ptr %i.do, i64 %indvars.iv145
  %i.dq = icmp eq ptr %i.dj, null
  br i1 %i.dq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph126
  %i.dr = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !126 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !126
  %i.dv = icmp eq i32 %i.ds, %i.du
  br i1 %i.dv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %.lr.ph126
  invoke void @_ZN6vectorI9parameterLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.ae
  %.pre.i80 = load ptr, ptr %14, align 8, !tbaa !125 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i80, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !126
  br label %bb.af

bb.af:                                            ; preds = %.noexc, %bb.ad
  %i.dw = phi i32 [ %.pre2.i, %.noexc ], [ %i.ds, %bb.ad ]
  %i.dx = phi ptr [ %.pre.i80, %.noexc ], [ %i.dj, %bb.ad ]
  %i.dy = zext i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [40 x i8], ptr %i.dx, i64 %i.dy
  invoke void @_ZN9parameterC1ERKS_(ptr noundef nonnull align 8 dereferenceable(40) %i.dz, ptr noundef nonnull align 8 dereferenceable(40) %i.dp)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ea = load ptr, ptr %14, align 8, !tbaa !125  ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -4 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !126
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !126
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %._crit_edge, label %.lr.ph126, !llvm.loop !309

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ai:                                            ; preds = %._crit_edge
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.ef = load ptr, ptr %14, align 8, !tbaa !125  ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !126
  br label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit:         ; preds = %bb.ai, %bb.aj
  %.0.i = phi i32 [ %i.ei, %bb.aj ], [ 0, %bb.ai ]
  %i.ej = load ptr, ptr %0, align 8, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef ptr %i.el(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef 0, i32 noundef %.0.i, ptr noundef %i.ef)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store ptr %1, ptr %16, align 8, !tbaa !108
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 1, ptr %i.en, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.eo = load i32, ptr %i.z, align 8, !tbaa !39
  invoke void @_ZN14func_decl_infoC1EiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(19) %17, i32 noundef %i.eo, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %16)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !120 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, null
  br i1 %.not.i, label %_ZNK9func_decl12is_injectiveEv.exit.thread, label %_ZNK9func_decl20is_right_associativeEv.exit

_ZNK9func_decl20is_right_associativeEv.exit:      ; preds = %bb.al
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 17 ; 4 uses
  %i.es = load i16, ptr %i.er, align 1
  %.fr108 = freeze i16 %i.es
  %i.et = and i16 %.fr108, 2
  %i.eu = getelementptr inbounds nuw i8, ptr %17, i64 17 ; 5 uses
  %i.ev = load i16, ptr %i.eu, align 1
  %i.ew = and i16 %i.ev, -3
  %i.ex = or disjoint i16 %i.ew, %i.et            ; 2 uses
  store i16 %i.ex, ptr %i.eu, align 1
  %i.ey = load i16, ptr %i.er, align 1
  %i.ez = and i16 %i.ey, 1
  %i.fa = and i16 %i.ex, -2
  %i.fb = or disjoint i16 %i.fa, %i.ez            ; 2 uses
  store i16 %i.fb, ptr %i.eu, align 1
  %i.fc = load i16, ptr %i.er, align 1
  %.fr110 = freeze i16 %i.fc
  %i.fd = and i16 %.fr110, 8
  %i.fe = and i16 %i.fb, -9
  %i.ff = or disjoint i16 %i.fd, %i.fe            ; 2 uses
  store i16 %i.ff, ptr %i.eu, align 1
  %i.fg = load i16, ptr %i.er, align 1
  %.fr112 = freeze i16 %i.fg
  %i.fh = and i16 %.fr112, 64
  br label %bb.am

_ZNK9func_decl12is_injectiveEv.exit.thread:       ; preds = %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 17 ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 1
  %i.fk = and i16 %i.fj, -12
  br label %bb.am

bb.am:                                            ; preds = %_ZNK9func_decl20is_right_associativeEv.exit, %_ZNK9func_decl12is_injectiveEv.exit.thread
  %i.fl = phi ptr [ %i.fi, %_ZNK9func_decl12is_injectiveEv.exit.thread ], [ %i.eu, %_ZNK9func_decl20is_right_associativeEv.exit ]
  %i.fm = phi i16 [ %i.fk, %_ZNK9func_decl12is_injectiveEv.exit.thread ], [ %i.ff, %_ZNK9func_decl20is_right_associativeEv.exit ]
  %i.fn = phi i16 [ 0, %_ZNK9func_decl12is_injectiveEv.exit.thread ], [ %i.fh, %_ZNK9func_decl20is_right_associativeEv.exit ]
  %i.fo = and i16 %i.fm, -65
  %i.fp = or disjoint i16 %i.fo, %i.fn            ; 2 uses
  store i16 %i.fp, ptr %i.fl, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !38
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ft = load i32, ptr %17, align 8, !tbaa !124
  %i.fu = icmp eq i32 %i.ft, -1
  %i.fv = and i16 %i.fp, 507
  %or.cond.i = icmp eq i16 %i.fv, 0
  %or.cond = select i1 %i.fu, i1 %or.cond.i, i1 false
  %.sink.i = select i1 %or.cond, ptr null, ptr %17
  %i.fw = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %i.em, ptr noundef %.sink.i)
          to label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit unwind label %bb.as

_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit: ; preds = %bb.am
  %i.fx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !125 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i, label %_ZN9decl_infoD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !126 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.gc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ga, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fy, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #25
  %i.gb = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.gc = add i32 %.07.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.fx, align 8, !tbaa !125
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.gd = phi ptr [ %.pre.i.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.fy, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ge)
          to label %_ZN9decl_infoD2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #26
  unreachable

_ZN9decl_infoD2Ev.exit:                           ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.gh = load ptr, ptr %14, align 8, !tbaa !125  ; 4 uses
  %.not.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i, label %_ZN6vectorI9parameterLb1EjED2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i:   ; preds = %_ZN9decl_infoD2Ev.exit
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !126 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i32 [ %i.gl, %.lr.ph.i.i.i.i.i.i ], [ %i.gj, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i ], [ %i.gh, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i) #25
  %i.gk = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 40
  %i.gl = add i32 %.07.i.i.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %14, align 8, !tbaa !125
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i
  %i.gm = phi ptr [ %.pre.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.gh, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gn)
          to label %_ZN6vectorI9parameterLb1EjED2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #26
  unreachable

_ZN6vectorI9parameterLb1EjED2Ev.exit:             ; preds = %_ZN9decl_infoD2Ev.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  ret ptr %i.fw

bb.ap:                                            ; preds = %._crit_edge
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.au

bb.aq:                                            ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ar:                                            ; preds = %bb.ak
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.am
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %17) #25
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.gt, %bb.as ], [ %i.gs, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.au

bb.au:                                            ; preds = %bb.aq, %bb.at, %bb.ap, %bb.ah
  %.pn50 = phi { ptr, i32 } [ %i.ee, %bb.ah ], [ %i.gq, %bb.ap ], [ %.pn, %bb.at ], [ %i.gr, %bb.aq ]
  call void @_ZN6vectorI9parameterLb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn58 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn50, %bb.au ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  resume { ptr, i32 } %.pn58
}

; Function Attrs: noreturn
declare void @_ZN11ast_manager15raise_exceptionEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI9parameterLb1EjE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.93, align 8             ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !125    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !126  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !126
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorI9parameterLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !125   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -4
  %.pre2 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !126
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre2, %bb.c ], [ %i.d, %bb.b ]
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i8 -1, ptr %i.l, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.k, ptr %2, align 8, !tbaa !147
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJiP3ast6symbolP7zstring8rationaldjEEC1EOSA_EUlOT_T0_E_JSt7variantIJiS5_S6_S8_S9_djEEEEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEEC2EOS6_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEEC2EOS6_.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !110   ; 2 uses
  store i8 %i.p, ptr %i.l, align 8, !tbaa !110
  switch i8 %i.p, label %_ZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEE7emplaceILm0EJiEEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJiS1_S2_S4_S5_djEE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i [
    i8 0, label %_ZSt3getILm0EJiP3ast6symbolP7zstring8rationaldjEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i.i
    i8 4, label %bb.f
  ], !prof !148

_ZSt3getILm0EJiP3ast6symbolP7zstring8rationaldjEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i.i: ; preds = %_ZNSt7variantIJiP3ast6symbolP7zstring8rationaldjEEC2EOS6_.exit.i
end_hunk_0
