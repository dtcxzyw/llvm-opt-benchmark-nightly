Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/andersentemperaturecoupling?download=true
inline.NumInlined: 1059
inline.NumDeleted: 605
begin_hunk_0_@_ZN3gmx27AndersenTemperatureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerE:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i33.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE17_M_realloc_insertIJNS2_IPNS0_18ConstraintsElementILNS0_18ConstraintVariableE1EEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit32.i.i
  %i.dl = load ptr, ptr %i.av, align 8, !tbaa !85
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.dn) #26
  br label %_ZNSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE17_M_realloc_insertIJNS2_IPNS0_18ConstraintsElementILNS0_18ConstraintVariableE1EEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE17_M_realloc_insertIJNS2_IPNS0_18ConstraintsElementILNS0_18ConstraintVariableE1EEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit32.i.i
  store ptr %i.ci, ptr %9, align 8, !tbaa !84
  store ptr %i.dk, ptr %i.aw, align 8, !tbaa !322
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.do, ptr %i.av, align 8, !tbaa !85
  br label %_ZNSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE12emplace_backIJNS2_IPNS0_18ConstraintsElementILNS0_18ConstraintVariableE1EEEEEEEERS5_DpOT_.exit

_ZNSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE12emplace_backIJNS2_IPNS0_18ConstraintsElementILNS0_18ConstraintVariableE1EEEEEEEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE17_M_realloc_insertIJNS2_IPNS0_18ConstraintsElementILNS0_18ConstraintVariableE1EEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.o
  %i.dp = load ptr, ptr %i.ax, align 8, !tbaa !93 ; 6 uses
  %i.dq = load ptr, ptr %i.ay, align 8, !tbaa !94
  %.not.i49 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i49, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE12emplace_backIJNS2_IPNS0_18ConstraintsElementILNS0_18ConstraintVariableE1EEEEEEEERS5_DpOT_.exit
  store ptr %i.bo, ptr %i.dp, align 8, !tbaa !89
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dr, ptr %i.ax, align 8, !tbaa !93
  br label %_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE12emplace_backIJNS2_IPNS0_18ConstraintsElementILNS0_18ConstraintVariableE1EEEEEEEERS5_DpOT_.exit
  %i.ds = load ptr, ptr %10, align 8, !tbaa !92   ; 9 uses
  %i.dt = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64               ; 3 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 3 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i72

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i72: ; preds = %bb.s
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i73 = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i73, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 3 uses
  %.not.i.i74 = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not.i.i74)
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #28
          to label %.noexc89 unwind label %_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit57 ; 9 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i72
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dv
  store ptr %i.bo, ptr %i.ee, align 8, !tbaa !89
  %.not10.i.i.i.i75 = icmp eq ptr %i.ds, %i.dp
  br i1 %.not10.i.i.i.i75, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i85, label %iter.check187

iter.check187:                                    ; preds = %.noexc89
  %i.ef = add i64 %i.dt, -8
  %i.eg = sub i64 %i.ef, %i.du                    ; 3 uses
  %i.eh = lshr i64 %i.eg, 3
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 5 uses
  %min.iters.check171 = icmp ult i64 %i.eg, 24
  br i1 %min.iters.check171, label %.lr.ph.i.i.i.i76.preheader, label %vector.main.loop.iter.check172

vector.main.loop.iter.check172:                   ; preds = %iter.check187
  %min.iters.check173 = icmp ult i64 %i.eg, 120
  br i1 %min.iters.check173, label %vec.epilog.ph191, label %vector.ph174

vector.ph174:                                     ; preds = %vector.main.loop.iter.check172
  %i.ej = and i64 %i.ei, 12
  %n.vec175 = and i64 %i.ei, 4611686018427387888  ; 4 uses
  %i.ek = shl i64 %n.vec175, 3                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.ed, i64 %i.ek  ; 2 uses
  %i.em = getelementptr i8, ptr %i.ds, i64 %i.ek
  br label %vector.body176

