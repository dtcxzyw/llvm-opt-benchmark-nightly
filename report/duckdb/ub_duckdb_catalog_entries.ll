inline.NumInlined: 10301
inline.NumDeleted: 5043
begin_hunk_0_@_ZN6duckdb14DuckTableEntry23AddForeignKeyConstraintERNS_19AlterForeignKeyInfoE:bb.a
  %next.gep = getelementptr i8, ptr %i.da, i64 %i.dn ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.cp, i64 %i.dn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.do = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep148, align 8, !tbaa !567, !alias.scope !610, !noalias !605
  %wide.load149 = load <2 x i64>, ptr %i.do, align 8, !tbaa !567, !alias.scope !610, !noalias !605
  %i.dp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !613, !noalias !610
  store <2 x i64> %wide.load149, ptr %i.dp, align 8, !tbaa !567, !alias.scope !613, !noalias !610
  %i.dq = getelementptr i8, ptr %next.gep148, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep148, align 8, !tbaa !567, !alias.scope !610, !noalias !605
  store <2 x ptr> splat (ptr null), ptr %i.dq, align 8, !tbaa !567, !alias.scope !610, !noalias !605
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !615

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i32.preheader174

.lr.ph.i.i.i.i.i.i.i32.preheader174:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i32.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.dl, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader174, %.lr.ph.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader174 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader174 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.ds = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !608, !noalias !605
  store i64 %i.ds, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !605, !noalias !608
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !608, !noalias !605
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.dt, %i.ck
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !616

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %middle.block, %.noexc35
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.da, %.noexc35 ], [ %i.dl, %middle.block ], [ %i.du, %.lr.ph.i.i.i.i.i.i.i32 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.x
  store ptr %i.da, ptr %i.cd, align 8, !tbaa !303
  store ptr %i.dv, ptr %i.cj, align 8, !tbaa !300
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.dw, ptr %i.cl, align 8, !tbaa !544
  %.pr93 = load ptr, ptr %6, align 8, !tbaa !567  ; 3 uses
  %.not.i = icmp eq ptr %.pr93, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.dx = load ptr, ptr %.pr93, align 8, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr93) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ea = add nuw i64 %.098, 1                    ; 2 uses
  %i.eb = load ptr, ptr %i.bo, align 8, !tbaa !300
  %i.ec = load ptr, ptr %i.bn, align 8, !tbaa !303
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 3
  %i.eh = icmp ult i64 %i.ea, %i.eg
  br i1 %i.eh, label %.lr.ph, label %._crit_edge, !llvm.loop !618

bb.y:                                             ; preds = %.lr.ph
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.z:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit38

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ek = load ptr, ptr %6, align 8, !tbaa !567   ; 3 uses
  %.not.i36 = icmp eq ptr %i.ek, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit38, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i37

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i37: ; preds = %bb.aa
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ek) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit38

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit38: ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i37, %bb.aa, %bb.z
  %.pn25 = phi { ptr, i32 } [ %i.ej, %bb.z ], [ %lpad.phi, %bb.aa ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %._crit_edge
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 120
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.eo)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit40 unwind label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.eq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.ep)
          to label %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.au ; 0 uses

_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit40
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.et = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit43 unwind label %bb.au ; 0 uses

_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit43: ; preds = %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit
  %i.eu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ab unwind label %bb.au     ; 3 uses

bb.ab:                                            ; preds = %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit43
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 176
  invoke void @_ZN6duckdb9make_uniqINS_20ForeignKeyConstraintEJRNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESB_NS_14ForeignKeyInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1106") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(120) %7)
          to label %bb.ac unwind label %bb.av

bb.ac:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 464 ; 3 uses
  %i.ey = load ptr, ptr %8, align 8, !tbaa !619   ; 5 uses
  store ptr null, ptr %8, align 8, !tbaa !619
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 472 ; 4 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !300 ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 480 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !544
  %.not.i.i44 = icmp eq ptr %i.fa, %i.fc
  br i1 %.not.i.i44, label %bb.ad, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread: ; preds = %bb.ac
  %i.fd = ptrtoint ptr %i.ey to i64
  store i64 %i.fd, ptr %i.fa, align 8, !tbaa !567
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.fe, ptr %i.ez, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ff = load ptr, ptr %i.ex, align 8, !tbaa !303 ; 10 uses
  %i.fg = ptrtoint ptr %i.fa to i64               ; 3 uses
  %i.fh = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fi = sub i64 %i.fg, %i.fh                    ; 3 uses
  %i.fj = icmp eq i64 %i.fi, 9223372036854775800
  br i1 %i.fj, label %bb.ae, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i45

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc57 unwind label %bb.aw

.noexc57:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i45: ; preds = %bb.ad
  %i.fk = ashr exact i64 %i.fi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i46 = call i64 @llvm.umax.i64(i64 %i.fk, i64 1)
  %i.fl = add nsw i64 %.sroa.speculated.i.i.i.i46, %i.fk ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.fk
  %i.fn = call i64 @llvm.umin.i64(i64 %i.fl, i64 1152921504606846975)
  %i.fo = select i1 %i.fm, i64 1152921504606846975, i64 %i.fn ; 4 uses
  %.not.i.i.i.i47 = icmp ne i64 %i.fo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i47)
  %i.fp = shl nuw nsw i64 %i.fo, 3
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #33
          to label %.noexc58 unwind label %bb.aw  ; 12 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i45
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fi
  %i.fs = ptrtoint ptr %i.ey to i64
  store i64 %i.fs, ptr %i.fr, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i48 = icmp eq ptr %i.ff, %i.fa
  br i1 %.not10.i.i.i.i.i.i.i48, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53, label %.lr.ph.i.i.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i.i.i49.preheader:                 ; preds = %.noexc58
  %i.ft = sub i64 %i.fg, %i.fh
  %i.fu = add i64 %i.ft, -8                       ; 2 uses
  %i.fv = lshr i64 %i.fu, 3
  %i.fw = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %min.iters.check158 = icmp ult i64 %i.fu, 136
  br i1 %min.iters.check158, label %.lr.ph.i.i.i.i.i.i.i49.preheader173, label %vector.memcheck151

vector.memcheck151:                               ; preds = %.lr.ph.i.i.i.i.i.i.i49.preheader
  %i.fx = add i64 %i.fg, -8
  %i.fy = sub i64 %i.fx, %i.fh
  %i.fz = and i64 %i.fy, -8
  %i.ga = add i64 %i.fz, 8                        ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.fq, i64 %i.ga
  %scevgep153 = getelementptr i8, ptr %i.ff, i64 %i.ga
  %bound0154 = icmp ult ptr %i.fq, %scevgep153
  %bound1155 = icmp ult ptr %i.ff, %scevgep152
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %.lr.ph.i.i.i.i.i.i.i49.preheader173, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck151
  %n.vec161 = and i64 %i.fw, 4611686018427387900  ; 3 uses
  %i.gb = shl i64 %n.vec161, 3                    ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fq, i64 %i.gb  ; 2 uses
  %i.gd = getelementptr i8, ptr %i.ff, i64 %i.gb
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph159
  %index163 = phi i64 [ 0, %vector.ph159 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %i.ge = shl i64 %index163, 3                    ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.fq, i64 %i.ge ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.ff, i64 %i.ge ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.gf = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load166 = load <2 x i64>, ptr %next.gep165, align 8, !tbaa !567, !alias.scope !626, !noalias !621
  %wide.load167 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !567, !alias.scope !626, !noalias !621
  %i.gg = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x i64> %wide.load166, ptr %next.gep164, align 8, !tbaa !567, !alias.scope !629, !noalias !626
  store <2 x i64> %wide.load167, ptr %i.gg, align 8, !tbaa !567, !alias.scope !629, !noalias !626
  %i.gh = getelementptr i8, ptr %next.gep165, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep165, align 8, !tbaa !567, !alias.scope !626, !noalias !621
  store <2 x ptr> splat (ptr null), ptr %i.gh, align 8, !tbaa !567, !alias.scope !626, !noalias !621
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.gi, label %middle.block169, label %vector.body162, !llvm.loop !631

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %i.fw, %n.vec161
  br i1 %cmp.n170, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53, label %.lr.ph.i.i.i.i.i.i.i49.preheader173

.lr.ph.i.i.i.i.i.i.i49.preheader173:              ; preds = %vector.memcheck151, %.lr.ph.i.i.i.i.i.i.i49.preheader, %middle.block169
  %.012.i.i.i.i.i.i.i50.ph = phi ptr [ %i.fq, %vector.memcheck151 ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.i49.preheader ], [ %i.gc, %middle.block169 ]
  %.0911.i.i.i.i.i.i.i51.ph = phi ptr [ %i.ff, %vector.memcheck151 ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i49.preheader ], [ %i.gd, %middle.block169 ]
  br label %.lr.ph.i.i.i.i.i.i.i49

.lr.ph.i.i.i.i.i.i.i49:                           ; preds = %.lr.ph.i.i.i.i.i.i.i49.preheader173, %.lr.ph.i.i.i.i.i.i.i49
  %.012.i.i.i.i.i.i.i50 = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i49 ], [ %.012.i.i.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i.i.i49.preheader173 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i51 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i49 ], [ %.0911.i.i.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i.i.i49.preheader173 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.gj = load i64, ptr %.0911.i.i.i.i.i.i.i51, align 8, !tbaa !567, !alias.scope !624, !noalias !621
  store i64 %i.gj, ptr %.012.i.i.i.i.i.i.i50, align 8, !tbaa !567, !alias.scope !621, !noalias !624
  store ptr null, ptr %.0911.i.i.i.i.i.i.i51, align 8, !tbaa !567, !alias.scope !624, !noalias !621
  %i.gk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i51, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i50, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i52 = icmp eq ptr %i.gk, %i.fa
  br i1 %.not.i.i.i.i.i.i.i52, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53, label %.lr.ph.i.i.i.i.i.i.i49, !llvm.loop !632

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53: ; preds = %.lr.ph.i.i.i.i.i.i.i49, %middle.block169, %.noexc58
  %.0.lcssa.i.i.i.i.i.i.i54 = phi ptr [ %i.fq, %.noexc58 ], [ %i.gc, %middle.block169 ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.i49 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i54, i64 8 ; 2 uses
  %.not.i23.i.i.i55 = icmp eq ptr %i.ff, null
  br i1 %.not.i23.i.i.i55, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread140, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread140: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53
  store ptr %i.fq, ptr %i.ex, align 8, !tbaa !303
  store ptr %i.gm, ptr %i.ez, align 8, !tbaa !300
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fo
  store ptr %i.gn, ptr %i.fb, align 8, !tbaa !544
  br label %_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53
  call void @_ZdlPv(ptr noundef nonnull %i.ff) #31
  %.pre.pre = load ptr, ptr %8, align 8, !tbaa !619 ; 3 uses
  store ptr %i.fq, ptr %i.ex, align 8, !tbaa !303
  store ptr %i.gm, ptr %i.ez, align 8, !tbaa !300
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fo
  store ptr %i.go, ptr %i.fb, align 8, !tbaa !544
  %.not.i63 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20ForeignKeyConstraintEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20ForeignKeyConstraintEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62
  %i.gp = load ptr, ptr %.pre.pre, align 8, !tbaa !7
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(184) %.pre.pre) #30, !inline_history !633
  br label %_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread140, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62, %_ZNKSt14default_deleteIN6duckdb20ForeignKeyConstraintEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr null, ptr %9, align 8, !tbaa !634
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.gs = load ptr, ptr %4, align 8, !tbaa !637
  store ptr null, ptr %4, align 8, !tbaa !637
  store ptr %i.gs, ptr %11, align 8, !tbaa !639
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !205, !nonnull !71, !align !204
  invoke void @_ZN6duckdb6Binder25BindCreateTableCheckpointENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEERNS_18SchemaCatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.888") align 8 %10, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(248) %i.gt)
          to label %bb.af unwind label %bb.ax

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit
  %i.gu = load ptr, ptr %10, align 8, !tbaa !641
  store ptr null, ptr %10, align 8, !tbaa !641
  %i.gv = load ptr, ptr %9, align 8, !tbaa !641   ; 3 uses
  store ptr %i.gu, ptr %9, align 8, !tbaa !641
  %.not.i.i.i.i.i64 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i64, label %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.af
  call void @_ZN6duckdb20BoundCreateTableInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %i.gv) #30
  call void @_ZdlPv(ptr noundef nonnull %i.gv) #31
  %.pr95 = load ptr, ptr %10, align 8, !tbaa !641 ; 3 uses
  %.not.i65 = icmp eq ptr %.pr95, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZN6duckdb20BoundCreateTableInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %.pr95) #30
  call void @_ZdlPv(ptr noundef nonnull %.pr95) #31
  br label %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.af, %_ZN6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i
  %i.gw = load ptr, ptr %11, align 8, !tbaa !214  ; 3 uses
  %.not.i66 = icmp eq ptr %i.gw, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !7
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(320) %i.gw) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.hc = load ptr, ptr %i.a, align 8, !tbaa !205, !nonnull !71, !align !204
  %i.hd = invoke noundef nonnull align 8 dereferenceable(360) ptr @_ZNK6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ag unwind label %bb.ay

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.he = invoke noalias noundef nonnull dereferenceable(688) ptr @_Znwm(i64 noundef 688) #33
          to label %.noexc69 unwind label %bb.ay, !inline_history !642 ; 3 uses

.noexc69:                                         ; preds = %bb.ag
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !94, !noalias !643 ; 2 uses
  %i.hj = load <2 x ptr>, ptr %i.hf, align 8, !tbaa !95, !noalias !643
  store <2 x ptr> %i.hj, ptr %3, align 16, !tbaa !95, !noalias !643
  %.not.i.i.i.i.i67 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i67, label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.noexc69
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 3 uses
  %i.hl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !643
  %.not.i.i.i.i.i.i = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !3, !noalias !643
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hk, align 4, !tbaa !3, !noalias !643
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.ho = atomicrmw volatile add ptr %i.hk, i32 1 acq_rel, align 4, !noalias !643 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i: ; preds = %bb.aj, %bb.ai, %.noexc69
  invoke void @_ZN6duckdb14DuckTableEntryC1ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_20BoundCreateTableInfoENS_10shared_ptrINS_9DataTableELb1EEE(ptr noundef nonnull align 8 dereferenceable(688) %i.he, ptr noundef nonnull align 8 dereferenceable(80) %i.hb, ptr noundef nonnull align 8 dereferenceable(248) %i.hc, ptr noundef nonnull align 8 dereferenceable(360) %i.hd, ptr noundef nonnull %3)
          to label %bb.ak unwind label %bb.ar, !noalias !643, !inline_history !642

