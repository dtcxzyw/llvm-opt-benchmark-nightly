Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_pragma?download=true
inline.NumInlined: 1202
inline.NumDeleted: 418
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6duckdb16PragmaShowTablesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:._crit_edge.i.i
bb.x:                                             ; preds = %bb.u
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83 unwind label %bb.aa

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83: ; preds = %bb.x
  %.pre189 = load ptr, ptr %10, align 8, !tbaa !106 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dq = icmp eq ptr %.pre189, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83
  call void @_ZdlPv(ptr noundef %.pre189) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit83.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  %i.dr = load ptr, ptr %12, align 8, !tbaa !106  ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cc
  br i1 %i.ds, label %_ZN6duckdb9SQLStringD2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  call void @_ZdlPv(ptr noundef %i.dr) #19
  br label %_ZN6duckdb9SQLStringD2Ev.exit89

_ZN6duckdb9SQLStringD2Ev.exit89:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  %i.dt = load ptr, ptr %11, align 8, !tbaa !106  ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bw
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZN6duckdb9SQLStringD2Ev.exit89
  call void @_ZdlPv(ptr noundef %i.dt) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZN6duckdb9SQLStringD2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ab

bb.y:                                             ; preds = %.noexc.i58
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.z:                                             ; preds = %.noexc.i.i62
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb9SQLStringD2Ev.exit98

bb.aa:                                            ; preds = %bb.x
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %10, align 8, !tbaa !106  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %.body76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.dy) #19
  br label %.body76

.body76:                                          ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %bb.t
  %.pn23 = phi { ptr, i32 } [ %i.cx, %bb.t ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.dx, %bb.aa ] ; 2 uses
  %i.eb = load ptr, ptr %12, align 8, !tbaa !106  ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cc
  br i1 %i.ec, label %_ZN6duckdb9SQLStringD2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i96: ; preds = %.body76
  call void @_ZdlPv(ptr noundef %i.eb) #19
  br label %_ZN6duckdb9SQLStringD2Ev.exit98

_ZN6duckdb9SQLStringD2Ev.exit98:                  ; preds = %.body76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i96, %bb.z
  %.pn23.pn = phi { ptr, i32 } [ %i.dw, %bb.z ], [ %.pn23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i96 ], [ %.pn23, %.body76 ] ; 2 uses
  %i.ed = load ptr, ptr %11, align 8, !tbaa !106  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.bw
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZN6duckdb9SQLStringD2Ev.exit98
  call void @_ZdlPv(ptr noundef %i.ed) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZN6duckdb9SQLStringD2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.y
  %.pn23.pn.pn = phi { ptr, i32 } [ %i.dv, %bb.y ], [ %.pn23.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %.pn23.pn, %_ZN6duckdb9SQLStringD2Ev.exit98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.bg

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.n
  %i.ef = load ptr, ptr %6, align 8, !tbaa !430
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !430
  %i.ei = icmp eq ptr %i.ef, %i.eh
  br i1 %i.ei, label %.noexc.i103, label %._crit_edge.i.i117

.noexc.i103:                                      ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  store ptr %i.ej, ptr %13, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 42, ptr %i.a, align 8, !tbaa !126
  %i.ek = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc104 unwind label %bb.af ; 3 uses

.noexc104:                                        ; preds = %.noexc.i103
  store ptr %i.ek, ptr %13, align 8, !tbaa !106
  %i.el = load i64, ptr %i.a, align 8, !tbaa !126 ; 3 uses
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.ek, ptr noundef nonnull align 1 dereferenceable(42) @.str.28, i64 42, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 %i.el, ptr %i.em, align 8, !tbaa !104
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el
  store i8 0, ptr %i.en, align 1, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !352 ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !353
  %.not.i.i106 = icmp eq ptr %i.eo, %i.eq
  br i1 %.not.i.i106, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.noexc104
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 3 uses
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !101
  %i.es = load ptr, ptr %13, align 8, !tbaa !106  ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ej
  br i1 %i.et, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107

bb.ad:                                            ; preds = %bb.ac
  %i.eu = load i64, ptr %i.em, align 8, !tbaa !104 ; 3 uses
  %i.ev = icmp ult i64 %i.eu, 16
  call void @llvm.assume(i1 %i.ev)
  %i.ew = add nuw nsw i64 %i.eu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.er, ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i64 %i.ew, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit110.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107: ; preds = %bb.ac
  store ptr %i.es, ptr %i.eo, align 8, !tbaa !106
  %i.ex = load i64, ptr %i.ej, align 8, !tbaa !105
  store i64 %i.ex, ptr %i.er, align 8, !tbaa !105
  %.pre190 = load i64, ptr %i.em, align 8, !tbaa !104
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit110.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit110.thread: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
  %i.ey = phi i64 [ %.pre190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107 ], [ %i.eu, %bb.ad ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !104
  store ptr %i.ej, ptr %13, align 8, !tbaa !106
  store i64 0, ptr %i.em, align 8, !tbaa !104
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store ptr %i.fa, ptr %i.eg, align 8, !tbaa !352
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.ae:                                            ; preds = %.noexc104
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit110 unwind label %bb.ag

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit110: ; preds = %bb.ae
  %.pre191 = load ptr, ptr %13, align 8, !tbaa !106 ; 2 uses
  %i.fb = icmp eq ptr %.pre191, %i.ej
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit110
  call void @_ZdlPv(ptr noundef %.pre191) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit110, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit110.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %._crit_edge.i.i117

bb.af:                                            ; preds = %.noexc.i103
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.ag:                                            ; preds = %bb.ae
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %13, align 8, !tbaa !106  ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ej
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef %i.fe) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.fc, %bb.af ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.fd, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.bg

._crit_edge.i.i117:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.fg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.fg, ptr %16, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fg, ptr noundef nonnull align 1 dereferenceable(5) @.str.30, i64 5, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 5, ptr %i.fh, align 8, !tbaa !104
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 21
  store i8 0, ptr %i.fi, align 1, !tbaa !105
  invoke void @_ZN6duckdb10StringUtil4JoinERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ah unwind label %bb.bb

bb.ah:                                            ; preds = %._crit_edge.i.i117
  %i.fj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.29, i64 noundef 6)
          to label %.noexc122 unwind label %bb.bc ; 6 uses

