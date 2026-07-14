inline.NumInlined: 488
inline.NumDeleted: 232
begin_hunk_0_@_ZN22photos_editing_formats8image_io9XmlReader5ParseEmRKNS0_9DataRangeERKNS0_11DataSegmentE:bb.a
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !99  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dp, %i.k
  br i1 %.not4.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %.noexc.i.i.i
  %.sroa.01.05.i.i.i.i = phi ptr [ %i.dr, %.noexc.i.i.i ], [ %i.dp, %bb.z ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i.i, i64 16
  invoke void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.dq)
          to label %.noexc.i.i.i unwind label %bb.aa

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.dr = load ptr, ptr %.sroa.01.05.i.i.i.i, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dr, %i.k
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !111

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cv) #13
  br label %.body

.loopexit:                                        ; preds = %.noexc.i.i.i, %bb.z
  %i.dt = load ptr, ptr %i.n, align 8, !tbaa !101
  store ptr %i.dt, ptr %i.cy, align 8, !tbaa !101
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !30
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr dead_on_unwind nonnull writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %9, ptr noundef nonnull align 8 dereferenceable(80) %i.do, ptr noundef nonnull %10)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %.loopexit
  %i.dx = load ptr, ptr %i.cv, align 8, !tbaa !99 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.dx, %i.cv
  br i1 %.not8.i.i.i, label %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dx, %bb.ab ] ; 4 uses
  %i.dy = load ptr, ptr %.09.i.i.i, align 8, !tbaa !99 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !44 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !40
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 48) #14
  %.not.i.i.i = icmp eq ptr %i.dy, %i.cv
  br i1 %.not.i.i.i, label %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !112

_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.ab
  %i.ef = load i32, ptr %i.cz, align 8, !tbaa !108
  switch i32 %i.ef, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit120 [
    i32 -1, label %bb.af
    i32 0, label %bb.af
    i32 1, label %bb.ag
    i32 2, label %bb.at
    i32 3, label %bb.au
  ]

bb.ac:                                            ; preds = %bb.bj
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ad:                                            ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ae:                                            ; preds = %.loopexit
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22photos_editing_formats8image_io11DataContextD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %10) #13
  br label %.body

.loopexit199:                                     ; preds = %bb.af, %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit, %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit107, %bb.ai, %bb.aw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.af:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader11ReportErrorERKNS0_15DataMatchResultERKNS0_11DataContextE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(54) %9, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit120 unwind label %.loopexit199

bb.ag:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  %i.ej = load i8, ptr %i.da, align 4, !tbaa !109, !range !54, !noundef !55
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ah, label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.el = load ptr, ptr %i.db, align 8, !tbaa !50 ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.el, null
  br i1 %.not.i.i93, label %.noexc94, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(54) %9)
          to label %.noexc94 unwind label %.loopexit199

.noexc94:                                         ; preds = %bb.ai, %bb.ah
  %i.em = load i32, ptr %9, align 8, !tbaa !45    ; 2 uses
  switch i32 %i.em, label %bb.aj [
    i32 8, label %.thread.i.i
    i32 6, label %.thread.i.i
  ]

.thread.i.i:                                      ; preds = %.noexc94, %.noexc94
  store i8 1, ptr %i.b, align 8, !tbaa !51
  br label %bb.ak

bb.aj:                                            ; preds = %.noexc94
  %spec.select.i.i.i = icmp ugt i32 %i.em, 1
  br i1 %spec.select.i.i.i, label %bb.ak, label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit

bb.ak:                                            ; preds = %bb.aj, %.thread.i.i
  store i8 1, ptr %i.dc, align 1, !tbaa !52
  br label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit

_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit: ; preds = %bb.ak, %bb.aj, %bb.ag
  %i.en = load i64, ptr %i.dd, align 8, !tbaa !105 ; 3 uses
  %i.eo = load i64, ptr %i.de, align 8, !tbaa !7
  %i.ep = add i64 %i.eo, %i.en
  store i64 %i.ep, ptr %i.de, align 8, !tbaa !7
  %i.eq = sub i64 %.020222, %i.en                 ; 2 uses
  %i.er = load i64, ptr %4, align 8, !tbaa !87
  %i.es = add i64 %i.er, %i.en
  store i64 %i.es, ptr %4, align 8, !tbaa !87
  %i.et = load ptr, ptr %i.dn, align 8, !tbaa !28
  %i.eu = invoke noundef zeroext i1 @_ZNK22photos_editing_formats8image_io7XmlRule11HasNextRuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.et)
          to label %bb.al unwind label %.loopexit199