bb.ak:                                            ; preds = %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i
  %i.hp = load ptr, ptr %i.hg, align 8, !tbaa !94, !noalias !643 ; 8 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i68, label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 4 uses
  %i.hr = load atomic i64, ptr %i.hq acquire, align 8, !noalias !643 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 4294967297
  %i.ht = trunc i64 %i.hr to i32                  ; 2 uses
  br i1 %i.hs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.hq, align 8, !tbaa !99, !noalias !643
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  store i32 0, ptr %i.hu, align 4, !tbaa !101, !noalias !643
  %i.hv = load ptr, ptr %i.hp, align 8, !tbaa !7, !noalias !643
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !643
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #30, !noalias !643, !inline_history !646
end_hunk_0
begin_hunk_1_@_ZN6duckdb14DuckTableEntry12RenameColumnERNS_13ClientContextERNS_16RenameColumnInfoE:bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14DuckTableEntry11RenameFieldERNS_13ClientContextERNS_15RenameFieldInfoE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(688) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(176) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::DroppedFieldMapping", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.duckdb::vector.151", align 8 ; 19 uses
  %13 = alloca %"class.duckdb::unique_ptr.1034", align 8 ; 8 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %15 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %18 = alloca %"class.duckdb::unique_ptr.1001", align 8 ; 8 uses
  %19 = alloca %"struct.duckdb::ChangeColumnTypeInfo", align 8 ; 7 uses
  %20 = alloca %"struct.duckdb::AlterEntryData", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %23 = alloca %"class.duckdb::unique_ptr.805", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 6 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb10ColumnList12ColumnExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.bs unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.013 = phi i1 [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.013, label %bb.g, label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.013, label %bb.g, label %bb.br

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn195 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #30
  br label %bb.br

bb.h:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.n = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @_ZN6duckdb21RenameFieldFromStructERKNS_11LogicalTypeERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS9_EEERKS9_m(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::DroppedFieldMapping") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 1)
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !681, !range !70, !noundef !71
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb9ErrorData5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %10) #32
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %10, align 8, !tbaa !15    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.v) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.l
  %.pn50 = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.u, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.bq

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.o unwind label %bb.ax

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1034") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %bb.p unwind label %bb.ax

bb.p:                                             ; preds = %bb.o
  %i.z = load ptr, ptr %13, align 8, !tbaa !685   ; 5 uses
  store ptr null, ptr %13, align 8, !tbaa !685
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 14 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !166 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.q, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.p
  %i.ae = ptrtoint ptr %i.z to i64
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !168
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.ah = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #33
          to label %.noexc57 unwind label %bb.ay  ; 12 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  %i.at = ptrtoint ptr %i.z to i64
  store i64 %i.at, ptr %i.as, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc57
  %i.au = sub i64 %i.ah, %i.ai
  %i.av = add i64 %i.au, -8                       ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader325, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ay = add i64 %i.ah, -8
  %i.az = sub i64 %i.ay, %i.ai
  %i.ba = and i64 %i.az, -8
  %i.bb = add i64 %i.ba, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.bb
  %scevgep250 = getelementptr i8, ptr %i.ag, i64 %i.bb
  %bound0 = icmp ult ptr %i.ar, %scevgep250
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader325, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ar, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.ag, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bf ; 2 uses
  %next.gep251 = getelementptr i8, ptr %i.ag, i64 %i.bf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.bg = getelementptr i8, ptr %next.gep251, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep251, align 8, !tbaa !168, !alias.scope !692, !noalias !687
  %wide.load252 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !168, !alias.scope !692, !noalias !687
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !168, !alias.scope !695, !noalias !692
  store <2 x i64> %wide.load252, ptr %i.bh, align 8, !tbaa !168, !alias.scope !695, !noalias !692
  %i.bi = getelementptr i8, ptr %next.gep251, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep251, align 8, !tbaa !168, !alias.scope !692, !noalias !687
  store <2 x ptr> splat (ptr null), ptr %i.bi, align 8, !tbaa !168, !alias.scope !692, !noalias !687
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !697

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader325

.lr.ph.i.i.i.i.i.i.i.preheader325:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader325, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader325 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader325 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.bk = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !690, !noalias !687
  store i64 %i.bk, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !687, !noalias !690
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !690, !noalias !687
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !698

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc57
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.noexc57 ], [ %i.bd, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread241, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread241: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ar, ptr %12, align 8, !tbaa !170
  store ptr %i.bn, ptr %i.aa, align 8, !tbaa !166
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bo, ptr %i.ac, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #31
  %.pre.pre = load ptr, ptr %13, align 8, !tbaa !685 ; 3 uses
  store ptr %i.ar, ptr %12, align 8, !tbaa !170
  store ptr %i.bn, ptr %i.aa, align 8, !tbaa !166
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bp, ptr %i.ac, align 8, !tbaa !167
  %.not.i58 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bq = load ptr, ptr %.pre.pre, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(80) %.pre.pre) #30, !inline_history !699
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread241, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %bb.s unwind label %bb.az

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull %15)
          to label %bb.t unwind label %bb.ba

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bu = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc59 unwind label %bb.bb  ; 6 uses

.noexc59:                                         ; preds = %bb.t
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %14) #30, !noalias !700
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.bu, ptr noundef nonnull %6)
          to label %bb.v unwind label %bb.u, !noalias !700

bb.u:                                             ; preds = %.noexc59
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30, !noalias !700
  call void @_ZdlPv(ptr noundef nonnull %i.bu) #31, !noalias !700
  br label %.body

bb.v:                                             ; preds = %.noexc59
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30, !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bw = load ptr, ptr %i.aa, align 8, !tbaa !166 ; 6 uses
  %i.bx = load ptr, ptr %i.ac, align 8, !tbaa !167
  %.not.i.i60 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = ptrtoint ptr %i.bu to i64
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !168
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bz, ptr %i.aa, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.ca = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.cb = ptrtoint ptr %i.bw to i64               ; 3 uses
  %i.cc = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.y, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i61

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc73 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit151

.noexc73:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i61: ; preds = %bb.x
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i62 = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i62, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i.i.i63 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i63)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #33
          to label %.noexc74 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit151 ; 10 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i61
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  %i.cn = ptrtoint ptr %i.bu to i64
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i64 = icmp eq ptr %i.ca, %i.bw
  br i1 %.not10.i.i.i.i.i.i.i64, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i65.preheader

.lr.ph.i.i.i.i.i.i.i65.preheader:                 ; preds = %.noexc74
  %i.co = sub i64 %i.cb, %i.cc
  %i.cp = add i64 %i.co, -8                       ; 2 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check261 = icmp ult i64 %i.cp, 136
  br i1 %min.iters.check261, label %.lr.ph.i.i.i.i.i.i.i65.preheader323, label %vector.memcheck254

vector.memcheck254:                               ; preds = %.lr.ph.i.i.i.i.i.i.i65.preheader
  %i.cs = add i64 %i.cb, -8
  %i.ct = sub i64 %i.cs, %i.cc
  %i.cu = and i64 %i.ct, -8
  %i.cv = add i64 %i.cu, 8                        ; 2 uses
  %scevgep255 = getelementptr i8, ptr %i.cl, i64 %i.cv
  %scevgep256 = getelementptr i8, ptr %i.ca, i64 %i.cv
  %bound0257 = icmp ult ptr %i.cl, %scevgep256
  %bound1258 = icmp ult ptr %i.ca, %scevgep255
  %found.conflict259 = and i1 %bound0257, %bound1258
  br i1 %found.conflict259, label %.lr.ph.i.i.i.i.i.i.i65.preheader323, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck254
  %n.vec264 = and i64 %i.cr, 4611686018427387900  ; 3 uses
  %i.cw = shl i64 %n.vec264, 3                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cl, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.ca, i64 %i.cw
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph262
  %index266 = phi i64 [ 0, %vector.ph262 ], [ %index.next271, %vector.body265 ] ; 2 uses
  %i.cz = shl i64 %index266, 3                    ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.cl, i64 %i.cz ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.ca, i64 %i.cz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.da = getelementptr i8, ptr %next.gep268, i64 16
  %wide.load269 = load <2 x i64>, ptr %next.gep268, align 8, !tbaa !168, !alias.scope !708, !noalias !703
  %wide.load270 = load <2 x i64>, ptr %i.da, align 8, !tbaa !168, !alias.scope !708, !noalias !703
  %i.db = getelementptr i8, ptr %next.gep267, i64 16
  store <2 x i64> %wide.load269, ptr %next.gep267, align 8, !tbaa !168, !alias.scope !711, !noalias !708
  store <2 x i64> %wide.load270, ptr %i.db, align 8, !tbaa !168, !alias.scope !711, !noalias !708
  %i.dc = getelementptr i8, ptr %next.gep268, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep268, align 8, !tbaa !168, !alias.scope !708, !noalias !703
  store <2 x ptr> splat (ptr null), ptr %i.dc, align 8, !tbaa !168, !alias.scope !708, !noalias !703
  %index.next271 = add nuw i64 %index266, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next271, %n.vec264
  br i1 %i.dd, label %middle.block272, label %vector.body265, !llvm.loop !713

middle.block272:                                  ; preds = %vector.body265
  %cmp.n273 = icmp eq i64 %i.cr, %n.vec264
  br i1 %cmp.n273, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i65.preheader323

.lr.ph.i.i.i.i.i.i.i65.preheader323:              ; preds = %vector.memcheck254, %.lr.ph.i.i.i.i.i.i.i65.preheader, %middle.block272
  %.012.i.i.i.i.i.i.i66.ph = phi ptr [ %i.cl, %vector.memcheck254 ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i65.preheader ], [ %i.cx, %middle.block272 ]
  %.0911.i.i.i.i.i.i.i67.ph = phi ptr [ %i.ca, %vector.memcheck254 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i65.preheader ], [ %i.cy, %middle.block272 ]
  br label %.lr.ph.i.i.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i.i65:                           ; preds = %.lr.ph.i.i.i.i.i.i.i65.preheader323, %.lr.ph.i.i.i.i.i.i.i65
  %.012.i.i.i.i.i.i.i66 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i65 ], [ %.012.i.i.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i.i.i65.preheader323 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i67 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.i65 ], [ %.0911.i.i.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i.i.i65.preheader323 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.de = load i64, ptr %.0911.i.i.i.i.i.i.i67, align 8, !tbaa !168, !alias.scope !706, !noalias !703
  store i64 %i.de, ptr %.012.i.i.i.i.i.i.i66, align 8, !tbaa !168, !alias.scope !703, !noalias !706
  store ptr null, ptr %.0911.i.i.i.i.i.i.i67, align 8, !tbaa !168, !alias.scope !706, !noalias !703
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i67, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i66, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i68 = icmp eq ptr %i.df, %i.bw
  br i1 %.not.i.i.i.i.i.i.i68, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i65, !llvm.loop !714

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i.i.i65, %middle.block272, %.noexc74
  %.0.lcssa.i.i.i.i.i.i.i70 = phi ptr [ %i.cl, %.noexc74 ], [ %i.cx, %middle.block272 ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i65 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i70, i64 8
  %.not.i23.i.i.i71 = icmp eq ptr %i.ca, null
  br i1 %.not.i23.i.i.i71, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i72, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i72

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i72: ; preds = %bb.z, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69
  store ptr %i.cl, ptr %12, align 8, !tbaa !170
  store ptr %i.dh, ptr %i.aa, align 8, !tbaa !166
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.di, ptr %i.ac, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i72, %bb.w
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.dj = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc80 unwind label %bb.be  ; 6 uses

.noexc80:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %9) #30, !noalias !715
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.dj, ptr noundef nonnull %5)
          to label %bb.ab unwind label %bb.aa, !noalias !715

bb.aa:                                            ; preds = %.noexc80
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !715
  call void @_ZdlPv(ptr noundef nonnull %i.dj) #31, !noalias !715
  br label %.body81

bb.ab:                                            ; preds = %.noexc80
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !715
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dl = load ptr, ptr %i.aa, align 8, !tbaa !166 ; 6 uses
  %i.dm = load ptr, ptr %i.ac, align 8, !tbaa !167
  %.not.i.i84 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i84, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = ptrtoint ptr %i.dj to i64
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !168
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.do, ptr %i.aa, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit105

bb.ad:                                            ; preds = %bb.ab
  %i.dp = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.dq = ptrtoint ptr %i.dl to i64               ; 3 uses
  %i.dr = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775800
  br i1 %i.dt, label %bb.ae, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i85

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc97 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit157

.noexc97:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i85: ; preds = %bb.ad
  %i.du = ashr exact i64 %i.ds, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i86 = call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i.i86, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = call i64 @llvm.umin.i64(i64 %i.dv, i64 1152921504606846975)
  %i.dy = select i1 %i.dw, i64 1152921504606846975, i64 %i.dx ; 3 uses
  %.not.i.i.i.i87 = icmp ne i64 %i.dy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i87)
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #33
          to label %.noexc98 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit157 ; 10 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i85
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ds
  %i.ec = ptrtoint ptr %i.dj to i64
  store i64 %i.ec, ptr %i.eb, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i88 = icmp eq ptr %i.dp, %i.dl
  br i1 %.not10.i.i.i.i.i.i.i88, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i89.preheader

.lr.ph.i.i.i.i.i.i.i89.preheader:                 ; preds = %.noexc98
  %i.ed = sub i64 %i.dq, %i.dr
  %i.ee = add i64 %i.ed, -8                       ; 2 uses
  %i.ef = lshr i64 %i.ee, 3
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check283 = icmp ult i64 %i.ee, 136
  br i1 %min.iters.check283, label %.lr.ph.i.i.i.i.i.i.i89.preheader321, label %vector.memcheck276

vector.memcheck276:                               ; preds = %.lr.ph.i.i.i.i.i.i.i89.preheader
  %i.eh = add i64 %i.dq, -8
  %i.ei = sub i64 %i.eh, %i.dr
  %i.ej = and i64 %i.ei, -8
  %i.ek = add i64 %i.ej, 8                        ; 2 uses
  %scevgep277 = getelementptr i8, ptr %i.ea, i64 %i.ek
  %scevgep278 = getelementptr i8, ptr %i.dp, i64 %i.ek
  %bound0279 = icmp ult ptr %i.ea, %scevgep278
  %bound1280 = icmp ult ptr %i.dp, %scevgep277
  %found.conflict281 = and i1 %bound0279, %bound1280
  br i1 %found.conflict281, label %.lr.ph.i.i.i.i.i.i.i89.preheader321, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck276
  %n.vec286 = and i64 %i.eg, 4611686018427387900  ; 3 uses
  %i.el = shl i64 %n.vec286, 3                    ; 2 uses
  %i.em = getelementptr i8, ptr %i.ea, i64 %i.el  ; 2 uses
  %i.en = getelementptr i8, ptr %i.dp, i64 %i.el
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph284
  %index288 = phi i64 [ 0, %vector.ph284 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %i.eo = shl i64 %index288, 3                    ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.ea, i64 %i.eo ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.dp, i64 %i.eo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.ep = getelementptr i8, ptr %next.gep290, i64 16
  %wide.load291 = load <2 x i64>, ptr %next.gep290, align 8, !tbaa !168, !alias.scope !723, !noalias !718
  %wide.load292 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !168, !alias.scope !723, !noalias !718
  %i.eq = getelementptr i8, ptr %next.gep289, i64 16
  store <2 x i64> %wide.load291, ptr %next.gep289, align 8, !tbaa !168, !alias.scope !726, !noalias !723
  store <2 x i64> %wide.load292, ptr %i.eq, align 8, !tbaa !168, !alias.scope !726, !noalias !723
  %i.er = getelementptr i8, ptr %next.gep290, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep290, align 8, !tbaa !168, !alias.scope !723, !noalias !718
  store <2 x ptr> splat (ptr null), ptr %i.er, align 8, !tbaa !168, !alias.scope !723, !noalias !718
  %index.next293 = add nuw i64 %index288, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next293, %n.vec286
  br i1 %i.es, label %middle.block294, label %vector.body287, !llvm.loop !728

middle.block294:                                  ; preds = %vector.body287
  %cmp.n295 = icmp eq i64 %i.eg, %n.vec286
  br i1 %cmp.n295, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i89.preheader321

.lr.ph.i.i.i.i.i.i.i89.preheader321:              ; preds = %vector.memcheck276, %.lr.ph.i.i.i.i.i.i.i89.preheader, %middle.block294
  %.012.i.i.i.i.i.i.i90.ph = phi ptr [ %i.ea, %vector.memcheck276 ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.i89.preheader ], [ %i.em, %middle.block294 ]
  %.0911.i.i.i.i.i.i.i91.ph = phi ptr [ %i.dp, %vector.memcheck276 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i89.preheader ], [ %i.en, %middle.block294 ]
  br label %.lr.ph.i.i.i.i.i.i.i89

.lr.ph.i.i.i.i.i.i.i89:                           ; preds = %.lr.ph.i.i.i.i.i.i.i89.preheader321, %.lr.ph.i.i.i.i.i.i.i89
  %.012.i.i.i.i.i.i.i90 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i.i89 ], [ %.012.i.i.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i.i.i89.preheader321 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i91 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i.i89 ], [ %.0911.i.i.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i.i.i89.preheader321 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.et = load i64, ptr %.0911.i.i.i.i.i.i.i91, align 8, !tbaa !168, !alias.scope !721, !noalias !718
  store i64 %i.et, ptr %.012.i.i.i.i.i.i.i90, align 8, !tbaa !168, !alias.scope !718, !noalias !721
  store ptr null, ptr %.0911.i.i.i.i.i.i.i91, align 8, !tbaa !168, !alias.scope !721, !noalias !718
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i91, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i90, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i92 = icmp eq ptr %i.eu, %i.dl
  br i1 %.not.i.i.i.i.i.i.i92, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i89, !llvm.loop !729

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93: ; preds = %.lr.ph.i.i.i.i.i.i.i89, %middle.block294, %.noexc98
  %.0.lcssa.i.i.i.i.i.i.i94 = phi ptr [ %i.ea, %.noexc98 ], [ %i.em, %middle.block294 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i89 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i94, i64 8
  %.not.i23.i.i.i95 = icmp eq ptr %i.dp, null
  br i1 %.not.i23.i.i.i95, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i96, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93
  call void @_ZdlPv(ptr noundef nonnull %i.dp) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i96

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i96: ; preds = %bb.af, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93
  store ptr %i.ea, ptr %12, align 8, !tbaa !170
  store ptr %i.ew, ptr %i.aa, align 8, !tbaa !166
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.ex, ptr %i.ac, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit105

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit105: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i96, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 noundef zeroext 1)
          to label %bb.ag unwind label %bb.bf

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit105
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull %17)
          to label %bb.ah unwind label %bb.bg

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ey = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc106 unwind label %bb.bh ; 6 uses