.noexc122:                                        ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 8 uses
  store ptr %i.fk, ptr %14, align 8, !tbaa !101, !alias.scope !431
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !106 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 5 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

bb.ai:                                            ; preds = %.noexc122
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !104 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 16
  call void @llvm.assume(i1 %i.fq)
  %i.fr = add nuw nsw i64 %i.fp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fk, ptr noundef nonnull align 8 dereferenceable(1) %i.fm, i64 %i.fr, i1 false)
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %.noexc122
  store ptr %i.fl, ptr %14, align 8, !tbaa !106, !alias.scope !431
  %i.fs = load i64, ptr %i.fm, align 8, !tbaa !105
  store i64 %i.fs, ptr %i.fk, align 8, !tbaa !105, !alias.scope !431
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !104
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.ai
  %i.ft = phi i64 [ %i.fp, %bb.ai ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  store i64 %i.ft, ptr %i.fv, align 8, !tbaa !104, !alias.scope !431
  store ptr %i.fm, ptr %i.fj, align 8, !tbaa !106
  store i64 0, ptr %i.fu, align 8, !tbaa !104
  store i8 0, ptr %i.fm, align 8, !tbaa !105
  %i.fw = load ptr, ptr %5, align 8, !tbaa !106   ; 6 uses
  %i.fx = icmp eq ptr %i.fw, %i.f
  %i.fy = load ptr, ptr %14, align 8, !tbaa !106  ; 5 uses
  %i.fz = icmp eq ptr %i.fy, %i.fk                ; 2 uses
  br i1 %i.fx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aj
  br i1 %i.fz, label %bb.ak, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aj
  br i1 %i.fz, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ga = load i64, ptr %i.fv, align 8, !tbaa !104 ; 3 uses
  %i.gb = icmp ult i64 %i.ga, 16
  call void @llvm.assume(i1 %i.gb)
  switch i64 %i.ga, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gc = load i8, ptr %i.fy, align 1, !tbaa !105
  store i8 %i.gc, ptr %i.fw, align 1, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr align 1 %i.fy, i64 %i.ga, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.gd = load i64, ptr %i.fv, align 8, !tbaa !104 ; 2 uses
  store i64 %i.gd, ptr %i.g, align 8, !tbaa !104
  %i.ge = load ptr, ptr %5, align 8, !tbaa !106
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd
  store i8 0, ptr %i.gf, align 1, !tbaa !105
  %.pre.i123 = load ptr, ptr %14, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.fy, ptr %5, align 8, !tbaa !106
  %i.gg = load <2 x i64>, ptr %i.fv, align 8, !tbaa !105
  store <2 x i64> %i.gg, ptr %i.g, align 8, !tbaa !105
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gh = load i64, ptr %i.f, align 8, !tbaa !105
  store ptr %i.fy, ptr %5, align 8, !tbaa !106
  %i.gi = load <2 x i64>, ptr %i.fv, align 8, !tbaa !105
  store <2 x i64> %i.gi, ptr %i.g, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.fw, null
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fw, ptr %14, align 8, !tbaa !106
  store i64 %i.gh, ptr %i.fk, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.fk, ptr %14, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.an, %bb.ao
  %i.gj = phi ptr [ %.pre.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.fw, %bb.an ], [ %i.fk, %bb.ao ]
  store i64 0, ptr %i.fv, align 8, !tbaa !104
  store i8 0, ptr %i.gj, align 1, !tbaa !105
  %i.gk = load ptr, ptr %14, align 8, !tbaa !106  ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.fk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.gk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  %i.gm = load ptr, ptr %15, align 8, !tbaa !106  ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  call void @_ZdlPv(ptr noundef %i.gm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  %i.gp = load ptr, ptr %16, align 8, !tbaa !106  ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.fg
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  call void @_ZdlPv(ptr noundef %i.gp) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.gr = load ptr, ptr %5, align 8, !tbaa !106, !noalias !432
  %i.gs = load i64, ptr %i.g, align 8, !tbaa !104, !noalias !432 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  store ptr %i.gt, ptr %19, align 8, !tbaa !101, !alias.scope !433
  %i.gu = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 0, ptr %i.gu, align 8, !tbaa !104, !alias.scope !433
  store i8 0, ptr %i.gt, align 8, !tbaa !105, !alias.scope !433
  %i.gv = add i64 %i.gs, 75
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.gv)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !104, !alias.scope !433
  %i.gx = add i64 %i.gw, -4611686018427387829
  %i.gy = icmp ult i64 %i.gx, 75
  br i1 %i.gy, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ap
  %i.gz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.31, i64 noundef 75)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.aq ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ha = load i64, ptr %i.gu, align 8, !tbaa !104, !alias.scope !433
  %i.hb = sub i64 4611686018427387903, %i.ha
  %i.hc = icmp ult i64 %i.hb, %i.gs
  br i1 %i.hc, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #20
          to label %.cont.i.i unwind label %bb.aq

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.hd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.gr, i64 noundef %i.gs)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %19, align 8, !tbaa !106, !alias.scope !433 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.gt
  br i1 %i.hg, label %.body133, label %.body133.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.hh = load i64, ptr %i.gu, align 8, !tbaa !104, !noalias !434
  %i.hi = add i64 %i.hh, -4611686018427387834
  %i.hj = icmp ult i64 %i.hi, 70
  br i1 %i.hj, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ar:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #20
          to label %.noexc138 unwind label %bb.bd