bb.al:                                            ; preds = %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit
  br i1 %i.eu, label %bb.am, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit120

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ev = load ptr, ptr %i.dn, align 8, !tbaa !28
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule15ReleaseNextRuleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(80) %i.ev)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.ew = load ptr, ptr %i.bi, align 8, !tbaa !27 ; 6 uses
  %i.ex = load ptr, ptr %i.df, align 8, !tbaa !53
  %.not.i.i95 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i.i95, label %bb.ao, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.an
  %i.ey = load i64, ptr %11, align 8, !tbaa !28
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !28
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.ez, ptr %i.bi, align 8, !tbaa !27
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit

bb.ao:                                            ; preds = %bb.an
  %i.fa = load ptr, ptr %i.bg, align 8, !tbaa !26 ; 10 uses
  %i.fb = ptrtoint ptr %i.ew to i64               ; 3 uses
  %i.fc = ptrtoint ptr %i.fa to i64               ; 3 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 4 uses
  %i.fe = icmp eq i64 %i.fd, 9223372036854775800
  br i1 %i.fe, label %bb.ap, label %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #15
          to label %.noexc171 unwind label %.loopexit.split-lp206

.noexc171:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ao
  %i.ff = ashr exact i64 %i.fd, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fg = add nsw i64 %.sroa.speculated.i.i, %i.ff ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  %i.fi = call i64 @llvm.umin.i64(i64 %i.fg, i64 1152921504606846975)
  %i.fj = select i1 %i.fh, i64 1152921504606846975, i64 %i.fi ; 3 uses
  %.not.i.i168 = icmp ne i64 %i.fj, 0
  call void @llvm.assume(i1 %.not.i.i168)
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #16
          to label %.noexc172 unwind label %.loopexit205 ; 10 uses

.noexc172:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fd
  %i.fn = load i64, ptr %11, align 8, !tbaa !28
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !28
  store ptr null, ptr %11, align 8, !tbaa !28
  %.not10.i.i.i.i = icmp eq ptr %i.fa, %i.ew
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i169.preheader

.lr.ph.i.i.i.i169.preheader:                      ; preds = %.noexc172
  %17 = add i64 %i.fb, -8
  %18 = sub i64 %17, %i.fc                        ; 2 uses
  %i.fo = lshr i64 %18, 3
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %18, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i169.preheader329, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i169.preheader
  %scevgep = getelementptr i8, ptr %i.fl, i64 8
  %i.fq = add i64 %i.fb, -8
  %i.fr = sub i64 %i.fq, %i.fc
  %i.fs = and i64 %i.fr, -8                       ; 2 uses
  %scevgep299 = getelementptr i8, ptr %scevgep, i64 %i.fs
  %scevgep300 = getelementptr i8, ptr %i.fa, i64 8
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.fs
  %bound0 = icmp ult ptr %i.fl, %scevgep301
  %bound1 = icmp ult ptr %i.fa, %scevgep299
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i169.preheader329, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 4611686018427387900     ; 3 uses
  %i.ft = shl i64 %n.vec, 3                       ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fl, i64 %i.ft  ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fa, i64 %i.ft
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fl, i64 %i.fw ; 2 uses
  %next.gep302 = getelementptr i8, ptr %i.fa, i64 %i.fw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.fx = getelementptr i8, ptr %next.gep302, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep302, align 8, !tbaa !28, !alias.scope !118, !noalias !113
  %wide.load303 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !28, !alias.scope !118, !noalias !113
  %i.fy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !28, !alias.scope !121, !noalias !118
  store <2 x i64> %wide.load303, ptr %i.fy, align 8, !tbaa !28, !alias.scope !121, !noalias !118
  %i.fz = getelementptr i8, ptr %next.gep302, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep302, align 8, !tbaa !28, !alias.scope !118, !noalias !113
  store <2 x ptr> splat (ptr null), ptr %i.fz, align 8, !tbaa !28, !alias.scope !118, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i169.preheader329

