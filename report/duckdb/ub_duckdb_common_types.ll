inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 231
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_19WKTParser9ParseNodeEv:bb.a
  %i.dm = call i32 @isalnum(i32 noundef %i.dl) #51, !noalias !4038
  %.not11.i = icmp ne i32 %i.dm, 0
  %i.dn = icmp eq i8 %i.dk, 95
  %or.cond12.i = or i1 %i.dn, %.not11.i
  br i1 %or.cond12.i, label %.critedge2.i, label %._crit_edge, !llvm.loop !4041

._crit_edge:                                      ; preds = %.lr.ph
  br label %.critedge2.i._crit_edge, !llvm.loop !4041

.critedge2.i._crit_edge:                          ; preds = %.critedge2.i, %._crit_edge, %.critedge2.i.preheader
  %storemerge.i175.lcssa = phi ptr [ %storemerge.i175474, %._crit_edge ], [ %storemerge.i175473, %.critedge2.i.preheader ], [ %storemerge.i175, %.critedge2.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46, !noalias !4038
  %i.do = ptrtoint ptr %storemerge.i175.lcssa to i64
  %i.dp = ptrtoint ptr %i.p to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.dr, ptr %2, align 8, !tbaa !151, !noalias !4038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46, !noalias !4038
  store i64 %i.dq, ptr %i.a, align 8, !tbaa !108, !noalias !4038
  %i.ds = icmp ugt i64 %i.dq, 15
  br i1 %i.ds, label %.noexc.i.i185, label %._crit_edge.i.i.i

.noexc.i.i185:                                    ; preds = %.critedge2.i._crit_edge
  %i.dt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc186 unwind label %bb.ao ; 2 uses

.noexc186:                                        ; preds = %.noexc.i.i185
  store ptr %i.dt, ptr %2, align 8, !tbaa !89, !noalias !4038
  %i.du = load i64, ptr %i.a, align 8, !tbaa !108, !noalias !4038
  store i64 %i.du, ptr %i.dr, align 8, !tbaa !153, !noalias !4038
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc186, %.critedge2.i._crit_edge
  %i.dv = phi ptr [ %i.dt, %.noexc186 ], [ %i.dr, %.critedge2.i._crit_edge ] ; 2 uses
  switch i64 %i.dq, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i
  %i.dw = load i8, ptr %i.p, align 1, !tbaa !153, !noalias !4038
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !153, !noalias !4038
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dv, ptr noundef nonnull align 1 dereferenceable(1) %i.p, i64 %i.dq, i1 false), !noalias !4038
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !108, !noalias !4038 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !152, !noalias !4038
  %i.dz = load ptr, ptr %2, align 8, !tbaa !89, !noalias !4038
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dx
  store i8 0, ptr %i.ea, align 1, !tbaa !153, !noalias !4038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46, !noalias !4038
  %i.eb = load ptr, ptr %6, align 8, !tbaa !89, !noalias !4038 ; 6 uses
  %i.ec = icmp eq ptr %i.eb, %i.dc
  %i.ed = load ptr, ptr %2, align 8, !tbaa !89, !noalias !4038 ; 5 uses
  %i.ee = icmp eq ptr %i.ed, %i.dr                ; 2 uses
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.ah
  br i1 %i.ee, label %bb.ai, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176: ; preds = %bb.ah
  br i1 %i.ee, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  %i.ef = load i64, ptr %i.dy, align 8, !tbaa !152, !noalias !4038 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 16
  call void @llvm.assume(i1 %i.eg), !noalias !4038
  switch i64 %i.ef, label %bb.ak [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !153, !noalias !4038
  store i8 %i.eh, ptr %i.eb, align 1, !tbaa !153, !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.ed, i64 %i.ef, i1 false), !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ei = load i64, ptr %i.dy, align 8, !tbaa !152, !noalias !4038 ; 2 uses
  store i64 %i.ei, ptr %i.dd, align 8, !tbaa !152, !noalias !4038
  %i.ej = load ptr, ptr %6, align 8, !tbaa !89, !noalias !4038
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  store i8 0, ptr %i.ek, align 1, !tbaa !153, !noalias !4038
  %.pre.i.i183 = load ptr, ptr %2, align 8, !tbaa !89, !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  store ptr %i.ed, ptr %6, align 8, !tbaa !89, !noalias !4038
  %i.el = load <2 x i64>, ptr %i.dy, align 8, !tbaa !153, !noalias !4038
  store <2 x i64> %i.el, ptr %i.dd, align 8, !tbaa !153, !noalias !4038
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176
  %i.em = load i64, ptr %i.dc, align 8, !tbaa !153, !noalias !4038
  store ptr %i.ed, ptr %6, align 8, !tbaa !89, !noalias !4038
  %i.en = load <2 x i64>, ptr %i.dy, align 8, !tbaa !153, !noalias !4038
  store <2 x i64> %i.en, ptr %i.dd, align 8, !tbaa !153, !noalias !4038
  %.not.i.i177 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i177, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.eb, ptr %2, align 8, !tbaa !89, !noalias !4038
  store i64 %i.em, ptr %i.dr, align 8, !tbaa !153, !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.dr, ptr %2, align 8, !tbaa !89, !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.am, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.eo = phi ptr [ %.pre.i.i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.eb, %bb.al ], [ %i.dr, %bb.am ]
  store i64 0, ptr %i.dy, align 8, !tbaa !152, !noalias !4038
  store i8 0, ptr %i.eo, align 1, !tbaa !153, !noalias !4038
  %i.ep = load ptr, ptr %2, align 8, !tbaa !89, !noalias !4038 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.dr
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  call void @_ZdlPv(ptr noundef %i.ep) #47, !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46, !noalias !4038
  %i.er = load ptr, ptr %i.q, align 8, !tbaa !3130, !noalias !4038 ; 7 uses
  %.promoted.i.i180 = load ptr, ptr %i.o, align 8, !tbaa !3131, !noalias !4038 ; 3 uses
  %i.es = icmp ult ptr %.promoted.i.i180, %i.er
  br i1 %i.es, label %.lr.ph.i.i181, label %.loopexit