.noexc138:                                        ; preds = %bb.ar
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.hk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.32, i64 noundef 70)
          to label %.noexc139 unwind label %bb.bd ; 6 uses

.noexc139:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.hl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.hl, ptr %18, align 8, !tbaa !101, !alias.scope !434
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !106 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 5 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

bb.as:                                            ; preds = %.noexc139
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !104 ; 3 uses
  %i.hr = icmp ult i64 %i.hq, 16
  call void @llvm.assume(i1 %i.hr)
  %i.hs = add nuw nsw i64 %i.hq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hl, ptr noundef nonnull align 8 dereferenceable(1) %i.hn, i64 %i.hs, i1 false)
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %.noexc139
  store ptr %i.hm, ptr %18, align 8, !tbaa !106, !alias.scope !434
  %i.ht = load i64, ptr %i.hn, align 8, !tbaa !105
  store i64 %i.ht, ptr %i.hl, align 8, !tbaa !105, !alias.scope !434
  %.phi.trans.insert.i136 = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.pre.i137 = load i64, ptr %.phi.trans.insert.i136, align 8, !tbaa !104
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.as
  %i.hu = phi i64 [ %i.hq, %bb.as ], [ %.pre.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 %i.hu, ptr %i.hw, align 8, !tbaa !104, !alias.scope !434
  store ptr %i.hn, ptr %i.hk, align 8, !tbaa !106
  store i64 0, ptr %i.hv, align 8, !tbaa !104
  store i8 0, ptr %i.hn, align 8, !tbaa !105
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.hx = load i64, ptr %i.g, align 8, !tbaa !104, !noalias !435 ; 2 uses
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !104, !noalias !435
  %i.hz = sub i64 4611686018427387903, %i.hy
  %i.ia = icmp ult i64 %i.hz, %i.hx
  br i1 %i.ia, label %bb.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #20
          to label %.noexc143 unwind label %bb.be

.noexc143:                                        ; preds = %bb.au
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.at
  %i.ib = load ptr, ptr %5, align 8, !tbaa !106, !noalias !435
  %i.ic = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %i.ib, i64 noundef %i.hx)
          to label %.noexc144 unwind label %bb.be ; 6 uses

.noexc144:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.id = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.id, ptr %17, align 8, !tbaa !101, !alias.scope !435
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !106 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 5 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