.lr.ph.i.i.i.i169.preheader329:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i169.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.fl, %vector.memcheck ], [ %i.fl, %.lr.ph.i.i.i.i169.preheader ], [ %i.fu, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.fa, %vector.memcheck ], [ %i.fa, %.lr.ph.i.i.i.i169.preheader ], [ %i.fv, %middle.block ]
  br label %.lr.ph.i.i.i.i169

.lr.ph.i.i.i.i169:                                ; preds = %.lr.ph.i.i.i.i169.preheader329, %.lr.ph.i.i.i.i169
  %.012.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i169 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i169.preheader329 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i169 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i169.preheader329 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.gb = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !28, !alias.scope !116, !noalias !113
  store i64 %i.gb, ptr %.012.i.i.i.i, align 8, !tbaa !28, !alias.scope !113, !noalias !116
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !28, !alias.scope !116, !noalias !113
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i170 = icmp eq ptr %i.gc, %i.ew
  br i1 %.not.i.i.i.i170, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i169, !llvm.loop !126

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i169, %middle.block, %.noexc172
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fl, %.noexc172 ], [ %i.fu, %middle.block ], [ %i.gd, %.lr.ph.i.i.i.i169 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.fa, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fd) #14
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.aq
  store ptr %i.fl, ptr %i.bg, align 8, !tbaa !26
  store ptr %i.ge, ptr %i.bi, align 8, !tbaa !27
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fj
  store ptr %i.gf, ptr %i.df, align 8, !tbaa !53
  %.pr = load ptr, ptr %11, align 8, !tbaa !28    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.gg = load ptr, ptr %.pr, align 8, !tbaa !30
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #13, !inline_history !127
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit120

bb.ar:                                            ; preds = %bb.am
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit99

.loopexit205:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit207 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp206:                            ; preds = %bb.ap
  %lpad.loopexit.split-lp208 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp206, %.loopexit205
  %lpad.phi209 = phi { ptr, i32 } [ %lpad.loopexit207, %.loopexit205 ], [ %lpad.loopexit.split-lp208, %.loopexit.split-lp206 ] ; 2 uses
  %i.gk = load ptr, ptr %11, align 8, !tbaa !28   ; 3 uses
  %.not.i97 = icmp eq ptr %i.gk, null
  br i1 %.not.i97, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit99, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i98

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i98: ; preds = %bb.as
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !30
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.gk) #13, !inline_history !127
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit99

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit99: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i98, %bb.as, %bb.ar
  %.pn53 = phi { ptr, i32 } [ %i.gj, %bb.ar ], [ %lpad.phi209, %bb.as ], [ %lpad.phi209, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.bi

bb.at:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(54) %9)
          to label %.critedge73 unwind label %.loopexit.split-lp

.critedge73:                                      ; preds = %bb.at
  %i.go = load i64, ptr %i.dd, align 8, !tbaa !105
  %i.gp = load i64, ptr %i.de, align 8, !tbaa !7
  %i.gq = add i64 %i.gp, %i.go
  store i64 %i.gq, ptr %i.de, align 8, !tbaa !7
  %i.gr = load ptr, ptr %i.dg, align 8, !tbaa !44 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.dh
  br i1 %i.gs, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100: ; preds = %.critedge73
  %i.gt = load i64, ptr %i.dh, align 8, !tbaa !40
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #14
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit102

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit102: ; preds = %.critedge73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.bu

bb.au:                                            ; preds = %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit
  %i.gv = load i8, ptr %i.da, align 4, !tbaa !109, !range !54, !noundef !55
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.av, label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit107

bb.av:                                            ; preds = %bb.au
  %i.gx = load ptr, ptr %i.db, align 8, !tbaa !50 ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i103, label %.noexc106, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, ptr noundef nonnull align 8 dereferenceable(54) %9)
          to label %.noexc106 unwind label %.loopexit199

.noexc106:                                        ; preds = %bb.aw, %bb.av
  %i.gy = load i32, ptr %9, align 8, !tbaa !45    ; 2 uses
  switch i32 %i.gy, label %bb.ax [
    i32 8, label %.thread.i.i104
    i32 6, label %.thread.i.i104
  ]

