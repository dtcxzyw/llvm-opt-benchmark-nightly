inline.NumInlined: 4280
inline.NumDeleted: 1275
begin_hunk_0_@_ZN11OpenImageIO4v3_18ArgParse7optionsEPKcz:bb.a
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  store ptr %i.dt, ptr %i.v, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.du = phi ptr [ %i.dq, %bb.ak ], [ %i.ds, %bb.al ]
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !27 ; 4 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !10
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.34) #41
          to label %.noexc unwind label %.loopexit.split-lp43

.noexc:                                           ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dv) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.dx, ptr %i.a, align 8, !tbaa !28
  %i.dy = icmp ugt i64 %i.dx, 15
  br i1 %i.dy, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ao
  %i.dz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc29 unwind label %.loopexit42 ; 2 uses

.noexc29:                                         ; preds = %.noexc.i
  store ptr %i.dz, ptr %4, align 8, !tbaa !22
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.ea, ptr %i.x, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc29, %bb.ao
  %i.eb = phi ptr [ %i.dz, %.noexc29 ], [ %i.x, %bb.ao ] ; 2 uses
  switch i64 %i.dx, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i
  %i.ec = load i8, ptr %i.dv, align 1, !tbaa !16
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !16
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr nonnull align 1 %i.dv, i64 %i.dx, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  store i64 %i.ed, ptr %i.y, align 8, !tbaa !13
  %i.ee = load ptr, ptr %4, align 8, !tbaa !22
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ed
  store i8 0, ptr %i.ef, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.eg = getelementptr inbounds nuw i8, ptr %i.az, i64 200 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !22 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.az, i64 216 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  %i.ek = load ptr, ptr %4, align 8, !tbaa !22    ; 5 uses
  %i.el = icmp eq ptr %i.ek, %i.x                 ; 2 uses
  br i1 %i.ej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ar
  br i1 %i.el, label %bb.as, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ar
  br i1 %i.el, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.em = load i64, ptr %i.y, align 8, !tbaa !13  ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.en)
  switch i64 %i.em, label %bb.au [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  %i.eo = load i8, ptr %i.ek, align 1, !tbaa !16
  store i8 %i.eo, ptr %i.eh, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr align 1 %i.ek, i64 %i.em, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.au, %bb.at, %bb.as
  %i.ep = load i64, ptr %i.y, align 8, !tbaa !13  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !13
  %i.er = load ptr, ptr %i.eg, align 8, !tbaa !22
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep
  store i8 0, ptr %i.es, align 1, !tbaa !16
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !22
  br label %_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !22
  %i.eu = load <2 x i64>, ptr %i.y, align 8, !tbaa !16
  store <2 x i64> %i.eu, ptr %i.et, align 8, !tbaa !16
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ev = load i64, ptr %i.ei, align 8, !tbaa !16
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !22
  %i.ew = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.ex = load <2 x i64>, ptr %i.y, align 8, !tbaa !16
  store <2 x i64> %i.ex, ptr %i.ew, align 8, !tbaa !16
  %.not.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.eh, ptr %4, align 8, !tbaa !22
  store i64 %i.ev, ptr %i.x, align 8, !tbaa !16
  br label %_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.x, ptr %4, align 8, !tbaa !22
  br label %_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.av, %bb.aw
  %i.ey = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.eh, %bb.av ], [ %i.x, %bb.aw ]
  store i64 0, ptr %i.y, align 8, !tbaa !13
  store i8 0, ptr %i.ey, align 1, !tbaa !16
  %i.ez = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.x
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fb = load i64, ptr %i.x, align 8, !tbaa !16
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_19ArgOption4helpENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %i.fd = load ptr, ptr %0, align 8, !tbaa !107   ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 248 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 256 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !195 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 264 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !196
  %.not.i32 = icmp eq ptr %i.fg, %i.fi
  br i1 %.not.i32, label %bb.ax, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread

.loopexit42:                                      ; preds = %.noexc.i
  %lpad.loopexit44 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp43:                             ; preds = %bb.an
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i64 %i.ba, ptr %i.fg, align 8, !tbaa !143
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fj, ptr %i.ff, align 8, !tbaa !195
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev.exit

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !146 ; 10 uses
  %i.fl = ptrtoint ptr %i.fg to i64               ; 3 uses
  %i.fm = ptrtoint ptr %i.fk to i64               ; 4 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775800
  br i1 %i.fo, label %bb.ay, label %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #41
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.ay
  unreachable

_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ax
  %i.fp = ashr exact i64 %i.fn, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i, %i.fp ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  %i.fs = call i64 @llvm.umin.i64(i64 %i.fq, i64 1152921504606846975)
  %i.ft = select i1 %i.fr, i64 1152921504606846975, i64 %i.fs ; 3 uses
  %.not.i.i35 = icmp ne i64 %i.ft, 0
  call void @llvm.assume(i1 %.not.i.i35)
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #43
          to label %.noexc37 unwind label %.loopexit ; 10 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fn
  store i64 %i.ba, ptr %i.fw, align 8, !tbaa !143
  %.not10.i.i.i.i = icmp eq ptr %i.fk, %i.fg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc37
  %5 = add i64 %i.fl, -8
  %6 = sub i64 %5, %i.fm                          ; 2 uses
  %i.fx = lshr i64 %6, 3
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader142, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.fv, i64 8
  %i.fz = add i64 %i.fl, -8
  %i.ga = sub i64 %i.fz, %i.fm
  %i.gb = and i64 %i.ga, -8                       ; 2 uses
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.gb
  %scevgep137 = getelementptr i8, ptr %i.fk, i64 8
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.gb
  %bound0 = icmp ult ptr %i.fv, %scevgep138
  %bound1 = icmp ult ptr %i.fk, %scevgep136
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader142, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fy, 4611686018427387900     ; 3 uses
  %i.gc = shl i64 %n.vec, 3                       ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fv, i64 %i.gc  ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fk, i64 %i.gc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fv, i64 %i.gf ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.fk, i64 %i.gf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.gg = getelementptr i8, ptr %next.gep139, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep139, align 8, !tbaa !143, !alias.scope !202, !noalias !197
  %wide.load140 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !143, !alias.scope !202, !noalias !197
  %i.gh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !143, !alias.scope !205, !noalias !202
  store <2 x i64> %wide.load140, ptr %i.gh, align 8, !tbaa !143, !alias.scope !205, !noalias !202
  %i.gi = getelementptr i8, ptr %next.gep139, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep139, align 8, !tbaa !143, !alias.scope !202, !noalias !197
  store <2 x ptr> splat (ptr null), ptr %i.gi, align 8, !tbaa !143, !alias.scope !202, !noalias !197
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader142