.lr.ph.i.i181:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179, %bb.an
  %i.et = phi ptr [ %i.ex, %bb.an ], [ %.promoted.i.i180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179 ] ; 3 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !153, !noalias !4038
  %i.ev = sext i8 %i.eu to i32
  %i.ew = call i32 @isspace(i32 noundef %i.ev) #51, !noalias !4038
  %.not.i14.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i14.i, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i181
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 1 ; 4 uses
  store ptr %i.ex, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %exitcond.not.i.i182 = icmp eq ptr %i.ex, %i.er
  br i1 %exitcond.not.i.i182, label %.loopexit, label %.lr.ph.i.i181, !llvm.loop !3133

bb.ao:                                            ; preds = %.noexc.i.i185, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit:                                        ; preds = %.lr.ph.i.i181, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179
  %i.ez = phi ptr [ %.promoted.i.i180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179 ], [ %i.et, %.lr.ph.i.i181 ], [ %i.ex, %bb.an ] ; 5 uses
  %i.fa = icmp ult ptr %i.ez, %i.er
  br i1 %i.fa, label %bb.ap, label %bb.cb

bb.ap:                                            ; preds = %.loopexit
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !153, !noalias !4038
  %i.fc = icmp eq i8 %i.fb, 91
  br i1 %i.fc, label %bb.aq, label %bb.bi

bb.aq:                                            ; preds = %bb.ap
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1 ; 3 uses
  store ptr %i.fd, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %i.fe = icmp ult ptr %i.fd, %i.er
  br i1 %i.fe, label %.lr.ph.i.i169, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172

.lr.ph.i.i169:                                    ; preds = %bb.aq, %bb.ar
  %i.ff = phi ptr [ %i.fj, %bb.ar ], [ %i.fd, %bb.aq ] ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !153, !noalias !4038
  %i.fh = sext i8 %i.fg to i32
  %i.fi = call i32 @isspace(i32 noundef %i.fh) #51, !noalias !4038
  %.not.i.i170 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i170, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i169
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 1 ; 3 uses
  store ptr %i.fj, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %exitcond.not.i.i171 = icmp eq ptr %i.fj, %i.er
  br i1 %exitcond.not.i.i171, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172, label %.lr.ph.i.i169, !llvm.loop !3133

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172: ; preds = %.lr.ph.i.i169, %bb.ar, %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.as