.thread.i.i104:                                   ; preds = %.noexc106, %.noexc106
  store i8 1, ptr %i.b, align 8, !tbaa !51
  br label %bb.ay

bb.ax:                                            ; preds = %.noexc106
  %spec.select.i.i.i105 = icmp ugt i32 %i.gy, 1
  br i1 %spec.select.i.i.i105, label %bb.ay, label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit107

bb.ay:                                            ; preds = %bb.ax, %.thread.i.i104
  store i8 1, ptr %i.dc, align 1, !tbaa !52
  br label %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit107

_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit107: ; preds = %bb.ay, %bb.ax, %bb.au
  %i.gz = load i64, ptr %i.dd, align 8, !tbaa !105 ; 3 uses
  %i.ha = load i64, ptr %i.de, align 8, !tbaa !7
  %i.hb = add i64 %i.ha, %i.gz
  store i64 %i.hb, ptr %i.de, align 8, !tbaa !7
  %i.hc = sub i64 %.020222, %i.gz                 ; 3 uses
  %i.hd = load i64, ptr %4, align 8, !tbaa !87
  %i.he = add i64 %i.hd, %i.gz
  store i64 %i.he, ptr %4, align 8, !tbaa !87
  %i.hf = load ptr, ptr %i.dn, align 8, !tbaa !28
  %i.hg = invoke noundef zeroext i1 @_ZNK22photos_editing_formats8image_io7XmlRule11HasNextRuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hf)
          to label %bb.az unwind label %.loopexit199

bb.az:                                            ; preds = %_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE.exit107
  br i1 %i.hg, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.hh = load ptr, ptr %i.dn, align 8, !tbaa !28
  invoke void @_ZN22photos_editing_formats8image_io7XmlRule15ReleaseNextRuleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %i.hh)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.hi = load ptr, ptr %i.bi, align 8, !tbaa !27
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -8 ; 3 uses
  store ptr %i.hj, ptr %i.bi, align 8, !tbaa !27
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !28 ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i108, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i: ; preds = %bb.bb
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !30
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hk) #13, !inline_history !128
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !27
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit: ; preds = %bb.bb, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i
  %i.ho = phi ptr [ %i.hj, %bb.bb ], [ %.pre, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i ] ; 6 uses
  %i.hp = load ptr, ptr %i.df, align 8, !tbaa !53
  %.not.i.i109 = icmp eq ptr %i.ho, %i.hp
  br i1 %.not.i.i109, label %bb.bc, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit111.thread

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit111.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit
  %i.hq = load i64, ptr %12, align 8, !tbaa !28
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store ptr %i.hr, ptr %i.bi, align 8, !tbaa !27
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit114

bb.bc:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit
  %i.hs = load ptr, ptr %i.bg, align 8, !tbaa !26 ; 10 uses
  %i.ht = ptrtoint ptr %i.ho to i64               ; 3 uses
  %i.hu = ptrtoint ptr %i.hs to i64               ; 3 uses
  %i.hv = sub i64 %i.ht, %i.hu                    ; 4 uses
  %i.hw = icmp eq i64 %i.hv, 9223372036854775800
  br i1 %i.hw, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i173

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #15
          to label %.noexc191 unwind label %.loopexit.split-lp201

.noexc191:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i173: ; preds = %bb.bc
  %i.hx = ashr exact i64 %i.hv, 3                 ; 3 uses
  %.sroa.speculated.i.i174 = call i64 @llvm.umax.i64(i64 %i.hx, i64 1)
  %i.hy = add nsw i64 %.sroa.speculated.i.i174, %i.hx ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.hx
  %i.ia = call i64 @llvm.umin.i64(i64 %i.hy, i64 1152921504606846975)
  %i.ib = select i1 %i.hz, i64 1152921504606846975, i64 %i.ia ; 3 uses
  %.not.i.i175 = icmp ne i64 %i.ib, 0
  call void @llvm.assume(i1 %.not.i.i175)
  %i.ic = shl nuw nsw i64 %i.ib, 3
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #16
          to label %.noexc192 unwind label %.loopexit200 ; 10 uses