.noexc106:                                        ; preds = %bb.ah
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %16) #30, !noalias !730
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.ey, ptr noundef nonnull %4)
          to label %bb.aj unwind label %bb.ai, !noalias !730

bb.ai:                                            ; preds = %.noexc106
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !730
  call void @_ZdlPv(ptr noundef nonnull %i.ey) #31, !noalias !730
  br label %.body107

bb.aj:                                            ; preds = %.noexc106
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !730
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fa = load ptr, ptr %i.aa, align 8, !tbaa !166 ; 6 uses
  %i.fb = load ptr, ptr %i.ac, align 8, !tbaa !167
  %.not.i.i110 = icmp eq ptr %i.fa, %i.fb
  br i1 %.not.i.i110, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fc = ptrtoint ptr %i.ey to i64
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !168
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.fd, ptr %i.aa, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit131

bb.al:                                            ; preds = %bb.aj
  %i.fe = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.ff = ptrtoint ptr %i.fa to i64               ; 3 uses
  %i.fg = ptrtoint ptr %i.fe to i64               ; 3 uses
  %i.fh = sub i64 %i.ff, %i.fg                    ; 3 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775800
  br i1 %i.fi, label %bb.am, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i111

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc123 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit163

.noexc123:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i111: ; preds = %bb.al
  %i.fj = ashr exact i64 %i.fh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i112 = call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i.i112, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fk, i64 1152921504606846975)
  %i.fn = select i1 %i.fl, i64 1152921504606846975, i64 %i.fm ; 3 uses
  %.not.i.i.i.i113 = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i113)
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #33
          to label %.noexc124 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit163 ; 10 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i111
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fh
  %i.fr = ptrtoint ptr %i.ey to i64
  store i64 %i.fr, ptr %i.fq, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i114 = icmp eq ptr %i.fe, %i.fa
  br i1 %.not10.i.i.i.i.i.i.i114, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119, label %.lr.ph.i.i.i.i.i.i.i115.preheader

.lr.ph.i.i.i.i.i.i.i115.preheader:                ; preds = %.noexc124
  %i.fs = sub i64 %i.ff, %i.fg
  %i.ft = add i64 %i.fs, -8                       ; 2 uses
  %i.fu = lshr i64 %i.ft, 3
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check305 = icmp ult i64 %i.ft, 136
  br i1 %min.iters.check305, label %.lr.ph.i.i.i.i.i.i.i115.preheader320, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph.i.i.i.i.i.i.i115.preheader
  %i.fw = add i64 %i.ff, -8
  %i.fx = sub i64 %i.fw, %i.fg
  %i.fy = and i64 %i.fx, -8
  %i.fz = add i64 %i.fy, 8                        ; 2 uses
  %scevgep299 = getelementptr i8, ptr %i.fp, i64 %i.fz
  %scevgep300 = getelementptr i8, ptr %i.fe, i64 %i.fz
  %bound0301 = icmp ult ptr %i.fp, %scevgep300
  %bound1302 = icmp ult ptr %i.fe, %scevgep299
  %found.conflict303 = and i1 %bound0301, %bound1302
  br i1 %found.conflict303, label %.lr.ph.i.i.i.i.i.i.i115.preheader320, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck298
  %n.vec308 = and i64 %i.fv, 4611686018427387900  ; 3 uses
  %i.ga = shl i64 %n.vec308, 3                    ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fp, i64 %i.ga  ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fe, i64 %i.ga
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph306
  %index310 = phi i64 [ 0, %vector.ph306 ], [ %index.next315, %vector.body309 ] ; 2 uses
  %i.gd = shl i64 %index310, 3                    ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.fp, i64 %i.gd ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.fe, i64 %i.gd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.ge = getelementptr i8, ptr %next.gep312, i64 16
  %wide.load313 = load <2 x i64>, ptr %next.gep312, align 8, !tbaa !168, !alias.scope !738, !noalias !733
  %wide.load314 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !168, !alias.scope !738, !noalias !733
  %i.gf = getelementptr i8, ptr %next.gep311, i64 16
  store <2 x i64> %wide.load313, ptr %next.gep311, align 8, !tbaa !168, !alias.scope !741, !noalias !738
  store <2 x i64> %wide.load314, ptr %i.gf, align 8, !tbaa !168, !alias.scope !741, !noalias !738
  %i.gg = getelementptr i8, ptr %next.gep312, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep312, align 8, !tbaa !168, !alias.scope !738, !noalias !733
  store <2 x ptr> splat (ptr null), ptr %i.gg, align 8, !tbaa !168, !alias.scope !738, !noalias !733
  %index.next315 = add nuw i64 %index310, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next315, %n.vec308
  br i1 %i.gh, label %middle.block316, label %vector.body309, !llvm.loop !743

middle.block316:                                  ; preds = %vector.body309
  %cmp.n317 = icmp eq i64 %i.fv, %n.vec308
  br i1 %cmp.n317, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119, label %.lr.ph.i.i.i.i.i.i.i115.preheader320

.lr.ph.i.i.i.i.i.i.i115.preheader320:             ; preds = %vector.memcheck298, %.lr.ph.i.i.i.i.i.i.i115.preheader, %middle.block316
  %.012.i.i.i.i.i.i.i116.ph = phi ptr [ %i.fp, %vector.memcheck298 ], [ %i.fp, %.lr.ph.i.i.i.i.i.i.i115.preheader ], [ %i.gb, %middle.block316 ]
  %.0911.i.i.i.i.i.i.i117.ph = phi ptr [ %i.fe, %vector.memcheck298 ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i115.preheader ], [ %i.gc, %middle.block316 ]
  br label %.lr.ph.i.i.i.i.i.i.i115

.lr.ph.i.i.i.i.i.i.i115:                          ; preds = %.lr.ph.i.i.i.i.i.i.i115.preheader320, %.lr.ph.i.i.i.i.i.i.i115
  %.012.i.i.i.i.i.i.i116 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i115 ], [ %.012.i.i.i.i.i.i.i116.ph, %.lr.ph.i.i.i.i.i.i.i115.preheader320 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i117 = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i.i115 ], [ %.0911.i.i.i.i.i.i.i117.ph, %.lr.ph.i.i.i.i.i.i.i115.preheader320 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.gi = load i64, ptr %.0911.i.i.i.i.i.i.i117, align 8, !tbaa !168, !alias.scope !736, !noalias !733
  store i64 %i.gi, ptr %.012.i.i.i.i.i.i.i116, align 8, !tbaa !168, !alias.scope !733, !noalias !736
  store ptr null, ptr %.0911.i.i.i.i.i.i.i117, align 8, !tbaa !168, !alias.scope !736, !noalias !733
  %i.gj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i117, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i116, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i118 = icmp eq ptr %i.gj, %i.fa
  br i1 %.not.i.i.i.i.i.i.i118, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119, label %.lr.ph.i.i.i.i.i.i.i115, !llvm.loop !744

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119: ; preds = %.lr.ph.i.i.i.i.i.i.i115, %middle.block316, %.noexc124
  %.0.lcssa.i.i.i.i.i.i.i120 = phi ptr [ %i.fp, %.noexc124 ], [ %i.gb, %middle.block316 ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i115 ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i120, i64 8
  %.not.i23.i.i.i121 = icmp eq ptr %i.fe, null
  br i1 %.not.i23.i.i.i121, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i122, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119
  call void @_ZdlPv(ptr noundef nonnull %i.fe) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i122

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i122: ; preds = %bb.an, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119
  store ptr %i.fp, ptr %12, align 8, !tbaa !170
  store ptr %i.gl, ptr %i.aa, align 8, !tbaa !166
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fn
  store ptr %i.gm, ptr %i.ac, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit131

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit131: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i122, %bb.ak
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA13_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1001") align 8 %18, ptr noundef nonnull align 1 dereferenceable(13) @.str.32, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ao unwind label %bb.bk

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit131
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZNK6duckdb9AlterInfo17GetAlterEntryDataEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::AlterEntryData") align 8 %20, ptr noundef nonnull align 8 dereferenceable(113) %3)
          to label %bb.ap unwind label %bb.bl

bb.ap:                                            ; preds = %bb.ao
  %i.gn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.aq unwind label %bb.bm     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.go = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.go, ptr %21, align 8, !tbaa !12
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !15 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.gr, ptr %i.a, align 8, !tbaa !19
  %i.gs = icmp ugt i64 %i.gr, 15
  br i1 %i.gs, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.aq
  %i.gt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc132 unwind label %bb.bm ; 2 uses

.noexc132:                                        ; preds = %.noexc.i
  store ptr %i.gt, ptr %21, align 8, !tbaa !15
  %i.gu = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.gu, ptr %i.go, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc132, %bb.aq
  %i.gv = phi ptr [ %i.gt, %.noexc132 ], [ %i.go, %bb.aq ] ; 2 uses
  switch i64 %i.gr, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i
  %i.gw = load i8, ptr %i.gp, align 1, !tbaa !20
  store i8 %i.gw, ptr %i.gv, align 1, !tbaa !20
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gp, i64 %i.gr, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i
  %i.gx = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !18
  %i.gz = load ptr, ptr %21, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gx
  store i8 0, ptr %i.ha, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #30
  %i.hb = load ptr, ptr %18, align 8, !tbaa !745
  store ptr null, ptr %18, align 8, !tbaa !745
  store ptr %i.hb, ptr %23, align 8, !tbaa !747
  invoke void @_ZN6duckdb20ChangeColumnTypeInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23)
          to label %bb.au unwind label %bb.bn

bb.au:                                            ; preds = %bb.at
  %i.hc = load ptr, ptr %23, align 8, !tbaa !168  ; 3 uses
  %.not.i133 = icmp eq ptr %i.hc, null
  br i1 %.not.i133, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i134

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i134: ; preds = %bb.au
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !7
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(56) %i.hc) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135: ; preds = %bb.au, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i134
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #30
  %i.hg = load ptr, ptr %21, align 8, !tbaa !15   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.go
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135
  call void @_ZdlPv(ptr noundef %i.hg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  %i.hi = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !15 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  call void @_ZdlPv(ptr noundef %i.hj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !15 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.hn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.hq = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZN6duckdb14AlterEntryDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
end_hunk_1
begin_hunk_2_@_ZN6duckdb14DuckTableEntry9AddColumnERNS_13ClientContextERNS_13AddColumnInfoE:bb.a
bb.cr:                                            ; preds = %bb.cq, %bb.cb
  %.pn35.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn, %bb.cq ], [ %i.jr, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.split.us

.split.us:                                        ; preds = %.split.us.split, %.split.split, %bb.ab, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit61, %.split110.us, %bb.r, %bb.cr, %bb.q
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %.us-phi111, %.split110.us ], [ %.pn35.pn.pn.pn.pn.pn, %bb.cr ], [ %i.bd, %bb.r ], [ %i.di, %bb.ab ], [ %.pn42, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit61 ], [ %i.bi, %.split.split ], [ %i.av, %.split.us.split ] ; 2 uses
  %i.kg = load ptr, ptr %6, align 8, !tbaa !637   ; 3 uses
  %.not.i79 = icmp eq ptr %i.kg, null
  br i1 %.not.i79, label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81, label %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i80

_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i80: ; preds = %.split.us
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !7
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(600) %i.kg) #30, !inline_history !648
  br label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81