bb.as:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172
  %i.fm = phi ptr [ %i.hb, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144 ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172 ] ; 6 uses
  %i.fn = phi ptr [ %i.hc, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144 ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172 ] ; 4 uses
  %i.fo = phi ptr [ %i.hd, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144 ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172 ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46, !noalias !4038
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_19WKTParser9ParseNodeEv(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(28) %1)
          to label %bb.at unwind label %bb.au, !noalias !4038, !inline_history !4042

bb.at:                                            ; preds = %bb.as
  %.val15.i = load ptr, ptr %8, align 8, !noalias !4038 ; 4 uses
  %.not246 = icmp eq ptr %.val15.i, null
  %i.fp = ptrtoint ptr %.val15.i to i64           ; 2 uses
  br i1 %.not246, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147, label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.fq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fo, ptr %7, align 8
  br label %bb.bg

bb.av:                                            ; preds = %bb.at
  %.not.i.i148 = icmp eq ptr %i.fn, %i.fm
  br i1 %.not.i.i148, label %bb.aw, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216: ; preds = %bb.av
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !3134, !noalias !4038
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  store ptr %i.fr, ptr %i.fk, align 8, !tbaa !3142, !noalias !4038
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread

bb.aw:                                            ; preds = %bb.av
  %i.fs = ptrtoint ptr %i.fm to i64               ; 3 uses
  %i.ft = ptrtoint ptr %i.fo to i64               ; 3 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %bb.ax, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i151

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.fo, ptr %7, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
          to label %.noexc164 unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit.split-lp

.noexc164:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i151: ; preds = %bb.aw
  %i.fw = ashr exact i64 %i.fu, 3                 ; 3 uses
  %i.fx = icmp eq ptr %i.fm, %i.fo                ; 2 uses
  %.sroa.speculated.i.i.i.i152 = select i1 %i.fx, i64 1, i64 %i.fw
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i.i152, %i.fw ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fw
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 1152921504606846975)
  %i.gb = select i1 %i.fz, i64 1152921504606846975, i64 %i.ga ; 3 uses
  %.not.i.i.i.i153 = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i153), !noalias !4038
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #48
          to label %.noexc165 unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit ; 11 uses

.noexc165:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i151
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fu
  store i64 %i.fp, ptr %i.ge, align 8, !tbaa !3134, !noalias !4038
  store ptr null, ptr %8, align 8, !tbaa !3134, !noalias !4038
  br i1 %i.fx, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160, label %.lr.ph.i.i.i.i.i.i.i155.preheader

.lr.ph.i.i.i.i.i.i.i155.preheader:                ; preds = %.noexc165
  %i.gf = sub i64 %i.fs, %i.ft
  %i.gg = add i64 %i.gf, -8                       ; 2 uses
  %i.gh = lshr i64 %i.gg, 3
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check491 = icmp ult i64 %i.gg, 56
  br i1 %min.iters.check491, label %.lr.ph.i.i.i.i.i.i.i155.preheader506, label %vector.memcheck482