.noexc192:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i173
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hv
  %i.if = load i64, ptr %12, align 8, !tbaa !28
  store i64 %i.if, ptr %i.ie, align 8, !tbaa !28
  store ptr null, ptr %12, align 8, !tbaa !28
  %.not10.i.i.i.i176 = icmp eq ptr %i.hs, %i.ho
  br i1 %.not10.i.i.i.i176, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188, label %.lr.ph.i.i.i.i177.preheader

.lr.ph.i.i.i.i177.preheader:                      ; preds = %.noexc192
  %19 = add i64 %i.ht, -8
  %20 = sub i64 %19, %i.hu                        ; 2 uses
  %i.ig = lshr i64 %20, 3
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %min.iters.check314 = icmp ult i64 %20, 56
  br i1 %min.iters.check314, label %.lr.ph.i.i.i.i177.preheader330, label %vector.memcheck305

vector.memcheck305:                               ; preds = %.lr.ph.i.i.i.i177.preheader
  %scevgep306 = getelementptr i8, ptr %i.id, i64 8
  %i.ii = add i64 %i.ht, -8
  %i.ij = sub i64 %i.ii, %i.hu
  %i.ik = and i64 %i.ij, -8                       ; 2 uses
  %scevgep307 = getelementptr i8, ptr %scevgep306, i64 %i.ik
  %scevgep308 = getelementptr i8, ptr %i.hs, i64 8
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.ik
  %bound0310 = icmp ult ptr %i.id, %scevgep309
  %bound1311 = icmp ult ptr %i.hs, %scevgep307
  %found.conflict312 = and i1 %bound0310, %bound1311
  br i1 %found.conflict312, label %.lr.ph.i.i.i.i177.preheader330, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck305
  %n.vec317 = and i64 %i.ih, 4611686018427387900  ; 3 uses
  %i.il = shl i64 %n.vec317, 3                    ; 2 uses
  %i.im = getelementptr i8, ptr %i.id, i64 %i.il  ; 2 uses
  %i.in = getelementptr i8, ptr %i.hs, i64 %i.il
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph315
  %index319 = phi i64 [ 0, %vector.ph315 ], [ %index.next324, %vector.body318 ] ; 2 uses
  %i.io = shl i64 %index319, 3                    ; 2 uses
  %next.gep320 = getelementptr i8, ptr %i.id, i64 %i.io ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.hs, i64 %i.io ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.ip = getelementptr i8, ptr %next.gep321, i64 16
  %wide.load322 = load <2 x i64>, ptr %next.gep321, align 8, !tbaa !28, !alias.scope !134, !noalias !129
  %wide.load323 = load <2 x i64>, ptr %i.ip, align 8, !tbaa !28, !alias.scope !134, !noalias !129
  %i.iq = getelementptr i8, ptr %next.gep320, i64 16
  store <2 x i64> %wide.load322, ptr %next.gep320, align 8, !tbaa !28, !alias.scope !137, !noalias !134
  store <2 x i64> %wide.load323, ptr %i.iq, align 8, !tbaa !28, !alias.scope !137, !noalias !134
  %i.ir = getelementptr i8, ptr %next.gep321, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep321, align 8, !tbaa !28, !alias.scope !134, !noalias !129
  store <2 x ptr> splat (ptr null), ptr %i.ir, align 8, !tbaa !28, !alias.scope !134, !noalias !129
  %index.next324 = add nuw i64 %index319, 4       ; 2 uses
  %i.is = icmp eq i64 %index.next324, %n.vec317
  br i1 %i.is, label %middle.block325, label %vector.body318, !llvm.loop !139

middle.block325:                                  ; preds = %vector.body318
  %cmp.n326 = icmp eq i64 %i.ih, %n.vec317
  br i1 %cmp.n326, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188, label %.lr.ph.i.i.i.i177.preheader330

.lr.ph.i.i.i.i177.preheader330:                   ; preds = %vector.memcheck305, %.lr.ph.i.i.i.i177.preheader, %middle.block325
  %.012.i.i.i.i178.ph = phi ptr [ %i.id, %vector.memcheck305 ], [ %i.id, %.lr.ph.i.i.i.i177.preheader ], [ %i.im, %middle.block325 ]
  %.0911.i.i.i.i179.ph = phi ptr [ %i.hs, %vector.memcheck305 ], [ %i.hs, %.lr.ph.i.i.i.i177.preheader ], [ %i.in, %middle.block325 ]
  br label %.lr.ph.i.i.i.i177