bb.av:                                            ; preds = %.noexc144
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !104 ; 3 uses
  %i.ij = icmp ult i64 %i.ii, 16
  call void @llvm.assume(i1 %i.ij)
  %i.ik = add nuw nsw i64 %i.ii, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.id, ptr noundef nonnull align 8 dereferenceable(1) %i.if, i64 %i.ik, i1 false)
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %.noexc144
  store ptr %i.ie, ptr %17, align 8, !tbaa !106, !alias.scope !435
  %i.il = load i64, ptr %i.if, align 8, !tbaa !105
  store i64 %i.il, ptr %i.id, align 8, !tbaa !105, !alias.scope !435
  %.phi.trans.insert.i141 = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %.pre.i142 = load i64, ptr %.phi.trans.insert.i141, align 8, !tbaa !104
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.av
  %i.im = phi i64 [ %i.ii, %bb.av ], [ %.pre.i142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.im, ptr %i.io, align 8, !tbaa !104, !alias.scope !435
  store ptr %i.if, ptr %i.ic, align 8, !tbaa !106
  store i64 0, ptr %i.in, align 8, !tbaa !104
  store i8 0, ptr %i.if, align 8, !tbaa !105
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !104, !noalias !436
  %i.iq = add i64 %i.ip, -4611686018427387759
  %i.ir = icmp ult i64 %i.iq, 145
  br i1 %i.ir, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i145

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #20
          to label %.noexc149 unwind label %bb.bf

.noexc149:                                        ; preds = %bb.ax
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i145: ; preds = %bb.aw
  %i.is = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.33, i64 noundef 145)
          to label %.noexc150 unwind label %bb.bf ; 6 uses

.noexc150:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i145
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.it, ptr %0, align 8, !tbaa !101, !alias.scope !436
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !106 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 5 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

bb.ay:                                            ; preds = %.noexc150
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !104 ; 3 uses
  %i.iz = icmp ult i64 %i.iy, 16
  call void @llvm.assume(i1 %i.iz)
  %i.ja = add nuw nsw i64 %i.iy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.it, ptr noundef nonnull align 8 dereferenceable(1) %i.iv, i64 %i.ja, i1 false)
  br label %bb.az

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %.noexc150
  store ptr %i.iu, ptr %0, align 8, !tbaa !106, !alias.scope !436
  %i.jb = load i64, ptr %i.iv, align 8, !tbaa !105
  store i64 %i.jb, ptr %i.it, align 8, !tbaa !105, !alias.scope !436
  %.phi.trans.insert.i147 = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %.pre.i148 = load i64, ptr %.phi.trans.insert.i147, align 8, !tbaa !104
  br label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.ay
  %i.jc = phi i64 [ %i.iy, %bb.ay ], [ %.pre.i148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jc, ptr %i.je, align 8, !tbaa !104, !alias.scope !436
  store ptr %i.iv, ptr %i.is, align 8, !tbaa !106
  store i64 0, ptr %i.jd, align 8, !tbaa !104
  store i8 0, ptr %i.iv, align 8, !tbaa !105
  %i.jf = load ptr, ptr %17, align 8, !tbaa !106  ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.id
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.jf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  %i.jh = load ptr, ptr %18, align 8, !tbaa !106  ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.hl
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  call void @_ZdlPv(ptr noundef %i.jh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  %i.jj = load ptr, ptr %19, align 8, !tbaa !106  ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.gt
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  call void @_ZdlPv(ptr noundef %i.jj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.jl = load ptr, ptr %6, align 8, !tbaa !354   ; 3 uses
  %i.jm = load ptr, ptr %i.eg, align 8, !tbaa !352 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jl, %i.jm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ] ; 3 uses
  %i.jn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !106 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.jn) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jq, %i.jm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !354
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.jr = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.jr) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.js = load ptr, ptr %5, align 8, !tbaa !106   ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.f
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.js) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.bb:                                            ; preds = %._crit_edge.i.i117
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bc:                                            ; preds = %bb.ah
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load ptr, ptr %15, align 8, !tbaa !106  ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.jw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.bb
  %.pn29 = phi { ptr, i32 } [ %i.ju, %bb.bb ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.jv, %bb.bc ]
  %i.jz = load ptr, ptr %16, align 8, !tbaa !106  ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.fg
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  call void @_ZdlPv(ptr noundef %i.jz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.bg

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.ar
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.au
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i145, %bb.ax
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = load ptr, ptr %17, align 8, !tbaa !106  ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.id
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.bf
  call void @_ZdlPv(ptr noundef %i.ke) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %bb.be
  %.pn32 = phi { ptr, i32 } [ %i.kc, %bb.be ], [ %i.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %i.kd, %bb.bf ] ; 2 uses
  %i.kg = load ptr, ptr %18, align 8, !tbaa !106  ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.hl
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  call void @_ZdlPv(ptr noundef %i.kg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.bd
  %.pn32.pn = phi { ptr, i32 } [ %i.kb, %bb.bd ], [ %.pn32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ] ; 2 uses
  %i.ki = load ptr, ptr %19, align 8, !tbaa !106  ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.gt
  br i1 %i.kj, label %.body133, label %.body133.sink.split

.body133.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %bb.aq
  %.sink = phi ptr [ %i.hf, %bb.aq ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ]
  %.pn32.pn.pn.ph = phi { ptr, i32 } [ %i.he, %bb.aq ], [ %.pn32.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ]
  call void @_ZdlPv(ptr noundef %.sink) #19
  br label %.body133

.body133:                                         ; preds = %.body133.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %bb.aq
  %.pn32.pn.pn = phi { ptr, i32 } [ %i.he, %bb.aq ], [ %.pn32.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.pn32.pn.pn.ph, %.body133.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.bg

bb.bg:                                            ; preds = %.body133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn32.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn, %.body133 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn23.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.kk = load ptr, ptr %5, align 8, !tbaa !106   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !104
  store i8 0, ptr %i.h, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.j, ptr %9, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.j, ptr noundef nonnull align 1 dereferenceable(10) @.str.69, i64 10, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 10, ptr %i.k, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 26
  store i8 0, ptr %i.l, align 2, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !101
  store i64 7814153471554318188, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 8, ptr %i.o, align 8, !tbaa !104
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i8 0, ptr %i.p, align 8, !tbaa !105
  %i.q = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %.thread ; 7 uses

.thread:                                          ; preds = %._crit_edge.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %._crit_edge.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %i.q, ptr %8, align 8, !tbaa !354
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !353
  %i.v = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %9, ptr noundef nonnull %i.s, ptr noundef nonnull %i.q)
          to label %bb.b unwind label %bb.a       ; 3 uses

bb.a:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.q) #19
  br label %.body

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !tbaa !352
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !106  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.z) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = load ptr, ptr %9, align 8, !tbaa !106   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ac) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %.not289 = icmp eq ptr %i.q, %i.v
  br i1 %.not289, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread, label %.lr.ph292