_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81: ; preds = %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i80, %.split.us, %bb.p
  %.pn45.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %.pn45.pn.pn.pn.pn, %.split.us ], [ %.pn45.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ct

bb.cs:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit, %bb.c
  %i.kk = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.cs
  call void @_ZdlPv(ptr noundef %i.kk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.ct:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81, %bb.d
  %.pn45.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81 ], [ %i.g, %bb.d ]
  %i.kn = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ct
  call void @_ZdlPv(ptr noundef %i.kn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14DuckTableEntry8AddFieldERNS_13ClientContextERNS_12AddFieldInfoE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(688) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(361) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %6 = alloca %"struct.duckdb::StructMappingInfo", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.duckdb::vector.151", align 8 ; 19 uses
  %10 = alloca %"class.duckdb::unique_ptr.1034", align 8 ; 8 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.duckdb::unique_ptr.1001", align 8 ; 8 uses
  %15 = alloca %"struct.duckdb::ChangeColumnTypeInfo", align 8 ; 7 uses
  %16 = alloca %"struct.duckdb::AlterEntryData", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %19 = alloca %"class.duckdb::unique_ptr.805", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.e = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @_ZN6duckdb16AddFieldToStructERKNS_11LogicalTypeERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS9_EEERKNS_16ColumnDefinitionEm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::StructMappingInfo") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(216) %i.g, i64 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !681, !range !70, !noundef !71
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.l = load i8, ptr %i.k, align 8, !tbaa !789, !range !70, !noundef !71
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb9ErrorData5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %7) #32
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn39 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bk

bb.h:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !213
  br label %bb.bj

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.j unwind label %bb.ar

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1034") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %bb.k unwind label %bb.ar

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %10, align 8, !tbaa !685   ; 5 uses
  store ptr null, ptr %10, align 8, !tbaa !685
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 14 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !166  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.l, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.k
  %i.y = ptrtoint ptr %i.t to i64
  store i64 %i.y, ptr %i.v, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %9, align 8, !tbaa !170   ; 10 uses
  %i.ab = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %bb.as

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33
          to label %.noexc42 unwind label %bb.as  ; 12 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = ptrtoint ptr %i.t to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc42
  %i.ao = sub i64 %i.ab, %i.ac
  %i.ap = add i64 %i.ao, -8                       ; 2 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader284, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.as = add i64 %i.ab, -8
  %i.at = sub i64 %i.as, %i.ac
  %i.au = and i64 %i.at, -8
  %i.av = add i64 %i.au, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.av
  %scevgep209 = getelementptr i8, ptr %i.aa, i64 %i.av
  %bound0 = icmp ult ptr %i.al, %scevgep209
  %bound1 = icmp ult ptr %i.aa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader284, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.az ; 2 uses
  %next.gep210 = getelementptr i8, ptr %i.aa, i64 %i.az ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.ba = getelementptr i8, ptr %next.gep210, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep210, align 8, !tbaa !168, !alias.scope !796, !noalias !791
  %wide.load211 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !168, !alias.scope !796, !noalias !791
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !168, !alias.scope !799, !noalias !796
  store <2 x i64> %wide.load211, ptr %i.bb, align 8, !tbaa !168, !alias.scope !799, !noalias !796
  %i.bc = getelementptr i8, ptr %next.gep210, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep210, align 8, !tbaa !168, !alias.scope !796, !noalias !791
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !tbaa !168, !alias.scope !796, !noalias !791
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !801

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader284

.lr.ph.i.i.i.i.i.i.i.preheader284:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader284, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader284 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader284 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.be = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !794, !noalias !791
  store i64 %i.be, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !791, !noalias !794
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !794, !noalias !791
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !802

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc42
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.al, %.noexc42 ], [ %i.ax, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread200, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread200: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.al, ptr %9, align 8, !tbaa !170
  store ptr %i.bh, ptr %i.u, align 8, !tbaa !166
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bi, ptr %i.w, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #31
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !685 ; 3 uses
  store ptr %i.al, ptr %9, align 8, !tbaa !170
  store ptr %i.bh, ptr %i.u, align 8, !tbaa !166
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bj, ptr %i.w, align 8, !tbaa !167
  %.not.i43 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bk = load ptr, ptr %.pre.pre, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(80) %.pre.pre) #30, !inline_history !699
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread200, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.n unwind label %bb.at

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %12)
          to label %bb.o unwind label %bb.au

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bn = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc44 unwind label %bb.av  ; 6 uses

.noexc44:                                         ; preds = %bb.o
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %11) #30, !noalias !803
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.bn, ptr noundef nonnull %5)
          to label %bb.q unwind label %bb.p, !noalias !803

bb.p:                                             ; preds = %.noexc44
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !803
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #31, !noalias !803
  br label %.body

bb.q:                                             ; preds = %.noexc44
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !803
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bp = load ptr, ptr %i.u, align 8, !tbaa !166 ; 6 uses
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !167
  %.not.i.i45 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i45, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = ptrtoint ptr %i.bn to i64
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !168
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.u, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %9, align 8, !tbaa !170   ; 10 uses
  %i.bu = ptrtoint ptr %i.bp to i64               ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc58 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit126

.noexc58:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.s
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #33
          to label %.noexc59 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit126 ; 10 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = ptrtoint ptr %i.bn to i64
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i49 = icmp eq ptr %i.bt, %i.bp
  br i1 %.not10.i.i.i.i.i.i.i49, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50.preheader

.lr.ph.i.i.i.i.i.i.i50.preheader:                 ; preds = %.noexc59
  %i.ch = sub i64 %i.bu, %i.bv
  %i.ci = add i64 %i.ch, -8                       ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check220 = icmp ult i64 %i.ci, 136
  br i1 %min.iters.check220, label %.lr.ph.i.i.i.i.i.i.i50.preheader282, label %vector.memcheck213

vector.memcheck213:                               ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader
  %i.cl = add i64 %i.bu, -8
  %i.cm = sub i64 %i.cl, %i.bv
  %i.cn = and i64 %i.cm, -8
  %i.co = add i64 %i.cn, 8                        ; 2 uses
  %scevgep214 = getelementptr i8, ptr %i.ce, i64 %i.co
  %scevgep215 = getelementptr i8, ptr %i.bt, i64 %i.co
  %bound0216 = icmp ult ptr %i.ce, %scevgep215
  %bound1217 = icmp ult ptr %i.bt, %scevgep214
  %found.conflict218 = and i1 %bound0216, %bound1217
  br i1 %found.conflict218, label %.lr.ph.i.i.i.i.i.i.i50.preheader282, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck213
  %n.vec223 = and i64 %i.ck, 4611686018427387900  ; 3 uses
  %i.cp = shl i64 %n.vec223, 3                    ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bt, i64 %i.cp
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph221
  %index225 = phi i64 [ 0, %vector.ph221 ], [ %index.next230, %vector.body224 ] ; 2 uses
  %i.cs = shl i64 %index225, 3                    ; 2 uses
  %next.gep226 = getelementptr i8, ptr %i.ce, i64 %i.cs ; 2 uses
  %next.gep227 = getelementptr i8, ptr %i.bt, i64 %i.cs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.ct = getelementptr i8, ptr %next.gep227, i64 16
  %wide.load228 = load <2 x i64>, ptr %next.gep227, align 8, !tbaa !168, !alias.scope !811, !noalias !806
  %wide.load229 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !168, !alias.scope !811, !noalias !806
  %i.cu = getelementptr i8, ptr %next.gep226, i64 16
  store <2 x i64> %wide.load228, ptr %next.gep226, align 8, !tbaa !168, !alias.scope !814, !noalias !811
  store <2 x i64> %wide.load229, ptr %i.cu, align 8, !tbaa !168, !alias.scope !814, !noalias !811
  %i.cv = getelementptr i8, ptr %next.gep227, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep227, align 8, !tbaa !168, !alias.scope !811, !noalias !806
  store <2 x ptr> splat (ptr null), ptr %i.cv, align 8, !tbaa !168, !alias.scope !811, !noalias !806
  %index.next230 = add nuw i64 %index225, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.cw, label %middle.block231, label %vector.body224, !llvm.loop !816

middle.block231:                                  ; preds = %vector.body224
  %cmp.n232 = icmp eq i64 %i.ck, %n.vec223
  br i1 %cmp.n232, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50.preheader282

.lr.ph.i.i.i.i.i.i.i50.preheader282:              ; preds = %vector.memcheck213, %.lr.ph.i.i.i.i.i.i.i50.preheader, %middle.block231
  %.012.i.i.i.i.i.i.i51.ph = phi ptr [ %i.ce, %vector.memcheck213 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.cq, %middle.block231 ]
  %.0911.i.i.i.i.i.i.i52.ph = phi ptr [ %i.bt, %vector.memcheck213 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.cr, %middle.block231 ]
  br label %.lr.ph.i.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i.i50:                           ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader282, %.lr.ph.i.i.i.i.i.i.i50
  %.012.i.i.i.i.i.i.i51 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.012.i.i.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader282 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i52 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.0911.i.i.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader282 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i.i.i52, align 8, !tbaa !168, !alias.scope !809, !noalias !806
  store i64 %i.cx, ptr %.012.i.i.i.i.i.i.i51, align 8, !tbaa !168, !alias.scope !806, !noalias !809
  store ptr null, ptr %.0911.i.i.i.i.i.i.i52, align 8, !tbaa !168, !alias.scope !809, !noalias !806
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i52, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i51, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i53 = icmp eq ptr %i.cy, %i.bp
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50, !llvm.loop !817

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i.i.i50, %middle.block231, %.noexc59
  %.0.lcssa.i.i.i.i.i.i.i55 = phi ptr [ %i.ce, %.noexc59 ], [ %i.cq, %middle.block231 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i50 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i55, i64 8
  %.not.i23.i.i.i56 = icmp eq ptr %i.bt, null
  br i1 %.not.i23.i.i.i56, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57: ; preds = %bb.u, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  store ptr %i.ce, ptr %9, align 8, !tbaa !170
  store ptr %i.da, ptr %i.u, align 8, !tbaa !166
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.db, ptr %i.w, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57, %bb.r
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb16ColumnDefinition4NameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(216) %i.e)
          to label %bb.v unwind label %bb.ay

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.dd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.e)
          to label %bb.w unwind label %bb.ay

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb16ConstructMappingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %bb.x unwind label %bb.ay

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.de = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc65 unwind label %bb.az  ; 6 uses

.noexc65:                                         ; preds = %bb.x
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %13) #30, !noalias !818
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.de, ptr noundef nonnull %4)
          to label %bb.z unwind label %bb.y, !noalias !818

bb.y:                                             ; preds = %.noexc65
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !818
  call void @_ZdlPv(ptr noundef nonnull %i.de) #31, !noalias !818
  br label %.body66

bb.z:                                             ; preds = %.noexc65
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.dg = load ptr, ptr %i.u, align 8, !tbaa !166 ; 6 uses
  %i.dh = load ptr, ptr %i.w, align 8, !tbaa !167
  %.not.i.i69 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not.i.i69, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = ptrtoint ptr %i.de to i64
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !168
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dj, ptr %i.u, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit90

bb.ab:                                            ; preds = %bb.z
  %i.dk = load ptr, ptr %9, align 8, !tbaa !170   ; 10 uses
  %i.dl = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.dm = ptrtoint ptr %i.dk to i64               ; 3 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 3 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.ac, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i70

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc82 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132

.noexc82:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i70: ; preds = %bb.ab
  %i.dp = ashr exact i64 %i.dn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i71 = call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i.i71, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 1152921504606846975)
  %i.dt = select i1 %i.dr, i64 1152921504606846975, i64 %i.ds ; 3 uses
  %.not.i.i.i.i72 = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i72)
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #33
          to label %.noexc83 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132 ; 10 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i70
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn
  %i.dx = ptrtoint ptr %i.de to i64
  store i64 %i.dx, ptr %i.dw, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i73 = icmp eq ptr %i.dk, %i.dg
  br i1 %.not10.i.i.i.i.i.i.i73, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i74.preheader

.lr.ph.i.i.i.i.i.i.i74.preheader:                 ; preds = %.noexc83
  %i.dy = sub i64 %i.dl, %i.dm
  %i.dz = add i64 %i.dy, -8                       ; 2 uses
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check242 = icmp ult i64 %i.dz, 136
  br i1 %min.iters.check242, label %.lr.ph.i.i.i.i.i.i.i74.preheader280, label %vector.memcheck235

vector.memcheck235:                               ; preds = %.lr.ph.i.i.i.i.i.i.i74.preheader
  %i.ec = add i64 %i.dl, -8
  %i.ed = sub i64 %i.ec, %i.dm
  %i.ee = and i64 %i.ed, -8
  %i.ef = add i64 %i.ee, 8                        ; 2 uses
  %scevgep236 = getelementptr i8, ptr %i.dv, i64 %i.ef
  %scevgep237 = getelementptr i8, ptr %i.dk, i64 %i.ef
  %bound0238 = icmp ult ptr %i.dv, %scevgep237
  %bound1239 = icmp ult ptr %i.dk, %scevgep236
  %found.conflict240 = and i1 %bound0238, %bound1239
  br i1 %found.conflict240, label %.lr.ph.i.i.i.i.i.i.i74.preheader280, label %vector.ph243

vector.ph243:                                     ; preds = %vector.memcheck235
  %n.vec245 = and i64 %i.eb, 4611686018427387900  ; 3 uses
  %i.eg = shl i64 %n.vec245, 3                    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dv, i64 %i.eg  ; 2 uses
  %i.ei = getelementptr i8, ptr %i.dk, i64 %i.eg
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph243
  %index247 = phi i64 [ 0, %vector.ph243 ], [ %index.next252, %vector.body246 ] ; 2 uses
  %i.ej = shl i64 %index247, 3                    ; 2 uses
  %next.gep248 = getelementptr i8, ptr %i.dv, i64 %i.ej ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.dk, i64 %i.ej ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.ek = getelementptr i8, ptr %next.gep249, i64 16
  %wide.load250 = load <2 x i64>, ptr %next.gep249, align 8, !tbaa !168, !alias.scope !826, !noalias !821
  %wide.load251 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !168, !alias.scope !826, !noalias !821
  %i.el = getelementptr i8, ptr %next.gep248, i64 16
  store <2 x i64> %wide.load250, ptr %next.gep248, align 8, !tbaa !168, !alias.scope !829, !noalias !826
  store <2 x i64> %wide.load251, ptr %i.el, align 8, !tbaa !168, !alias.scope !829, !noalias !826
  %i.em = getelementptr i8, ptr %next.gep249, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep249, align 8, !tbaa !168, !alias.scope !826, !noalias !821
  store <2 x ptr> splat (ptr null), ptr %i.em, align 8, !tbaa !168, !alias.scope !826, !noalias !821
  %index.next252 = add nuw i64 %index247, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next252, %n.vec245
  br i1 %i.en, label %middle.block253, label %vector.body246, !llvm.loop !831

middle.block253:                                  ; preds = %vector.body246
  %cmp.n254 = icmp eq i64 %i.eb, %n.vec245
  br i1 %cmp.n254, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i74.preheader280

.lr.ph.i.i.i.i.i.i.i74.preheader280:              ; preds = %vector.memcheck235, %.lr.ph.i.i.i.i.i.i.i74.preheader, %middle.block253
  %.012.i.i.i.i.i.i.i75.ph = phi ptr [ %i.dv, %vector.memcheck235 ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i74.preheader ], [ %i.eh, %middle.block253 ]
  %.0911.i.i.i.i.i.i.i76.ph = phi ptr [ %i.dk, %vector.memcheck235 ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i74.preheader ], [ %i.ei, %middle.block253 ]
  br label %.lr.ph.i.i.i.i.i.i.i74