.lr.ph.i.i.i.i177:                                ; preds = %.lr.ph.i.i.i.i177.preheader330, %.lr.ph.i.i.i.i177
  %.012.i.i.i.i178 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i177 ], [ %.012.i.i.i.i178.ph, %.lr.ph.i.i.i.i177.preheader330 ] ; 2 uses
  %.0911.i.i.i.i179 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i177 ], [ %.0911.i.i.i.i179.ph, %.lr.ph.i.i.i.i177.preheader330 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.it = load i64, ptr %.0911.i.i.i.i179, align 8, !tbaa !28, !alias.scope !132, !noalias !129
  store i64 %i.it, ptr %.012.i.i.i.i178, align 8, !tbaa !28, !alias.scope !129, !noalias !132
  store ptr null, ptr %.0911.i.i.i.i179, align 8, !tbaa !28, !alias.scope !132, !noalias !129
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i179, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i178, i64 8 ; 2 uses
  %.not.i.i.i.i180 = icmp eq ptr %i.iu, %i.ho
  br i1 %.not.i.i.i.i180, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188, label %.lr.ph.i.i.i.i177, !llvm.loop !140

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188: ; preds = %.lr.ph.i.i.i.i177, %middle.block325, %.noexc192
  %.0.lcssa.i.i.i.i182 = phi ptr [ %i.id, %.noexc192 ], [ %i.im, %middle.block325 ], [ %i.iv, %.lr.ph.i.i.i.i177 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i182, i64 8
  %.not.i23.i190 = icmp eq ptr %i.hs, null
  br i1 %.not.i23.i190, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit111, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.hv) #14
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit111

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit111: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188, %bb.be
  store ptr %i.id, ptr %i.bg, align 8, !tbaa !26
  store ptr %i.iw, ptr %i.bi, align 8, !tbaa !27
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ib
  store ptr %i.ix, ptr %i.df, align 8, !tbaa !53
  %.pr197 = load ptr, ptr %12, align 8, !tbaa !28 ; 3 uses
  %.not.i112 = icmp eq ptr %.pr197, null
  br i1 %.not.i112, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit114, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i113

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i113: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit111
  %i.iy = load ptr, ptr %.pr197, align 8, !tbaa !30
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr197) #13, !inline_history !127
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit114

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit114: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit111.thread, %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit111, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit120

bb.bf:                                            ; preds = %bb.ba
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit117

.loopexit200:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i173
  %lpad.loopexit202 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp201:                            ; preds = %bb.bd
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp201, %.loopexit200
  %lpad.phi204 = phi { ptr, i32 } [ %lpad.loopexit202, %.loopexit200 ], [ %lpad.loopexit.split-lp203, %.loopexit.split-lp201 ] ; 2 uses
  %i.jc = load ptr, ptr %12, align 8, !tbaa !28   ; 3 uses
  %.not.i115 = icmp eq ptr %i.jc, null
  br i1 %.not.i115, label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit117, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i116

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i116: ; preds = %bb.bg
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !30
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.jc) #13, !inline_history !127
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit117

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit117: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i116, %bb.bg, %bb.bf
  %.pn51 = phi { ptr, i32 } [ %i.jb, %bb.bf ], [ %lpad.phi204, %bb.bg ], [ %lpad.phi204, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.bi

bb.bh:                                            ; preds = %bb.az
  %i.jg = load ptr, ptr %i.bi, align 8, !tbaa !27
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -8 ; 2 uses
  store ptr %i.jh, ptr %i.bi, align 8, !tbaa !27
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !28 ; 3 uses
  %.not.i.i118 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i118, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit120, label %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i119

_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i119: ; preds = %bb.bh
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !30
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ji) #13, !inline_history !128
  br label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit120

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit120: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i119, %bb.bh, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit, %bb.af, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit, %bb.al, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit114
  %.222 = phi i64 [ %i.hc, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit114 ], [ %.020222, %_ZN22photos_editing_formats8image_io11DataContextD2Ev.exit ], [ %.020222, %bb.af ], [ %i.eq, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit ], [ %i.eq, %bb.al ], [ %i.hc, %bb.bh ], [ %i.hc, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i119 ] ; 2 uses
  %i.jm = load ptr, ptr %i.dg, align 8, !tbaa !44 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.dh
  br i1 %i.jn, label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i121: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit120
  %i.jo = load i64, ptr %i.dh, align 8, !tbaa !40
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #14
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit123