vector.body176:                                   ; preds = %vector.ph174, %vector.body176
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next184, %vector.body176 ] ; 2 uses
  %i.en = shl i64 %index177, 3                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.ed, i64 %i.en ; 4 uses
  %next.gep179 = getelementptr i8, ptr %i.ds, i64 %i.en ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.eo = getelementptr i8, ptr %next.gep179, i64 32
  %i.ep = getelementptr i8, ptr %next.gep179, i64 64
  %i.eq = getelementptr i8, ptr %next.gep179, i64 96
  %wide.load180 = load <4 x i64>, ptr %next.gep179, align 8, !tbaa !87, !alias.scope !347
  %wide.load181 = load <4 x i64>, ptr %i.eo, align 8, !tbaa !87, !alias.scope !347
  %wide.load182 = load <4 x i64>, ptr %i.ep, align 8, !tbaa !87, !alias.scope !347
  %wide.load183 = load <4 x i64>, ptr %i.eq, align 8, !tbaa !87, !alias.scope !347
  %i.er = getelementptr i8, ptr %next.gep178, i64 32
  %i.es = getelementptr i8, ptr %next.gep178, i64 64
  %i.et = getelementptr i8, ptr %next.gep178, i64 96
  store <4 x i64> %wide.load180, ptr %next.gep178, align 8, !tbaa !87, !alias.scope !346
  store <4 x i64> %wide.load181, ptr %i.er, align 8, !tbaa !87, !alias.scope !346
  store <4 x i64> %wide.load182, ptr %i.es, align 8, !tbaa !87, !alias.scope !346
  store <4 x i64> %wide.load183, ptr %i.et, align 8, !tbaa !87, !alias.scope !346
  %i.eu = getelementptr i8, ptr %next.gep179, i64 32
  %i.ev = getelementptr i8, ptr %next.gep179, i64 64
  %i.ew = getelementptr i8, ptr %next.gep179, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep179, align 8, !tbaa !87, !alias.scope !347
  store <4 x ptr> splat (ptr null), ptr %i.eu, align 8, !tbaa !87, !alias.scope !347
  store <4 x ptr> splat (ptr null), ptr %i.ev, align 8, !tbaa !87, !alias.scope !347
  store <4 x ptr> splat (ptr null), ptr %i.ew, align 8, !tbaa !87, !alias.scope !347
  %index.next184 = add nuw i64 %index177, 16      ; 2 uses
  %i.ex = icmp eq i64 %index.next184, %n.vec175
  br i1 %i.ex, label %middle.block185, label %vector.body176, !llvm.loop !179

middle.block185:                                  ; preds = %vector.body176
  %cmp.n186 = icmp eq i64 %i.ei, %n.vec175
  br i1 %cmp.n186, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i85, label %vec.epilog.iter.check188

vec.epilog.iter.check188:                         ; preds = %middle.block185
  %min.epilog.iters.check190 = icmp eq i64 %i.ej, 0
  br i1 %min.epilog.iters.check190, label %.lr.ph.i.i.i.i76.preheader, label %vec.epilog.ph191, !prof !97

vec.epilog.ph191:                                 ; preds = %vector.main.loop.iter.check172, %vec.epilog.iter.check188
  %vec.epilog.resume.val192 = phi i64 [ %n.vec175, %vec.epilog.iter.check188 ], [ 0, %vector.main.loop.iter.check172 ]
  %n.vec193 = and i64 %i.ei, 4611686018427387900  ; 3 uses
  %i.ey = shl i64 %n.vec193, 3                    ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ed, i64 %i.ey  ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ds, i64 %i.ey
  br label %vec.epilog.vector.body194

vec.epilog.vector.body194:                        ; preds = %vec.epilog.vector.body194, %vec.epilog.ph191
  %index195 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph191 ], [ %index.next199, %vec.epilog.vector.body194 ] ; 2 uses
  %i.fb = shl i64 %index195, 3                    ; 2 uses
  %next.gep196 = getelementptr i8, ptr %i.ed, i64 %i.fb
  %next.gep197 = getelementptr i8, ptr %i.ds, i64 %i.fb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %wide.load198 = load <4 x i64>, ptr %next.gep197, align 8, !tbaa !87, !alias.scope !347
  store <4 x i64> %wide.load198, ptr %next.gep196, align 8, !tbaa !87, !alias.scope !346
  store <4 x ptr> splat (ptr null), ptr %next.gep197, align 8, !tbaa !87, !alias.scope !347
  %index.next199 = add nuw i64 %index195, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.fc, label %vec.epilog.middle.block200, label %vec.epilog.vector.body194, !llvm.loop !180