.lr.ph.i.i.i.i.preheader142:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.fv, %vector.memcheck ], [ %i.fv, %.lr.ph.i.i.i.i.preheader ], [ %i.gd, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.fk, %vector.memcheck ], [ %i.fk, %.lr.ph.i.i.i.i.preheader ], [ %i.ge, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader142, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.gm, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader142 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gl, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader142 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.gk = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !143, !alias.scope !200, !noalias !197
  store i64 %i.gk, ptr %.012.i.i.i.i, align 8, !tbaa !143, !alias.scope !197, !noalias !200
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !143, !alias.scope !200, !noalias !197
  %i.gl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gl, %i.fg
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !210

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc37
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fv, %.noexc37 ], [ %i.gd, %middle.block ], [ %i.gm, %.lr.ph.i.i.i.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.fk, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.go = load ptr, ptr %i.fh, align 8, !tbaa !196
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 %i.gp, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.gq) #39
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.az
  store ptr %i.fv, ptr %i.fe, align 8, !tbaa !146
  store ptr %i.gn, ptr %i.ff, align 8, !tbaa !195
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.ft
  store ptr %i.gr, ptr %i.fh, align 8, !tbaa !196
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.gs = load i32, ptr %2, align 16              ; 3 uses
  %i.gt = icmp ult i32 %i.gs, 41
  br i1 %i.gt, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev.exit
  %i.gu = load ptr, ptr %i.w, align 16
  %i.gv = zext nneg i32 %i.gs to i64
  %i.gw = getelementptr i8, ptr %i.gu, i64 %i.gv
  %i.gx = add nuw nsw i32 %i.gs, 8
  store i32 %i.gx, ptr %2, align 16
  br label %bb.be

bb.bb:                                            ; preds = %.loopexit42, %.loopexit.split-lp43, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit44, %.loopexit42 ], [ %lpad.loopexit.split-lp45, %.loopexit.split-lp43 ]
  call void @_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #38
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bb ], [ %i.bc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %.pn.pn

bb.bd:                                            ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev.exit
  %i.gy = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  store ptr %i.gz, ptr %i.v, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %i.ha = phi ptr [ %i.gw, %bb.ba ], [ %i.gy, %bb.bd ]
  %storemerge = load ptr, ptr %i.ha, align 8, !tbaa !27 ; 3 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !27
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %._crit_edge65, label %bb.f, !llvm.loop !211

._crit_edge65:                                    ; preds = %bb.be, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.q, %._crit_edge65
  %.3 = phi i32 [ 0, %._crit_edge65 ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_19ArgOptionEEclEPS2_.exit

_ZNKSt14default_deleteIN11OpenImageIO4v3_19ArgOptionEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN11OpenImageIO4v3_19ArgOptionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %i.a) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 360) #39
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN11OpenImageIO4v3_19ArgOptionEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK11OpenImageIO4v3_18ArgParse3Arg4nameEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  store ptr %i.b, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  store i64 %i.e, ptr %i.c, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK11OpenImageIO4v3_18ArgParse3Arg4destEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  store ptr %i.b, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  store i64 %i.e, ptr %i.c, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN11OpenImageIO4v3_18ArgParse6paramsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11OpenImageIO4v3_18ArgParse7cparamsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse12add_argumentEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #43 ; 11 uses
  invoke void @_ZN11OpenImageIO4v3_19ArgOptionC2ERNS0_8ArgParseEPKc(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !196
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.f, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !195
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !146  ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #41
  unreachable

_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #43 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !143
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %2 = add i64 %i.k, -8
  %3 = sub i64 %2, %i.l                           ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.y = add i64 %i.k, -8
  %i.z = sub i64 %i.y, %i.l
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ab
  %scevgep39 = getelementptr i8, ptr %i.j, i64 %i.ab
  %bound0 = icmp ult ptr %i.u, %scevgep39
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.af ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.j, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.ag = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !143, !alias.scope !217, !noalias !212
  %wide.load41 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !143, !alias.scope !217, !noalias !212
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !143, !alias.scope !220, !noalias !217
  store <2 x i64> %wide.load41, ptr %i.ah, align 8, !tbaa !143, !alias.scope !220, !noalias !217
  %i.ai = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !143, !alias.scope !217, !noalias !212
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !143, !alias.scope !217, !noalias !212
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.preheader43:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader43 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !143, !alias.scope !215, !noalias !212
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !143, !alias.scope !212, !noalias !215
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !143, !alias.scope !215, !noalias !212
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !223

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #39
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.u, ptr %i.d, align 8, !tbaa !146
  store ptr %i.an, ptr %i.e, align 8, !tbaa !195
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !196
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 236 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !90
  %i.as = sext i32 %i.ar to i64                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store ptr null, ptr %i.a, align 8, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !96 ; 3 uses
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !48 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3                 ; 3 uses
  %i.ba = icmp ult i64 %i.az, %i.as
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit
  %i.bb = sub nuw nsw i64 %i.as, %i.az
  call void @_ZNSt6vectorIPvSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr %i.au, i64 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !90
  %.pre26 = sext i32 %.pre to i64
  br label %_ZNSt6vectorIPvSaIS0_EE6resizeEmRKS0_.exit

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit
  %i.bc = icmp ugt i64 %i.az, %i.as
  br i1 %i.bc, label %bb.i, label %_ZNSt6vectorIPvSaIS0_EE6resizeEmRKS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.as ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, %i.bd
  br i1 %.not.i.i, label %_ZNSt6vectorIPvSaIS0_EE6resizeEmRKS0_.exit, label %_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E.exit.i.i:     ; preds = %bb.i
  store ptr %i.bd, ptr %i.at, align 8, !tbaa !96
  br label %_ZNSt6vectorIPvSaIS0_EE6resizeEmRKS0_.exit

_ZNSt6vectorIPvSaIS0_EE6resizeEmRKS0_.exit:       ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre26, %bb.g ], [ %i.as, %bb.h ], [ %i.as, %bb.i ], [ %i.as, %_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !97 ; 3 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !44 ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3                 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, %.pre-phi
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE6resizeEmRKS0_.exit
  %i.bn = sub nuw nsw i64 %.pre-phi, %i.bl
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr %i.bg, i64 noundef %i.bn, ptr noundef nonnull align 4 dereferenceable(8) @_ZN11OpenImageIO4v3_111TypeUnknownE)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE6resizeEmRKS2_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE6resizeEmRKS0_.exit
  %i.bo = icmp ugt i64 %i.bl, %.pre-phi
  br i1 %i.bo, label %bb.l, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE6resizeEmRKS2_.exit

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.pre-phi ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.bg, %i.bp
  br i1 %.not.i.i16, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE6resizeEmRKS2_.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.l
  store ptr %i.bp, ptr %i.bf, align 8, !tbaa !97
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE6resizeEmRKS2_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE6resizeEmRKS2_.exit: ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bq = call noundef i32 @_ZN11OpenImageIO4v3_19ArgOption10initializeEv(ptr noundef nonnull align 8 dereferenceable(360) %i.b) ; 0 uses
  %i.br = load i8, ptr %1, align 1, !tbaa !16
  switch i8 %i.br, label %.thread25 [
    i8 60, label %bb.p
    i8 37, label %bb.n
    i8 45, label %bb.p
  ]

bb.m:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 360) #39
  resume { ptr, i32 } %i.bs

bb.n:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE6resizeEmRKS2_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %cond = icmp eq i8 %i.bu, 49
  br i1 %cond, label %bb.o, label %.thread25

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %.sink.split, label %.thread25