_ZN22photos_editing_formats8image_io15DataMatchResultD2Ev.exit123: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.not = icmp eq i64 %.222, 0
  br i1 %.not, label %.critedge74, label %bb.w, !llvm.loop !141

bb.bi:                                            ; preds = %.loopexit199, %.loopexit.split-lp, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit117, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit99
  %.pn55 = phi { ptr, i32 } [ %.pn51, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit117 ], [ %.pn53, %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit99 ], [ %lpad.loopexit, %.loopexit199 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.jq = load ptr, ptr %i.dg, align 8, !tbaa !44 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.dh
  br i1 %i.jr, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i124: ; preds = %bb.bi
  %i.js = load i64, ptr %i.dh, align 8, !tbaa !40
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #14
  br label %.body

.body:                                            ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i124, %bb.aa, %bb.ae
  %.pn55.pn = phi { ptr, i32 } [ %i.ds, %bb.aa ], [ %i.ei, %bb.ae ], [ %.pn55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i124 ], [ %.pn55, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.bv

bb.bj:                                            ; preds = %bb.w
  invoke void @_ZN22photos_editing_formats8image_io9XmlReader25InitializeContextNameListEPNS0_17XmlHandlerContextE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull %4)
          to label %._crit_edge.i.i127 unwind label %bb.ac

._crit_edge.i.i127:                               ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.ju = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ju, ptr %14, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ju, ptr noundef nonnull align 1 dereferenceable(12) @.str.3, i64 12, i1 false)
  %i.jv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 12, ptr %i.jv, align 8, !tbaa !38
  %i.jw = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i8 0, ptr %i.jw, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.jx, ptr %15, align 8, !tbaa !35
  %i.jy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.jy, align 8, !tbaa !38
  store i8 0, ptr %i.jx, align 8, !tbaa !40
  invoke void @_ZNK22photos_editing_formats8image_io11DataContext12GetErrorTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
end_hunk_0
begin_hunk_1_@_ZN22photos_editing_formats8image_io9XmlReader21ReportMessageIfNeededERKNS0_15DataMatchResultE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i32, ptr %1, align 8, !tbaa !45     ; 2 uses
  switch i32 %i.f, label %bb.e [
    i32 8, label %.thread.i
    i32 6, label %.thread.i
  ]

.thread.i:                                        ; preds = %bb.d, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.g, align 8, !tbaa !51
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.select.i.i = icmp ugt i32 %i.f, 1
  br i1 %spec.select.i.i, label %bb.f, label %_ZN22photos_editing_formats8image_io9XmlReader11ReportErrorERKNS0_7MessageE.exit

bb.f:                                             ; preds = %bb.e, %.thread.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 1, ptr %i.h, align 1, !tbaa !52
  br label %_ZN22photos_editing_formats8image_io9XmlReader11ReportErrorERKNS0_7MessageE.exit

_ZN22photos_editing_formats8image_io9XmlReader11ReportErrorERKNS0_7MessageE.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK22photos_editing_formats8image_io7XmlRule11HasNextRuleEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZN22photos_editing_formats8image_io7XmlRule15ReleaseNextRuleEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZNK22photos_editing_formats8image_io11DataContext12GetErrorTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !99 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 48) #14
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !112

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  ret void
}

declare void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !144
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.g, ptr %i.a, align 8, !tbaa !49
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.i, ptr %i.c, align 8, !tbaa !44
  %i.j = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.j, ptr %i.d, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !40
  store i8 %i.l, ptr %i.k, align 1, !tbaa !40
  br label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit

_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i: ; preds = %.noexc.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #14
  resume { ptr, i32 } %i.m

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJRKS5_EEEPSt10_List_nodeIS5_EDpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !38
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1) #13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !143
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !143
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #15
  unreachable