vector.memcheck482:                               ; preds = %.lr.ph.i.i.i.i.i.i.i155.preheader
  %scevgep483 = getelementptr i8, ptr %i.gd, i64 8
  %i.gj = add i64 %i.fs, -8
  %i.gk = sub i64 %i.gj, %i.ft
  %i.gl = and i64 %i.gk, -8                       ; 2 uses
  %scevgep484 = getelementptr i8, ptr %scevgep483, i64 %i.gl
  %scevgep485 = getelementptr i8, ptr %i.fo, i64 8
  %scevgep486 = getelementptr i8, ptr %scevgep485, i64 %i.gl
  %bound0487 = icmp ult ptr %i.gd, %scevgep486
  %bound1488 = icmp ult ptr %i.fo, %scevgep484
  %found.conflict489 = and i1 %bound0487, %bound1488
  br i1 %found.conflict489, label %.lr.ph.i.i.i.i.i.i.i155.preheader506, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck482
  %n.vec494 = and i64 %i.gi, 4611686018427387900  ; 3 uses
  %i.gm = shl i64 %n.vec494, 3                    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gd, i64 %i.gm  ; 2 uses
  %i.go = getelementptr i8, ptr %i.fo, i64 %i.gm
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph492
  %index496 = phi i64 [ 0, %vector.ph492 ], [ %index.next501, %vector.body495 ] ; 2 uses
  %i.gp = shl i64 %index496, 3                    ; 2 uses
  %next.gep497 = getelementptr i8, ptr %i.gd, i64 %i.gp ; 2 uses
  %next.gep498 = getelementptr i8, ptr %i.fo, i64 %i.gp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4043), !noalias !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !4046), !noalias !4038
  %i.gq = getelementptr i8, ptr %next.gep498, i64 16
  %wide.load499 = load <2 x i64>, ptr %next.gep498, align 8, !tbaa !3134, !alias.scope !4048, !noalias !4051
  %wide.load500 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !3134, !alias.scope !4048, !noalias !4051
  %i.gr = getelementptr i8, ptr %next.gep497, i64 16
  store <2 x i64> %wide.load499, ptr %next.gep497, align 8, !tbaa !3134, !alias.scope !4052, !noalias !4054
  store <2 x i64> %wide.load500, ptr %i.gr, align 8, !tbaa !3134, !alias.scope !4052, !noalias !4054
  %i.gs = getelementptr i8, ptr %next.gep498, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep498, align 8, !tbaa !3134, !alias.scope !4048, !noalias !4051
  store <2 x ptr> splat (ptr null), ptr %i.gs, align 8, !tbaa !3134, !alias.scope !4048, !noalias !4051
  %index.next501 = add nuw i64 %index496, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next501, %n.vec494
  br i1 %i.gt, label %middle.block502, label %vector.body495, !llvm.loop !4055

middle.block502:                                  ; preds = %vector.body495
  %cmp.n503 = icmp eq i64 %i.gi, %n.vec494
  br i1 %cmp.n503, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160, label %.lr.ph.i.i.i.i.i.i.i155.preheader506

.lr.ph.i.i.i.i.i.i.i155.preheader506:             ; preds = %vector.memcheck482, %.lr.ph.i.i.i.i.i.i.i155.preheader, %middle.block502
  %.03.i.i.i.i.i.i.i156.ph = phi ptr [ %i.gd, %vector.memcheck482 ], [ %i.gd, %.lr.ph.i.i.i.i.i.i.i155.preheader ], [ %i.gn, %middle.block502 ]
  %.092.i.i.i.i.i.i.i157.ph = phi ptr [ %i.fo, %vector.memcheck482 ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i155.preheader ], [ %i.go, %middle.block502 ]
  br label %.lr.ph.i.i.i.i.i.i.i155