.lr.ph292:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.c

._crit_edge293:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %.pre313 = load ptr, ptr %8, align 8, !tbaa !354 ; 4 uses
  %.pre314 = load ptr, ptr %i.x, align 8, !tbaa !352 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre313, %.pre314
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge293, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre313, %._crit_edge293 ] ; 3 uses
  %i.aw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !106 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.aw) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %.pre314
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %._crit_edge293
  %.not.i.i1.i = icmp eq ptr %.pre313, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %.pr.i382385 = phi ptr [ %.pre313, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1 ]
  call void @_ZdlPv(ptr noundef nonnull %.pr.i382385) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret void

.body:                                            ; preds = %.thread, %bb.a
  %i.ba = phi { ptr, i32 } [ %i.r, %.thread ], [ %i.w, %bb.a ]
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !106 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.bc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  %i.bf = load ptr, ptr %9, align 8, !tbaa !106   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  call void @_ZdlPv(ptr noundef %i.bf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bs

bb.c:                                             ; preds = %.lr.ph292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %.sroa.0203.0290 = phi ptr [ %i.q, %.lr.ph292 ], [ %i.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.bi = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(64) %i.bi)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb10FileSystem8JoinPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0203.0290)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr %11, align 8, !tbaa !106  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.af
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.bj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.321") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 1, i64 66048, ptr null)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.bo = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.bo)
          to label %bb.i unwind label %bb.w       ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.bt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bs) #21
          to label %bb.j unwind label %bb.w       ; 6 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bt, i8 0, i64 %i.bs, i1 false), !noalias !486
  %i.bu = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.bu, ptr noundef nonnull %i.bt, i64 noundef %i.bs)
          to label %bb.l unwind label %bb.x       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.bz = and i64 %i.bs, 4294967295               ; 3 uses
  store ptr %i.ag, ptr %13, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i64 %i.bz, ptr %i.f, align 8, !tbaa !126
  %i.ca = icmp samesign ugt i64 %i.bz, 15
  br i1 %i.ca, label %.noexc.i91, label %._crit_edge.i.i90

.noexc.i91:                                       ; preds = %bb.l
  %i.cb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc93 unwind label %bb.y   ; 2 uses

.noexc93:                                         ; preds = %.noexc.i91
  store ptr %i.cb, ptr %13, align 8, !tbaa !106
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !126
  store i64 %i.cc, ptr %i.ag, align 8, !tbaa !105
  br label %._crit_edge.i.i90