.thread25:                                        ; preds = %bb.n, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE6resizeEmRKS2_.exit, %bb.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %.thread25
  %.sink38 = phi i64 [ 56, %.thread25 ], [ 64, %bb.o ]
  %i.by = load ptr, ptr %0, align 8, !tbaa !107
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sink38
  store ptr %i.b, ptr %i.bz, align 8, !tbaa !143
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE6resizeEmRKS2_.exit, %.sink.split, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE6resizeEmRKS2_.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !107
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 256
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !142
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !143
  ret ptr %i.ce
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse4argxEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ...) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 13 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.a = call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #43 ; 15 uses
  invoke void @_ZN11OpenImageIO4v3_19ArgOptionC2ERNS0_8ArgParseEPKc(ptr noundef nonnull align 8 dereferenceable(360) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !143
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = invoke noundef i32 @_ZN11OpenImageIO4v3_19ArgOption10initializeEv(ptr noundef nonnull align 8 dereferenceable(360) %i.a)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 360) #39
  br label %bb.aa

bb.d:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.r, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #38
  br label %bb.aa

bb.e:                                             ; preds = %bb.b
  %i.f = load i8, ptr %1, align 1, !tbaa !16
  switch i8 %i.f, label %.thread26 [
    i8 0, label %bb.h
    i8 37, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16    ; 2 uses
  %i.i = icmp eq i8 %i.h, 42
  br i1 %i.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.h, label %..thread_crit_edge

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.m = load ptr, ptr %0, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.a, ptr %i.n, align 8, !tbaa !159
  %.pr.pre = load i8, ptr %1, align 1, !tbaa !16
  %i.o = icmp eq i8 %.pr.pre, 37
  br i1 %i.o, label %..thread_crit_edge, label %.thread26

..thread_crit_edge:                               ; preds = %bb.g, %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.f
  %i.p = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.h, %bb.f ]
  %i.q = icmp eq i8 %i.p, 49
  br i1 %i.q, label %bb.i, label %.thread26

bb.i:                                             ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.j, label %.thread26

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.a, ptr %i.v, align 8, !tbaa !158
  br label %.thread26

.thread26:                                        ; preds = %bb.e, %bb.j, %bb.i, %.thread, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.x = load i8, ptr %i.w, align 4, !tbaa !92, !range !94, !noundef !139
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.thread26
  %i.z = load i32, ptr %2, align 16               ; 3 uses
  %i.aa = icmp ult i32 %i.z, 41
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 16
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  %i.af = add nuw nsw i32 %i.z, 8
  store i32 %i.af, ptr %2, align 16
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  store ptr %i.ai, ptr %i.ag, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = phi ptr [ %i.ae, %bb.l ], [ %i.ah, %bb.m ]
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !153
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread26
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 236 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !90
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.o
  %.pre30 = load ptr, ptr %0, align 8, !tbaa !107
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  br label %bb.t

._crit_edge:                                      ; preds = %bb.z, %.._crit_edge_crit_edge
  %i.au = phi ptr [ %.pre30, %.._crit_edge_crit_edge ], [ %i.cy, %bb.z ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 248 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 256 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !195 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 264 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !196
  %.not.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  store i64 %i.b, ptr %i.ax, align 8, !tbaa !143
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !195
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !146 ; 10 uses
  %i.bc = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 4 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.r, label %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #41
          to label %.noexc24 unwind label %bb.d

.noexc24:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #43
          to label %.noexc25 unwind label %bb.d   ; 10 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i64 %i.b, ptr %i.bn, align 8, !tbaa !143
  %.not10.i.i.i.i = icmp eq ptr %i.bb, %i.ax
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc25
  %4 = add i64 %i.bc, -8
  %5 = sub i64 %4, %i.bd                          ; 2 uses
  %i.bo = lshr i64 %5, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bq = add i64 %i.bc, -8
  %i.br = sub i64 %i.bq, %i.bd
  %i.bs = and i64 %i.br, -8
  %i.bt = add i64 %i.bs, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bm, i64 %i.bt
  %scevgep41 = getelementptr i8, ptr %i.bb, i64 %i.bt
  %bound0 = icmp ult ptr %i.bm, %scevgep41
  %bound1 = icmp ult ptr %i.bb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bm, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bb, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.bx ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.bb, i64 %i.bx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.by = getelementptr i8, ptr %next.gep42, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep42, align 8, !tbaa !143, !alias.scope !229, !noalias !224
  %wide.load43 = load <2 x i64>, ptr %i.by, align 8, !tbaa !143, !alias.scope !229, !noalias !224
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !143, !alias.scope !232, !noalias !229
  store <2 x i64> %wide.load43, ptr %i.bz, align 8, !tbaa !143, !alias.scope !232, !noalias !229
  %i.ca = getelementptr i8, ptr %next.gep42, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep42, align 8, !tbaa !143, !alias.scope !229, !noalias !224
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !143, !alias.scope !229, !noalias !224
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader45

.lr.ph.i.i.i.i.preheader45:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader45, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader45 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader45 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.cc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !143, !alias.scope !227, !noalias !224
  store i64 %i.cc, ptr %.012.i.i.i.i, align 8, !tbaa !143, !alias.scope !224, !noalias !227
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !143, !alias.scope !227, !noalias !224
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cd, %i.ax
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !235

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc25
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bm, %.noexc25 ], [ %i.bv, %middle.block ], [ %i.ce, %.lr.ph.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bb, null
  br i1 %.not.i23.i, label %.noexc, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !196
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.ci) #39
  br label %.noexc

.noexc:                                           ; preds = %bb.s, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.bm, ptr %i.av, align 8, !tbaa !146
  store ptr %i.cf, ptr %i.aw, align 8, !tbaa !195
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.cj, ptr %i.ay, align 8, !tbaa !196
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev.exit

bb.t:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 3 uses
  %i.ck = load i32, ptr %2, align 16              ; 3 uses
  %i.cl = icmp ult i32 %i.ck, 41
  br i1 %i.cl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %i.aq, align 16
  %i.cn = zext nneg i32 %i.ck to i64
  %i.co = getelementptr i8, ptr %i.cm, i64 %i.cn
  %i.cp = add nuw nsw i32 %i.ck, 8
  store i32 %i.cp, ptr %2, align 16
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  store ptr %i.cr, ptr %i.ap, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cs = phi ptr [ %i.co, %bb.u ], [ %i.cq, %bb.v ]
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !95 ; 2 uses
  %i.cu = load ptr, ptr %i.ar, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !95
  %i.cw = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv
  store i64 256, ptr %i.cx, align 4
  %i.cy = load ptr, ptr %0, align 8, !tbaa !107   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !159
  %i.db = icmp eq ptr %i.a, %i.da
  br i1 %i.db, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !158
  %i.de = icmp eq ptr %i.a, %i.dd
  br i1 %i.de, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.ct, ptr %i.at, align 8, !tbaa !153
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.am, align 4, !tbaa !90
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.t, label %._crit_edge, !llvm.loop !236

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.p, %.noexc
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.di = load ptr, ptr %0, align 8, !tbaa !107
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 256
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !142
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret ptr %i.dm