vec.epilog.middle.block200:                       ; preds = %vec.epilog.vector.body194
  %cmp.n201 = icmp eq i64 %i.ei, %n.vec193
  br i1 %cmp.n201, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i85, label %.lr.ph.i.i.i.i76.preheader

.lr.ph.i.i.i.i76.preheader:                       ; preds = %iter.check187, %vec.epilog.iter.check188, %vec.epilog.middle.block200
  %.012.i.i.i.i77.ph = phi ptr [ %i.ed, %iter.check187 ], [ %i.el, %vec.epilog.iter.check188 ], [ %i.ez, %vec.epilog.middle.block200 ]
  %.0911.i.i.i.i78.ph = phi ptr [ %i.ds, %iter.check187 ], [ %i.em, %vec.epilog.iter.check188 ], [ %i.fa, %vec.epilog.middle.block200 ]
  br label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %.lr.ph.i.i.i.i76.preheader, %.lr.ph.i.i.i.i76
  %.012.i.i.i.i77 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i76 ], [ %.012.i.i.i.i77.ph, %.lr.ph.i.i.i.i76.preheader ] ; 2 uses
  %.0911.i.i.i.i78 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i76 ], [ %.0911.i.i.i.i78.ph, %.lr.ph.i.i.i.i76.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.fd = load i64, ptr %.0911.i.i.i.i78, align 8, !tbaa !87, !alias.scope !347
  store i64 %i.fd, ptr %.012.i.i.i.i77, align 8, !tbaa !87, !alias.scope !346
  store ptr null, ptr %.0911.i.i.i.i78, align 8, !tbaa !87, !alias.scope !347
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i78, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fe, %i.dp
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i85, label %.lr.ph.i.i.i.i76, !llvm.loop !181

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i85: ; preds = %.lr.ph.i.i.i.i76, %middle.block185, %vec.epilog.middle.block200, %.noexc89
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ed, %.noexc89 ], [ %i.ez, %vec.epilog.middle.block200 ], [ %i.el, %middle.block185 ], [ %i.ff, %.lr.ph.i.i.i.i76 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i87 = icmp eq ptr %i.ds, null
  br i1 %.not.i23.i87, label %.noexc51, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i85
  %i.fh = load ptr, ptr %i.ay, align 8, !tbaa !94
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.fj) #26
  br label %.noexc51

.noexc51:                                         ; preds = %bb.t, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i85
  store ptr %i.ed, ptr %10, align 8, !tbaa !92
  store ptr %i.fg, ptr %i.ax, align 8, !tbaa !93
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb
  store ptr %i.fk, ptr %i.ay, align 8, !tbaa !94
  br label %_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit

bb.u:                                             ; preds = %_ZSt11make_uniqueIN3gmx27AndersenTemperatureCouplingEJRKdbRKiNS0_8ArrayRefIKfEES8_RPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP9t_commrecEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 2 uses
  %.not.i53 = icmp eq ptr %i.fm, null
  br i1 %.not.i53, label %_ZNKSt14default_deleteIN3gmx27AndersenTemperatureCouplingEEclEPS1_.exit.i68, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = invoke noundef zeroext i1 %i.fm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNKSt14default_deleteIN3gmx27AndersenTemperatureCouplingEEclEPS1_.exit.i68 unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #25
  unreachable

bb.x:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit
  %.sroa.0105.0.a = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ null, %_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit ]
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.y:                                             ; preds = %bb.l, %bb.m
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body44

_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit57: ; preds = %.invoke, %_ZNKSt6vectorIN3gmx6compat8not_nullIPNS0_17ISimulatorElementEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i72
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 120) #26
  br label %.body44