_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #16 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !28
  store i64 %i.r, ptr %i.q, align 8, !tbaa !28
  store ptr null, ptr %2, align 8, !tbaa !28
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !28, !alias.scope !150, !noalias !145
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !28, !alias.scope !150, !noalias !145
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !28, !alias.scope !153, !noalias !150
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !tbaa !28, !alias.scope !153, !noalias !150
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !28, !alias.scope !150, !noalias !145
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !28, !alias.scope !150, !noalias !145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !28, !alias.scope !148, !noalias !145
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !28, !alias.scope !145, !noalias !148
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !28, !alias.scope !148, !noalias !145
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !156

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m                     ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.an, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.aq = add i64 %i.d, -8
  %i.ar = sub i64 %i.aq, %i.m
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep40 = getelementptr i8, ptr %i.at, i64 16
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep41 = getelementptr i8, ptr %i.au, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec49, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ay = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ay ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.az = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !28, !alias.scope !162, !noalias !157
  %wide.load55 = load <2 x i64>, ptr %i.az, align 8, !tbaa !28, !alias.scope !162, !noalias !157
  %i.ba = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !tbaa !28, !alias.scope !165, !noalias !162
  store <2 x i64> %wide.load55, ptr %i.ba, align 8, !tbaa !28, !alias.scope !165, !noalias !162
  %i.bb = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !28, !alias.scope !162, !noalias !157
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !28, !alias.scope !162, !noalias !157
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bc, label %middle.block57, label %vector.body50, !llvm.loop !167

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ap, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !28, !alias.scope !160, !noalias !157
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !28, !alias.scope !157, !noalias !160
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !28, !alias.scope !160, !noalias !157
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !168

_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.aw, %middle.block57 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #14
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !53
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !25, i64 80}
!8 = !{!"_ZTSN22photos_editing_formats8image_io9XmlReaderE", !9, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !20, i64 56, !25, i64 80, !19, i64 88, !19, i64 89}
!9 = !{!"p1 _ZTSN22photos_editing_formats8image_io10XmlHandlerE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN22photos_editing_formats8image_io14MessageHandlerE", !10, i64 0}
!12 = !{!"p1 _ZTSN22photos_editing_formats8image_io11DataLineMapE", !10, i64 0}
!13 = !{!"_ZTSN22photos_editing_formats8image_io11DataLineMapE", !14, i64 0, !19, i64 24}
!14 = !{!"_ZTSSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE", !15, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIN22photos_editing_formats8image_io8DataLineESaIS2_EE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_Vector_implE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 _ZTSN22photos_editing_formats8image_io8DataLineE", !10, i64 0}
!19 = !{!"bool", !5, i64 0}
!20 = !{!"_ZTSSt6vectorISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p1 _ZTSSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EE", !10, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!23, !24, i64 0}
!27 = !{!23, !24, i64 8}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSN22photos_editing_formats8image_io7XmlRuleE", !10, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !6, i64 0}
!32 = distinct !{null, null, null, null, null, null, null}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!37 = !{!"p1 omnipotent char", !10, i64 0}
!38 = !{!39, !25, i64 8}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !25, i64 8, !5, i64 16}
!40 = !{!5, !5, i64 0}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!43 = distinct !{!43, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!44 = !{!39, !37, i64 0}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSN22photos_editing_formats8image_io7MessageE", !47, i64 0, !4, i64 4, !39, i64 8}
!47 = !{!"_ZTSN22photos_editing_formats8image_io7Message4TypeE", !5, i64 0}
!48 = !{!46, !4, i64 4}
!49 = !{!25, !25, i64 0}
!50 = !{!8, !11, i64 8}
!51 = !{!8, !19, i64 88}
!52 = !{!8, !19, i64 89}
!53 = !{!23, !24, i64 16}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!24, !24, i64 0}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!59 = distinct !{!59, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!62 = distinct !{!62, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!63 = !{!61, !58}
!64 = !{!65, !37, i64 40}
!65 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !66, i64 56}
!66 = !{!"_ZTSSt6locale", !67, i64 0}
!67 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!68 = !{!65, !37, i64 32}
!69 = !{!70, !25, i64 8}
!70 = !{!"_ZTSSi", !25, i64 8}
!71 = !{!72, !25, i64 0}
!72 = !{!"_ZTSN22photos_editing_formats8image_io9DataRangeE", !25, i64 0, !25, i64 8}
!73 = !{!72, !25, i64 8}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EE", !76, i64 0, !77, i64 8}
end_hunk_1