bb.aa:                                            ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse9separatorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse12add_argumentEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.28) ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !17
  store ptr %i.b, ptr %2, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  store i64 %i.e, ptr %i.c, align 8, !tbaa !19
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse3Arg4helpENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull dead_on_return %2) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_18ArgParse3Arg4helpENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.b = load ptr, ptr %1, align 8, !tbaa !17, !noalias !237 ; 3 uses
  %.not.not.i = icmp eq ptr %i.b, null
  br i1 %.not.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !237 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !10, !alias.scope !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38, !noalias !237
  store i64 %i.d, ptr %i.a, align 8, !tbaa !28, !noalias !237
  %i.f = icmp ugt i64 %i.d, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !22, !alias.scope !237
  %i.h = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !237
  store i64 %i.h, ptr %i.e, align 8, !tbaa !16, !alias.scope !237
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.e, %bb.b ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !258

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !10, !alias.scope !259, !noalias !262
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !22, !alias.scope !262, !noalias !259 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !13, !alias.scope !262, !noalias !259 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !264
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !22, !alias.scope !259, !noalias !262
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !16, !alias.scope !262, !noalias !259
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !16, !alias.scope !259, !noalias !262
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !13, !alias.scope !262, !noalias !259
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !13, !alias.scope !259, !noalias !262
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !22, !alias.scope !262, !noalias !259
  store i64 0, ptr %i.bc, align 8, !tbaa !13, !alias.scope !262, !noalias !259
  store i8 0, ptr %i.au, align 8, !tbaa !16, !alias.scope !262, !noalias !259
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !258

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !34
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #39
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !39
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !34
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPvSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPPvS0_EvT_S2_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8, !tbaa !95     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !265

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !95
  store ptr %i.s, ptr %i.d, align 8, !tbaa !95
  br label %_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit

_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !96
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !265

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load ptr, ptr %1, align 8, !tbaa !95
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !95
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec129 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec129, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert130 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat131 = shufflevector <2 x ptr> %broadcast.splatinsert130, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.aj = shl i64 %index133, 3
  %next.gep134 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep134, i64 16
  store <2 x ptr> %broadcast.splat131, ptr %next.gep134, align 8, !tbaa !95
  store <2 x ptr> %broadcast.splat131, ptr %i.ak, align 8, !tbaa !95
  %index.next135 = add nuw i64 %index133, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.al, label %middle.block136, label %vector.body132, !llvm.loop !266

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.ag, %n.vec129
  br i1 %cmp.n137, label %_ZSt4fillIPPvS0_EvT_S2_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block136
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block136 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i, align 8, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPPvS0_EvT_S2_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !267

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %4 = add i64 %i.aq, -8
  %5 = sub i64 %4, %i.k                           ; 2 uses
  %i.ar = lshr i64 %5, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !95
  store <2 x ptr> %broadcast.splat, ptr %i.aw, align 8, !tbaa !95
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i.i.i.i.i, align 8, !tbaa !95
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !269

_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !96
  %i.az = icmp sgt i64 %i.k, 8
  br i1 %i.az, label %bb.n, label %bb.o, !prof !265

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 8
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %1, align 8, !tbaa !95
  store ptr %i.bb, ptr %.0.i.i.i.i.i, align 8, !tbaa !95
  br label %_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit69

_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !96
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPPvS0_EvT_S2_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit69
  %6 = add i64 %i.f, -8
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.be = lshr i64 %7, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %7, 24
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader153, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bg = shl i64 %n.vec115, 3
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert116 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x ptr> %broadcast.splatinsert116, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bi = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x ptr> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !95
  store <2 x ptr> %broadcast.splat117, ptr %i.bj, align 8, !tbaa !95
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bk, label %middle.block122, label %vector.body118, !llvm.loop !270

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bf, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPPvS0_EvT_S2_RKT0_.exit, label %.lr.ph.i.i.i71.preheader153

.lr.ph.i.i.i71.preheader153:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader153, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader153 ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i72, align 8, !tbaa !95
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPPvS0_EvT_S2_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !271

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !48    ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 4 uses
  %i.bq = sub nsw i64 1152921504606846975, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #41
  unreachable

_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %bb.t
  %n.vec143 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec143, 3
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert144 = insertelement <2 x ptr> poison, ptr %i.cd, i64 0
  %broadcast.splat145 = shufflevector <2 x ptr> %broadcast.splatinsert144, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.cj = shl i64 %index147, 3
  %next.gep148 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep148, i64 16
  store <2 x ptr> %broadcast.splat145, ptr %next.gep148, align 8, !tbaa !95
  store <2 x ptr> %broadcast.splat145, ptr %i.ck, align 8, !tbaa !95
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cl, label %middle.block150, label %vector.body146, !llvm.loop !272

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.cg, %n.vec143
  br i1 %cmp.n151, label %_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block150
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store ptr %i.cd, ptr %.07.i.i.i.i.i.i.i77, align 8, !tbaa !95
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !273

_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block150
  %i.cn = icmp sgt i64 %i.bx, 8
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !265

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPvmS0_S0_ET_S2_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 8
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.bm, align 8, !tbaa !95
  store ptr %i.cp, ptr %i.ca, align 8, !tbaa !95
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 8
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !265

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 8
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load ptr, ptr %1, align 8, !tbaa !95
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !95
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #39
  br label %_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !48
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !96
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !51
  br label %_ZSt4fillIPPvS0_EvT_S2_RKT0_.exit

_ZSt4fillIPPvS0_EvT_S2_RKT0_.exit:                ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPPvS1_SaIS0_EET0_T_S4_S3_RT1_.exit69, %_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 18 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 6 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = sub i64 %i.f, %i.j                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %2, -8                          ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 4 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.o = add i64 %2, 2305843009213693951
  %i.p = and i64 %i.o, 2305843009213693951        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check166 = icmp samesign ult i64 %i.p, 3
  br i1 %min.iters.check166, label %.lr.ph.i.i.i.i.i.preheader253, label %vector.ph167

vector.ph167:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec169 = and i64 %i.q, 4611686018427387900   ; 3 uses
  %i.r = shl i64 %n.vec169, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  %i.t = getelementptr i8, ptr %i.n, i64 %i.r
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph167
  %index171 = phi i64 [ 0, %vector.ph167 ], [ %index.next176, %vector.body170 ] ; 2 uses
  %i.u = shl i64 %index171, 3                     ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.d, i64 %i.u ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.n, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep173, i64 16
  %wide.load174 = load <2 x i64>, ptr %next.gep173, align 4
  %wide.load175 = load <2 x i64>, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %next.gep172, i64 16
  store <2 x i64> %wide.load174, ptr %next.gep172, align 4
  store <2 x i64> %wide.load175, ptr %i.w, align 4
  %index.next176 = add nuw i64 %index171, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.x, label %middle.block177, label %vector.body170, !llvm.loop !274

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.q, %n.vec169
  br i1 %cmp.n178, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.preheader253