_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %.noexc51, %bb.r, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  invoke void @_ZSt11make_uniqueIN3gmx25CompositeSimulatorElementEJSt6vectorINS0_6compat8not_nullIPNS0_17ISimulatorElementEEESaIS7_EES2_ISt10unique_ptrIS5_St14default_deleteIS5_EESaISD_EERKiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.304") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit
  %i.ft = invoke noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_25CompositeSimulatorElementEEEPT_St10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %11)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.fu = load ptr, ptr %11, align 8, !tbaa !99   ; 7 uses
  %.not.i58 = icmp eq ptr %i.fu, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIN3gmx25CompositeSimulatorElementESt14default_deleteIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !92 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !93 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.fw, %i.fy
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ab, %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.gd, %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.fw, %bb.ab ] ; 2 uses
  %i.fz = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !31
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.fz) #27, !inline_history !182
  br label %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gd, %i.fy
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.fv, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.ab
  %i.ge = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.fw, %bb.ab ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !94
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gj) #26
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.ac, %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !84 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN3gmx25CompositeSimulatorElementEEclEPS1_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !85
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #26
  br label %_ZNKSt14default_deleteIN3gmx25CompositeSimulatorElementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx25CompositeSimulatorElementEEclEPS1_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef 64) #26
  br label %_ZNSt10unique_ptrIN3gmx25CompositeSimulatorElementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx25CompositeSimulatorElementESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.aa, %_ZNKSt14default_deleteIN3gmx25CompositeSimulatorElementEEclEPS1_.exit.i
  %i.gr = load ptr, ptr %10, align 8, !tbaa !92   ; 3 uses
  %i.gs = load ptr, ptr %i.ax, align 8, !tbaa !93 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gr, %i.gs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx25CompositeSimulatorElementESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gx, %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.gr, %_ZNSt10unique_ptrIN3gmx25CompositeSimulatorElementESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.gt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i59, label %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !31
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.gt) #27, !inline_history !2
  br label %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.gx, %i.gs
  br i1 %.not.i.i.i60, label %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN3gmx25CompositeSimulatorElementESt14default_deleteIS1_EED2Ev.exit
  %i.gy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gr, %_ZNSt10unique_ptrIN3gmx25CompositeSimulatorElementESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.gz = load ptr, ptr %i.ay, align 8, !tbaa !94
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hc) #26
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.hd = load ptr, ptr %9, align 8, !tbaa !84    ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i61, label %_ZNSt10unique_ptrIN3gmx27AndersenTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.he = load ptr, ptr %i.av, align 8, !tbaa !85
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #26
  br label %_ZNSt10unique_ptrIN3gmx27AndersenTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx27AndersenTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.af, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.ft

bb.ag:                                            ; preds = %bb.z
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx25CompositeSimulatorElementESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #27
  br label %.body44

.body44:                                          ; preds = %_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit57, %bb.n, %bb.y, %bb.ag, %bb.x
  %.sroa.0105.1.a = phi ptr [ %.sroa.0105.0.a, %bb.x ], [ null, %bb.ag ], [ null, %_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit57 ], [ null, %bb.y ], [ null, %bb.n ] ; 2 uses
  %.pn32 = phi { ptr, i32 } [ %i.fq, %bb.x ], [ %i.hi, %bb.ag ], [ %i.fs, %_ZNSt10unique_ptrIN3gmx18ConstraintsElementILNS0_18ConstraintVariableE1EEESt14default_deleteIS3_EED2Ev.exit57 ], [ %i.fr, %bb.y ], [ %i.bt, %bb.n ] ; 2 uses
  call void @_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.hj = load ptr, ptr %9, align 8, !tbaa !84    ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i64, label %_ZNSt14_Function_baseD2Ev.exit54, label %bb.ah

bb.ah:                                            ; preds = %.body44
  %i.hk = load ptr, ptr %i.av, align 8, !tbaa !85
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hj to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.hn) #26
  br label %_ZNSt14_Function_baseD2Ev.exit54

_ZNSt14_Function_baseD2Ev.exit54.thread124:       ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNKSt14default_deleteIN3gmx27AndersenTemperatureCouplingEEclEPS1_.exit.i68

_ZNSt14_Function_baseD2Ev.exit54:                 ; preds = %.body44, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not.i67 = icmp eq ptr %.sroa.0105.1.a, null
  br i1 %.not.i67, label %common.resume, label %_ZNKSt14default_deleteIN3gmx27AndersenTemperatureCouplingEEclEPS1_.exit.i68