.lr.ph.i.i.i.i.i.i.i74:                           ; preds = %.lr.ph.i.i.i.i.i.i.i74.preheader280, %.lr.ph.i.i.i.i.i.i.i74
  %.012.i.i.i.i.i.i.i75 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i74 ], [ %.012.i.i.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i.i.i74.preheader280 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i76 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i74 ], [ %.0911.i.i.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i.i.i74.preheader280 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.eo = load i64, ptr %.0911.i.i.i.i.i.i.i76, align 8, !tbaa !168, !alias.scope !824, !noalias !821
  store i64 %i.eo, ptr %.012.i.i.i.i.i.i.i75, align 8, !tbaa !168, !alias.scope !821, !noalias !824
  store ptr null, ptr %.0911.i.i.i.i.i.i.i76, align 8, !tbaa !168, !alias.scope !824, !noalias !821
  %i.ep = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i77 = icmp eq ptr %i.ep, %i.dg
  br i1 %.not.i.i.i.i.i.i.i77, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i74, !llvm.loop !832

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78: ; preds = %.lr.ph.i.i.i.i.i.i.i74, %middle.block253, %.noexc83
  %.0.lcssa.i.i.i.i.i.i.i79 = phi ptr [ %i.dv, %.noexc83 ], [ %i.eh, %middle.block253 ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i74 ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i79, i64 8
  %.not.i23.i.i.i80 = icmp eq ptr %i.dk, null
  br i1 %.not.i23.i.i.i80, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i81, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78
  call void @_ZdlPv(ptr noundef nonnull %i.dk) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i81

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i81: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78
  store ptr %i.dv, ptr %9, align 8, !tbaa !170
  store ptr %i.er, ptr %i.u, align 8, !tbaa !166
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.es, ptr %i.w, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit90

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit90: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i81, %bb.aa
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.eu = load ptr, ptr %i.u, align 8, !tbaa !166 ; 6 uses
  %i.ev = load ptr, ptr %i.w, align 8, !tbaa !167
  %.not.i.i91 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i91, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit90
  %i.ew = load i64, ptr %i.et, align 8, !tbaa !168
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !168
  store ptr null, ptr %i.et, align 8, !tbaa !168
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.ex, ptr %i.u, align 8, !tbaa !166
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit106

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit90
  %i.ey = load ptr, ptr %9, align 8, !tbaa !170   ; 10 uses
  %i.ez = ptrtoint ptr %i.eu to i64               ; 3 uses
  %i.fa = ptrtoint ptr %i.ey to i64               ; 3 uses
  %i.fb = sub i64 %i.ez, %i.fa                    ; 3 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775800
  br i1 %i.fc, label %bb.ag, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i92

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc104 unwind label %bb.bb

.noexc104:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i92: ; preds = %bb.af
  %i.fd = ashr exact i64 %i.fb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i93 = call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  %i.fe = add nsw i64 %.sroa.speculated.i.i.i.i93, %i.fd ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fd
  %i.fg = call i64 @llvm.umin.i64(i64 %i.fe, i64 1152921504606846975)
  %i.fh = select i1 %i.ff, i64 1152921504606846975, i64 %i.fg ; 3 uses
  %.not.i.i.i.i94 = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i94)
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #33
          to label %.noexc105 unwind label %bb.bb ; 10 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i92
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fb
  %i.fl = load i64, ptr %i.et, align 8, !tbaa !168
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !168
  store ptr null, ptr %i.et, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i95 = icmp eq ptr %i.ey, %i.eu
  br i1 %.not10.i.i.i.i.i.i.i95, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100, label %.lr.ph.i.i.i.i.i.i.i96.preheader

.lr.ph.i.i.i.i.i.i.i96.preheader:                 ; preds = %.noexc105
  %i.fm = sub i64 %i.ez, %i.fa
  %i.fn = add i64 %i.fm, -8                       ; 2 uses
  %i.fo = lshr i64 %i.fn, 3
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check264 = icmp ult i64 %i.fn, 136
  br i1 %min.iters.check264, label %.lr.ph.i.i.i.i.i.i.i96.preheader279, label %vector.memcheck257

vector.memcheck257:                               ; preds = %.lr.ph.i.i.i.i.i.i.i96.preheader
  %i.fq = add i64 %i.ez, -8
  %i.fr = sub i64 %i.fq, %i.fa
  %i.fs = and i64 %i.fr, -8
  %i.ft = add i64 %i.fs, 8                        ; 2 uses
  %scevgep258 = getelementptr i8, ptr %i.fj, i64 %i.ft
  %scevgep259 = getelementptr i8, ptr %i.ey, i64 %i.ft
  %bound0260 = icmp ult ptr %i.fj, %scevgep259
  %bound1261 = icmp ult ptr %i.ey, %scevgep258
  %found.conflict262 = and i1 %bound0260, %bound1261
  br i1 %found.conflict262, label %.lr.ph.i.i.i.i.i.i.i96.preheader279, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck257
  %n.vec267 = and i64 %i.fp, 4611686018427387900  ; 3 uses
  %i.fu = shl i64 %n.vec267, 3                    ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fj, i64 %i.fu  ; 2 uses
  %i.fw = getelementptr i8, ptr %i.ey, i64 %i.fu
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph265
  %index269 = phi i64 [ 0, %vector.ph265 ], [ %index.next274, %vector.body268 ] ; 2 uses
  %i.fx = shl i64 %index269, 3                    ; 2 uses
  %next.gep270 = getelementptr i8, ptr %i.fj, i64 %i.fx ; 2 uses
  %next.gep271 = getelementptr i8, ptr %i.ey, i64 %i.fx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.fy = getelementptr i8, ptr %next.gep271, i64 16
  %wide.load272 = load <2 x i64>, ptr %next.gep271, align 8, !tbaa !168, !alias.scope !838, !noalias !833
  %wide.load273 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !168, !alias.scope !838, !noalias !833
  %i.fz = getelementptr i8, ptr %next.gep270, i64 16
  store <2 x i64> %wide.load272, ptr %next.gep270, align 8, !tbaa !168, !alias.scope !841, !noalias !838
  store <2 x i64> %wide.load273, ptr %i.fz, align 8, !tbaa !168, !alias.scope !841, !noalias !838
  %i.ga = getelementptr i8, ptr %next.gep271, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep271, align 8, !tbaa !168, !alias.scope !838, !noalias !833
  store <2 x ptr> splat (ptr null), ptr %i.ga, align 8, !tbaa !168, !alias.scope !838, !noalias !833
  %index.next274 = add nuw i64 %index269, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.gb, label %middle.block275, label %vector.body268, !llvm.loop !843

middle.block275:                                  ; preds = %vector.body268
  %cmp.n276 = icmp eq i64 %i.fp, %n.vec267
  br i1 %cmp.n276, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100, label %.lr.ph.i.i.i.i.i.i.i96.preheader279

.lr.ph.i.i.i.i.i.i.i96.preheader279:              ; preds = %vector.memcheck257, %.lr.ph.i.i.i.i.i.i.i96.preheader, %middle.block275
  %.012.i.i.i.i.i.i.i97.ph = phi ptr [ %i.fj, %vector.memcheck257 ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i96.preheader ], [ %i.fv, %middle.block275 ]
  %.0911.i.i.i.i.i.i.i98.ph = phi ptr [ %i.ey, %vector.memcheck257 ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i96.preheader ], [ %i.fw, %middle.block275 ]
  br label %.lr.ph.i.i.i.i.i.i.i96

.lr.ph.i.i.i.i.i.i.i96:                           ; preds = %.lr.ph.i.i.i.i.i.i.i96.preheader279, %.lr.ph.i.i.i.i.i.i.i96
  %.012.i.i.i.i.i.i.i97 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i96 ], [ %.012.i.i.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i.i.i96.preheader279 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i98 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i.i96 ], [ %.0911.i.i.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i.i.i96.preheader279 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.gc = load i64, ptr %.0911.i.i.i.i.i.i.i98, align 8, !tbaa !168, !alias.scope !836, !noalias !833
  store i64 %i.gc, ptr %.012.i.i.i.i.i.i.i97, align 8, !tbaa !168, !alias.scope !833, !noalias !836
  store ptr null, ptr %.0911.i.i.i.i.i.i.i98, align 8, !tbaa !168, !alias.scope !836, !noalias !833
  %i.gd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i98, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i97, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i99 = icmp eq ptr %i.gd, %i.eu
  br i1 %.not.i.i.i.i.i.i.i99, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100, label %.lr.ph.i.i.i.i.i.i.i96, !llvm.loop !844

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100: ; preds = %.lr.ph.i.i.i.i.i.i.i96, %middle.block275, %.noexc105
  %.0.lcssa.i.i.i.i.i.i.i101 = phi ptr [ %i.fj, %.noexc105 ], [ %i.fv, %middle.block275 ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i96 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i101, i64 8
  %.not.i23.i.i.i102 = icmp eq ptr %i.ey, null
  br i1 %.not.i23.i.i.i102, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i103, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100
  call void @_ZdlPv(ptr noundef nonnull %i.ey) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i103

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i103: ; preds = %bb.ah, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100
  store ptr %i.fj, ptr %9, align 8, !tbaa !170
  store ptr %i.gf, ptr %i.u, align 8, !tbaa !166
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fh
  store ptr %i.gg, ptr %i.w, align 8, !tbaa !167
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit106

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit106: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i103, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA13_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1001") align 8 %14, ptr noundef nonnull align 1 dereferenceable(13) @.str.32, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ai unwind label %bb.bc

bb.ai:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZNK6duckdb9AlterInfo17GetAlterEntryDataEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::AlterEntryData") align 8 %16, ptr noundef nonnull align 8 dereferenceable(113) %3)
          to label %bb.aj unwind label %bb.bd

bb.aj:                                            ; preds = %bb.ai
  %i.gh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.ak unwind label %bb.be     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.gi, ptr %17, align 8, !tbaa !12
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !15 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.gl, ptr %i.a, align 8, !tbaa !19
  %i.gm = icmp ugt i64 %i.gl, 15
  br i1 %i.gm, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ak
  %i.gn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.be ; 2 uses

.noexc107:                                        ; preds = %.noexc.i
  store ptr %i.gn, ptr %17, align 8, !tbaa !15
  %i.go = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.go, ptr %i.gi, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc107, %bb.ak
  %i.gp = phi ptr [ %i.gn, %.noexc107 ], [ %i.gi, %bb.ak ] ; 2 uses
  switch i64 %i.gl, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.gq = load i8, ptr %i.gj, align 1, !tbaa !20
  store i8 %i.gq, ptr %i.gp, align 1, !tbaa !20
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gp, ptr align 1 %i.gj, i64 %i.gl, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !18
  %i.gt = load ptr, ptr %17, align 8, !tbaa !15
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gr
  store i8 0, ptr %i.gu, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %6) #30
  %i.gv = load ptr, ptr %14, align 8, !tbaa !745
  store ptr null, ptr %14, align 8, !tbaa !745
  store ptr %i.gv, ptr %19, align 8, !tbaa !747
  invoke void @_ZN6duckdb20ChangeColumnTypeInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19)
          to label %bb.ao unwind label %bb.bf

bb.ao:                                            ; preds = %bb.an
  %i.gw = load ptr, ptr %19, align 8, !tbaa !168  ; 3 uses
  %.not.i108 = icmp eq ptr %i.gw, null
  br i1 %.not.i108, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit110, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i109

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i109: ; preds = %bb.ao
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !7
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(56) %i.gw) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit110

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit110: ; preds = %bb.ao, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i109
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #30
  %i.ha = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.gi
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit110
  call void @_ZdlPv(ptr noundef %i.ha) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  %i.hc = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !15 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  call void @_ZdlPv(ptr noundef %i.hd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !15 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.hh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.hk = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZN6duckdb14AlterEntryDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.hk) #31
  br label %_ZN6duckdb14AlterEntryDataD2Ev.exit

end_hunk_2
begin_hunk_3_@_ZN6duckdb14DuckTableEntry11RemoveFieldERNS_13ClientContextERNS_15RemoveFieldInfoE:bb.a
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %18 = alloca %"class.duckdb::unique_ptr.1001", align 8 ; 8 uses
  %19 = alloca %"struct.duckdb::ChangeColumnTypeInfo", align 8 ; 7 uses
  %20 = alloca %"struct.duckdb::AlterEntryData", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %23 = alloca %"class.duckdb::unique_ptr.805", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 6 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb10ColumnList12ColumnExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.g = load i8, ptr %i.f, align 8, !tbaa !876, !range !70, !noundef !71
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.by unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.014 = phi i1 [ false, %bb.f ], [ true, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.m) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.014, label %bb.h, label %bb.bx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.014, label %bb.h, label %bb.bx

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn196 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #30
  br label %bb.bx

bb.i:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !213
  br label %bb.bw

bb.j:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.q = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.q)
  call void @_ZN6duckdb19DropFieldFromStructERKNS_11LogicalTypeERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS9_EEEm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::DroppedFieldMapping") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !681, !range !70, !noundef !71
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.w = load i8, ptr %i.v, align 8, !tbaa !876, !range !70, !noundef !71
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK6duckdb9ErrorData5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %10) #32
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.p:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.aa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.o
  %.pn51 = phi { ptr, i32 } [ %i.y, %bb.o ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.z, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.bv

bb.q:                                             ; preds = %bb.k
  store ptr null, ptr %0, align 8, !tbaa !213
  br label %bb.bu

bb.r:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.s unwind label %bb.bb

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1034") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.t unwind label %bb.bb

bb.t:                                             ; preds = %bb.s
  %i.ae = load ptr, ptr %13, align 8, !tbaa !685  ; 5 uses
  store ptr null, ptr %13, align 8, !tbaa !685
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 14 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !166 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i, label %bb.u, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.t
  %i.aj = ptrtoint ptr %i.ae to i64
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !168
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.al = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.am = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.v, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %bb.bc

.noexc:                                           ; preds = %bb.v
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #33
          to label %.noexc58 unwind label %bb.bc  ; 12 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  %i.ay = ptrtoint ptr %i.ae to i64
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ag
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc58
  %i.az = sub i64 %i.am, %i.an
  %i.ba = add i64 %i.az, -8                       ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader326, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bd = add i64 %i.am, -8
  %i.be = sub i64 %i.bd, %i.an
  %i.bf = and i64 %i.be, -8
  %i.bg = add i64 %i.bf, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.bg
  %scevgep251 = getelementptr i8, ptr %i.al, i64 %i.bg
  %bound0 = icmp ult ptr %i.aw, %scevgep251
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader326, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.aw, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.al, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bk ; 2 uses
  %next.gep252 = getelementptr i8, ptr %i.al, i64 %i.bk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.bl = getelementptr i8, ptr %next.gep252, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep252, align 8, !tbaa !168, !alias.scope !883, !noalias !878
  %wide.load253 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !168, !alias.scope !883, !noalias !878
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !168, !alias.scope !886, !noalias !883
  store <2 x i64> %wide.load253, ptr %i.bm, align 8, !tbaa !168, !alias.scope !886, !noalias !883
  %i.bn = getelementptr i8, ptr %next.gep252, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep252, align 8, !tbaa !168, !alias.scope !883, !noalias !878
  store <2 x ptr> splat (ptr null), ptr %i.bn, align 8, !tbaa !168, !alias.scope !883, !noalias !878
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !888

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader326

.lr.ph.i.i.i.i.i.i.i.preheader326:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader326, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader326 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader326 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.bp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !881, !noalias !878
  store i64 %i.bp, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !878, !noalias !881
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !881, !noalias !878
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.ag
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !889

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc58
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.noexc58 ], [ %i.bi, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread242, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread242: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.aw, ptr %12, align 8, !tbaa !170
  store ptr %i.bs, ptr %i.af, align 8, !tbaa !166
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.al) #31
  %.pre.pre = load ptr, ptr %13, align 8, !tbaa !685 ; 3 uses
  store ptr %i.aw, ptr %12, align 8, !tbaa !170
  store ptr %i.bs, ptr %i.af, align 8, !tbaa !166
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bu, ptr %i.ah, align 8, !tbaa !167
  %.not.i59 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bv = load ptr, ptr %.pre.pre, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(80) %.pre.pre) #30, !inline_history !699
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread242, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.w unwind label %bb.bd

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull %15)
          to label %bb.x unwind label %bb.be

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bz = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc60 unwind label %bb.bf  ; 6 uses

.noexc60:                                         ; preds = %bb.x
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %14) #30, !noalias !890
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, ptr noundef nonnull %6)
          to label %bb.z unwind label %bb.y, !noalias !890

bb.y:                                             ; preds = %.noexc60
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30, !noalias !890
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #31, !noalias !890
  br label %.body

bb.z:                                             ; preds = %.noexc60
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30, !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cb = load ptr, ptr %i.af, align 8, !tbaa !166 ; 6 uses
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !167
  %.not.i.i61 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i.i61, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = ptrtoint ptr %i.bz to i64
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !168
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.ce, ptr %i.af, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.cf = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.cg = ptrtoint ptr %i.cb to i64               ; 3 uses
  %i.ch = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %bb.ac, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i62

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc74 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit152