._crit_edge.i.i90:                                ; preds = %.noexc93, %bb.l
  %i.cd = phi ptr [ %i.cb, %.noexc93 ], [ %i.ag, %bb.l ] ; 2 uses
  %trunc = trunc i64 %i.bs to i32
  switch i32 %trunc, label %bb.n [
    i32 1, label %bb.m
    i32 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i90
  %i.ce = load i8, ptr %i.bt, align 1, !tbaa !105
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !105
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i90
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr nonnull align 1 %i.bt, i64 %i.bz, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i90
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !126 ; 2 uses
  store i64 %i.cf, ptr %i.ah, align 8, !tbaa !104
  %i.cg = load ptr, ptr %13, align 8, !tbaa !106
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 0, ptr %i.ch, align 1, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0203.0290, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !104
  %i.ck = icmp eq i64 %i.cj, 8
  br i1 %i.ck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread217

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.o
  %i.cl = load ptr, ptr %.sroa.0203.0290, align 8, !tbaa !106
  %i.cm = load i64, ptr %i.cl, align 1
  %i.cn = icmp ne i64 %i.cm, 7814153471554318188
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.a, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread217

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.a: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  store i8 1, ptr %15, align 8, !tbaa !490
  store i64 1000, ptr %i.ai, align 8, !tbaa !491
  store i8 0, ptr %i.aj, align 8, !tbaa !492
  invoke void @_ZN6duckdb6ParserC1ENS_13ParserOptionsE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull byval(%"struct.duckdb::ParserOptions") align 8 %15)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.a
  invoke void @_ZN6duckdb6Parser10ParseQueryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.cq = load ptr, ptr %14, align 8, !tbaa !362  ; 4 uses
  store ptr %i.cq, ptr %16, align 8, !tbaa !362
  %i.cr = load <2 x ptr>, ptr %i.al, align 8, !tbaa !493
  %i.cs = load ptr, ptr %i.al, align 8, !tbaa !363 ; 2 uses
  store <2 x ptr> %i.cr, ptr %i.ak, align 8, !tbaa !493
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  store i64 0, ptr %i.ah, align 8, !tbaa !104
  %i.ct = load ptr, ptr %13, align 8, !tbaa !106
  store i8 0, ptr %i.ct, align 1, !tbaa !105
  %.not218287 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not218287, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %.pre = load ptr, ptr %16, align 8, !tbaa !362  ; 4 uses
  %.pre312 = load ptr, ptr %i.ak, align 8, !tbaa !363 ; 2 uses
  %.not4.i.i.i94 = icmp eq ptr %.pre, %.pre312
  br i1 %.not4.i.i.i94, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i95

.lr.ph.i.i.i95:                                   ; preds = %._crit_edge, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i96 = phi ptr [ %i.cy, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.cu = load ptr, ptr %.05.i.i.i96, align 8, !tbaa !365 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i95
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !112
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cu) #18, !inline_history !5
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i95
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i96, i64 8 ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.cy, %.pre312
  br i1 %.not.i.i.i97, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i95, !llvm.loop !6

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, %bb.q, %._crit_edge
  %.pr.i98388 = phi ptr [ %i.cq, %bb.q ], [ %.pre, %._crit_edge ], [ %.pre, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ] ; 2 uses
  %.not.i.i1.i99 = icmp eq ptr %.pr.i98388, null
  br i1 %.not.i.i1.i99, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.pr.i98388) #19
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.cz = load ptr, ptr %14, align 8, !tbaa !362  ; 3 uses
  %i.da = load ptr, ptr %i.al, align 8, !tbaa !363 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cz, %i.da
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.df, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.cz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %i.db = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !112
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.db) #18, !inline_history !481
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.df, %i.da
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %14, align 8, !tbaa !362
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.dg = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb6ParserD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dg) #19
  br label %_ZN6duckdb6ParserD2Ev.exit

_ZN6duckdb6ParserD2Ev.exit:                       ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread217

bb.t:                                             ; preds = %bb.d, %bb.c
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.u:                                             ; preds = %bb.e
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %11, align 8, !tbaa !106  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.af
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.dj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.t
  %.pn55 = phi { ptr, i32 } [ %i.dh, %bb.t ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.di, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit174

bb.w:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN6duckdbL20PragmaImportDatabaseB5cxx11ERNS_13ClientContextERKNS_18FunctionParametersE:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 192 ; 6 uses
  invoke void @_ZN6duckdb10FileSystem11ExtractNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ew)
          to label %bb.ap unwind label %bb.bi

bb.ap:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.ex = load ptr, ptr %i.am, align 8, !tbaa !369 ; 2 uses
  %i.ey = load ptr, ptr %2, align 8, !tbaa !370   ; 3 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.d, align 8, !tbaa !126
  store i64 %i.fc, ptr %i.e, align 8, !tbaa !126
  %.not.i.i.i117.not = icmp eq ptr %i.ex, %i.ey
  br i1 %.not.i.i.i117.not, label %.noexc.i190, label %bb.au, !prof !366