_ZNKSt14default_deleteIN3gmx27AndersenTemperatureCouplingEEclEPS1_.exit.i68: ; preds = %bb.v, %bb.u, %_ZNSt14_Function_baseD2Ev.exit54.thread124, %_ZNSt14_Function_baseD2Ev.exit54
  %.pn32.pn.pn121 = phi { ptr, i32 } [ %i.an, %_ZNSt14_Function_baseD2Ev.exit54.thread124 ], [ %.pn32, %_ZNSt14_Function_baseD2Ev.exit54 ], [ %i.fl, %bb.u ], [ %i.fl, %bb.v ]
  %.sroa.0105.3120 = phi ptr [ %i.v, %_ZNSt14_Function_baseD2Ev.exit54.thread124 ], [ %.sroa.0105.1.a, %_ZNSt14_Function_baseD2Ev.exit54 ], [ %i.v, %bb.u ], [ %i.v, %bb.v ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.3120, i64 noundef 88) #26
  br label %common.resume
}

declare void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper34registerReferenceTemperatureUpdateESt8functionIFvNS_8ArrayRefIKfEENS_35ReferenceTemperatureChangeAlgorithmEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_25CompositeSimulatorElementEEEPT_St10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.304", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !99     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !99
  store ptr null, ptr %1, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !99
  store ptr %i.g, ptr %i.d, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !93
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_25CompositeSimulatorElementES3_IS9_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92   ; 9 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #24
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28
          to label %.noexc5 unwind label %bb.f    ; 9 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !99
  store ptr %i.g, ptr %i.v, align 8, !tbaa !89
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check17 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %next.gep18 = getelementptr i8, ptr %i.j, i64 %i.ae ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.af = getelementptr i8, ptr %next.gep18, i64 32
  %i.ag = getelementptr i8, ptr %next.gep18, i64 64
  %i.ah = getelementptr i8, ptr %next.gep18, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep18, align 8, !tbaa !87, !alias.scope !358
  %wide.load19 = load <4 x i64>, ptr %i.af, align 8, !tbaa !87, !alias.scope !358
  %wide.load20 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !87, !alias.scope !358
  %wide.load21 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !87, !alias.scope !358
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !87, !alias.scope !357
  store <4 x i64> %wide.load19, ptr %i.ai, align 8, !tbaa !87, !alias.scope !357
  store <4 x i64> %wide.load20, ptr %i.aj, align 8, !tbaa !87, !alias.scope !357
  store <4 x i64> %wide.load21, ptr %i.ak, align 8, !tbaa !87, !alias.scope !357
  %i.al = getelementptr i8, ptr %next.gep18, i64 32
  %i.am = getelementptr i8, ptr %next.gep18, i64 64
  %i.an = getelementptr i8, ptr %next.gep18, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep18, align 8, !tbaa !87, !alias.scope !358
  store <4 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !87, !alias.scope !358
  store <4 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !87, !alias.scope !358
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !87, !alias.scope !358
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !351

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.ap = shl i64 %n.vec22, 3                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.u, i64 %i.ap   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.j, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index23, 3                     ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.u, i64 %i.as
  %next.gep25 = getelementptr i8, ptr %i.j, i64 %i.as ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %wide.load26 = load <4 x i64>, ptr %next.gep25, align 8, !tbaa !87, !alias.scope !358
  store <4 x i64> %wide.load26, ptr %next.gep24, align 8, !tbaa !87, !alias.scope !357
  store <4 x ptr> splat (ptr null), ptr %next.gep25, align 8, !tbaa !87, !alias.scope !358
  %index.next27 = add nuw i64 %index23, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next27, %n.vec22
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !352

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.z, %n.vec22
  br i1 %cmp.n28, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.au = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !87, !alias.scope !358
  store i64 %i.au, ptr %.012.i.i.i.i, align 8, !tbaa !87, !alias.scope !357
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !87, !alias.scope !358
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !353

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc5 ], [ %i.aq, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ba) #26
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !92
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !93
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.bb, ptr %i.e, align 8, !tbaa !94
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_25CompositeSimulatorElementES3_IS9_EEEEERS5_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_25CompositeSimulatorElementES3_IS9_EEEEERS5_DpOT_.exit.i: ; preds = %.noexc, %bb.b
  %i.bc = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !87 ; 2 uses
  invoke void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_25CompositeSimulatorElementEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef %i.bd)
          to label %_ZNSt10unique_ptrIN3gmx25CompositeSimulatorElementESt14default_deleteIS1_EED2Ev.exit unwind label %bb.f

_ZNSt10unique_ptrIN3gmx25CompositeSimulatorElementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_25CompositeSimulatorElementES3_IS9_EEEEERS5_DpOT_.exit.i
end_hunk_0