.noexc74:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i62: ; preds = %bb.ab
  %i.ck = ashr exact i64 %i.ci, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i63 = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
  %i.co = select i1 %i.cm, i64 1152921504606846975, i64 %i.cn ; 3 uses
  %.not.i.i.i.i64 = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i.i64)
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #33
          to label %.noexc75 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit152 ; 10 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i62
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci
  %i.cs = ptrtoint ptr %i.bz to i64
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i65 = icmp eq ptr %i.cf, %i.cb
  br i1 %.not10.i.i.i.i.i.i.i65, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66.preheader

.lr.ph.i.i.i.i.i.i.i66.preheader:                 ; preds = %.noexc75
  %i.ct = sub i64 %i.cg, %i.ch
  %i.cu = add i64 %i.ct, -8                       ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check262 = icmp ult i64 %i.cu, 136
  br i1 %min.iters.check262, label %.lr.ph.i.i.i.i.i.i.i66.preheader324, label %vector.memcheck255

vector.memcheck255:                               ; preds = %.lr.ph.i.i.i.i.i.i.i66.preheader
  %i.cx = add i64 %i.cg, -8
  %i.cy = sub i64 %i.cx, %i.ch
  %i.cz = and i64 %i.cy, -8
  %i.da = add i64 %i.cz, 8                        ; 2 uses
  %scevgep256 = getelementptr i8, ptr %i.cq, i64 %i.da
  %scevgep257 = getelementptr i8, ptr %i.cf, i64 %i.da
  %bound0258 = icmp ult ptr %i.cq, %scevgep257
  %bound1259 = icmp ult ptr %i.cf, %scevgep256
  %found.conflict260 = and i1 %bound0258, %bound1259
  br i1 %found.conflict260, label %.lr.ph.i.i.i.i.i.i.i66.preheader324, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck255
  %n.vec265 = and i64 %i.cw, 4611686018427387900  ; 3 uses
  %i.db = shl i64 %n.vec265, 3                    ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cq, i64 %i.db  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cf, i64 %i.db
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph263
  %index267 = phi i64 [ 0, %vector.ph263 ], [ %index.next272, %vector.body266 ] ; 2 uses
  %i.de = shl i64 %index267, 3                    ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.cq, i64 %i.de ; 2 uses
  %next.gep269 = getelementptr i8, ptr %i.cf, i64 %i.de ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.df = getelementptr i8, ptr %next.gep269, i64 16
  %wide.load270 = load <2 x i64>, ptr %next.gep269, align 8, !tbaa !168, !alias.scope !898, !noalias !893
  %wide.load271 = load <2 x i64>, ptr %i.df, align 8, !tbaa !168, !alias.scope !898, !noalias !893
  %i.dg = getelementptr i8, ptr %next.gep268, i64 16
  store <2 x i64> %wide.load270, ptr %next.gep268, align 8, !tbaa !168, !alias.scope !901, !noalias !898
  store <2 x i64> %wide.load271, ptr %i.dg, align 8, !tbaa !168, !alias.scope !901, !noalias !898
  %i.dh = getelementptr i8, ptr %next.gep269, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep269, align 8, !tbaa !168, !alias.scope !898, !noalias !893
  store <2 x ptr> splat (ptr null), ptr %i.dh, align 8, !tbaa !168, !alias.scope !898, !noalias !893
  %index.next272 = add nuw i64 %index267, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next272, %n.vec265
  br i1 %i.di, label %middle.block273, label %vector.body266, !llvm.loop !903

middle.block273:                                  ; preds = %vector.body266
  %cmp.n274 = icmp eq i64 %i.cw, %n.vec265
  br i1 %cmp.n274, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66.preheader324

.lr.ph.i.i.i.i.i.i.i66.preheader324:              ; preds = %vector.memcheck255, %.lr.ph.i.i.i.i.i.i.i66.preheader, %middle.block273
  %.012.i.i.i.i.i.i.i67.ph = phi ptr [ %i.cq, %vector.memcheck255 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i66.preheader ], [ %i.dc, %middle.block273 ]
  %.0911.i.i.i.i.i.i.i68.ph = phi ptr [ %i.cf, %vector.memcheck255 ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i66.preheader ], [ %i.dd, %middle.block273 ]
  br label %.lr.ph.i.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i.i66:                           ; preds = %.lr.ph.i.i.i.i.i.i.i66.preheader324, %.lr.ph.i.i.i.i.i.i.i66
  %.012.i.i.i.i.i.i.i67 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i.i66 ], [ %.012.i.i.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i.i.i66.preheader324 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i68 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i66 ], [ %.0911.i.i.i.i.i.i.i68.ph, %.lr.ph.i.i.i.i.i.i.i66.preheader324 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.dj = load i64, ptr %.0911.i.i.i.i.i.i.i68, align 8, !tbaa !168, !alias.scope !896, !noalias !893
  store i64 %i.dj, ptr %.012.i.i.i.i.i.i.i67, align 8, !tbaa !168, !alias.scope !893, !noalias !896
  store ptr null, ptr %.0911.i.i.i.i.i.i.i68, align 8, !tbaa !168, !alias.scope !896, !noalias !893
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i68, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i69 = icmp eq ptr %i.dk, %i.cb
  br i1 %.not.i.i.i.i.i.i.i69, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66, !llvm.loop !904

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70: ; preds = %.lr.ph.i.i.i.i.i.i.i66, %middle.block273, %.noexc75
  %.0.lcssa.i.i.i.i.i.i.i71 = phi ptr [ %i.cq, %.noexc75 ], [ %i.dc, %middle.block273 ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i66 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i71, i64 8
  %.not.i23.i.i.i72 = icmp eq ptr %i.cf, null
  br i1 %.not.i23.i.i.i72, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70
  store ptr %i.cq, ptr %12, align 8, !tbaa !170
  store ptr %i.dm, ptr %i.af, align 8, !tbaa !166
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.dn, ptr %i.ah, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73, %bb.aa
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.do = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc81 unwind label %bb.bi  ; 6 uses

.noexc81:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %9) #30, !noalias !905
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.do, ptr noundef nonnull %5)
          to label %bb.af unwind label %bb.ae, !noalias !905

bb.ae:                                            ; preds = %.noexc81
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !905
  call void @_ZdlPv(ptr noundef nonnull %i.do) #31, !noalias !905
  br label %.body82

bb.af:                                            ; preds = %.noexc81
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !905
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dq = load ptr, ptr %i.af, align 8, !tbaa !166 ; 6 uses
  %i.dr = load ptr, ptr %i.ah, align 8, !tbaa !167
  %.not.i.i85 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i.i85, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = ptrtoint ptr %i.do to i64
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !168
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dt, ptr %i.af, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit106

bb.ah:                                            ; preds = %bb.af
  %i.du = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.dv = ptrtoint ptr %i.dq to i64               ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.ai, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc98 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit158

.noexc98:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86: ; preds = %bb.ah
  %i.dz = ashr exact i64 %i.dx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i87 = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i.i87, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #33
          to label %.noexc99 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit158 ; 10 uses

.noexc99:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx
  %i.eh = ptrtoint ptr %i.do to i64
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i89 = icmp eq ptr %i.du, %i.dq
  br i1 %.not10.i.i.i.i.i.i.i89, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i.i.i90.preheader:                 ; preds = %.noexc99
  %i.ei = sub i64 %i.dv, %i.dw
  %i.ej = add i64 %i.ei, -8                       ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check284 = icmp ult i64 %i.ej, 136
  br i1 %min.iters.check284, label %.lr.ph.i.i.i.i.i.i.i90.preheader322, label %vector.memcheck277

vector.memcheck277:                               ; preds = %.lr.ph.i.i.i.i.i.i.i90.preheader
  %i.em = add i64 %i.dv, -8
  %i.en = sub i64 %i.em, %i.dw
  %i.eo = and i64 %i.en, -8
  %i.ep = add i64 %i.eo, 8                        ; 2 uses
  %scevgep278 = getelementptr i8, ptr %i.ef, i64 %i.ep
  %scevgep279 = getelementptr i8, ptr %i.du, i64 %i.ep
  %bound0280 = icmp ult ptr %i.ef, %scevgep279
  %bound1281 = icmp ult ptr %i.du, %scevgep278
  %found.conflict282 = and i1 %bound0280, %bound1281
  br i1 %found.conflict282, label %.lr.ph.i.i.i.i.i.i.i90.preheader322, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck277
  %n.vec287 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.eq = shl i64 %n.vec287, 3                    ; 2 uses
  %i.er = getelementptr i8, ptr %i.ef, i64 %i.eq  ; 2 uses
  %i.es = getelementptr i8, ptr %i.du, i64 %i.eq
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph285
  %index289 = phi i64 [ 0, %vector.ph285 ], [ %index.next294, %vector.body288 ] ; 2 uses
  %i.et = shl i64 %index289, 3                    ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.ef, i64 %i.et ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.du, i64 %i.et ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.eu = getelementptr i8, ptr %next.gep291, i64 16
  %wide.load292 = load <2 x i64>, ptr %next.gep291, align 8, !tbaa !168, !alias.scope !913, !noalias !908
  %wide.load293 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !168, !alias.scope !913, !noalias !908
  %i.ev = getelementptr i8, ptr %next.gep290, i64 16
  store <2 x i64> %wide.load292, ptr %next.gep290, align 8, !tbaa !168, !alias.scope !916, !noalias !913
  store <2 x i64> %wide.load293, ptr %i.ev, align 8, !tbaa !168, !alias.scope !916, !noalias !913
  %i.ew = getelementptr i8, ptr %next.gep291, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep291, align 8, !tbaa !168, !alias.scope !913, !noalias !908
  store <2 x ptr> splat (ptr null), ptr %i.ew, align 8, !tbaa !168, !alias.scope !913, !noalias !908
  %index.next294 = add nuw i64 %index289, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.ex, label %middle.block295, label %vector.body288, !llvm.loop !918

middle.block295:                                  ; preds = %vector.body288
  %cmp.n296 = icmp eq i64 %i.el, %n.vec287
  br i1 %cmp.n296, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i90.preheader322

.lr.ph.i.i.i.i.i.i.i90.preheader322:              ; preds = %vector.memcheck277, %.lr.ph.i.i.i.i.i.i.i90.preheader, %middle.block295
  %.012.i.i.i.i.i.i.i91.ph = phi ptr [ %i.ef, %vector.memcheck277 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i90.preheader ], [ %i.er, %middle.block295 ]
  %.0911.i.i.i.i.i.i.i92.ph = phi ptr [ %i.du, %vector.memcheck277 ], [ %i.du, %.lr.ph.i.i.i.i.i.i.i90.preheader ], [ %i.es, %middle.block295 ]
  br label %.lr.ph.i.i.i.i.i.i.i90

.lr.ph.i.i.i.i.i.i.i90:                           ; preds = %.lr.ph.i.i.i.i.i.i.i90.preheader322, %.lr.ph.i.i.i.i.i.i.i90
  %.012.i.i.i.i.i.i.i91 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.i90 ], [ %.012.i.i.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i.i.i90.preheader322 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i92 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i.i90 ], [ %.0911.i.i.i.i.i.i.i92.ph, %.lr.ph.i.i.i.i.i.i.i90.preheader322 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.ey = load i64, ptr %.0911.i.i.i.i.i.i.i92, align 8, !tbaa !168, !alias.scope !911, !noalias !908
  store i64 %i.ey, ptr %.012.i.i.i.i.i.i.i91, align 8, !tbaa !168, !alias.scope !908, !noalias !911
  store ptr null, ptr %.0911.i.i.i.i.i.i.i92, align 8, !tbaa !168, !alias.scope !911, !noalias !908
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i92, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i91, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i93 = icmp eq ptr %i.ez, %i.dq
  br i1 %.not.i.i.i.i.i.i.i93, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i90, !llvm.loop !919

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94: ; preds = %.lr.ph.i.i.i.i.i.i.i90, %middle.block295, %.noexc99
  %.0.lcssa.i.i.i.i.i.i.i95 = phi ptr [ %i.ef, %.noexc99 ], [ %i.er, %middle.block295 ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i90 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i95, i64 8
  %.not.i23.i.i.i96 = icmp eq ptr %i.du, null
  br i1 %.not.i23.i.i.i96, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i97, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94
  call void @_ZdlPv(ptr noundef nonnull %i.du) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i97

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i97: ; preds = %bb.aj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94
  store ptr %i.ef, ptr %12, align 8, !tbaa !170
  store ptr %i.fb, ptr %i.af, align 8, !tbaa !166
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.fc, ptr %i.ah, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit106

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit106: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i97, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 noundef zeroext 1)
          to label %bb.ak unwind label %bb.bj

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit106
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull %17)
          to label %bb.al unwind label %bb.bk

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fd = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc107 unwind label %bb.bl ; 6 uses

.noexc107:                                        ; preds = %bb.al
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %16) #30, !noalias !920
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.fd, ptr noundef nonnull %4)
          to label %bb.an unwind label %bb.am, !noalias !920

bb.am:                                            ; preds = %.noexc107
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !920
  call void @_ZdlPv(ptr noundef nonnull %i.fd) #31, !noalias !920
  br label %.body108

bb.an:                                            ; preds = %.noexc107
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !920
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ff = load ptr, ptr %i.af, align 8, !tbaa !166 ; 6 uses
  %i.fg = load ptr, ptr %i.ah, align 8, !tbaa !167
  %.not.i.i111 = icmp eq ptr %i.ff, %i.fg
  br i1 %.not.i.i111, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fh = ptrtoint ptr %i.fd to i64
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !168
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.fi, ptr %i.af, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132

bb.ap:                                            ; preds = %bb.an
  %i.fj = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.fk = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fl = ptrtoint ptr %i.fj to i64               ; 3 uses
  %i.fm = sub i64 %i.fk, %i.fl                    ; 3 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775800
  br i1 %i.fn, label %bb.aq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc124 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit164

.noexc124:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112: ; preds = %bb.ap
  %i.fo = ashr exact i64 %i.fm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i113 = call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i.i113, %i.fo ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  %i.fr = call i64 @llvm.umin.i64(i64 %i.fp, i64 1152921504606846975)
  %i.fs = select i1 %i.fq, i64 1152921504606846975, i64 %i.fr ; 3 uses
  %.not.i.i.i.i114 = icmp ne i64 %i.fs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i114)
  %i.ft = shl nuw nsw i64 %i.fs, 3
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #33
          to label %.noexc125 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit164 ; 10 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fm
  %i.fw = ptrtoint ptr %i.fd to i64
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i115 = icmp eq ptr %i.fj, %i.ff
  br i1 %.not10.i.i.i.i.i.i.i115, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i116.preheader

.lr.ph.i.i.i.i.i.i.i116.preheader:                ; preds = %.noexc125
  %i.fx = sub i64 %i.fk, %i.fl
  %i.fy = add i64 %i.fx, -8                       ; 2 uses
  %i.fz = lshr i64 %i.fy, 3
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check306 = icmp ult i64 %i.fy, 136
  br i1 %min.iters.check306, label %.lr.ph.i.i.i.i.i.i.i116.preheader321, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.i.i.i.i.i.i.i116.preheader
  %i.gb = add i64 %i.fk, -8
  %i.gc = sub i64 %i.gb, %i.fl
  %i.gd = and i64 %i.gc, -8
  %i.ge = add i64 %i.gd, 8                        ; 2 uses
  %scevgep300 = getelementptr i8, ptr %i.fu, i64 %i.ge
  %scevgep301 = getelementptr i8, ptr %i.fj, i64 %i.ge
  %bound0302 = icmp ult ptr %i.fu, %scevgep301
  %bound1303 = icmp ult ptr %i.fj, %scevgep300
  %found.conflict304 = and i1 %bound0302, %bound1303
  br i1 %found.conflict304, label %.lr.ph.i.i.i.i.i.i.i116.preheader321, label %vector.ph307