.lr.ph.i.i.i.i.i.i.i155:                          ; preds = %.lr.ph.i.i.i.i.i.i.i155.preheader506, %.lr.ph.i.i.i.i.i.i.i155
  %.03.i.i.i.i.i.i.i156 = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i.i155 ], [ %.03.i.i.i.i.i.i.i156.ph, %.lr.ph.i.i.i.i.i.i.i155.preheader506 ] ; 2 uses
  %.092.i.i.i.i.i.i.i157 = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i.i.i155 ], [ %.092.i.i.i.i.i.i.i157.ph, %.lr.ph.i.i.i.i.i.i.i155.preheader506 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4043), !noalias !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !4046), !noalias !4038
  %.val.i.i.i.i.i.i.i.i.i.i.i.i158 = load i64, ptr %.092.i.i.i.i.i.i.i157, align 8, !tbaa !3134, !alias.scope !4046, !noalias !4051
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i158, ptr %.03.i.i.i.i.i.i.i156, align 8, !tbaa !3134, !alias.scope !4043, !noalias !4056
  store ptr null, ptr %.092.i.i.i.i.i.i.i157, align 8, !tbaa !3134, !alias.scope !4046, !noalias !4051
  %i.gu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i157, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i156, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i159 = icmp eq ptr %i.gu, %i.fm
  br i1 %.not.i.i.i.i.i.i.i159, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160, label %.lr.ph.i.i.i.i.i.i.i155, !llvm.loop !4057

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160: ; preds = %.lr.ph.i.i.i.i.i.i.i155, %middle.block502, %.noexc165
  %.0.lcssa.i.i.i.i.i.i.i161 = phi ptr [ %i.gd, %.noexc165 ], [ %i.gn, %middle.block502 ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i155 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i161, i64 8 ; 3 uses
  %.not.i28.i.i.i162 = icmp eq ptr %i.fo, null
  br i1 %.not.i28.i.i.i162, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160
  call void @_ZdlPv(ptr noundef nonnull %i.fo) #47, !noalias !4038
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160, %bb.ay
  store ptr %i.gw, ptr %i.fk, align 8, !tbaa !3142, !noalias !4038
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gb ; 3 uses
  store ptr %i.gx, ptr %i.fl, align 8, !tbaa !4058, !noalias !4038
  %.pr = load ptr, ptr %8, align 8, !tbaa !3134, !noalias !4038 ; 3 uses
  %.not.i145 = icmp eq ptr %.pr, null
  br i1 %.not.i145, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166
  %i.gy = load ptr, ptr %.pr, align 8, !tbaa !412, !noalias !4038
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !4038
  call void %i.ha(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %.pr) #46, !noalias !4038, !inline_history !4059
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147: ; preds = %bb.at
  store ptr %i.fo, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46, !noalias !4038
  br label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread: ; preds = %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216
  %i.hb = phi ptr [ %i.fm, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216 ], [ %i.gx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166 ], [ %i.gx, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146 ] ; 2 uses
  %i.hc = phi ptr [ %i.fr, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216 ], [ %i.gw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166 ], [ %i.gw, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146 ] ; 2 uses
  %i.hd = phi ptr [ %i.fo, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216 ], [ %i.gd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166 ], [ %i.gd, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46, !noalias !4038
  %i.he = load ptr, ptr %i.o, align 8, !tbaa !3131, !noalias !4038 ; 3 uses
  %i.hf = load ptr, ptr %i.q, align 8, !tbaa !3130, !noalias !4038 ; 3 uses
  %i.hg = icmp ult ptr %i.he, %i.hf
  br i1 %i.hg, label %bb.az, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit

bb.az:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread
  %i.hh = load i8, ptr %i.he, align 1, !tbaa !153, !noalias !4038
  %i.hi = icmp eq i8 %i.hh, 44
  br i1 %i.hi, label %bb.ba, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 1 ; 3 uses
  store ptr %i.hj, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %i.hk = icmp ult ptr %i.hj, %i.hf
  br i1 %i.hk, label %.lr.ph.i.i141, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144

.lr.ph.i.i141:                                    ; preds = %bb.ba, %bb.bb
  %i.hl = phi ptr [ %i.hp, %bb.bb ], [ %i.hj, %bb.ba ] ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !153, !noalias !4038
  %i.hn = sext i8 %i.hm to i32
  %i.ho = call i32 @isspace(i32 noundef %i.hn) #51, !noalias !4038
  %.not.i.i142 = icmp eq i32 %i.ho, 0
  br i1 %.not.i.i142, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i141
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 1 ; 3 uses
  store ptr %i.hp, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %exitcond.not.i.i143 = icmp eq ptr %i.hp, %i.hf
  br i1 %exitcond.not.i.i143, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144, label %.lr.ph.i.i141, !llvm.loop !3133

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144: ; preds = %.lr.ph.i.i141, %bb.bb, %bb.ba
  br label %bb.as, !llvm.loop !4060

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread, %bb.az
  store ptr %i.hd, ptr %7, align 8
  br label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread: ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147
  %i.hq = phi ptr [ %i.hb, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit ], [ %i.fm, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147 ]
  %i.hr = phi ptr [ %i.hc, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit ], [ %i.fn, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147 ]
  %i.hs = phi ptr [ %i.hd, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit ], [ %i.fo, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147 ]
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_19WKTParser5MatchEc(ptr noundef nonnull align 8 dereferenceable(28) %1, i8 noundef signext 93)
          to label %bb.bc unwind label %bb.ao, !noalias !4038, !inline_history !4042

bb.bc:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ht = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #48
          to label %.noexc137 unwind label %bb.bh ; 9 uses

.noexc137:                                        ; preds = %bb.bc
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.hv = load ptr, ptr %6, align 8, !tbaa !89, !noalias !4061 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.dc
  br i1 %i.hw, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

bb.bd:                                            ; preds = %.noexc137
  %i.hx = load i64, ptr %i.dd, align 8, !tbaa !152, !noalias !4061 ; 3 uses
  %i.hy = icmp ult i64 %i.hx, 16
  call void @llvm.assume(i1 %i.hy), !noalias !4038
  %i.hz = add nuw nsw i64 %i.hx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hu, ptr noundef nonnull align 8 dereferenceable(1) %i.dc, i64 %i.hz, i1 false), !noalias !4061
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %.noexc137
  %i.ia = load i64, ptr %i.dc, align 8, !tbaa !153, !noalias !4061
  store i64 %i.ia, ptr %i.hu, align 8, !tbaa !153, !noalias !4061
  %.pre.i133 = load i64, ptr %i.dd, align 8, !tbaa !152, !noalias !4061
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i134: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.bd
  %i.ib = phi ptr [ %i.hu, %bb.bd ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ] ; 2 uses
  %i.ic = phi i64 [ %i.hx, %bb.bd ], [ %.pre.i133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i32 0, ptr %i.id, align 8, !tbaa !3136, !noalias !4061
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_110WKTKeywordE, i64 16), ptr %i.ht, align 8, !tbaa !412, !noalias !4061
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ht, i64 32 ; 3 uses
  store ptr %i.if, ptr %i.ie, align 8, !tbaa !151, !noalias !4061
  %i.ig = icmp eq ptr %i.ib, %i.hu
  br i1 %i.ig, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i134
  %i.ih = icmp ult i64 %i.ic, 16
  call void @llvm.assume(i1 %i.ih), !noalias !4038
  %i.ii = add nuw nsw i64 %i.ic, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.if, ptr noundef nonnull align 8 dereferenceable(1) %i.hu, i64 %i.ii, i1 false), !noalias !4061
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i134
  store ptr %i.ib, ptr %i.ie, align 8, !tbaa !89, !noalias !4061
  %i.ij = load i64, ptr %i.hu, align 8, !tbaa !153, !noalias !4061
  store i64 %i.ij, ptr %i.if, align 8, !tbaa !153, !noalias !4061
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135, %bb.be
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i64 %i.ic, ptr %i.ik, align 8, !tbaa !152, !noalias !4061
  %i.il = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  store ptr %i.hs, ptr %i.il, align 8, !tbaa !3140, !noalias !4061
  %i.im = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  store ptr %i.hr, ptr %i.im, align 8, !tbaa !3142, !noalias !4061
  %i.in = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  store ptr %i.hq, ptr %i.in, align 8, !tbaa !4058, !noalias !4061
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ch

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i151
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fo, ptr %7, align 8
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit.split-lp: ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit.split-lp ]
  %i.io = load ptr, ptr %.val15.i, align 8, !tbaa !412, !noalias !4038
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !4038
  call void %i.iq(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %.val15.i) #46, !noalias !4038, !inline_history !4059
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111, %bb.au
  %.pn10.i = phi { ptr, i32 } [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111 ], [ %i.fq, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46, !noalias !4038
  br label %bb.cg

bb.bh:                                            ; preds = %bb.bc
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bi:                                            ; preds = %bb.ap
  %i.is = load i8, ptr %i.ez, align 1, !tbaa !153, !noalias !4038
  %i.it = icmp eq i8 %i.is, 40
  br i1 %i.it, label %bb.bj, label %bb.cb

bb.bj:                                            ; preds = %bb.bi
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ez, i64 1 ; 3 uses
  store ptr %i.iu, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %i.iv = icmp ult ptr %i.iu, %i.er
  br i1 %i.iv, label %.lr.ph.i.i105, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108

.lr.ph.i.i105:                                    ; preds = %bb.bj, %bb.bk
  %i.iw = phi ptr [ %i.ja, %bb.bk ], [ %i.iu, %bb.bj ] ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !153, !noalias !4038
  %i.iy = sext i8 %i.ix to i32
  %i.iz = call i32 @isspace(i32 noundef %i.iy) #51, !noalias !4038
  %.not.i.i106 = icmp eq i32 %i.iz, 0
  br i1 %.not.i.i106, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i105
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 1 ; 3 uses
  store ptr %i.ja, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %exitcond.not.i.i107 = icmp eq ptr %i.ja, %i.er
  br i1 %exitcond.not.i.i107, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108, label %.lr.ph.i.i105, !llvm.loop !3133

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108: ; preds = %.lr.ph.i.i105, %bb.bk, %bb.bj
  %i.jb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108
  %i.jd = phi ptr [ %i.ks, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108 ] ; 6 uses
  %i.je = phi ptr [ %i.kt, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108 ] ; 4 uses
  %i.jf = phi ptr [ %i.ku, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108 ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46, !noalias !4038
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_19WKTParser9ParseNodeEv(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(28) %1)
          to label %bb.bm unwind label %bb.bn, !noalias !4038, !inline_history !4042

bb.bm:                                            ; preds = %bb.bl
  %.val.i14 = load ptr, ptr %9, align 8, !noalias !4038 ; 4 uses
  %.not = icmp eq ptr %.val.i14, null
  %i.jg = ptrtoint ptr %.val.i14 to i64           ; 2 uses
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.jh = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jf, ptr %7, align 8
  br label %bb.bz

bb.bo:                                            ; preds = %bb.bm
  %.not.i.i100 = icmp eq ptr %i.je, %i.jd
  br i1 %.not.i.i100, label %bb.bp, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225: ; preds = %bb.bo
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !3134, !noalias !4038
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  store ptr %i.ji, ptr %i.jb, align 8, !tbaa !3142, !noalias !4038
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread

bb.bp:                                            ; preds = %bb.bo
  %i.jj = ptrtoint ptr %i.jd to i64               ; 3 uses
  %i.jk = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jl = sub i64 %i.jj, %i.jk                    ; 3 uses
  %i.jm = icmp eq i64 %i.jl, 9223372036854775800
  br i1 %i.jm, label %bb.bq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.jf, ptr %7, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
          to label %.noexc101 unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit64.loopexit.split-lp

.noexc101:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bp
  %i.jn = ashr exact i64 %i.jl, 3                 ; 3 uses
  %i.jo = icmp eq ptr %i.jd, %i.jf                ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.jo, i64 1, i64 %i.jn
  %i.jp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jn ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.jn
  %i.jr = call i64 @llvm.umin.i64(i64 %i.jp, i64 1152921504606846975)
  %i.js = select i1 %i.jq, i64 1152921504606846975, i64 %i.jr ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.js, 0
  call void @llvm.assume(i1 %.not.i.i.i.i), !noalias !4038
  %i.jt = shl nuw nsw i64 %i.js, 3
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #48
          to label %.noexc102 unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit64.loopexit ; 11 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jl
  store i64 %i.jg, ptr %i.jv, align 8, !tbaa !3134, !noalias !4038
  store ptr null, ptr %9, align 8, !tbaa !3134, !noalias !4038
  br i1 %i.jo, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc102
  %i.jw = sub i64 %i.jj, %i.jk
  %i.jx = add i64 %i.jw, -8                       ; 2 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = add nuw nsw i64 %i.jy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jx, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader529, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ju, i64 8
  %i.ka = add i64 %i.jj, -8
  %i.kb = sub i64 %i.ka, %i.jk
  %i.kc = and i64 %i.kb, -8                       ; 2 uses
  %scevgep476 = getelementptr i8, ptr %scevgep, i64 %i.kc
  %scevgep477 = getelementptr i8, ptr %i.jf, i64 8
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %i.kc
  %bound0 = icmp ult ptr %i.ju, %scevgep478
  %bound1 = icmp ult ptr %i.jf, %scevgep476
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader529, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jz, 4611686018427387900     ; 3 uses
  %i.kd = shl i64 %n.vec, 3                       ; 2 uses
  %i.ke = getelementptr i8, ptr %i.ju, i64 %i.kd  ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jf, i64 %i.kd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ju, i64 %i.kg ; 2 uses
  %next.gep479 = getelementptr i8, ptr %i.jf, i64 %i.kg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4064), !noalias !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !4067), !noalias !4038
  %i.kh = getelementptr i8, ptr %next.gep479, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep479, align 8, !tbaa !3134, !alias.scope !4069, !noalias !4072
  %wide.load480 = load <2 x i64>, ptr %i.kh, align 8, !tbaa !3134, !alias.scope !4069, !noalias !4072
  %i.ki = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !3134, !alias.scope !4073, !noalias !4075
  store <2 x i64> %wide.load480, ptr %i.ki, align 8, !tbaa !3134, !alias.scope !4073, !noalias !4075
  %i.kj = getelementptr i8, ptr %next.gep479, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep479, align 8, !tbaa !3134, !alias.scope !4069, !noalias !4072
  store <2 x ptr> splat (ptr null), ptr %i.kj, align 8, !tbaa !3134, !alias.scope !4069, !noalias !4072
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !4076

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader529