.lr.ph.i.i.i.i.i.preheader253:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block177
  %.013.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %middle.block177 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %middle.block177 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader253, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader253 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader253 ] ; 2 uses
  %i.y = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 4
  store i64 %i.y, ptr %.013.i.i.i.i.i, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !275

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block177
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !97
  br label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, %bb.d
  %i.ab = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %2
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !97
  %i.ad = ptrtoint ptr %i.n to i64
  %i.ae = sub i64 %i.ad, %i.j                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !265

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %1, i64 %i.ae, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.aj = icmp eq i64 %i.ae, 8
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.al = load i64, ptr %1, align 4
  store i64 %i.al, ptr %i.ak, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.an = add nsw i64 %.idx, -8                   ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.an, 24
  br i1 %min.iters.check182, label %.lr.ph.i.i.i.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %bb.h
  %n.vec185 = and i64 %i.ap, 4611686018427387900  ; 3 uses
  %i.aq = shl i64 %n.vec185, 3
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %broadcast.splatinsert186 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat187 = shufflevector <2 x i64> %broadcast.splatinsert186, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph183
  %index189 = phi i64 [ 0, %vector.ph183 ], [ %index.next191, %vector.body188 ] ; 2 uses
  %i.as = shl i64 %index189, 3
  %next.gep190 = getelementptr i8, ptr %1, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x i64> %broadcast.splat187, ptr %next.gep190, align 4
  store <2 x i64> %broadcast.splat187, ptr %i.at, align 4
  %index.next191 = add nuw i64 %index189, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next191, %n.vec185
  br i1 %i.au, label %middle.block192, label %vector.body188, !llvm.loop !276

middle.block192:                                  ; preds = %vector.body188
  %cmp.n193 = icmp eq i64 %i.ap, %n.vec185
  br i1 %cmp.n193, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h, %middle.block192
  %.06.i.i.i.ph = phi ptr [ %1, %bb.h ], [ %i.ar, %middle.block192 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.am
  br i1 %.not.i.i.i, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !277

bb.i:                                             ; preds = %bb.c
  %i.aw = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not7.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader256, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aw, -4                      ; 3 uses
  %i.ax = shl i64 %n.vec, 3
  %i.ay = getelementptr i8, ptr %i.d, i64 %i.ax   ; 2 uses
  %i.az = and i64 %i.aw, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.bb, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader256

.lr.ph.i.i.i.i.preheader256:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader256, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader256 ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader256 ]
  store i64 %i.i, ptr %.09.i.i.i.i, align 4
  %i.bd = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !279

_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.i
  %i.bf = phi ptr [ %i.d, %bb.i ], [ %i.ay, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i ] ; 6 uses
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !97
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %4 = add i64 %i.f, -8
  %5 = sub i64 %4, %i.j                           ; 2 uses
  %i.bh = lshr i64 %5, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check137 = icmp ult i64 %5, 56
  %i.bj = sub i64 %i.bg, %i.j
  %diff.check = icmp ult i64 %i.bj, 32
  %or.cond = select i1 %min.iters.check137, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i70.preheader255, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec140 = and i64 %i.bi, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec140, 3                    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bf, i64 %i.bk
  %i.bm = getelementptr i8, ptr %1, i64 %i.bk
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body141 ] ; 2 uses
  %i.bn = shl i64 %index142, 3                    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.bf, i64 %i.bn ; 2 uses
  %next.gep144 = getelementptr i8, ptr %1, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep144, align 4
  %wide.load145 = load <2 x i64>, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x i64> %wide.load, ptr %next.gep143, align 4
  store <2 x i64> %wide.load145, ptr %i.bp, align 4
  %index.next146 = add nuw i64 %index142, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next146, %n.vec140
  br i1 %i.bq, label %middle.block147, label %vector.body141, !llvm.loop !280

middle.block147:                                  ; preds = %vector.body141
  %cmp.n148 = icmp eq i64 %i.bi, %n.vec140
  br i1 %cmp.n148, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, label %.lr.ph.i.i.i.i.i70.preheader255

.lr.ph.i.i.i.i.i70.preheader255:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block147
  %.013.i.i.i.i.i71.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.bl, %middle.block147 ]
  %.sroa.08.012.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.bm, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.k
  store ptr %i.br, ptr %i.c, align 8, !tbaa !97
  br label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader255, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i70 ], [ %.013.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader255 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.08.012.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader255 ] ; 2 uses
  %i.bs = load i64, ptr %.sroa.08.012.i.i.i.i.i72, align 4
  store i64 %i.bs, ptr %.013.i.i.i.i.i71, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 8
  %.not.i.i.i.i.i73 = icmp eq ptr %i.bt, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !281

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block147
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.k
  store ptr %i.bw, ptr %i.c, align 8, !tbaa !97
  %6 = add i64 %i.f, -8
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.bx = lshr i64 %7, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check152 = icmp ult i64 %7, 24
  br i1 %min.iters.check152, label %.lr.ph.i.i.i77.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75
  %n.vec155 = and i64 %i.by, 4611686018427387900  ; 3 uses
  %i.bz = shl i64 %n.vec155, 3
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz
  %broadcast.splatinsert156 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat157 = shufflevector <2 x i64> %broadcast.splatinsert156, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph153
  %index159 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body158 ] ; 2 uses
  %i.cb = shl i64 %index159, 3
  %next.gep160 = getelementptr i8, ptr %1, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %broadcast.splat157, ptr %next.gep160, align 4
  store <2 x i64> %broadcast.splat157, ptr %i.cc, align 4
  %index.next161 = add nuw i64 %index159, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next161, %n.vec155
  br i1 %i.cd, label %middle.block162, label %vector.body158, !llvm.loop !282

middle.block162:                                  ; preds = %vector.body158
  %cmp.n163 = icmp eq i64 %i.by, %n.vec155
  br i1 %cmp.n163, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i77.preheader