vector.ph307:                                     ; preds = %vector.memcheck299
  %n.vec309 = and i64 %i.ga, 4611686018427387900  ; 3 uses
  %i.gf = shl i64 %n.vec309, 3                    ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fu, i64 %i.gf  ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fj, i64 %i.gf
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph307
  %index311 = phi i64 [ 0, %vector.ph307 ], [ %index.next316, %vector.body310 ] ; 2 uses
  %i.gi = shl i64 %index311, 3                    ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.fu, i64 %i.gi ; 2 uses
  %next.gep313 = getelementptr i8, ptr %i.fj, i64 %i.gi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.gj = getelementptr i8, ptr %next.gep313, i64 16
  %wide.load314 = load <2 x i64>, ptr %next.gep313, align 8, !tbaa !168, !alias.scope !928, !noalias !923
  %wide.load315 = load <2 x i64>, ptr %i.gj, align 8, !tbaa !168, !alias.scope !928, !noalias !923
  %i.gk = getelementptr i8, ptr %next.gep312, i64 16
  store <2 x i64> %wide.load314, ptr %next.gep312, align 8, !tbaa !168, !alias.scope !931, !noalias !928
  store <2 x i64> %wide.load315, ptr %i.gk, align 8, !tbaa !168, !alias.scope !931, !noalias !928
  %i.gl = getelementptr i8, ptr %next.gep313, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep313, align 8, !tbaa !168, !alias.scope !928, !noalias !923
  store <2 x ptr> splat (ptr null), ptr %i.gl, align 8, !tbaa !168, !alias.scope !928, !noalias !923
  %index.next316 = add nuw i64 %index311, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next316, %n.vec309
  br i1 %i.gm, label %middle.block317, label %vector.body310, !llvm.loop !933

middle.block317:                                  ; preds = %vector.body310
  %cmp.n318 = icmp eq i64 %i.ga, %n.vec309
  br i1 %cmp.n318, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i116.preheader321

.lr.ph.i.i.i.i.i.i.i116.preheader321:             ; preds = %vector.memcheck299, %.lr.ph.i.i.i.i.i.i.i116.preheader, %middle.block317
  %.012.i.i.i.i.i.i.i117.ph = phi ptr [ %i.fu, %vector.memcheck299 ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i116.preheader ], [ %i.gg, %middle.block317 ]
  %.0911.i.i.i.i.i.i.i118.ph = phi ptr [ %i.fj, %vector.memcheck299 ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i116.preheader ], [ %i.gh, %middle.block317 ]
  br label %.lr.ph.i.i.i.i.i.i.i116

.lr.ph.i.i.i.i.i.i.i116:                          ; preds = %.lr.ph.i.i.i.i.i.i.i116.preheader321, %.lr.ph.i.i.i.i.i.i.i116
  %.012.i.i.i.i.i.i.i117 = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.i.i116 ], [ %.012.i.i.i.i.i.i.i117.ph, %.lr.ph.i.i.i.i.i.i.i116.preheader321 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i118 = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i116 ], [ %.0911.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i116.preheader321 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.gn = load i64, ptr %.0911.i.i.i.i.i.i.i118, align 8, !tbaa !168, !alias.scope !926, !noalias !923
  store i64 %i.gn, ptr %.012.i.i.i.i.i.i.i117, align 8, !tbaa !168, !alias.scope !923, !noalias !926
  store ptr null, ptr %.0911.i.i.i.i.i.i.i118, align 8, !tbaa !168, !alias.scope !926, !noalias !923
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i118, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i117, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i119 = icmp eq ptr %i.go, %i.ff
  br i1 %.not.i.i.i.i.i.i.i119, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i116, !llvm.loop !934

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120: ; preds = %.lr.ph.i.i.i.i.i.i.i116, %middle.block317, %.noexc125
  %.0.lcssa.i.i.i.i.i.i.i121 = phi ptr [ %i.fu, %.noexc125 ], [ %i.gg, %middle.block317 ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i116 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i121, i64 8
  %.not.i23.i.i.i122 = icmp eq ptr %i.fj, null
  br i1 %.not.i23.i.i.i122, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120
  call void @_ZdlPv(ptr noundef nonnull %i.fj) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123: ; preds = %bb.ar, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120
  store ptr %i.fu, ptr %12, align 8, !tbaa !170
  store ptr %i.gq, ptr %i.af, align 8, !tbaa !166
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fs
  store ptr %i.gr, ptr %i.ah, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123, %bb.ao
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA13_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1001") align 8 %18, ptr noundef nonnull align 1 dereferenceable(13) @.str.32, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.as unwind label %bb.bo

bb.as:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZNK6duckdb9AlterInfo17GetAlterEntryDataEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::AlterEntryData") align 8 %20, ptr noundef nonnull align 8 dereferenceable(113) %3)
          to label %bb.at unwind label %bb.bp

bb.at:                                            ; preds = %bb.as
  %i.gs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.au unwind label %bb.bq     ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.gt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.gt, ptr %21, align 8, !tbaa !12
  %i.gu = load ptr, ptr %i.gs, align 8, !tbaa !15 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.gw, ptr %i.a, align 8, !tbaa !19
  %i.gx = icmp ugt i64 %i.gw, 15
  br i1 %i.gx, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.au
  %i.gy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc133 unwind label %bb.bq ; 2 uses

.noexc133:                                        ; preds = %.noexc.i
  store ptr %i.gy, ptr %21, align 8, !tbaa !15
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.gz, ptr %i.gt, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc133, %bb.au
  %i.ha = phi ptr [ %i.gy, %.noexc133 ], [ %i.gt, %bb.au ] ; 2 uses
  switch i64 %i.gw, label %bb.aw [
    i64 1, label %bb.av
    i64 0, label %bb.ax
  ]

bb.av:                                            ; preds = %._crit_edge.i.i
  %i.hb = load i8, ptr %i.gu, align 1, !tbaa !20
  store i8 %i.hb, ptr %i.ha, align 1, !tbaa !20
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ha, ptr align 1 %i.gu, i64 %i.gw, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %._crit_edge.i.i
  %i.hc = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !18
  %i.he = load ptr, ptr %21, align 8, !tbaa !15
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hc
  store i8 0, ptr %i.hf, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.by) #30
  %i.hg = load ptr, ptr %18, align 8, !tbaa !745
  store ptr null, ptr %18, align 8, !tbaa !745
  store ptr %i.hg, ptr %23, align 8, !tbaa !747
  invoke void @_ZN6duckdb20ChangeColumnTypeInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23)
          to label %bb.ay unwind label %bb.br

bb.ay:                                            ; preds = %bb.ax
  %i.hh = load ptr, ptr %23, align 8, !tbaa !168  ; 3 uses
  %.not.i134 = icmp eq ptr %i.hh, null
  br i1 %.not.i134, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit136, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i135

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i135: ; preds = %bb.ay
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(56) %i.hh) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit136

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit136: ; preds = %bb.ay, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i135
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #30
  %i.hl = load ptr, ptr %21, align 8, !tbaa !15   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.gt
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit136
  call void @_ZdlPv(ptr noundef %i.hl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.hn = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !15 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  call void @_ZdlPv(ptr noundef %i.ho) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !15 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.hs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.hv = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZN6duckdb14AlterEntryDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
end_hunk_3
begin_hunk_4_@_ZN6duckdb14DuckTableEntry24DropForeignKeyConstraintERNS_13ClientContextERNS_19AlterForeignKeyInfoE:bb.a
  resume { ptr, i32 } %.pn22.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14DuckTableEntry10SetNotNullERNS_13ClientContextERNS_14SetNotNullInfoE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(688) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(152) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::shared_ptr.199", align 16 ; 6 uses
  %5 = alloca %"class.duckdb::shared_ptr.199", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.duckdb::unique_ptr.244", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::shared_ptr.883", align 8 ; 7 uses
  %10 = alloca %"class.duckdb::unique_ptr.888", align 8 ; 8 uses
  %11 = alloca %"class.duckdb::unique_ptr.244", align 8 ; 4 uses
  %12 = alloca %"class.duckdb::unique_ptr.1088", align 8 ; 7 uses
  %13 = alloca %"class.duckdb::shared_ptr.199", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.b = tail call i64 @_ZNK6duckdb17TableCatalogEntry14GetColumnIndexERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(448) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i1 noundef zeroext false) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.c, i64 %i.b)
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition9GeneratedEv(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.cb unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.031, label %bb.f, label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.031, label %bb.f, label %bb.ca

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn53126 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #30
  br label %bb.ca

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.l = load ptr, ptr %1, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.244") align 8 %8, ptr noundef nonnull align 8 dereferenceable(448) %1)
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.i       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 464 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !543  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 472 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !543  ; 2 uses
  %.not.not136 = icmp eq ptr %i.q, %i.s
  br i1 %.not.not136, label %.critedge, label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %bb.h, %.thread
  %.sroa.0118.0137 = phi ptr [ %i.af, %.thread ], [ %i.q, %bb.h ] ; 3 uses
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.0137)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !304
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.y = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.0137)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10Constraint4CastINS_17NotNullConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.y)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !847
  %i.ac = icmp eq i64 %i.ab, %i.b
  br i1 %i.ac, label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit, label %.thread

bb.n:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.j, %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0118.0137, i64 8 ; 2 uses
  %.not.not = icmp eq ptr %i.af, %i.s
  br i1 %.not.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.thread, %bb.h
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc unwind label %bb.u     ; 6 uses

.noexc:                                           ; preds = %.critedge
  invoke void @_ZN6duckdb17NotNullConstraintC1ENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 %i.b)
          to label %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.p, !noalias !997

bb.p:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #31, !noalias !997
  br label %.body

_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !300 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 480 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !544
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.al = ptrtoint ptr %i.ag to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !567
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.r, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

bb.r:                                             ; preds = %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !303 ; 10 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.s, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc56 unwind label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit64

.noexc56:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #33
          to label %.noexc57 unwind label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit64 ; 10 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %i.ag to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc57
  %i.bb = sub i64 %i.ao, %i.ap
  %i.bc = add i64 %i.bb, -8                       ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bf = add i64 %i.ao, -8
  %i.bg = sub i64 %i.bf, %i.ap
  %i.bh = and i64 %i.bg, -8
  %i.bi = add i64 %i.bh, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bi
  %scevgep158 = getelementptr i8, ptr %i.an, i64 %i.bi
  %bound0 = icmp ult ptr %i.ay, %scevgep158
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ay, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bm ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.an, i64 %i.bm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.bn = getelementptr i8, ptr %next.gep159, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep159, align 8, !tbaa !567, !alias.scope !1005, !noalias !1000
  %wide.load160 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !567, !alias.scope !1005, !noalias !1000
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !1008, !noalias !1005
  store <2 x i64> %wide.load160, ptr %i.bo, align 8, !tbaa !567, !alias.scope !1008, !noalias !1005
  %i.bp = getelementptr i8, ptr %next.gep159, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep159, align 8, !tbaa !567, !alias.scope !1005, !noalias !1000
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !567, !alias.scope !1005, !noalias !1000
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !1010

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader162

.lr.ph.i.i.i.i.i.i.i.preheader162:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader162, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader162 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader162 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1003, !noalias !1000
  store i64 %i.br, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1000, !noalias !1003
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1003, !noalias !1000
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1011

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc57
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc57 ], [ %i.bk, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ay, ptr %i.p, align 8, !tbaa !303
  store ptr %i.bu, ptr %i.r, align 8, !tbaa !300
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bv, ptr %i.aj, align 8, !tbaa !544
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

bb.u:                                             ; preds = %.critedge
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit64: ; preds = %bb.s, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %i.ag, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ag) #30, !inline_history !617
  br label %.body

_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.m, %bb.q, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %.not.not134 = phi i1 [ true, %bb.q ], [ true, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ false, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN6duckdb6Binder12CreateBinderERNS_13ClientContextENS_12optional_ptrIS0_Lb1EEENS_10BinderTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.883") align 8 %9, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr null, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.al

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.cb = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.w unwind label %bb.am

bb.w:                                             ; preds = %bb.v
  %i.cc = load i64, ptr %8, align 8, !tbaa !214
  store i64 %i.cc, ptr %11, align 8, !tbaa !214
  store ptr null, ptr %8, align 8, !tbaa !214
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !205, !nonnull !71, !align !204
  invoke void @_ZN6duckdb6Binder19BindCreateTableInfoENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEERNS_18SchemaCatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.888") align 8 %10, ptr noundef nonnull align 8 dereferenceable(472) %i.cb, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(248) %i.ce)
          to label %bb.x unwind label %bb.an

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr %11, align 8, !tbaa !214  ; 3 uses
  %.not.i65 = icmp eq ptr %i.cf, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %bb.x
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(320) %i.cf) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  br i1 %.not.not134, label %bb.ap, label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.cl = load ptr, ptr %i.cd, align 8, !tbaa !205, !nonnull !71, !align !204
  %i.cm = invoke noundef nonnull align 8 dereferenceable(360) ptr @_ZNK6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.z unwind label %bb.ao

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cn = invoke noalias noundef nonnull dereferenceable(688) ptr @_Znwm(i64 noundef 688) #33
          to label %.noexc67 unwind label %bb.ao, !inline_history !642 ; 3 uses

.noexc67:                                         ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !94, !noalias !1012 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %i.co, align 8, !tbaa !95, !noalias !1012
  store <2 x ptr> %i.cs, ptr %5, align 16, !tbaa !95, !noalias !1012
  %.not.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc67
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !1012
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !3, !noalias !1012
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !3, !noalias !1012
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.cx = atomicrmw volatile add ptr %i.ct, i32 1 acq_rel, align 4, !noalias !1012 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i: ; preds = %bb.ac, %bb.ab, %.noexc67
  invoke void @_ZN6duckdb14DuckTableEntryC1ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_20BoundCreateTableInfoENS_10shared_ptrINS_9DataTableELb1EEE(ptr noundef nonnull align 8 dereferenceable(688) %i.cn, ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(248) %i.cl, ptr noundef nonnull align 8 dereferenceable(360) %i.cm, ptr noundef nonnull %5)
          to label %bb.ad unwind label %bb.ak, !noalias !1012, !inline_history !642

bb.ad:                                            ; preds = %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !94, !noalias !1012 ; 8 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i66, label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8, !noalias !1012 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cz, align 8, !tbaa !99, !noalias !1012
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !101, !noalias !1012
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !7, !noalias !1012
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !1012
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #30, !noalias !1012, !inline_history !646
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !7, !noalias !1012
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !1012
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #30, !noalias !1012, !inline_history !646
  br label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !1012
  %.not.i.i.i.i6.i = icmp eq i8 %i.dk, 0
end_hunk_4
begin_hunk_5_@_ZN6duckdb14DuckTableEntry13AddConstraintERNS_13ClientContextERNS_17AddConstraintInfoE:bb.a
  %i.s = icmp eq i8 %i.r, 3
  br i1 %i.s, label %bb.g, label %.critedge11.i

bb.g:                                             ; preds = %.noexc
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.012.019.i)
          to label %.noexc43 unwind label %bb.o

.noexc43:                                         ; preds = %bb.g
  %i.u = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN6duckdb10Constraint4CastINS_16UniqueConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.t)
          to label %.noexc44 unwind label %bb.o   ; 2 uses