.lr.ph.i.i.i.i.i.i.i.preheader529:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.i.i.ph = phi ptr [ %i.ju, %vector.memcheck ], [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ke, %middle.block ]
  %.092.i.i.i.i.i.i.i.ph = phi ptr [ %i.jf, %vector.memcheck ], [ %i.jf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.kf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader529, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader529 ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader529 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4064), !noalias !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !4067), !noalias !4038
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !3134, !alias.scope !4067, !noalias !4072
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !3134, !alias.scope !4064, !noalias !4077
  store ptr null, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !3134, !alias.scope !4067, !noalias !4072
  %i.kl = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kl, %i.jd
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4078

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc102
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ju, %.noexc102 ], [ %i.ke, %middle.block ], [ %i.km, %.lr.ph.i.i.i.i.i.i.i ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i28.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jf) #47, !noalias !4038
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, %bb.br
  store ptr %i.kn, ptr %i.jb, align 8, !tbaa !3142, !noalias !4038
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.js ; 3 uses
  store ptr %i.ko, ptr %i.jc, align 8, !tbaa !4058, !noalias !4038
  %.pr220 = load ptr, ptr %9, align 8, !tbaa !3134, !noalias !4038 ; 3 uses
  %.not.i97 = icmp eq ptr %.pr220, null
  br i1 %.not.i97, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit
  %i.kp = load ptr, ptr %.pr220, align 8, !tbaa !412, !noalias !4038
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !4038
  call void %i.kr(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %.pr220) #46, !noalias !4038, !inline_history !4059
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99: ; preds = %bb.bm
  store ptr %i.jf, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46, !noalias !4038
  br label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread: ; preds = %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225
  %i.ks = phi ptr [ %i.jd, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225 ], [ %i.ko, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ], [ %i.ko, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98 ] ; 2 uses
  %i.kt = phi ptr [ %i.ji, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225 ], [ %i.kn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ], [ %i.kn, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98 ] ; 2 uses
  %i.ku = phi ptr [ %i.jf, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225 ], [ %i.ju, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ], [ %i.ju, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46, !noalias !4038
  %i.kv = load ptr, ptr %i.o, align 8, !tbaa !3131, !noalias !4038 ; 3 uses
  %i.kw = load ptr, ptr %i.q, align 8, !tbaa !3130, !noalias !4038 ; 3 uses
  %i.kx = icmp ult ptr %i.kv, %i.kw
  br i1 %i.kx, label %bb.bs, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit

bb.bs:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread
  %i.ky = load i8, ptr %i.kv, align 1, !tbaa !153, !noalias !4038
  %i.kz = icmp eq i8 %i.ky, 44
  br i1 %i.kz, label %bb.bt, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit

bb.bt:                                            ; preds = %bb.bs
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 1 ; 3 uses
  store ptr %i.la, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %i.lb = icmp ult ptr %i.la, %i.kw
  br i1 %i.lb, label %.lr.ph.i.i94, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit

.lr.ph.i.i94:                                     ; preds = %bb.bt, %bb.bu
  %i.lc = phi ptr [ %i.lg, %bb.bu ], [ %i.la, %bb.bt ] ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !153, !noalias !4038
  %i.le = sext i8 %i.ld to i32
  %i.lf = call i32 @isspace(i32 noundef %i.le) #51, !noalias !4038
  %.not.i.i95 = icmp eq i32 %i.lf, 0
  br i1 %.not.i.i95, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i94
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 3 uses
  store ptr %i.lg, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %exitcond.not.i.i96 = icmp eq ptr %i.lg, %i.kw
  br i1 %exitcond.not.i.i96, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit, label %.lr.ph.i.i94, !llvm.loop !3133

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit: ; preds = %.lr.ph.i.i94, %bb.bu, %bb.bt
  br label %bb.bl, !llvm.loop !4079

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread, %bb.bs
  store ptr %i.ku, ptr %7, align 8
  br label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread: ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99
  %i.lh = phi ptr [ %i.ks, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit ], [ %i.jd, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99 ]
  %i.li = phi ptr [ %i.kt, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit ], [ %i.je, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99 ]
end_hunk_0