.noexc.i190:                                      ; preds = %bb.ap
  %i.fd = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.fe, ptr %3, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 55, ptr %i.a, align 8, !tbaa !126
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc191 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc191:                                        ; preds = %.noexc.i190
  store ptr %i.ff, ptr %3, align 8, !tbaa !106
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !126 ; 3 uses
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ff, ptr noundef nonnull align 1 dereferenceable(55) @.str.57, i64 55, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !104
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  store i8 0, ptr %i.fi, align 1, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc191
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.at unwind label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i190
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq, %.noexc191
  %.0.i.i.i = phi i1 [ false, %bb.aq ], [ true, %.noexc191 ] ; 2 uses
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fl = load ptr, ptr %3, align 8, !tbaa !106   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.fe
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.fl) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.0.i.i.i, label %bb.as, label %.body118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.0.i.i.i, label %bb.as, label %.body118

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.fd) #18
  br label %.body118

bb.at:                                            ; preds = %bb.aq
  unreachable

bb.au:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(64) %i.ey)
          to label %bb.av unwind label %bb.bj

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6duckdb10FileSystem8JoinPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.aw unwind label %bb.bk

bb.aw:                                            ; preds = %bb.av
  %i.fn = load ptr, ptr %i.ew, align 8, !tbaa !106 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.el, i64 208 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  %i.fq = load ptr, ptr %18, align 8, !tbaa !106  ; 6 uses
  %i.fr = icmp eq ptr %i.fq, %i.an                ; 2 uses
  br i1 %i.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aw
  br i1 %i.fr, label %bb.ax, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aw
  br i1 %i.fr, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fs = load i64, ptr %i.ao, align 8, !tbaa !104 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, 16
  call void @llvm.assume(i1 %i.ft)
  %.not21.i = icmp eq ptr %18, %i.ew
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ay, !prof !366

bb.ay:                                            ; preds = %bb.ax
  switch i64 %i.fs, label %bb.ba [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !105
  store i8 %i.fu, ptr %i.fn, align 1, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr align 1 %i.fq, i64 %i.fs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.fv = load i64, ptr %i.ao, align 8, !tbaa !104 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.el, i64 200
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !104
  %i.fx = load ptr, ptr %i.ew, align 8, !tbaa !106
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fv
  store i8 0, ptr %i.fy, align 1, !tbaa !105
  %.pre.i = load ptr, ptr %18, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.el, i64 200
  store ptr %i.fq, ptr %i.ew, align 8, !tbaa !106
  %i.ga = load <2 x i64>, ptr %i.ao, align 8, !tbaa !105
  store <2 x i64> %i.ga, ptr %i.fz, align 8, !tbaa !105
  br label %bb.bc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gb = load i64, ptr %i.fo, align 8, !tbaa !105
  store ptr %i.fq, ptr %i.ew, align 8, !tbaa !106
  %i.gc = getelementptr inbounds nuw i8, ptr %i.el, i64 200
  %i.gd = load <2 x i64>, ptr %i.ao, align 8, !tbaa !105
  store <2 x i64> %i.gd, ptr %i.gc, align 8, !tbaa !105
  %.not.i120 = icmp eq ptr %i.fn, null
  br i1 %.not.i120, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fn, ptr %18, align 8, !tbaa !106
  store i64 %i.gb, ptr %i.an, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.an, ptr %18, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bb, %bb.bc
  %i.ge = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.fn, %bb.bb ], [ %i.an, %bb.bc ], [ %i.fq, %bb.ax ]
  store i64 0, ptr %i.ao, align 8, !tbaa !104
  store i8 0, ptr %i.ge, align 1, !tbaa !105
  %i.gf = load ptr, ptr %18, align 8, !tbaa !106  ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.an
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.gf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  %i.gh = load ptr, ptr %19, align 8, !tbaa !106  ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.ap
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  call void @_ZdlPv(ptr noundef %i.gh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.gj = load ptr, ptr %i.dr, align 8, !tbaa !112
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  invoke void %i.gl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(128) %i.dr)
          to label %bb.bd unwind label %bb.bl

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.gm = load i64, ptr %i.aq, align 8, !tbaa !104, !noalias !501
  %i.gn = icmp eq i64 %i.gm, 4611686018427387903
  br i1 %i.gn, label %bb.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #20
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc129:                                        ; preds = %bb.be
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.bd
  %i.go = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc130:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ar, ptr %20, align 8, !tbaa !101, !alias.scope !501
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !106 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 5 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