.noexc44:                                         ; preds = %.noexc43
  %i.v = invoke noundef zeroext i1 @_ZNK6duckdb16UniqueConstraint12IsPrimaryKeyEv(ptr noundef nonnull align 8 dereferenceable(49) %i.u)
          to label %.noexc45 unwind label %bb.o

.noexc45:                                         ; preds = %.noexc44
  br i1 %i.v, label %_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit, label %.critedge11.i

.critedge11.i:                                    ; preds = %.noexc45, %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.o
  br i1 %.not.i, label %_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit.thread, label %.lr.ph.i

_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit.thread: ; preds = %.critedge11.i, %bb.f
  store ptr null, ptr %6, align 8
  br label %bb.t

_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit: ; preds = %.noexc45
  store ptr %i.u, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !491, !range !70, !noundef !71
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.t

bb.h:                                             ; preds = %_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNK6duckdb12optional_ptrINS_10ConstraintELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %6, align 8, !tbaa !1032  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(9) %i.aa)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ae = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.62, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.bx unwind label %bb.q

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.n:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.o:                                             ; preds = %.noexc44, %.noexc43, %bb.g, %.lr.ph.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.p:                                             ; preds = %bb.h, %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.r

bb.q:                                             ; preds = %bb.l, %bb.k
  %.014 = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.am) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %.014, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %.014, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3787 = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ae) #30
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3786 = phi { ptr, i32 } [ %.pn3787, %bb.r ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.p
  %.pn37.pn = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %.pn3786, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.pn3786, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ab

bb.t:                                             ; preds = %_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit.thread, %_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.at = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.u unwind label %bb.z       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %10, ptr noundef nonnull align 8 dereferenceable(9) %i.at)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 472 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !300 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 480 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !544
  %.not.i.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i.i, label %bb.w, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.v
  %i.bb = load i64, ptr %10, align 8, !tbaa !567
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !567
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !303 ; 10 uses
  %i.be = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.x, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc50 unwind label %bb.aa

.noexc50:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.bi = ashr exact i64 %i.bg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975)
  %i.bm = select i1 %i.bk, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #33
          to label %.noexc51 unwind label %bb.aa  ; 10 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  %i.bq = load i64, ptr %10, align 8, !tbaa !567
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !567
  store ptr null, ptr %10, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.ay
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc51
  %i.br = sub i64 %i.be, %i.bf
  %i.bs = add i64 %i.br, -8                       ; 2 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader121, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bv = add i64 %i.be, -8
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = and i64 %i.bw, -8
  %i.by = add i64 %i.bx, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bo, i64 %i.by
  %scevgep117 = getelementptr i8, ptr %i.bd, i64 %i.by
  %bound0 = icmp ult ptr %i.bo, %scevgep117
  %bound1 = icmp ult ptr %i.bd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, 4611686018427387900     ; 3 uses
  %i.bz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bo, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bd, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.cc ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.bd, i64 %i.cc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.cd = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep118, align 8, !tbaa !567, !alias.scope !1039, !noalias !1034
  %wide.load119 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !567, !alias.scope !1039, !noalias !1034
  %i.ce = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !1042, !noalias !1039
  store <2 x i64> %wide.load119, ptr %i.ce, align 8, !tbaa !567, !alias.scope !1042, !noalias !1039
  %i.cf = getelementptr i8, ptr %next.gep118, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep118, align 8, !tbaa !567, !alias.scope !1039, !noalias !1034
  store <2 x ptr> splat (ptr null), ptr %i.cf, align 8, !tbaa !567, !alias.scope !1039, !noalias !1034
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !1044

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.i.i.preheader121:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ca, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader121 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.ch = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1037, !noalias !1034
  store i64 %i.ch, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1034, !noalias !1037
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1037, !noalias !1034
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.ay
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1045

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc51
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.noexc51 ], [ %i.ca, %middle.block ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bd) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.y
  store ptr %i.bo, ptr %i.as, align 8, !tbaa !303
  store ptr %i.ck, ptr %i.ax, align 8, !tbaa !300
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.cl, ptr %i.az, align 8, !tbaa !544
  %.pr = load ptr, ptr %10, align 8, !tbaa !567   ; 3 uses
  %.not.i52 = icmp eq ptr %.pr, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.cm = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZN6duckdb6Binder12CreateBinderERNS_13ClientContextENS_12optional_ptrIS0_Lb1EEENS_10BinderTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.883") align 8 %13, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr null, i8 noundef zeroext 0)
          to label %bb.ah unwind label %bb.bo

bb.z:                                             ; preds = %bb.u, %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55

bb.aa:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.x
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %10, align 8, !tbaa !567  ; 3 uses
  %.not.i53 = icmp eq ptr %i.cr, null
  br i1 %.not.i53, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i54

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i54: ; preds = %bb.aa
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.cr) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55: ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i54, %bb.aa, %bb.z
  %.pn30 = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %i.cq, %bb.aa ], [ %i.cq, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.o
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %.pn30, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55 ], [ %i.ai, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.bw

bb.ac:                                            ; preds = %bb.c
  %i.cv = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.bx unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread: ; preds = %bb.ac
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 2 uses
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cy = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.cy) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br i1 %.0, label %bb.ag, label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br i1 %.0, label %bb.ag, label %bb.bw

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn91 = phi { ptr, i32 } [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  call void @__cxa_free_exception(ptr %i.cv) #30
  br label %bb.bw

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.db = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.ai unwind label %bb.bp

bb.ai:                                            ; preds = %bb.ah
  %i.dc = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.aj unwind label %bb.bp

bb.aj:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  invoke void @_ZN6duckdb6Binder14BindConstraintERKNS_10ConstraintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_10ColumnListE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1049") align 8 %14, ptr noundef nonnull align 8 dereferenceable(472) %i.db, ptr noundef nonnull align 8 dereferenceable(9) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(105) %i.de)
          to label %bb.ak unwind label %bb.bp

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.df = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.al unwind label %bb.bq

bb.al:                                            ; preds = %bb.ak
  %i.dg = load i64, ptr %5, align 8, !tbaa !214
  store i64 %i.dg, ptr %16, align 8, !tbaa !214
  store ptr null, ptr %5, align 8, !tbaa !214
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !205, !nonnull !71, !align !204
  invoke void @_ZN6duckdb6Binder19BindCreateTableInfoENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEERNS_18SchemaCatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.888") align 8 %15, ptr noundef nonnull align 8 dereferenceable(472) %i.df, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(248) %i.di)
          to label %bb.am unwind label %bb.br
end_hunk_5
begin_hunk_6_@_ZNK6duckdb17TableCatalogEntry7GetInfoEv:bb.a
bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.ae      ; 8 uses

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 352 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !487  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !484  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load <2 x ptr>, ptr %4, align 16, !tbaa !530
  store <2 x ptr> %i.x, ptr %i.r, align 8, !tbaa !530
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !531
  store ptr %i.z, ptr %i.v, align 8, !tbaa !531
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %bb.h ] ; 2 uses
  call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %.05.i.i.i.i.i.i.i) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !529

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEaSEOS3_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #31
  br label %_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEaSEOS3_.exit.i

_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEaSEOS3_.exit.i: ; preds = %bb.i, %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 376
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSK_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.ac)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEaSEOS3_.exit.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #34
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit.i: ; preds = %_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEaSEOS3_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 432 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !159 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 448
  %i.aj = load <2 x ptr>, ptr %i.ag, align 16, !tbaa !161
  store <2 x ptr> %i.aj, ptr %i.af, align 8, !tbaa !161
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !160
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !160
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %i.ah, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i5.i, label %_ZN6duckdb10ColumnListaSEOS0_.exit.thread, label %_ZN6duckdb10ColumnListaSEOS0_.exit

_ZN6duckdb10ColumnListaSEOS0_.exit.thread:        ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.an = load i8, ptr %i.am, align 8, !tbaa !537, !range !70, !noundef !71
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  store i8 %i.an, ptr %i.ao, align 8, !tbaa !537
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZN6duckdb10ColumnListaSEOS0_.exit:               ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #31
  %.pr = load ptr, ptr %i.ag, align 16, !tbaa !159 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !537, !range !70, !noundef !71
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  store i8 %i.aq, ptr %i.ar, align 8, !tbaa !537
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb10ColumnListaSEOS0_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %_ZN6duckdb10ColumnListaSEOS0_.exit.thread, %bb.k, %_ZN6duckdb10ColumnListaSEOS0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !534 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.au, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.at, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 4 uses
  %i.au = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !118 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.aw) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #31
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !603

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.az = load ptr, ptr %i.ac, align 8, !tbaa !532
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !533
  %i.bc = shl i64 %i.bb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.bc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.ac, align 8, !tbaa !532 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.bd) #31
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i: ; preds = %bb.l, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.bg = load ptr, ptr %4, align 16, !tbaa !487  ; 3 uses
  %i.bh = load ptr, ptr %i.w, align 8, !tbaa !484 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %.05.i.i.i.i) #30
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !529

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 16, !tbaa !487
  br label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i
  %i.bj = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bg, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb10ColumnListD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #31
  br label %_ZN6duckdb10ColumnListD2Ev.exit

_ZN6duckdb10ColumnListD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.n unwind label %.loopexit.split-lp ; 3 uses

bb.n:                                             ; preds = %_ZN6duckdb10ColumnListD2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 464 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !300
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !303
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp ugt i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 480 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !544
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !303 ; 10 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 4 uses
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bs
  br i1 %i.ca, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 472 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !300 ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.ce = sub i64 %i.cd, %i.by
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #33
          to label %.noexc14 unwind label %.loopexit.split-lp ; 9 uses

.noexc14:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i = icmp eq ptr %i.bw, %i.cc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i12.preheader

.lr.ph.i.i.i.i.i12.preheader:                     ; preds = %.noexc14
  %i.cg = sub i64 %i.cd, %i.by
  %i.ch = add i64 %i.cg, -8                       ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i12.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i12.preheader
  %i.ck = add i64 %i.cd, -8
  %i.cl = sub i64 %i.ck, %i.by
  %i.cm = and i64 %i.cl, -8
  %i.cn = add i64 %i.cm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cf, i64 %i.cn
  %scevgep54 = getelementptr i8, ptr %i.bw, i64 %i.cn
  %bound0 = icmp ult ptr %i.cf, %scevgep54
  %bound1 = icmp ult ptr %i.bw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i12.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.bw, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.cr ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.bw, i64 %i.cr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.cs = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !567, !alias.scope !1467, !noalias !1462
  %wide.load56 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !567, !alias.scope !1467, !noalias !1462
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !1470, !noalias !1467
  store <2 x i64> %wide.load56, ptr %i.ct, align 8, !tbaa !567, !alias.scope !1470, !noalias !1467
  %i.cu = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !567, !alias.scope !1467, !noalias !1462
  store <2 x ptr> splat (ptr null), ptr %i.cu, align 8, !tbaa !567, !alias.scope !1467, !noalias !1462
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i12.preheader83

.lr.ph.i.i.i.i.i12.preheader83:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i12.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.i12.preheader ], [ %i.cp, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i12.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i12

.lr.ph.i.i.i.i.i12:                               ; preds = %.lr.ph.i.i.i.i.i12.preheader83, %.lr.ph.i.i.i.i.i12
  %.012.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i12 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i12.preheader83 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i12 ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i12.preheader83 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1465, !noalias !1462
  store i64 %i.cw, ptr %.012.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1462, !noalias !1465
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1465, !noalias !1462
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i13 = icmp eq ptr %i.cx, %i.cc
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i12, !llvm.loop !1473

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i12, %middle.block, %.noexc14
  %.not.i8.i = icmp eq ptr %i.bw, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #31
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.cf, ptr %i.bl, align 8, !tbaa !303
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store ptr %i.cz, ptr %i.cb, align 8, !tbaa !300
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bs
  store ptr %i.da, ptr %i.bu, align 8, !tbaa !544
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.p
  %i.db = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 120 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.dd, ptr noundef nonnull align 8 dereferenceable(56) %i.dc)
          to label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit unwind label %.loopexit.split-lp

_ZN6duckdb21LogicalDependencyListaSERKS0_.exit:   ; preds = %bb.r, %bb.s
  %i.df = load ptr, ptr %i.bm, align 8, !tbaa !543 ; 2 uses
  %i.dg = load ptr, ptr %i.bn, align 8, !tbaa !543 ; 2 uses
  %.not5.i = icmp eq ptr %i.df, %i.dg
  br i1 %.not5.i, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN6duckdb10unique_ptrINS2_10ConstraintESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEEZNKS2_17TableCatalogEntry7GetInfoEvE3$_0ET0_T_SH_SG_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i"
  %.sroa.02.06.i = phi ptr [ %i.fi, %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i" ], [ %i.df, %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit ] ; 2 uses
  %i.dh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc18 unwind label %.loopexit ; 3 uses

.noexc18:                                         ; preds = %.lr.ph.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.dj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02.06.i)
          to label %.noexc19 unwind label %.loopexit ; 2 uses

.noexc19:                                         ; preds = %.noexc18
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %2, ptr noundef nonnull align 8 dereferenceable(9) %i.dj)
          to label %.noexc20 unwind label %.loopexit, !inline_history !1474

.noexc20:                                         ; preds = %.noexc19
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 472 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !300 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 480 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !544
  %.not.i.i.i = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i.i.i, label %bb.t, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread.i.i: ; preds = %.noexc20
  %i.dr = load i64, ptr %2, align 8, !tbaa !567
  store i64 %i.dr, ptr %i.do, align 8, !tbaa !567
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !300
  br label %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i"

bb.t:                                             ; preds = %.noexc20
  %i.dt = load ptr, ptr %i.di, align 8, !tbaa !303 ; 10 uses
  %i.du = ptrtoint ptr %i.do to i64               ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775800
  br i1 %i.dx, label %bb.u, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i

.noexc.i.i:                                       ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.t
  %i.dy = ashr exact i64 %i.dw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 1152921504606846975)
  %i.ec = select i1 %i.ea, i64 1152921504606846975, i64 %i.eb ; 3 uses
  %.not.i.i.i.i.i16 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i16)
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #33
          to label %.noexc3.i.i unwind label %.loopexit.i ; 10 uses

.noexc3.i.i:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw
  %i.eg = load i64, ptr %2, align 8, !tbaa !567
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !567
  store ptr null, ptr %2, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, %i.do
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc3.i.i
  %i.eh = sub i64 %i.du, %i.dv
  %i.ei = add i64 %i.eh, -8                       ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.ei, 56
  br i1 %min.iters.check67, label %.lr.ph.i.i.i.i.i.i.i.i.preheader82, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %scevgep59 = getelementptr i8, ptr %i.ee, i64 8
  %i.el = add i64 %i.du, -8
  %i.em = sub i64 %i.el, %i.dv
  %i.en = and i64 %i.em, -8                       ; 2 uses
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.en
  %scevgep61 = getelementptr i8, ptr %i.dt, i64 8
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.en
  %bound063 = icmp ult ptr %i.ee, %scevgep62
  %bound164 = icmp ult ptr %i.dt, %scevgep60
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %.lr.ph.i.i.i.i.i.i.i.i.preheader82, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck58
  %n.vec70 = and i64 %i.ek, 4611686018427387900   ; 3 uses
  %i.eo = shl i64 %n.vec70, 3                     ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ee, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr i8, ptr %i.dt, i64 %i.eo
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.er = shl i64 %index72, 3                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.ee, i64 %i.er ; 2 uses
end_hunk_6