.lr.ph.i.i.i77.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, %middle.block162
  %.06.i.i.i78.ph = phi ptr [ %1, %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75 ], [ %i.ca, %middle.block162 ]
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i.i.i77.preheader, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ce, %.lr.ph.i.i.i77 ], [ %.06.i.i.i78.ph, %.lr.ph.i.i.i77.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i78, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 8 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ce, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !283

bb.j:                                             ; preds = %bb.b
  %i.cf = load ptr, ptr %0, align 8, !tbaa !44    ; 7 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 6 uses
  %i.ch = sub i64 %i.f, %i.cg
  %i.ci = ashr exact i64 %i.ch, 3                 ; 4 uses
  %i.cj = sub nsw i64 1152921504606846975, %i.ci
  %i.ck = icmp ult i64 %i.cj, %2
  br i1 %i.ck, label %bb.k, label %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #41
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %2)
  %i.cl = add nsw i64 %.sroa.speculated.i, %i.ci  ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ci
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
  %i.co = select i1 %i.cm, i64 1152921504606846975, i64 %i.cn ; 3 uses
  %i.cp = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.cq = sub i64 %i.cp, %i.cg
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit
  %i.cr = shl nuw nsw i64 %i.co, 3
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #43
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.ct = phi ptr [ %i.cs, %bb.l ], [ null, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = getelementptr i8, ptr %i.ct, i64 %i.cq  ; 5 uses
  %min.iters.check198 = icmp ult i64 %2, 16
  br i1 %min.iters.check198, label %.lr.ph.i.i.i.i82.preheader, label %vector.memcheck195

vector.memcheck195:                               ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit
  %i.cw = shl i64 %2, 3
  %i.cx = add i64 %i.cw, %i.cp
  %i.cy = sub i64 %i.cx, %i.cg
  %scevgep = getelementptr i8, ptr %i.ct, i64 %i.cy
  %scevgep196 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %bound0 = icmp ult ptr %i.cv, %scevgep196
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i82.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %vector.memcheck195
  %n.vec201 = and i64 %2, -4                      ; 3 uses
  %i.cz = shl i64 %n.vec201, 3
  %i.da = getelementptr i8, ptr %i.cv, i64 %i.cz
  %i.db = and i64 %2, 3
  %i.dc = load i64, ptr %3, align 4, !alias.scope !284
  %broadcast.splatinsert205 = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %broadcast.splat206 = shufflevector <2 x i64> %broadcast.splatinsert205, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph199
  %index203 = phi i64 [ 0, %vector.ph199 ], [ %index.next207, %vector.body202 ] ; 2 uses
  %i.dd = shl i64 %index203, 3
  %next.gep204 = getelementptr i8, ptr %i.cv, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep204, i64 16
  store <2 x i64> %broadcast.splat206, ptr %next.gep204, align 4, !alias.scope !287, !noalias !284
  store <2 x i64> %broadcast.splat206, ptr %i.de, align 4, !alias.scope !287, !noalias !284
  %index.next207 = add nuw i64 %index203, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.df, label %middle.block208, label %vector.body202, !llvm.loop !289

middle.block208:                                  ; preds = %vector.body202
  %cmp.n209 = icmp eq i64 %2, %n.vec201
  br i1 %cmp.n209, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82.preheader

.lr.ph.i.i.i.i82.preheader:                       ; preds = %vector.memcheck195, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit, %middle.block208
  %.09.i.i.i.i83.ph = phi ptr [ %i.cv, %vector.memcheck195 ], [ %i.cv, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit ], [ %i.da, %middle.block208 ] ; 2 uses
  %.068.i.i.i.i84.ph = phi i64 [ %2, %vector.memcheck195 ], [ %2, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit ], [ %i.db, %middle.block208 ] ; 4 uses
  %i.dg = add i64 %.068.i.i.i.i84.ph, -1
  %xtraiter = and i64 %.068.i.i.i.i84.ph, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol

.lr.ph.i.i.i.i82.prol:                            ; preds = %.lr.ph.i.i.i.i82.preheader, %.lr.ph.i.i.i.i82.prol
  %.09.i.i.i.i83.prol = phi ptr [ %i.dj, %.lr.ph.i.i.i.i82.prol ], [ %.09.i.i.i.i83.ph, %.lr.ph.i.i.i.i82.preheader ] ; 2 uses
  %.068.i.i.i.i84.prol = phi i64 [ %i.di, %.lr.ph.i.i.i.i82.prol ], [ %.068.i.i.i.i84.ph, %.lr.ph.i.i.i.i82.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i82.prol ], [ 0, %.lr.ph.i.i.i.i82.preheader ]
  %i.dh = load i64, ptr %3, align 4
  store i64 %i.dh, ptr %.09.i.i.i.i83.prol, align 4
  %i.di = add i64 %.068.i.i.i.i84.prol, -1        ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol, !llvm.loop !290

.lr.ph.i.i.i.i82.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i82.prol, %.lr.ph.i.i.i.i82.preheader
  %.09.i.i.i.i83.unr = phi ptr [ %.09.i.i.i.i83.ph, %.lr.ph.i.i.i.i82.preheader ], [ %i.dj, %.lr.ph.i.i.i.i82.prol ]
  %.068.i.i.i.i84.unr = phi i64 [ %.068.i.i.i.i84.ph, %.lr.ph.i.i.i.i82.preheader ], [ %i.di, %.lr.ph.i.i.i.i82.prol ]
  %i.dk = icmp ult i64 %i.dg, 7
  br i1 %i.dk, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.unr, %.lr.ph.i.i.i.i82.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i84 = phi i64 [ %i.ea, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.unr, %.lr.ph.i.i.i.i82.prol.loopexit ]
  %i.dl = load i64, ptr %3, align 4
  store i64 %i.dl, ptr %.09.i.i.i.i83, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 8
  %i.dn = load i64, ptr %3, align 4
  store i64 %i.dn, ptr %i.dm, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 16
  %i.dp = load i64, ptr %3, align 4
  store i64 %i.dp, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 24
  %i.dr = load i64, ptr %3, align 4
  store i64 %i.dr, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 32
  %i.dt = load i64, ptr %3, align 4
  store i64 %i.dt, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 40
  %i.dv = load i64, ptr %3, align 4
  store i64 %i.dv, ptr %i.du, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 48
  %i.dx = load i64, ptr %3, align 4
  store i64 %i.dx, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 56
  %i.dz = load i64, ptr %3, align 4
  store i64 %i.dz, ptr %i.dy, align 4
  %i.ea = add i64 %.068.i.i.i.i84, -8             ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 64
  %.not.i.i.i.i85.7 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.i85.7, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !292

_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82, %middle.block208
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.cf, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89.preheader

.lr.ph.i.i.i.i.i89.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87
  %8 = add i64 %i.cp, -8
  %9 = sub i64 %8, %i.cg                          ; 2 uses
  %i.ec = lshr i64 %9, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check215 = icmp ult i64 %9, 56
  %i.ee = sub i64 %i.cu, %i.cg
  %diff.check213 = icmp ult i64 %i.ee, 32
  %or.cond249 = or i1 %min.iters.check215, %diff.check213
  br i1 %or.cond249, label %.lr.ph.i.i.i.i.i89.preheader251, label %vector.ph216

vector.ph216:                                     ; preds = %.lr.ph.i.i.i.i.i89.preheader
  %n.vec218 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec218, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ct, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.cf, i64 %i.ef
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph216
  %index220 = phi i64 [ 0, %vector.ph216 ], [ %index.next225, %vector.body219 ] ; 2 uses
  %i.ei = shl i64 %index220, 3                    ; 2 uses
  %next.gep221 = getelementptr i8, ptr %i.ct, i64 %i.ei ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.cf, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep222, i64 16
  %wide.load223 = load <2 x i64>, ptr %next.gep222, align 4
  %wide.load224 = load <2 x i64>, ptr %i.ej, align 4
  %i.ek = getelementptr i8, ptr %next.gep221, i64 16
  store <2 x i64> %wide.load223, ptr %next.gep221, align 4
  store <2 x i64> %wide.load224, ptr %i.ek, align 4
  %index.next225 = add nuw i64 %index220, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next225, %n.vec218
  br i1 %i.el, label %middle.block226, label %vector.body219, !llvm.loop !293

middle.block226:                                  ; preds = %vector.body219
  %cmp.n227 = icmp eq i64 %i.ed, %n.vec218
  br i1 %cmp.n227, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89.preheader251

.lr.ph.i.i.i.i.i89.preheader251:                  ; preds = %.lr.ph.i.i.i.i.i89.preheader, %middle.block226
  %.013.i.i.i.i.i90.ph = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i89.preheader ], [ %i.eg, %middle.block226 ]
  %.sroa.08.012.i.i.i.i.i91.ph = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i89.preheader ], [ %i.eh, %middle.block226 ]
  br label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %.lr.ph.i.i.i.i.i89.preheader251, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i89 ], [ %.013.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i89.preheader251 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i89 ], [ %.sroa.08.012.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i89.preheader251 ] ; 2 uses
  %i.em = load i64, ptr %.sroa.08.012.i.i.i.i.i91, align 4
  store i64 %i.em, ptr %.013.i.i.i.i.i90, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 8 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.en, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !294

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %middle.block226, %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.ct, %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87 ], [ %i.eg, %middle.block226 ], [ %i.eo, %.lr.ph.i.i.i.i.i89 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i93231 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i93 to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 5 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95.preheader

.lr.ph.i.i.i.i.i95.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %10 = add i64 %i.f, -8
  %11 = sub i64 %10, %i.cp                        ; 2 uses
  %i.eq = lshr i64 %11, 3
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check234 = icmp ult i64 %11, 104
  br i1 %min.iters.check234, label %.lr.ph.i.i.i.i.i95.preheader250, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.lr.ph.i.i.i.i.i95.preheader
  %i.es = shl i64 %2, 3
  %i.et = add i64 %i.es, %.0.lcssa.i.i.i.i.i93231
  %i.eu = sub i64 %i.et, %i.cp
  %diff.check232 = icmp ult i64 %i.eu, 32
  br i1 %diff.check232, label %.lr.ph.i.i.i.i.i95.preheader250, label %vector.ph235

vector.ph235:                                     ; preds = %vector.memcheck230
  %n.vec237 = and i64 %i.er, 4611686018427387900  ; 3 uses
  %i.ev = shl i64 %n.vec237, 3                    ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ep, i64 %i.ev  ; 2 uses
  %i.ex = getelementptr i8, ptr %1, i64 %i.ev
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph235
  %index239 = phi i64 [ 0, %vector.ph235 ], [ %index.next244, %vector.body238 ] ; 2 uses
  %i.ey = shl i64 %index239, 3                    ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.ep, i64 %i.ey ; 2 uses
  %next.gep241 = getelementptr i8, ptr %1, i64 %i.ey ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep241, i64 16
  %wide.load242 = load <2 x i64>, ptr %next.gep241, align 4
  %wide.load243 = load <2 x i64>, ptr %i.ez, align 4
  %i.fa = getelementptr i8, ptr %next.gep240, i64 16
  store <2 x i64> %wide.load242, ptr %next.gep240, align 4
  store <2 x i64> %wide.load243, ptr %i.fa, align 4
  %index.next244 = add nuw i64 %index239, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.fb, label %middle.block245, label %vector.body238, !llvm.loop !295

middle.block245:                                  ; preds = %vector.body238
  %cmp.n246 = icmp eq i64 %i.er, %n.vec237
  br i1 %cmp.n246, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95.preheader250

.lr.ph.i.i.i.i.i95.preheader250:                  ; preds = %vector.memcheck230, %.lr.ph.i.i.i.i.i95.preheader, %middle.block245
  %.013.i.i.i.i.i96.ph = phi ptr [ %i.ep, %vector.memcheck230 ], [ %i.ep, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.ew, %middle.block245 ]
  %.sroa.08.012.i.i.i.i.i97.ph = phi ptr [ %1, %vector.memcheck230 ], [ %1, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.ex, %middle.block245 ]
  br label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %.lr.ph.i.i.i.i.i95.preheader250, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i95 ], [ %.013.i.i.i.i.i96.ph, %.lr.ph.i.i.i.i.i95.preheader250 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i95 ], [ %.sroa.08.012.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i95.preheader250 ] ; 2 uses
  %i.fc = load i64, ptr %.sroa.08.012.i.i.i.i.i97, align 4
  store i64 %i.fc, ptr %.013.i.i.i.i.i96, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 8 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.fd, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !296

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %middle.block245, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.ep, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ew, %middle.block245 ], [ %i.fe, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.cf, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 %i.fg, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.fh) #39
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, %bb.m
  store ptr %i.ct, ptr %0, align 8, !tbaa !44
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8, !tbaa !97
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.co
  store ptr %i.fi, ptr %i.a, align 8, !tbaa !47
  br label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit

_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i, %middle.block162, %middle.block192, %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::vector<std::__cxx11::basic_string<char>>::_Temporary_value", align 8 ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 5 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %.not65 = icmp ult i64 %i.i, %2
  br i1 %.not65, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %0, ptr %4, align 8, !tbaa !297
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !10
  %i.l = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.n, ptr %i.a, align 8, !tbaa !28
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !22
  %i.q = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.q, ptr %i.k, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc.i.i ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !16
  store i8 %i.s, ptr %i.r, align 1, !tbaa !16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.t = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.t, ptr %i.u, align 8, !tbaa !13
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !20   ; 10 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 5                 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %2
  br i1 %i.ac, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  %.neg = mul i64 %2, -32                         ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %.neg ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.x, %bb.f ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ad, %bb.f ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.013.i.i.i.i.i, align 8, !tbaa !10
  %i.af = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.af, ptr %.013.i.i.i.i.i, align 8, !tbaa !22
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !16
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !16
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !13
  store ptr %i.ag, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !22
  store i64 0, ptr %i.an, align 8, !tbaa !13
  store i8 0, ptr %i.ag, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !300

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit, %bb.f
  %i.as = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit ], [ %i.x, %bb.f ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %2
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_18ArgParse4ImplD2Ev:bb.a
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.bg = add i64 %i.bf, 1
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !22 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.bs = add i64 %i.br, 1
  tail call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !16
  %i.by = add i64 %i.bx, 1
  tail call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ArgParse4ImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #23 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ArgParse4ImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11OpenImageIO4v3_18ArgParse4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.b) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 392) #39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ArgParse4ImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ArgParse4ImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE14_M_emplace_auxIJPS3_EEEN9__gnu_cxx17__normal_iteratorIPS6_S8_EENSC_IPKS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142    ; 14 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !196
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  %i.j = load ptr, ptr %2, align 8, !tbaa !143    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.f, align 8, !tbaa !143
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !195
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !143
  store i64 %i.n, ptr %i.f, align 8, !tbaa !143
  store ptr null, ptr %i.m, align 8, !tbaa !143
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %i.e, align 8, !tbaa !195
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.x, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.f, %bb.d ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.m, %bb.d ]
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !143
  store ptr null, ptr %i.t, align 8, !tbaa !143
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !143  ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !143
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_19ArgOptionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN11OpenImageIO4v3_19ArgOptionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZN11OpenImageIO4v3_19ArgOptionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %i.w) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 360) #39
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN11OpenImageIO4v3_19ArgOptionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.x = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.y = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i, !llvm.loop !311