bb.bf:                                            ; preds = %.noexc130
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !104 ; 3 uses
  %i.gu = icmp ult i64 %i.gt, 16
  call void @llvm.assume(i1 %i.gu)
  %i.gv = add nuw nsw i64 %i.gt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.gq, i64 %i.gv, i1 false)
  br label %bb.bg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %.noexc130
  store ptr %i.gp, ptr %20, align 8, !tbaa !106, !alias.scope !501
  %i.gw = load i64, ptr %i.gq, align 8, !tbaa !105
  store i64 %i.gw, ptr %i.ar, align 8, !tbaa !105, !alias.scope !501
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.pre.i128 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !104
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.bf
  %i.gx = phi i64 [ %i.gt, %bb.bf ], [ %.pre.i128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.gx, ptr %i.as, align 8, !tbaa !104, !alias.scope !501
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !106
  store i64 0, ptr %i.gy, align 8, !tbaa !104
  store i8 0, ptr %i.gq, align 8, !tbaa !105
  %i.gz = load i64, ptr %i.as, align 8, !tbaa !104 ; 2 uses
  %i.ha = load i64, ptr %i.ah, align 8, !tbaa !104
  %i.hb = sub i64 4611686018427387903, %i.ha
  %i.hc = icmp ult i64 %i.hb, %i.gz
  br i1 %i.hc, label %bb.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #20
          to label %.noexc131 unwind label %.loopexit.split-lp220.loopexit.split-lp

.noexc131:                                        ; preds = %bb.bh
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.bg
  %i.hd = load ptr, ptr %20, align 8, !tbaa !106
  %i.he = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.hd, i64 noundef %i.gz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp220.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.hf = load ptr, ptr %20, align 8, !tbaa !106  ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.ar
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.hf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  %i.hh = load ptr, ptr %21, align 8, !tbaa !106  ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.at
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  call void @_ZdlPv(ptr noundef %i.hh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.hj = load ptr, ptr %17, align 8, !tbaa !106  ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.au
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  call void @_ZdlPv(ptr noundef %i.hj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0193.0288, i64 8 ; 2 uses
  %.not218 = icmp eq ptr %i.hl, %i.cs
  br i1 %.not218, label %._crit_edge, label %.lr.ph

bb.bi:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEdeEv.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

bb.bj:                                            ; preds = %bb.au
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body118

bb.bk:                                            ; preds = %bb.av
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hp = load ptr, ptr %19, align 8, !tbaa !106  ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.ap
  br i1 %i.hq, label %.body118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.bk
  call void @_ZdlPv(ptr noundef %i.hp) #19
  br label %.body118

.body118:                                         ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.bj, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn57 = phi { ptr, i32 } [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.hn, %bb.bj ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.as ], [ %i.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.ho, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.bm

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.be
  %lpad.loopexit.split-lp425 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

.loopexit.split-lp220.loopexit.split-lp:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hs = load ptr, ptr %20, align 8, !tbaa !106  ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.ar
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %.loopexit.split-lp220.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.hs) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %.loopexit.split-lp220.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  %.pn59 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %lpad.loopexit.split-lp425, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp220.loopexit.split-lp ] ; 2 uses
  %i.hu = load ptr, ptr %21, align 8, !tbaa !106  ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.at
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  call void @_ZdlPv(ptr noundef %i.hu) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.bl
  %.pn59.pn = phi { ptr, i32 } [ %i.hr, %bb.bl ], [ %.pn59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %.body118
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ], [ %.pn57, %.body118 ] ; 2 uses
  %i.hw = load ptr, ptr %17, align 8, !tbaa !106  ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.au
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.hw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.bi
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %i.hm, %bb.bi ], [ %.pn59.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %.pn59.pn.pn, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %.body103

.body103:                                         ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %.pn59.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.ad ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.aj ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113 ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i114 ], [ %.pn9.i.i110, %bb.an ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.bn

bb.bn:                                            ; preds = %.body103, %bb.aa
  %.pn59.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn.pn.pn, %.body103 ], [ %i.dq, %bb.aa ]
  call void @_ZN6duckdb6ParserD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #18
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.z
  %.pn59.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn.pn.pn.pn, %bb.bn ], [ %i.dp, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.bq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread217: ; preds = %bb.o, %_ZN6duckdb6ParserD2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hy = load i64, ptr %i.ah, align 8, !tbaa !104 ; 2 uses
  %i.hz = load i64, ptr %i.i, align 8, !tbaa !104
  %i.ia = sub i64 4611686018427387903, %i.hz
  %i.ib = icmp ult i64 %i.ia, %i.hy
  br i1 %i.ib, label %bb.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i154

bb.bp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread217
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #20
          to label %.noexc155 unwind label %.loopexit.split-lp225.loopexit.split-lp

.noexc155:                                        ; preds = %bb.bp
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i154: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread217
  %i.ic = load ptr, ptr %13, align 8, !tbaa !106
  %i.id = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ic, i64 noundef %i.hy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit157 unwind label %.loopexit.split-lp225.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i154
end_hunk_2