_ZSt13move_backwardIPSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i: ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, %bb.d
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !143  ; 3 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !143
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE16_Temporary_valueD2Ev.exit, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_19ArgOptionEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN11OpenImageIO4v3_19ArgOptionEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i
  tail call void @_ZN11OpenImageIO4v3_19ArgOptionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %i.z) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 360) #39
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE16_Temporary_valueD2Ev.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE16_Temporary_valueD2Ev.exit: ; preds = %_ZNKSt14default_deleteIN11OpenImageIO4v3_19ArgOptionEEclEPS2_.exit.i.i.i.i.i, %_ZSt13move_backwardIPSt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !146
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.d    ; 4 uses
  %i.ab = ptrtoint ptr %i.f to i64                ; 3 uses
  %i.ac = sub i64 %i.ab, %i.c                     ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #41
  unreachable

_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i9 = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i9)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #43 ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.d
  %i.am = load ptr, ptr %2, align 8, !tbaa !143
  store ptr %i.am, ptr %i.al, align 8, !tbaa !143
  %.not10.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %3 = add i64 %i.b, -8
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.an = lshr i64 %4, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader55, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ap = add i64 %i.b, -8
  %i.aq = sub i64 %i.ap, %i.c
  %i.ar = and i64 %i.aq, -8
  %i.as = add i64 %i.ar, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ak, i64 %i.as
  %scevgep28 = getelementptr i8, ptr %i.a, i64 %i.as
  %bound0 = icmp ult ptr %i.ak, %scevgep28
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.a, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.aw ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.a, i64 %i.aw ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.ax = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep29, align 8, !tbaa !143, !alias.scope !317, !noalias !312
  %wide.load30 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !143, !alias.scope !317, !noalias !312
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !143, !alias.scope !320, !noalias !317
  store <2 x i64> %wide.load30, ptr %i.ay, align 8, !tbaa !143, !alias.scope !320, !noalias !317
  %i.az = getelementptr i8, ptr %next.gep29, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep29, align 8, !tbaa !143, !alias.scope !317, !noalias !312
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !143, !alias.scope !317, !noalias !312
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader55

.lr.ph.i.i.i.i.preheader55:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader55, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.bb = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !143, !alias.scope !315, !noalias !312
  store i64 %i.bb, ptr %.012.i.i.i.i, align 8, !tbaa !143, !alias.scope !312, !noalias !315
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !143, !alias.scope !315, !noalias !312
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.au, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.be = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i16.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i17.i.preheader

.lr.ph.i.i.i17.i.preheader:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %5 = add i64 %i.ab, -8
  %6 = sub i64 %5, %i.b                           ; 2 uses
  %i.bf = lshr i64 %6, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %6, 216
  br i1 %min.iters.check39, label %.lr.ph.i.i.i17.i.preheader54, label %vector.memcheck32

vector.memcheck32:                                ; preds = %.lr.ph.i.i.i17.i.preheader
  %i.bh = add i64 %i.ab, -8
  %i.bi = sub i64 %i.bh, %i.b
  %i.bj = and i64 %i.bi, -8                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.bj
  %scevgep33 = getelementptr i8, ptr %i.bk, i64 16
  %i.bl = add i64 %i.bj, %i.b
  %i.bm = add i64 %i.bl, 8
  %i.bn = sub i64 %i.bm, %i.c
  %scevgep34 = getelementptr i8, ptr %i.a, i64 %i.bn
  %bound035 = icmp ult ptr %i.be, %scevgep34
  %bound136 = icmp ult ptr %1, %scevgep33
  %found.conflict37 = and i1 %bound035, %bound136
  br i1 %found.conflict37, label %.lr.ph.i.i.i17.i.preheader54, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck32
  %n.vec42 = and i64 %i.bg, 4611686018427387900   ; 3 uses
  %i.bo = shl i64 %n.vec42, 3                     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.be, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.aa, i64 %i.bo
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph40
  %index44 = phi i64 [ 0, %vector.ph40 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.br = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.be, i64 %i.br ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.aa, i64 %i.br ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.bs = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !143, !alias.scope !329, !noalias !324
  %wide.load48 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !143, !alias.scope !329, !noalias !324
  %i.bt = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !143, !alias.scope !332, !noalias !329
  store <2 x i64> %wide.load48, ptr %i.bt, align 8, !tbaa !143, !alias.scope !332, !noalias !329
  %i.bu = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !143, !alias.scope !329, !noalias !324
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !143, !alias.scope !329, !noalias !324
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.bv, label %middle.block50, label %vector.body43, !llvm.loop !334

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.bg, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i17.i.preheader54

.lr.ph.i.i.i17.i.preheader54:                     ; preds = %vector.memcheck32, %.lr.ph.i.i.i17.i.preheader, %middle.block50
  %.012.i.i.i18.i.ph = phi ptr [ %i.be, %vector.memcheck32 ], [ %i.be, %.lr.ph.i.i.i17.i.preheader ], [ %i.bp, %middle.block50 ]
  %.0911.i.i.i19.i.ph = phi ptr [ %i.aa, %vector.memcheck32 ], [ %i.aa, %.lr.ph.i.i.i17.i.preheader ], [ %i.bq, %middle.block50 ]
  br label %.lr.ph.i.i.i17.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i.i.i17.i.preheader54, %.lr.ph.i.i.i17.i
  %.012.i.i.i18.i = phi ptr [ %i.by, %.lr.ph.i.i.i17.i ], [ %.012.i.i.i18.i.ph, %.lr.ph.i.i.i17.i.preheader54 ] ; 2 uses
  %.0911.i.i.i19.i = phi ptr [ %i.bx, %.lr.ph.i.i.i17.i ], [ %.0911.i.i.i19.i.ph, %.lr.ph.i.i.i17.i.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.bw = load i64, ptr %.0911.i.i.i19.i, align 8, !tbaa !143, !alias.scope !327, !noalias !324
  store i64 %i.bw, ptr %.012.i.i.i18.i, align 8, !tbaa !143, !alias.scope !324, !noalias !327
  store ptr null, ptr %.0911.i.i.i19.i, align 8, !tbaa !143, !alias.scope !327, !noalias !324
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i20.i = icmp eq ptr %i.bx, %i.f
  br i1 %.not.i.i.i20.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i17.i, !llvm.loop !335

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i17.i, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %.0.lcssa.i.i.i21.i = phi ptr [ %i.be, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i ], [ %i.bp, %middle.block50 ], [ %i.by, %.lr.ph.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ac) #39
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.g
  store ptr %i.ak, ptr %0, align 8, !tbaa !146
  store ptr %.0.lcssa.i.i.i21.i, ptr %i.e, align 8, !tbaa !195
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !196
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE16_Temporary_valueD2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.ca = phi ptr [ %i.a, %bb.c ], [ %.pre.pre, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE16_Temporary_valueD2Ev.exit ], [ %i.ak, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.d
  ret ptr %i.cb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_19ArgOptionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #39
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #39
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #39
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit

_ZNSt6vectorIPvSaIS0_EED2Ev.exit:                 ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPvSaIS0_EED2Ev.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168
end_hunk_2
