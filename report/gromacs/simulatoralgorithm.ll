Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/simulatoralgorithm?download=true
inline.NumInlined: 4332
inline.NumDeleted: 2491
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx32ModularSimulatorAlgorithmBuilder5buildEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef 24) #28
  br label %.body154

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIN3gmx17CheckpointHandlerESt14default_deleteIS1_EED2Ev.exit
  %i.qq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body154

bb.bo:                                            ; preds = %.sink.split698, %_ZN3gmx32ModularSimulatorAlgorithmBuilder39registerWithInfrastructureAndSignallersINS_16CheckpointHelperEEEvPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qg, i64 256
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !1198, !nonnull !242, !align !1199
  %i.qt = invoke noundef i32 @_ZN3gmx16computeFepPeriodERK10t_inputrecRK25ReplicaExchangeParameters(ptr noundef nonnull align 8 dereferenceable(888) %i.qi, ptr noundef nonnull align 4 dereferenceable(12) %i.qs)
          to label %bb.bp unwind label %bb.ec

bb.bp:                                            ; preds = %bb.bo
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i32 %i.qt, ptr %i.g, align 4, !tbaa !391
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 212
  invoke void @_ZN3gmx16SignallerBuilderINS_15EnergySignallerEE5buildIJRKiiS5_RNS_25EnergySignallerVirialModeEEEESt10unique_ptrIS1_St14default_deleteIS1_EEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.954") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %i.qv, ptr noundef nonnull align 4 dereferenceable(4) %i.qu, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.qw, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.bq unwind label %bb.ec

bb.bq:                                            ; preds = %bb.bp
  %i.qx = load ptr, ptr %12, align 8, !tbaa !750  ; 3 uses
  %i.qy = icmp eq ptr %i.qx, null                 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %spec.select.i.i.i = select i1 %i.qy, ptr null, ptr %i.qz
  invoke void @_ZN3gmx16SignallerBuilderINS_16LoggingSignallerEE23registerSignallerClientEPNS_23ILoggingSignallerClientE(ptr noundef nonnull align 8 dereferenceable(32) %i.kr, ptr noundef %spec.select.i.i.i)
          to label %.noexc184 unwind label %bb.ed

.noexc184:                                        ; preds = %bb.bq
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %spec.select.i10.i.i = select i1 %i.qy, ptr null, ptr %i.ra
  invoke void @_ZN3gmx16SignallerBuilderINS_19TrajectorySignallerEE23registerSignallerClientEPNS_26ITrajectorySignallerClientE(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef %spec.select.i10.i.i)
          to label %.noexc185 unwind label %bb.ed

.noexc185:                                        ; preds = %.noexc184
  invoke void @_ZN3gmx24TrajectoryElementBuilder20registerWriterClientEPNS_23ITrajectoryWriterClientE(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef null)
          to label %.noexc186 unwind label %bb.ed

.noexc186:                                        ; preds = %.noexc185
  invoke void @_ZN3gmx14TopologyHolder7Builder14registerClientEPNS_21ITopologyHolderClientE(ptr noundef nonnull align 8 dereferenceable(28) %i.cc, ptr noundef null)
          to label %.noexc187 unwind label %bb.ed

.noexc187:                                        ; preds = %.noexc186
  invoke void @_ZN3gmx23CheckpointHelperBuilder14registerClientEPNS_23ICheckpointHelperClientE(ptr noundef nonnull align 8 dereferenceable(84) %i.cd, ptr noundef null)
          to label %.noexc188 unwind label %bb.ed

.noexc188:                                        ; preds = %.noexc187
  invoke void @_ZN3gmx19DomDecHelperBuilder14registerClientEPNS_19IDomDecHelperClientE(ptr noundef nonnull align 8 dereferenceable(28) %i.ce, ptr noundef null)
          to label %.noexc189 unwind label %bb.ed

.noexc189:                                        ; preds = %.noexc188
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !239 ; 15 uses
  %i.rd = ptrtoint ptr %i.rc to i64               ; 5 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !229 ; 11 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !232
  %.not.i.i.i181 = icmp eq ptr %i.rf, %i.rh
  br i1 %.not.i.i.i181, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %.noexc189
  %i.ri = icmp eq ptr %i.rc, %i.rf
  %i.rj = load ptr, ptr %12, align 8, !tbaa !750  ; 2 uses
  store ptr null, ptr %12, align 8, !tbaa !750
  br i1 %i.ri, label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_15EnergySignallerESt14default_deleteIS4_EEEEDaT_.exit.thread", label %bb.bs

"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_15EnergySignallerESt14default_deleteIS4_EEEEDaT_.exit.thread": ; preds = %bb.br
  store ptr %i.rj, ptr %i.rf, align 8, !tbaa !1201
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store ptr %i.rk, ptr %i.re, align 8, !tbaa !229
  br label %_ZNSt10unique_ptrIN3gmx15EnergySignallerESt14default_deleteIS1_EED2Ev.exit

bb.bs:                                            ; preds = %bb.br
  %i.rl = getelementptr inbounds i8, ptr %i.rf, i64 -8 ; 4 uses
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !231
  store i64 %i.rm, ptr %i.rf, align 8, !tbaa !231
  store ptr null, ptr %i.rl, align 8, !tbaa !231
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store ptr %i.rn, ptr %i.re, align 8, !tbaa !229
  %i.ro = ptrtoint ptr %i.rl to i64
  %i.rp = sub i64 %i.ro, %i.rd
  %i.rq = ashr exact i64 %i.rp, 3                 ; 2 uses
  %i.rr = icmp sgt i64 %i.rq, 0
  br i1 %i.rr, label %.lr.ph.i.i.i.i.i.i.i.i.i183, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i183:                      ; preds = %bb.bs, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rz, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i ], [ %i.rq, %bb.bs ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rt, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i ], [ %i.rf, %bb.bs ]
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rs, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i ], [ %i.rl, %bb.bs ]
  %i.rs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.rt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ru = load ptr, ptr %i.rs, align 8, !tbaa !231
  store ptr null, ptr %i.rs, align 8, !tbaa !231
  %i.rv = load ptr, ptr %i.rt, align 8, !tbaa !231 ; 3 uses
  store ptr %i.ru, ptr %i.rt, align 8, !tbaa !231
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i183
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !180
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(8) %i.rv) #30, !inline_history !1065
  br label %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i183
  %i.rz = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -1
  %i.sa = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.sa, label %.lr.ph.i.i.i.i.i.i.i.i.i183, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i, !llvm.loop !1066

_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i, %bb.bs
  %i.sb = load ptr, ptr %i.rc, align 8, !tbaa !231 ; 3 uses
  store ptr %i.rj, ptr %i.rc, align 8, !tbaa !231
  %.not.i.i.i.i.i.i.i.i182 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i.i.i.i.i.i182, label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_15EnergySignallerESt14default_deleteIS4_EEEEDaT_.exit", label %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !180
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(8) %i.sb) #30, !inline_history !1067
  br label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_15EnergySignallerESt14default_deleteIS4_EEEEDaT_.exit"

bb.bt:                                            ; preds = %.noexc189
  %i.sf = ptrtoint ptr %i.rf to i64               ; 3 uses
  %i.sg = sub i64 %i.sf, %i.rd                    ; 2 uses
  %i.sh = icmp eq i64 %i.sg, 9223372036854775800
  br i1 %i.sh, label %bb.bu, label %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
          to label %.noexc345 unwind label %bb.ed

.noexc345:                                        ; preds = %bb.bu
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bt
  %i.si = ashr exact i64 %i.sg, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.si, i64 1)
  %i.sj = add nsw i64 %.sroa.speculated.i.i, %i.si ; 2 uses
  %i.sk = icmp ult i64 %i.sj, %i.si
  %i.sl = call i64 @llvm.umin.i64(i64 %i.sj, i64 1152921504606846975)
  %i.sm = select i1 %i.sk, i64 1152921504606846975, i64 %i.sl ; 3 uses
  %.not.i.i343 = icmp ne i64 %i.sm, 0
  call void @llvm.assume(i1 %.not.i.i343)
  %i.sn = shl nuw nsw i64 %i.sm, 3
  %i.so = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sn) #29
          to label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i unwind label %bb.ed ; 5 uses

_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.sp = load ptr, ptr %12, align 8, !tbaa !750
  store ptr null, ptr %12, align 8, !tbaa !750
  store ptr %i.sp, ptr %i.so, align 8, !tbaa !1201
  %i.sq = getelementptr i8, ptr %i.so, i64 8      ; 8 uses
  %.not10.i.i.i16.i = icmp eq ptr %i.rc, %i.rf
  br i1 %.not10.i.i.i16.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.sr = add i64 %i.sf, -8
  %i.ss = sub i64 %i.sr, %i.rd                    ; 3 uses
  %i.st = lshr i64 %i.ss, 3
  %i.su = add nuw nsw i64 %i.st, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ss, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i17.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.sv = add i64 %i.sf, -8
  %i.sw = sub i64 %i.sv, %i.rd
  %i.sx = and i64 %i.sw, -8                       ; 2 uses
  %i.sy = getelementptr i8, ptr %i.so, i64 %i.sx
  %i.sz = getelementptr i8, ptr %i.sy, i64 16
  %i.ta = getelementptr i8, ptr %i.rc, i64 %i.sx
  %i.tb = getelementptr i8, ptr %i.ta, i64 8
  %bound0 = icmp ult ptr %i.sq, %i.tb
  %bound1 = icmp ult ptr %i.rc, %i.sz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check705 = icmp ult i64 %i.ss, 120
  br i1 %min.iters.check705, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.tc = and i64 %i.su, 12
  %n.vec = and i64 %i.su, 4611686018427387888     ; 4 uses
  %i.td = shl i64 %n.vec, 3                       ; 2 uses
  %i.te = getelementptr i8, ptr %i.sq, i64 %i.td  ; 2 uses
  %i.tf = getelementptr i8, ptr %i.rc, i64 %i.td
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.sq, i64 %i.tg ; 4 uses
  %next.gep706 = getelementptr i8, ptr %i.rc, i64 %i.tg ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.th = getelementptr i8, ptr %next.gep706, i64 32
  %i.ti = getelementptr i8, ptr %next.gep706, i64 64
  %i.tj = getelementptr i8, ptr %next.gep706, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep706, align 8, !tbaa !231, !alias.scope !1204
  %wide.load707 = load <4 x i64>, ptr %i.th, align 8, !tbaa !231, !alias.scope !1204
  %wide.load708 = load <4 x i64>, ptr %i.ti, align 8, !tbaa !231, !alias.scope !1204
  %wide.load709 = load <4 x i64>, ptr %i.tj, align 8, !tbaa !231, !alias.scope !1204
  %i.tk = getelementptr i8, ptr %next.gep, i64 32
  %i.tl = getelementptr i8, ptr %next.gep, i64 64
  %i.tm = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !1205, !noalias !1206
  store <4 x i64> %wide.load707, ptr %i.tk, align 8, !tbaa !231, !alias.scope !1205, !noalias !1206
  store <4 x i64> %wide.load708, ptr %i.tl, align 8, !tbaa !231, !alias.scope !1205, !noalias !1206
  store <4 x i64> %wide.load709, ptr %i.tm, align 8, !tbaa !231, !alias.scope !1205, !noalias !1206
  %17 = getelementptr i8, ptr %next.gep706, i64 32
  %18 = getelementptr i8, ptr %next.gep706, i64 64
  %19 = getelementptr i8, ptr %next.gep706, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep706, align 8, !tbaa !231, !alias.scope !1204
  store <4 x ptr> splat (ptr null), ptr %17, align 8, !tbaa !231, !alias.scope !1204
  store <4 x ptr> splat (ptr null), ptr %18, align 8, !tbaa !231, !alias.scope !1204
  store <4 x ptr> splat (ptr null), ptr %19, align 8, !tbaa !231, !alias.scope !1204
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.tn = icmp eq i64 %index.next, %n.vec
  br i1 %i.tn, label %middle.block, label %vector.body, !llvm.loop !1074

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.su, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i17.i.preheader, label %vec.epilog.ph, !prof !753

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec710 = and i64 %i.su, 4611686018427387900  ; 3 uses
  %i.to = shl i64 %n.vec710, 3                    ; 2 uses
  %i.tp = getelementptr i8, ptr %i.sq, i64 %i.to  ; 2 uses
  %i.tq = getelementptr i8, ptr %i.rc, i64 %i.to
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index711 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next715, %vec.epilog.vector.body ] ; 2 uses
  %i.tr = shl i64 %index711, 3                    ; 2 uses
  %next.gep712 = getelementptr i8, ptr %i.sq, i64 %i.tr
  %next.gep713 = getelementptr i8, ptr %i.rc, i64 %i.tr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %wide.load714 = load <4 x i64>, ptr %next.gep713, align 8, !tbaa !231, !alias.scope !1204
  store <4 x i64> %wide.load714, ptr %next.gep712, align 8, !tbaa !231, !alias.scope !1205, !noalias !1206
  store <4 x ptr> splat (ptr null), ptr %next.gep713, align 8, !tbaa !231, !alias.scope !1204
  %index.next715 = add nuw i64 %index711, 4       ; 2 uses
  %i.ts = icmp eq i64 %index.next715, %n.vec710
  br i1 %i.ts, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1075

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n716 = icmp eq i64 %i.su, %n.vec710
  br i1 %cmp.n716, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i17.i.preheader

.lr.ph.i.i.i17.i.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i18.i.ph = phi ptr [ %i.sq, %iter.check ], [ %i.sq, %vector.memcheck ], [ %i.te, %vec.epilog.iter.check ], [ %i.tp, %vec.epilog.middle.block ]
  %.0911.i.i.i19.i.ph = phi ptr [ %i.rc, %iter.check ], [ %i.rc, %vector.memcheck ], [ %i.tf, %vec.epilog.iter.check ], [ %i.tq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i17.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i.i.i17.i.preheader, %.lr.ph.i.i.i17.i
  %.012.i.i.i18.i = phi ptr [ %i.tv, %.lr.ph.i.i.i17.i ], [ %.012.i.i.i18.i.ph, %.lr.ph.i.i.i17.i.preheader ] ; 2 uses
  %.0911.i.i.i19.i = phi ptr [ %i.tu, %.lr.ph.i.i.i17.i ], [ %.0911.i.i.i19.i.ph, %.lr.ph.i.i.i17.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.tt = load i64, ptr %.0911.i.i.i19.i, align 8, !tbaa !231, !alias.scope !1203
  store i64 %i.tt, ptr %.012.i.i.i18.i, align 8, !tbaa !231, !alias.scope !1202
  store ptr null, ptr %.0911.i.i.i19.i, align 8, !tbaa !231, !alias.scope !1203
  %i.tu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 8 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i20.i = icmp eq ptr %i.tu, %i.rf
  br i1 %.not.i.i.i20.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i17.i, !llvm.loop !1076

_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i17.i, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %.0.lcssa.i.i.i21.i = phi ptr [ %i.sq, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i ], [ %i.tp, %vec.epilog.middle.block ], [ %i.te, %middle.block ], [ %i.tv, %.lr.ph.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.rc, null
  br i1 %.not.i23.i, label %.noexc190, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.tw = load ptr, ptr %i.rg, align 8, !tbaa !232
  %i.tx = ptrtoint ptr %i.tw to i64
  %i.ty = sub i64 %i.tx, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.ty) #28
  br label %.noexc190

.noexc190:                                        ; preds = %bb.bv, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.so, ptr %i.rb, align 8, !tbaa !228
  store ptr %.0.lcssa.i.i.i21.i, ptr %i.re, align 8, !tbaa !229
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sm
  store ptr %i.tz, ptr %i.rg, align 8, !tbaa !232
  br label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_15EnergySignallerESt14default_deleteIS4_EEEEDaT_.exit"

"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_15EnergySignallerESt14default_deleteIS4_EEEEDaT_.exit": ; preds = %.noexc190, %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i
  %.pr498 = load ptr, ptr %12, align 8, !tbaa !750 ; 3 uses
  %.not.i191 = icmp eq ptr %.pr498, null
  br i1 %.not.i191, label %_ZNSt10unique_ptrIN3gmx15EnergySignallerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx15EnergySignallerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx15EnergySignallerEEclEPS1_.exit.i: ; preds = %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_15EnergySignallerESt14default_deleteIS4_EEEEDaT_.exit"
  call void @_ZN3gmx15EnergySignallerD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(144) %.pr498) #30
  call void @_ZdlPvm(ptr noundef nonnull %.pr498, i64 noundef 144) #28
  br label %_ZNSt10unique_ptrIN3gmx15EnergySignallerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx15EnergySignallerESt14default_deleteIS1_EED2Ev.exit: ; preds = %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_15EnergySignallerESt14default_deleteIS4_EEEEDaT_.exit.thread", %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_15EnergySignallerESt14default_deleteIS4_EEEEDaT_.exit", %_ZNKSt14default_deleteIN3gmx15EnergySignallerEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.ua = getelementptr inbounds nuw i8, ptr %i.qi, i64 56
  %i.ub = getelementptr inbounds nuw i8, ptr %i.qi, i64 60
  %i.uc = getelementptr inbounds nuw i8, ptr %i.qi, i64 64
  %i.ud = getelementptr inbounds nuw i8, ptr %i.qi, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.ue = load ptr, ptr %8, align 8, !tbaa !746
  %i.uf = invoke noundef i32 @_ZNK3gmx17TrajectoryElement9tngBoxOutEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ue)
          to label %bb.bw unwind label %bb.ef

bb.bw:                                            ; preds = %_ZNSt10unique_ptrIN3gmx15EnergySignallerESt14default_deleteIS1_EED2Ev.exit
  store i32 %i.uf, ptr %i.h, align 4, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.ug = load ptr, ptr %8, align 8, !tbaa !746
  %i.uh = invoke noundef i32 @_ZNK3gmx17TrajectoryElement12tngLambdaOutEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ug)
          to label %bb.bx unwind label %bb.eg

bb.bx:                                            ; preds = %bb.bw
  store i32 %i.uh, ptr %i.i, align 4, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  %i.ui = load ptr, ptr %8, align 8, !tbaa !746
  %i.uj = invoke noundef i32 @_ZNK3gmx17TrajectoryElement19tngBoxOutCompressedEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ui)
          to label %bb.by unwind label %bb.eh

bb.by:                                            ; preds = %bb.bx
  store i32 %i.uj, ptr %i.j, align 4, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  %i.uk = load ptr, ptr %8, align 8, !tbaa !746
  %i.ul = invoke noundef i32 @_ZNK3gmx17TrajectoryElement22tngLambdaOutCompressedEv(ptr noundef nonnull align 8 dereferenceable(128) %i.uk)
          to label %bb.bz unwind label %bb.ei

bb.bz:                                            ; preds = %bb.by
  store i32 %i.ul, ptr %i.k, align 4, !tbaa !391
  %i.um = getelementptr inbounds nuw i8, ptr %i.qi, i64 68
  invoke void @_ZN3gmx16SignallerBuilderINS_19TrajectorySignallerEE5buildIJRKiS5_S5_S5_iiiiS5_EEESt10unique_ptrIS1_St14default_deleteIS1_EEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.962") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef nonnull align 4 dereferenceable(4) %i.ua, ptr noundef nonnull align 4 dereferenceable(4) %i.ub, ptr noundef nonnull align 4 dereferenceable(4) %i.uc, ptr noundef nonnull align 4 dereferenceable(4) %i.ud, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.um)
          to label %bb.ca unwind label %bb.ei

bb.ca:                                            ; preds = %bb.bz
  %i.un = load ptr, ptr %13, align 8, !tbaa !755  ; 2 uses
  %i.uo = icmp eq ptr %i.un, null
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %spec.select.i.i.i192 = select i1 %i.uo, ptr null, ptr %i.up
  invoke void @_ZN3gmx16SignallerBuilderINS_17LastStepSignallerEE23registerSignallerClientEPNS_24ILastStepSignallerClientE(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef %spec.select.i.i.i192)
          to label %.noexc204 unwind label %bb.ej

.noexc204:                                        ; preds = %bb.ca
  invoke void @_ZN3gmx24TrajectoryElementBuilder20registerWriterClientEPNS_23ITrajectoryWriterClientE(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef null)
          to label %.noexc205 unwind label %bb.ej

.noexc205:                                        ; preds = %.noexc204
  invoke void @_ZN3gmx14TopologyHolder7Builder14registerClientEPNS_21ITopologyHolderClientE(ptr noundef nonnull align 8 dereferenceable(28) %i.cc, ptr noundef null)
          to label %.noexc206 unwind label %bb.ej

.noexc206:                                        ; preds = %.noexc205
  invoke void @_ZN3gmx23CheckpointHelperBuilder14registerClientEPNS_23ICheckpointHelperClientE(ptr noundef nonnull align 8 dereferenceable(84) %i.cd, ptr noundef null)
          to label %.noexc207 unwind label %bb.ej

.noexc207:                                        ; preds = %.noexc206
  invoke void @_ZN3gmx19DomDecHelperBuilder14registerClientEPNS_19IDomDecHelperClientE(ptr noundef nonnull align 8 dereferenceable(28) %i.ce, ptr noundef null)
          to label %.noexc208 unwind label %bb.ej

.noexc208:                                        ; preds = %.noexc207
  %i.uq = load ptr, ptr %i.rb, align 8, !tbaa !239 ; 15 uses
  %i.ur = ptrtoint ptr %i.uq to i64               ; 5 uses
  %i.us = load ptr, ptr %i.re, align 8, !tbaa !229 ; 11 uses
  %i.ut = load ptr, ptr %i.rg, align 8, !tbaa !232
  %.not.i.i.i193 = icmp eq ptr %i.us, %i.ut
  br i1 %.not.i.i.i193, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %.noexc208
  %i.uu = icmp eq ptr %i.uq, %i.us
  %i.uv = load ptr, ptr %13, align 8, !tbaa !755  ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !755
  br i1 %i.uu, label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_19TrajectorySignallerESt14default_deleteIS4_EEEEDaT_.exit.thread", label %bb.cc

"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_19TrajectorySignallerESt14default_deleteIS4_EEEEDaT_.exit.thread": ; preds = %bb.cb
  store ptr %i.uv, ptr %i.us, align 8, !tbaa !1201
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store ptr %i.uw, ptr %i.re, align 8, !tbaa !229
  br label %_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit

bb.cc:                                            ; preds = %bb.cb
  %i.ux = getelementptr inbounds i8, ptr %i.us, i64 -8 ; 4 uses
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !231
  store i64 %i.uy, ptr %i.us, align 8, !tbaa !231
  store ptr null, ptr %i.ux, align 8, !tbaa !231
  %i.uz = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store ptr %i.uz, ptr %i.re, align 8, !tbaa !229
  %i.va = ptrtoint ptr %i.ux to i64
  %i.vb = sub i64 %i.va, %i.ur
  %i.vc = ashr exact i64 %i.vb, 3                 ; 2 uses
  %i.vd = icmp sgt i64 %i.vc, 0
  br i1 %i.vd, label %.lr.ph.i.i.i.i.i.i.i.i.i197, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i194

.lr.ph.i.i.i.i.i.i.i.i.i197:                      ; preds = %bb.cc, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i203
  %.010.i.i.i.i.i.i.i.i.i198 = phi i64 [ %i.vl, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i203 ], [ %i.vc, %bb.cc ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i199 = phi ptr [ %i.vf, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i203 ], [ %i.us, %bb.cc ]
  %.078.i.i.i.i.i.i.i.i.i200 = phi ptr [ %i.ve, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i203 ], [ %i.ux, %bb.cc ]
  %i.ve = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i200, i64 -8 ; 3 uses
  %i.vf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i199, i64 -8 ; 3 uses
  %i.vg = load ptr, ptr %i.ve, align 8, !tbaa !231
  store ptr null, ptr %i.ve, align 8, !tbaa !231
  %i.vh = load ptr, ptr %i.vf, align 8, !tbaa !231 ; 3 uses
  store ptr %i.vg, ptr %i.vf, align 8, !tbaa !231
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i201 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i201, label %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i203, label %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i202

_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i202: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i197
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !180
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  %i.vk = load ptr, ptr %i.vj, align 8
  call void %i.vk(ptr noundef nonnull align 8 dereferenceable(8) %i.vh) #30, !inline_history !1077
  br label %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i203

_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i203: ; preds = %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i202, %.lr.ph.i.i.i.i.i.i.i.i.i197
  %i.vl = add nsw i64 %.010.i.i.i.i.i.i.i.i.i198, -1
  %i.vm = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i198, 1
  br i1 %i.vm, label %.lr.ph.i.i.i.i.i.i.i.i.i197, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i194, !llvm.loop !1066

_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i194: ; preds = %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i203, %bb.cc
  %i.vn = load ptr, ptr %i.uq, align 8, !tbaa !231 ; 3 uses
  store ptr %i.uv, ptr %i.uq, align 8, !tbaa !231
  %.not.i.i.i.i.i.i.i.i195 = icmp eq ptr %i.vn, null
  br i1 %.not.i.i.i.i.i.i.i.i195, label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_19TrajectorySignallerESt14default_deleteIS4_EEEEDaT_.exit", label %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i196

_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i196: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i194
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !180
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 24
  %i.vq = load ptr, ptr %i.vp, align 8
  call void %i.vq(ptr noundef nonnull align 8 dereferenceable(8) %i.vn) #30, !inline_history !1078
  br label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_19TrajectorySignallerESt14default_deleteIS4_EEEEDaT_.exit"

bb.cd:                                            ; preds = %.noexc208
  %i.vr = ptrtoint ptr %i.us to i64               ; 3 uses
  %i.vs = sub i64 %i.vr, %i.ur                    ; 2 uses
  %i.vt = icmp eq i64 %i.vs, 9223372036854775800
  br i1 %i.vt, label %bb.ce, label %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i347

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
          to label %.noexc365 unwind label %bb.ej

.noexc365:                                        ; preds = %bb.ce
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i347: ; preds = %bb.cd
  %i.vu = ashr exact i64 %i.vs, 3                 ; 3 uses
  %.sroa.speculated.i.i348 = call i64 @llvm.umax.i64(i64 %i.vu, i64 1)
  %i.vv = add nsw i64 %.sroa.speculated.i.i348, %i.vu ; 2 uses
  %i.vw = icmp ult i64 %i.vv, %i.vu
  %i.vx = call i64 @llvm.umin.i64(i64 %i.vv, i64 1152921504606846975)
  %i.vy = select i1 %i.vw, i64 1152921504606846975, i64 %i.vx ; 3 uses
  %.not.i.i349 = icmp ne i64 %i.vy, 0
  call void @llvm.assume(i1 %.not.i.i349)
  %i.vz = shl nuw nsw i64 %i.vy, 3
  %i.wa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vz) #29
          to label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i355 unwind label %bb.ej ; 5 uses

_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i355: ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i347
  %i.wb = load ptr, ptr %13, align 8, !tbaa !755
  store ptr null, ptr %13, align 8, !tbaa !755
  store ptr %i.wb, ptr %i.wa, align 8, !tbaa !1201
  %i.wc = getelementptr i8, ptr %i.wa, i64 8      ; 8 uses
  %.not10.i.i.i16.i357 = icmp eq ptr %i.uq, %i.us
  br i1 %.not10.i.i.i16.i357, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i362, label %iter.check743

iter.check743:                                    ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i355
  %i.wd = add i64 %i.vr, -8
  %i.we = sub i64 %i.wd, %i.ur                    ; 3 uses
  %i.wf = lshr i64 %i.we, 3
  %i.wg = add nuw nsw i64 %i.wf, 1                ; 5 uses
  %min.iters.check723 = icmp ult i64 %i.we, 24
  br i1 %min.iters.check723, label %.lr.ph.i.i.i17.i358.preheader, label %vector.memcheck724

vector.memcheck724:                               ; preds = %iter.check743
  %i.wh = add i64 %i.vr, -8
  %i.wi = sub i64 %i.wh, %i.ur
  %i.wj = and i64 %i.wi, -8                       ; 2 uses
  %i.wk = getelementptr i8, ptr %i.wa, i64 %i.wj
  %i.wl = getelementptr i8, ptr %i.wk, i64 16
  %i.wm = getelementptr i8, ptr %i.uq, i64 %i.wj
  %i.wn = getelementptr i8, ptr %i.wm, i64 8
  %bound0725 = icmp ult ptr %i.wc, %i.wn
  %bound1726 = icmp ult ptr %i.uq, %i.wl
  %found.conflict727 = and i1 %bound0725, %bound1726
  br i1 %found.conflict727, label %.lr.ph.i.i.i17.i358.preheader, label %vector.main.loop.iter.check728

vector.main.loop.iter.check728:                   ; preds = %vector.memcheck724
  %min.iters.check729 = icmp ult i64 %i.we, 120
  br i1 %min.iters.check729, label %vec.epilog.ph747, label %vector.ph730

vector.ph730:                                     ; preds = %vector.main.loop.iter.check728
  %i.wo = and i64 %i.wg, 12
  %n.vec731 = and i64 %i.wg, 4611686018427387888  ; 4 uses
  %i.wp = shl i64 %n.vec731, 3                    ; 2 uses
  %i.wq = getelementptr i8, ptr %i.wc, i64 %i.wp  ; 2 uses
  %i.wr = getelementptr i8, ptr %i.uq, i64 %i.wp
  br label %vector.body732

vector.body732:                                   ; preds = %vector.ph730, %vector.body732
  %index733 = phi i64 [ 0, %vector.ph730 ], [ %index.next740, %vector.body732 ] ; 2 uses
  %i.ws = shl i64 %index733, 3                    ; 2 uses
  %next.gep734 = getelementptr i8, ptr %i.wc, i64 %i.ws ; 4 uses
  %next.gep735 = getelementptr i8, ptr %i.uq, i64 %i.ws ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.wt = getelementptr i8, ptr %next.gep735, i64 32
  %i.wu = getelementptr i8, ptr %next.gep735, i64 64
  %i.wv = getelementptr i8, ptr %next.gep735, i64 96
  %wide.load736 = load <4 x i64>, ptr %next.gep735, align 8, !tbaa !231, !alias.scope !1209
  %wide.load737 = load <4 x i64>, ptr %i.wt, align 8, !tbaa !231, !alias.scope !1209
  %wide.load738 = load <4 x i64>, ptr %i.wu, align 8, !tbaa !231, !alias.scope !1209
  %wide.load739 = load <4 x i64>, ptr %i.wv, align 8, !tbaa !231, !alias.scope !1209
  %i.ww = getelementptr i8, ptr %next.gep734, i64 32
  %i.wx = getelementptr i8, ptr %next.gep734, i64 64
  %i.wy = getelementptr i8, ptr %next.gep734, i64 96
  store <4 x i64> %wide.load736, ptr %next.gep734, align 8, !tbaa !231, !alias.scope !1210, !noalias !1211
  store <4 x i64> %wide.load737, ptr %i.ww, align 8, !tbaa !231, !alias.scope !1210, !noalias !1211
  store <4 x i64> %wide.load738, ptr %i.wx, align 8, !tbaa !231, !alias.scope !1210, !noalias !1211
  store <4 x i64> %wide.load739, ptr %i.wy, align 8, !tbaa !231, !alias.scope !1210, !noalias !1211
  %20 = getelementptr i8, ptr %next.gep735, i64 32
  %21 = getelementptr i8, ptr %next.gep735, i64 64
  %22 = getelementptr i8, ptr %next.gep735, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep735, align 8, !tbaa !231, !alias.scope !1209
  store <4 x ptr> splat (ptr null), ptr %20, align 8, !tbaa !231, !alias.scope !1209
  store <4 x ptr> splat (ptr null), ptr %21, align 8, !tbaa !231, !alias.scope !1209
  store <4 x ptr> splat (ptr null), ptr %22, align 8, !tbaa !231, !alias.scope !1209
  %index.next740 = add nuw i64 %index733, 16      ; 2 uses
  %i.wz = icmp eq i64 %index.next740, %n.vec731
  br i1 %i.wz, label %middle.block741, label %vector.body732, !llvm.loop !1085

middle.block741:                                  ; preds = %vector.body732
  %cmp.n742 = icmp eq i64 %i.wg, %n.vec731
  br i1 %cmp.n742, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i362, label %vec.epilog.iter.check744

vec.epilog.iter.check744:                         ; preds = %middle.block741
  %min.epilog.iters.check746 = icmp eq i64 %i.wo, 0
  br i1 %min.epilog.iters.check746, label %.lr.ph.i.i.i17.i358.preheader, label %vec.epilog.ph747, !prof !753

vec.epilog.ph747:                                 ; preds = %vector.main.loop.iter.check728, %vec.epilog.iter.check744
  %vec.epilog.resume.val748 = phi i64 [ %n.vec731, %vec.epilog.iter.check744 ], [ 0, %vector.main.loop.iter.check728 ]
  %n.vec749 = and i64 %i.wg, 4611686018427387900  ; 3 uses
  %i.xa = shl i64 %n.vec749, 3                    ; 2 uses
  %i.xb = getelementptr i8, ptr %i.wc, i64 %i.xa  ; 2 uses
  %i.xc = getelementptr i8, ptr %i.uq, i64 %i.xa
  br label %vec.epilog.vector.body750

vec.epilog.vector.body750:                        ; preds = %vec.epilog.vector.body750, %vec.epilog.ph747
  %index751 = phi i64 [ %vec.epilog.resume.val748, %vec.epilog.ph747 ], [ %index.next755, %vec.epilog.vector.body750 ] ; 2 uses
  %i.xd = shl i64 %index751, 3                    ; 2 uses
  %next.gep752 = getelementptr i8, ptr %i.wc, i64 %i.xd
  %next.gep753 = getelementptr i8, ptr %i.uq, i64 %i.xd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %wide.load754 = load <4 x i64>, ptr %next.gep753, align 8, !tbaa !231, !alias.scope !1209
  store <4 x i64> %wide.load754, ptr %next.gep752, align 8, !tbaa !231, !alias.scope !1210, !noalias !1211
  store <4 x ptr> splat (ptr null), ptr %next.gep753, align 8, !tbaa !231, !alias.scope !1209
  %index.next755 = add nuw i64 %index751, 4       ; 2 uses
  %i.xe = icmp eq i64 %index.next755, %n.vec749
  br i1 %i.xe, label %vec.epilog.middle.block756, label %vec.epilog.vector.body750, !llvm.loop !1086

vec.epilog.middle.block756:                       ; preds = %vec.epilog.vector.body750
  %cmp.n757 = icmp eq i64 %i.wg, %n.vec749
  br i1 %cmp.n757, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i362, label %.lr.ph.i.i.i17.i358.preheader

.lr.ph.i.i.i17.i358.preheader:                    ; preds = %iter.check743, %vector.memcheck724, %vec.epilog.iter.check744, %vec.epilog.middle.block756
  %.012.i.i.i18.i359.ph = phi ptr [ %i.wc, %iter.check743 ], [ %i.wc, %vector.memcheck724 ], [ %i.wq, %vec.epilog.iter.check744 ], [ %i.xb, %vec.epilog.middle.block756 ]
  %.0911.i.i.i19.i360.ph = phi ptr [ %i.uq, %iter.check743 ], [ %i.uq, %vector.memcheck724 ], [ %i.wr, %vec.epilog.iter.check744 ], [ %i.xc, %vec.epilog.middle.block756 ]
  br label %.lr.ph.i.i.i17.i358

.lr.ph.i.i.i17.i358:                              ; preds = %.lr.ph.i.i.i17.i358.preheader, %.lr.ph.i.i.i17.i358
  %.012.i.i.i18.i359 = phi ptr [ %i.xh, %.lr.ph.i.i.i17.i358 ], [ %.012.i.i.i18.i359.ph, %.lr.ph.i.i.i17.i358.preheader ] ; 2 uses
  %.0911.i.i.i19.i360 = phi ptr [ %i.xg, %.lr.ph.i.i.i17.i358 ], [ %.0911.i.i.i19.i360.ph, %.lr.ph.i.i.i17.i358.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.xf = load i64, ptr %.0911.i.i.i19.i360, align 8, !tbaa !231, !alias.scope !1208
  store i64 %i.xf, ptr %.012.i.i.i18.i359, align 8, !tbaa !231, !alias.scope !1207
  store ptr null, ptr %.0911.i.i.i19.i360, align 8, !tbaa !231, !alias.scope !1208
  %i.xg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i360, i64 8 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i359, i64 8 ; 2 uses
  %.not.i.i.i20.i361 = icmp eq ptr %i.xg, %i.us
  br i1 %.not.i.i.i20.i361, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i362, label %.lr.ph.i.i.i17.i358, !llvm.loop !1087

_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i362: ; preds = %.lr.ph.i.i.i17.i358, %middle.block741, %vec.epilog.middle.block756, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i355
  %.0.lcssa.i.i.i21.i363 = phi ptr [ %i.wc, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i355 ], [ %i.xb, %vec.epilog.middle.block756 ], [ %i.wq, %middle.block741 ], [ %i.xh, %.lr.ph.i.i.i17.i358 ]
  %.not.i23.i364 = icmp eq ptr %i.uq, null
  br i1 %.not.i23.i364, label %.noexc209, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i362
  %i.xi = load ptr, ptr %i.rg, align 8, !tbaa !232
  %i.xj = ptrtoint ptr %i.xi to i64
  %i.xk = sub i64 %i.xj, %i.ur
  call void @_ZdlPvm(ptr noundef nonnull %i.uq, i64 noundef %i.xk) #28
  br label %.noexc209

.noexc209:                                        ; preds = %bb.cf, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i362
  store ptr %i.wa, ptr %i.rb, align 8, !tbaa !228
  store ptr %.0.lcssa.i.i.i21.i363, ptr %i.re, align 8, !tbaa !229
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.vy
  store ptr %i.xl, ptr %i.rg, align 8, !tbaa !232
  br label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_19TrajectorySignallerESt14default_deleteIS4_EEEEDaT_.exit"

"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_19TrajectorySignallerESt14default_deleteIS4_EEEEDaT_.exit": ; preds = %.noexc209, %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i196, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i194
  %.pr500 = load ptr, ptr %13, align 8, !tbaa !755 ; 2 uses
  %.not.i210 = icmp eq ptr %.pr500, null
  br i1 %.not.i210, label %_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_19TrajectorySignallerESt14default_deleteIS4_EEEEDaT_.exit"
  call void @_ZNKSt14default_deleteIN3gmx19TrajectorySignallerEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %.pr500)
  br label %_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit: ; preds = %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_19TrajectorySignallerESt14default_deleteIS4_EEEEDaT_.exit.thread", %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_19TrajectorySignallerESt14default_deleteIS4_EEEEDaT_.exit", %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.xm = getelementptr inbounds nuw i8, ptr %i.qi, i64 52
  %i.xn = getelementptr inbounds nuw i8, ptr %i.qi, i64 24 ; 3 uses
  %i.xo = load ptr, ptr %i.z, align 8, !tbaa !612
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 64
  invoke void @_ZN3gmx16SignallerBuilderINS_16LoggingSignallerEE5buildIJRKiRKlRKNS_16StartingBehaviorEEEESt10unique_ptrIS1_St14default_deleteIS1_EEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.975") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.kr, ptr noundef nonnull align 4 dereferenceable(4) %i.xm, ptr noundef nonnull align 8 dereferenceable(8) %i.xn, ptr noundef nonnull align 4 dereferenceable(4) %i.xp)
          to label %bb.ch unwind label %bb.eo

bb.ch:                                            ; preds = %_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit
  %i.xq = load ptr, ptr %14, align 8, !tbaa !757  ; 2 uses
  %i.xr = icmp eq ptr %i.xq, null
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %spec.select.i.i.i211 = select i1 %i.xr, ptr null, ptr %i.xs
  invoke void @_ZN3gmx16SignallerBuilderINS_17LastStepSignallerEE23registerSignallerClientEPNS_24ILastStepSignallerClientE(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef %spec.select.i.i.i211)
          to label %.noexc223 unwind label %bb.ep

.noexc223:                                        ; preds = %bb.ch
  invoke void @_ZN3gmx24TrajectoryElementBuilder20registerWriterClientEPNS_23ITrajectoryWriterClientE(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef null)
          to label %.noexc224 unwind label %bb.ep

.noexc224:                                        ; preds = %.noexc223
  invoke void @_ZN3gmx14TopologyHolder7Builder14registerClientEPNS_21ITopologyHolderClientE(ptr noundef nonnull align 8 dereferenceable(28) %i.cc, ptr noundef null)
          to label %.noexc225 unwind label %bb.ep

.noexc225:                                        ; preds = %.noexc224
  invoke void @_ZN3gmx23CheckpointHelperBuilder14registerClientEPNS_23ICheckpointHelperClientE(ptr noundef nonnull align 8 dereferenceable(84) %i.cd, ptr noundef null)
          to label %.noexc226 unwind label %bb.ep

.noexc226:                                        ; preds = %.noexc225
  invoke void @_ZN3gmx19DomDecHelperBuilder14registerClientEPNS_19IDomDecHelperClientE(ptr noundef nonnull align 8 dereferenceable(28) %i.ce, ptr noundef null)
          to label %.noexc227 unwind label %bb.ep

.noexc227:                                        ; preds = %.noexc226
  %i.xt = load ptr, ptr %i.rb, align 8, !tbaa !239 ; 15 uses
  %i.xu = ptrtoint ptr %i.xt to i64               ; 5 uses
  %i.xv = load ptr, ptr %i.re, align 8, !tbaa !229 ; 11 uses
  %i.xw = load ptr, ptr %i.rg, align 8, !tbaa !232
  %.not.i.i.i212 = icmp eq ptr %i.xv, %i.xw
  br i1 %.not.i.i.i212, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %.noexc227
  %i.xx = icmp eq ptr %i.xt, %i.xv
  %i.xy = load ptr, ptr %14, align 8, !tbaa !757  ; 2 uses
  store ptr null, ptr %14, align 8, !tbaa !757
  br i1 %i.xx, label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_16LoggingSignallerESt14default_deleteIS4_EEEEDaT_.exit.thread", label %bb.cj

"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_16LoggingSignallerESt14default_deleteIS4_EEEEDaT_.exit.thread": ; preds = %bb.ci
  store ptr %i.xy, ptr %i.xv, align 8, !tbaa !1201
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  store ptr %i.xz, ptr %i.re, align 8, !tbaa !229
  br label %_ZNSt10unique_ptrIN3gmx16LoggingSignallerESt14default_deleteIS1_EED2Ev.exit

bb.cj:                                            ; preds = %bb.ci
  %i.ya = getelementptr inbounds i8, ptr %i.xv, i64 -8 ; 4 uses
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !231
  store i64 %i.yb, ptr %i.xv, align 8, !tbaa !231
  store ptr null, ptr %i.ya, align 8, !tbaa !231
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  store ptr %i.yc, ptr %i.re, align 8, !tbaa !229
  %i.yd = ptrtoint ptr %i.ya to i64
  %i.ye = sub i64 %i.yd, %i.xu
  %i.yf = ashr exact i64 %i.ye, 3                 ; 2 uses
  %i.yg = icmp sgt i64 %i.yf, 0
  br i1 %i.yg, label %.lr.ph.i.i.i.i.i.i.i.i.i216, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i213

.lr.ph.i.i.i.i.i.i.i.i.i216:                      ; preds = %bb.cj, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i222
  %.010.i.i.i.i.i.i.i.i.i217 = phi i64 [ %i.yo, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i222 ], [ %i.yf, %bb.cj ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i218 = phi ptr [ %i.yi, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i222 ], [ %i.xv, %bb.cj ]
  %.078.i.i.i.i.i.i.i.i.i219 = phi ptr [ %i.yh, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i222 ], [ %i.ya, %bb.cj ]
  %i.yh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i219, i64 -8 ; 3 uses
  %i.yi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i218, i64 -8 ; 3 uses
  %i.yj = load ptr, ptr %i.yh, align 8, !tbaa !231
  store ptr null, ptr %i.yh, align 8, !tbaa !231
  %i.yk = load ptr, ptr %i.yi, align 8, !tbaa !231 ; 3 uses
  store ptr %i.yj, ptr %i.yi, align 8, !tbaa !231
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i220 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i220, label %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i222, label %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i221

_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i221: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i216
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !180
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  %i.yn = load ptr, ptr %i.ym, align 8
  call void %i.yn(ptr noundef nonnull align 8 dereferenceable(8) %i.yk) #30, !inline_history !1088
  br label %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i222

_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i222: ; preds = %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i221, %.lr.ph.i.i.i.i.i.i.i.i.i216
  %i.yo = add nsw i64 %.010.i.i.i.i.i.i.i.i.i217, -1
  %i.yp = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i217, 1
  br i1 %i.yp, label %.lr.ph.i.i.i.i.i.i.i.i.i216, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i213, !llvm.loop !1066

_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i213: ; preds = %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i222, %bb.cj
  %i.yq = load ptr, ptr %i.xt, align 8, !tbaa !231 ; 3 uses
  store ptr %i.xy, ptr %i.xt, align 8, !tbaa !231
  %.not.i.i.i.i.i.i.i.i214 = icmp eq ptr %i.yq, null
  br i1 %.not.i.i.i.i.i.i.i.i214, label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_16LoggingSignallerESt14default_deleteIS4_EEEEDaT_.exit", label %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i215

_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i215: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i213
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !180
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  %i.yt = load ptr, ptr %i.ys, align 8
  call void %i.yt(ptr noundef nonnull align 8 dereferenceable(8) %i.yq) #30, !inline_history !1089
  br label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_16LoggingSignallerESt14default_deleteIS4_EEEEDaT_.exit"

bb.ck:                                            ; preds = %.noexc227
  %i.yu = ptrtoint ptr %i.xv to i64               ; 3 uses
  %i.yv = sub i64 %i.yu, %i.xu                    ; 2 uses
  %i.yw = icmp eq i64 %i.yv, 9223372036854775800
  br i1 %i.yw, label %bb.cl, label %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i367

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
          to label %.noexc385 unwind label %bb.ep

.noexc385:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i367: ; preds = %bb.ck
  %i.yx = ashr exact i64 %i.yv, 3                 ; 3 uses
  %.sroa.speculated.i.i368 = call i64 @llvm.umax.i64(i64 %i.yx, i64 1)
  %i.yy = add nsw i64 %.sroa.speculated.i.i368, %i.yx ; 2 uses
  %i.yz = icmp ult i64 %i.yy, %i.yx
  %i.za = call i64 @llvm.umin.i64(i64 %i.yy, i64 1152921504606846975)
  %i.zb = select i1 %i.yz, i64 1152921504606846975, i64 %i.za ; 3 uses
  %.not.i.i369 = icmp ne i64 %i.zb, 0
  call void @llvm.assume(i1 %.not.i.i369)
  %i.zc = shl nuw nsw i64 %i.zb, 3
  %i.zd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zc) #29
          to label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i375 unwind label %bb.ep ; 5 uses

_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i375: ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i367
  %i.ze = load ptr, ptr %14, align 8, !tbaa !757
  store ptr null, ptr %14, align 8, !tbaa !757
  store ptr %i.ze, ptr %i.zd, align 8, !tbaa !1201
  %i.zf = getelementptr i8, ptr %i.zd, i64 8      ; 8 uses
  %.not10.i.i.i16.i377 = icmp eq ptr %i.xt, %i.xv
  br i1 %.not10.i.i.i16.i377, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i382, label %iter.check785

iter.check785:                                    ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i375
  %i.zg = add i64 %i.yu, -8
  %i.zh = sub i64 %i.zg, %i.xu                    ; 3 uses
  %i.zi = lshr i64 %i.zh, 3
  %i.zj = add nuw nsw i64 %i.zi, 1                ; 5 uses
  %min.iters.check765 = icmp ult i64 %i.zh, 24
  br i1 %min.iters.check765, label %.lr.ph.i.i.i17.i378.preheader, label %vector.memcheck766

vector.memcheck766:                               ; preds = %iter.check785
  %i.zk = add i64 %i.yu, -8
  %i.zl = sub i64 %i.zk, %i.xu
  %i.zm = and i64 %i.zl, -8                       ; 2 uses
  %i.zn = getelementptr i8, ptr %i.zd, i64 %i.zm
  %i.zo = getelementptr i8, ptr %i.zn, i64 16
  %i.zp = getelementptr i8, ptr %i.xt, i64 %i.zm
  %i.zq = getelementptr i8, ptr %i.zp, i64 8
  %bound0767 = icmp ult ptr %i.zf, %i.zq
  %bound1768 = icmp ult ptr %i.xt, %i.zo
  %found.conflict769 = and i1 %bound0767, %bound1768
  br i1 %found.conflict769, label %.lr.ph.i.i.i17.i378.preheader, label %vector.main.loop.iter.check770

vector.main.loop.iter.check770:                   ; preds = %vector.memcheck766
  %min.iters.check771 = icmp ult i64 %i.zh, 120
  br i1 %min.iters.check771, label %vec.epilog.ph789, label %vector.ph772

vector.ph772:                                     ; preds = %vector.main.loop.iter.check770
  %i.zr = and i64 %i.zj, 12
  %n.vec773 = and i64 %i.zj, 4611686018427387888  ; 4 uses
  %i.zs = shl i64 %n.vec773, 3                    ; 2 uses
  %i.zt = getelementptr i8, ptr %i.zf, i64 %i.zs  ; 2 uses
  %i.zu = getelementptr i8, ptr %i.xt, i64 %i.zs
  br label %vector.body774

vector.body774:                                   ; preds = %vector.ph772, %vector.body774
  %index775 = phi i64 [ 0, %vector.ph772 ], [ %index.next782, %vector.body774 ] ; 2 uses
  %i.zv = shl i64 %index775, 3                    ; 2 uses
  %next.gep776 = getelementptr i8, ptr %i.zf, i64 %i.zv ; 4 uses
  %next.gep777 = getelementptr i8, ptr %i.xt, i64 %i.zv ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %i.zw = getelementptr i8, ptr %next.gep777, i64 32
  %i.zx = getelementptr i8, ptr %next.gep777, i64 64
  %i.zy = getelementptr i8, ptr %next.gep777, i64 96
  %wide.load778 = load <4 x i64>, ptr %next.gep777, align 8, !tbaa !231, !alias.scope !1214
  %wide.load779 = load <4 x i64>, ptr %i.zw, align 8, !tbaa !231, !alias.scope !1214
  %wide.load780 = load <4 x i64>, ptr %i.zx, align 8, !tbaa !231, !alias.scope !1214
  %wide.load781 = load <4 x i64>, ptr %i.zy, align 8, !tbaa !231, !alias.scope !1214
  %i.zz = getelementptr i8, ptr %next.gep776, i64 32
  %i.aaa = getelementptr i8, ptr %next.gep776, i64 64
  %i.aab = getelementptr i8, ptr %next.gep776, i64 96
  store <4 x i64> %wide.load778, ptr %next.gep776, align 8, !tbaa !231, !alias.scope !1215, !noalias !1216
  store <4 x i64> %wide.load779, ptr %i.zz, align 8, !tbaa !231, !alias.scope !1215, !noalias !1216
  store <4 x i64> %wide.load780, ptr %i.aaa, align 8, !tbaa !231, !alias.scope !1215, !noalias !1216
  store <4 x i64> %wide.load781, ptr %i.aab, align 8, !tbaa !231, !alias.scope !1215, !noalias !1216
  %23 = getelementptr i8, ptr %next.gep777, i64 32
  %24 = getelementptr i8, ptr %next.gep777, i64 64
  %25 = getelementptr i8, ptr %next.gep777, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep777, align 8, !tbaa !231, !alias.scope !1214
  store <4 x ptr> splat (ptr null), ptr %23, align 8, !tbaa !231, !alias.scope !1214
  store <4 x ptr> splat (ptr null), ptr %24, align 8, !tbaa !231, !alias.scope !1214
  store <4 x ptr> splat (ptr null), ptr %25, align 8, !tbaa !231, !alias.scope !1214
  %index.next782 = add nuw i64 %index775, 16      ; 2 uses
  %i.aac = icmp eq i64 %index.next782, %n.vec773
  br i1 %i.aac, label %middle.block783, label %vector.body774, !llvm.loop !1096

middle.block783:                                  ; preds = %vector.body774
  %cmp.n784 = icmp eq i64 %i.zj, %n.vec773
  br i1 %cmp.n784, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i382, label %vec.epilog.iter.check786

vec.epilog.iter.check786:                         ; preds = %middle.block783
  %min.epilog.iters.check788 = icmp eq i64 %i.zr, 0
  br i1 %min.epilog.iters.check788, label %.lr.ph.i.i.i17.i378.preheader, label %vec.epilog.ph789, !prof !753

vec.epilog.ph789:                                 ; preds = %vector.main.loop.iter.check770, %vec.epilog.iter.check786
  %vec.epilog.resume.val790 = phi i64 [ %n.vec773, %vec.epilog.iter.check786 ], [ 0, %vector.main.loop.iter.check770 ]
  %n.vec791 = and i64 %i.zj, 4611686018427387900  ; 3 uses
  %i.aad = shl i64 %n.vec791, 3                   ; 2 uses
  %i.aae = getelementptr i8, ptr %i.zf, i64 %i.aad ; 2 uses
  %i.aaf = getelementptr i8, ptr %i.xt, i64 %i.aad
  br label %vec.epilog.vector.body792

vec.epilog.vector.body792:                        ; preds = %vec.epilog.vector.body792, %vec.epilog.ph789
  %index793 = phi i64 [ %vec.epilog.resume.val790, %vec.epilog.ph789 ], [ %index.next797, %vec.epilog.vector.body792 ] ; 2 uses
  %i.aag = shl i64 %index793, 3                   ; 2 uses
  %next.gep794 = getelementptr i8, ptr %i.zf, i64 %i.aag
  %next.gep795 = getelementptr i8, ptr %i.xt, i64 %i.aag ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %wide.load796 = load <4 x i64>, ptr %next.gep795, align 8, !tbaa !231, !alias.scope !1214
  store <4 x i64> %wide.load796, ptr %next.gep794, align 8, !tbaa !231, !alias.scope !1215, !noalias !1216
  store <4 x ptr> splat (ptr null), ptr %next.gep795, align 8, !tbaa !231, !alias.scope !1214
  %index.next797 = add nuw i64 %index793, 4       ; 2 uses
  %i.aah = icmp eq i64 %index.next797, %n.vec791
  br i1 %i.aah, label %vec.epilog.middle.block798, label %vec.epilog.vector.body792, !llvm.loop !1097

vec.epilog.middle.block798:                       ; preds = %vec.epilog.vector.body792
  %cmp.n799 = icmp eq i64 %i.zj, %n.vec791
  br i1 %cmp.n799, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i382, label %.lr.ph.i.i.i17.i378.preheader

.lr.ph.i.i.i17.i378.preheader:                    ; preds = %iter.check785, %vector.memcheck766, %vec.epilog.iter.check786, %vec.epilog.middle.block798
  %.012.i.i.i18.i379.ph = phi ptr [ %i.zf, %iter.check785 ], [ %i.zf, %vector.memcheck766 ], [ %i.zt, %vec.epilog.iter.check786 ], [ %i.aae, %vec.epilog.middle.block798 ]
  %.0911.i.i.i19.i380.ph = phi ptr [ %i.xt, %iter.check785 ], [ %i.xt, %vector.memcheck766 ], [ %i.zu, %vec.epilog.iter.check786 ], [ %i.aaf, %vec.epilog.middle.block798 ]
  br label %.lr.ph.i.i.i17.i378

.lr.ph.i.i.i17.i378:                              ; preds = %.lr.ph.i.i.i17.i378.preheader, %.lr.ph.i.i.i17.i378
  %.012.i.i.i18.i379 = phi ptr [ %i.aak, %.lr.ph.i.i.i17.i378 ], [ %.012.i.i.i18.i379.ph, %.lr.ph.i.i.i17.i378.preheader ] ; 2 uses
  %.0911.i.i.i19.i380 = phi ptr [ %i.aaj, %.lr.ph.i.i.i17.i378 ], [ %.0911.i.i.i19.i380.ph, %.lr.ph.i.i.i17.i378.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %i.aai = load i64, ptr %.0911.i.i.i19.i380, align 8, !tbaa !231, !alias.scope !1213
  store i64 %i.aai, ptr %.012.i.i.i18.i379, align 8, !tbaa !231, !alias.scope !1212
  store ptr null, ptr %.0911.i.i.i19.i380, align 8, !tbaa !231, !alias.scope !1213
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i380, i64 8 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i379, i64 8 ; 2 uses
  %.not.i.i.i20.i381 = icmp eq ptr %i.aaj, %i.xv
  br i1 %.not.i.i.i20.i381, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i382, label %.lr.ph.i.i.i17.i378, !llvm.loop !1098

_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i382: ; preds = %.lr.ph.i.i.i17.i378, %middle.block783, %vec.epilog.middle.block798, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i375
  %.0.lcssa.i.i.i21.i383 = phi ptr [ %i.zf, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i375 ], [ %i.aae, %vec.epilog.middle.block798 ], [ %i.zt, %middle.block783 ], [ %i.aak, %.lr.ph.i.i.i17.i378 ]
  %.not.i23.i384 = icmp eq ptr %i.xt, null
  br i1 %.not.i23.i384, label %.noexc228, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i382
  %i.aal = load ptr, ptr %i.rg, align 8, !tbaa !232
  %i.aam = ptrtoint ptr %i.aal to i64
  %i.aan = sub i64 %i.aam, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %i.xt, i64 noundef %i.aan) #28
  br label %.noexc228

.noexc228:                                        ; preds = %bb.cm, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i382
  store ptr %i.zd, ptr %i.rb, align 8, !tbaa !228
  store ptr %.0.lcssa.i.i.i21.i383, ptr %i.re, align 8, !tbaa !229
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.zb
  store ptr %i.aao, ptr %i.rg, align 8, !tbaa !232
  br label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_16LoggingSignallerESt14default_deleteIS4_EEEEDaT_.exit"

"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_16LoggingSignallerESt14default_deleteIS4_EEEEDaT_.exit": ; preds = %.noexc228, %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i215, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i213
  %.pr502 = load ptr, ptr %14, align 8, !tbaa !757 ; 5 uses
  %.not.i229 = icmp eq ptr %.pr502, null
  br i1 %.not.i229, label %_ZNSt10unique_ptrIN3gmx16LoggingSignallerESt14default_deleteIS1_EED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_16LoggingSignallerESt14default_deleteIS4_EEEEDaT_.exit"
  %i.aap = getelementptr inbounds nuw i8, ptr %.pr502, i64 16 ; 2 uses
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !760 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.pr502, i64 24
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !761 ; 2 uses
  %.not4.i.i.i.i.i.i230 = icmp eq ptr %i.aaq, %i.aas
  br i1 %.not4.i.i.i.i.i.i230, label %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i231

.lr.ph.i.i.i.i.i.i231:                            ; preds = %bb.cn, %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i232 = phi ptr [ %i.aay, %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i ], [ %i.aaq, %bb.cn ] ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i232, i64 16
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i.i.i.i.i233 = icmp eq ptr %i.aau, null
  br i1 %.not.i.i.i.i.i.i.i.i233, label %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.i.i231
  %i.aav = invoke noundef zeroext i1 %i.aau(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i.i232, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i.i232, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i unwind label %bb.cp ; 0 uses

bb.cp:                                            ; preds = %bb.co
  %i.aaw = landingpad { ptr, i32 }
          catch ptr null
  %i.aax = extractvalue { ptr, i32 } %i.aaw, 0
  call void @__clang_call_terminate(ptr %i.aax) #31
  unreachable

_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.co, %.lr.ph.i.i.i.i.i.i231
  %i.aay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i232, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i234 = icmp eq ptr %i.aay, %i.aas
  br i1 %.not.i.i.i.i.i.i234, label %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i231, !llvm.loop !13

_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i235 = load ptr, ptr %i.aap, align 8, !tbaa !760
  br label %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.cn
  %i.aaz = phi ptr [ %.pr.i.i.i.i235, %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.aaq, %bb.cn ] ; 3 uses
  %.not.i.i1.i.i.i.i236 = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i1.i.i.i.i236, label %_ZNKSt14default_deleteIN3gmx16LoggingSignallerEEclEPS1_.exit.i, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %.pr502, i64 32
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !762
  %i.abc = ptrtoint ptr %i.abb to i64
  %i.abd = ptrtoint ptr %i.aaz to i64
  %i.abe = sub i64 %i.abc, %i.abd
  call void @_ZdlPvm(ptr noundef nonnull %i.aaz, i64 noundef %i.abe) #28
  br label %_ZNKSt14default_deleteIN3gmx16LoggingSignallerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx16LoggingSignallerEEclEPS1_.exit.i: ; preds = %bb.cq, %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr502, i64 noundef 80) #28
  br label %_ZNSt10unique_ptrIN3gmx16LoggingSignallerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx16LoggingSignallerESt14default_deleteIS1_EED2Ev.exit: ; preds = %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_16LoggingSignallerESt14default_deleteIS4_EEEEDaT_.exit.thread", %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_16LoggingSignallerESt14default_deleteIS4_EEEEDaT_.exit", %_ZNKSt14default_deleteIN3gmx16LoggingSignallerEEclEPS1_.exit.i
  %i.abf = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  %i.abg = load ptr, ptr %i.et, align 8, !tbaa !200
  store ptr %i.abg, ptr %i.l, align 8, !tbaa !200
  invoke void @_ZN3gmx16SignallerBuilderINS_17LastStepSignallerEE5buildIJRKlS5_PNS_11StopHandlerEEEESt10unique_ptrIS1_St14default_deleteIS1_EEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.983") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.abf, ptr noundef nonnull align 8 dereferenceable(8) %i.xn, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.cr unwind label %bb.eq

bb.cr:                                            ; preds = %_ZNSt10unique_ptrIN3gmx16LoggingSignallerESt14default_deleteIS1_EED2Ev.exit
  %i.abh = load ptr, ptr %15, align 8, !tbaa !764 ; 2 uses
  %i.abi = icmp eq ptr %i.abh, null
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %spec.select.i.i.i237 = select i1 %i.abi, ptr null, ptr %i.abj
  invoke void @_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE23registerSignallerClientEPNS_30INeighborSearchSignallerClientE(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef %spec.select.i.i.i237)
          to label %.noexc249 unwind label %bb.er

.noexc249:                                        ; preds = %bb.cr
  invoke void @_ZN3gmx24TrajectoryElementBuilder20registerWriterClientEPNS_23ITrajectoryWriterClientE(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef null)
          to label %.noexc250 unwind label %bb.er

.noexc250:                                        ; preds = %.noexc249
  invoke void @_ZN3gmx14TopologyHolder7Builder14registerClientEPNS_21ITopologyHolderClientE(ptr noundef nonnull align 8 dereferenceable(28) %i.cc, ptr noundef null)
          to label %.noexc251 unwind label %bb.er

.noexc251:                                        ; preds = %.noexc250
  invoke void @_ZN3gmx23CheckpointHelperBuilder14registerClientEPNS_23ICheckpointHelperClientE(ptr noundef nonnull align 8 dereferenceable(84) %i.cd, ptr noundef null)
          to label %.noexc252 unwind label %bb.er

.noexc252:                                        ; preds = %.noexc251
  invoke void @_ZN3gmx19DomDecHelperBuilder14registerClientEPNS_19IDomDecHelperClientE(ptr noundef nonnull align 8 dereferenceable(28) %i.ce, ptr noundef null)
          to label %.noexc253 unwind label %bb.er

.noexc253:                                        ; preds = %.noexc252
  %i.abk = load ptr, ptr %i.rb, align 8, !tbaa !239 ; 15 uses
  %i.abl = ptrtoint ptr %i.abk to i64             ; 5 uses
  %i.abm = load ptr, ptr %i.re, align 8, !tbaa !229 ; 11 uses
  %i.abn = load ptr, ptr %i.rg, align 8, !tbaa !232
  %.not.i.i.i238 = icmp eq ptr %i.abm, %i.abn
  br i1 %.not.i.i.i238, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %.noexc253
  %i.abo = icmp eq ptr %i.abk, %i.abm
  %i.abp = load ptr, ptr %15, align 8, !tbaa !764 ; 2 uses
  store ptr null, ptr %15, align 8, !tbaa !764
  br i1 %i.abo, label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_17LastStepSignallerESt14default_deleteIS4_EEEEDaT_.exit.thread", label %bb.ct

"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_17LastStepSignallerESt14default_deleteIS4_EEEEDaT_.exit.thread": ; preds = %bb.cs
  store ptr %i.abp, ptr %i.abm, align 8, !tbaa !1201
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store ptr %i.abq, ptr %i.re, align 8, !tbaa !229
  br label %_ZNSt10unique_ptrIN3gmx17LastStepSignallerESt14default_deleteIS1_EED2Ev.exit

bb.ct:                                            ; preds = %bb.cs
  %i.abr = getelementptr inbounds i8, ptr %i.abm, i64 -8 ; 4 uses
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !231
  store i64 %i.abs, ptr %i.abm, align 8, !tbaa !231
  store ptr null, ptr %i.abr, align 8, !tbaa !231
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store ptr %i.abt, ptr %i.re, align 8, !tbaa !229
  %i.abu = ptrtoint ptr %i.abr to i64
  %i.abv = sub i64 %i.abu, %i.abl
  %i.abw = ashr exact i64 %i.abv, 3               ; 2 uses
  %i.abx = icmp sgt i64 %i.abw, 0
  br i1 %i.abx, label %.lr.ph.i.i.i.i.i.i.i.i.i242, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i239

.lr.ph.i.i.i.i.i.i.i.i.i242:                      ; preds = %bb.ct, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i248
  %.010.i.i.i.i.i.i.i.i.i243 = phi i64 [ %i.acf, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i248 ], [ %i.abw, %bb.ct ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i244 = phi ptr [ %i.abz, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i248 ], [ %i.abm, %bb.ct ]
  %.078.i.i.i.i.i.i.i.i.i245 = phi ptr [ %i.aby, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i248 ], [ %i.abr, %bb.ct ]
  %i.aby = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i245, i64 -8 ; 3 uses
  %i.abz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i244, i64 -8 ; 3 uses
  %i.aca = load ptr, ptr %i.aby, align 8, !tbaa !231
  store ptr null, ptr %i.aby, align 8, !tbaa !231
  %i.acb = load ptr, ptr %i.abz, align 8, !tbaa !231 ; 3 uses
  store ptr %i.aca, ptr %i.abz, align 8, !tbaa !231
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i246 = icmp eq ptr %i.acb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i246, label %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i248, label %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i247

_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i247: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i242
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !180
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 24
  %i.ace = load ptr, ptr %i.acd, align 8
  call void %i.ace(ptr noundef nonnull align 8 dereferenceable(8) %i.acb) #30, !inline_history !1099
  br label %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i248

_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i248: ; preds = %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i247, %.lr.ph.i.i.i.i.i.i.i.i.i242
  %i.acf = add nsw i64 %.010.i.i.i.i.i.i.i.i.i243, -1
  %i.acg = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i243, 1
  br i1 %i.acg, label %.lr.ph.i.i.i.i.i.i.i.i.i242, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i239, !llvm.loop !1066

_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i239: ; preds = %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i248, %bb.ct
  %i.ach = load ptr, ptr %i.abk, align 8, !tbaa !231 ; 3 uses
  store ptr %i.abp, ptr %i.abk, align 8, !tbaa !231
  %.not.i.i.i.i.i.i.i.i240 = icmp eq ptr %i.ach, null
  br i1 %.not.i.i.i.i.i.i.i.i240, label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_17LastStepSignallerESt14default_deleteIS4_EEEEDaT_.exit", label %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i241

_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i241: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i239
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !180
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 24
  %i.ack = load ptr, ptr %i.acj, align 8
  call void %i.ack(ptr noundef nonnull align 8 dereferenceable(8) %i.ach) #30, !inline_history !1100
  br label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_17LastStepSignallerESt14default_deleteIS4_EEEEDaT_.exit"

bb.cu:                                            ; preds = %.noexc253
  %i.acl = ptrtoint ptr %i.abm to i64             ; 3 uses
  %i.acm = sub i64 %i.acl, %i.abl                 ; 2 uses
  %i.acn = icmp eq i64 %i.acm, 9223372036854775800
  br i1 %i.acn, label %bb.cv, label %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i387

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
          to label %.noexc405 unwind label %bb.er

.noexc405:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i387: ; preds = %bb.cu
  %i.aco = ashr exact i64 %i.acm, 3               ; 3 uses
  %.sroa.speculated.i.i388 = call i64 @llvm.umax.i64(i64 %i.aco, i64 1)
  %i.acp = add nsw i64 %.sroa.speculated.i.i388, %i.aco ; 2 uses
  %i.acq = icmp ult i64 %i.acp, %i.aco
  %i.acr = call i64 @llvm.umin.i64(i64 %i.acp, i64 1152921504606846975)
  %i.acs = select i1 %i.acq, i64 1152921504606846975, i64 %i.acr ; 3 uses
  %.not.i.i389 = icmp ne i64 %i.acs, 0
  call void @llvm.assume(i1 %.not.i.i389)
  %i.act = shl nuw nsw i64 %i.acs, 3
  %i.acu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.act) #29
          to label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i395 unwind label %bb.er ; 5 uses

_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i395: ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i387
  %i.acv = load ptr, ptr %15, align 8, !tbaa !764
  store ptr null, ptr %15, align 8, !tbaa !764
  store ptr %i.acv, ptr %i.acu, align 8, !tbaa !1201
  %i.acw = getelementptr i8, ptr %i.acu, i64 8    ; 8 uses
  %.not10.i.i.i16.i397 = icmp eq ptr %i.abk, %i.abm
  br i1 %.not10.i.i.i16.i397, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i402, label %iter.check827

iter.check827:                                    ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i395
  %i.acx = add i64 %i.acl, -8
  %i.acy = sub i64 %i.acx, %i.abl                 ; 3 uses
  %i.acz = lshr i64 %i.acy, 3
  %i.ada = add nuw nsw i64 %i.acz, 1              ; 5 uses
  %min.iters.check807 = icmp ult i64 %i.acy, 24
  br i1 %min.iters.check807, label %.lr.ph.i.i.i17.i398.preheader, label %vector.memcheck808

vector.memcheck808:                               ; preds = %iter.check827
  %i.adb = add i64 %i.acl, -8
  %i.adc = sub i64 %i.adb, %i.abl
  %i.add = and i64 %i.adc, -8                     ; 2 uses
  %i.ade = getelementptr i8, ptr %i.acu, i64 %i.add
  %i.adf = getelementptr i8, ptr %i.ade, i64 16
  %i.adg = getelementptr i8, ptr %i.abk, i64 %i.add
  %i.adh = getelementptr i8, ptr %i.adg, i64 8
  %bound0809 = icmp ult ptr %i.acw, %i.adh
  %bound1810 = icmp ult ptr %i.abk, %i.adf
  %found.conflict811 = and i1 %bound0809, %bound1810
  br i1 %found.conflict811, label %.lr.ph.i.i.i17.i398.preheader, label %vector.main.loop.iter.check812

vector.main.loop.iter.check812:                   ; preds = %vector.memcheck808
  %min.iters.check813 = icmp ult i64 %i.acy, 120
  br i1 %min.iters.check813, label %vec.epilog.ph831, label %vector.ph814

vector.ph814:                                     ; preds = %vector.main.loop.iter.check812
  %i.adi = and i64 %i.ada, 12
  %n.vec815 = and i64 %i.ada, 4611686018427387888 ; 4 uses
  %i.adj = shl i64 %n.vec815, 3                   ; 2 uses
  %i.adk = getelementptr i8, ptr %i.acw, i64 %i.adj ; 2 uses
  %i.adl = getelementptr i8, ptr %i.abk, i64 %i.adj
  br label %vector.body816

vector.body816:                                   ; preds = %vector.ph814, %vector.body816
  %index817 = phi i64 [ 0, %vector.ph814 ], [ %index.next824, %vector.body816 ] ; 2 uses
  %i.adm = shl i64 %index817, 3                   ; 2 uses
  %next.gep818 = getelementptr i8, ptr %i.acw, i64 %i.adm ; 4 uses
  %next.gep819 = getelementptr i8, ptr %i.abk, i64 %i.adm ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.adn = getelementptr i8, ptr %next.gep819, i64 32
  %i.ado = getelementptr i8, ptr %next.gep819, i64 64
  %i.adp = getelementptr i8, ptr %next.gep819, i64 96
  %wide.load820 = load <4 x i64>, ptr %next.gep819, align 8, !tbaa !231, !alias.scope !1219
  %wide.load821 = load <4 x i64>, ptr %i.adn, align 8, !tbaa !231, !alias.scope !1219
  %wide.load822 = load <4 x i64>, ptr %i.ado, align 8, !tbaa !231, !alias.scope !1219
  %wide.load823 = load <4 x i64>, ptr %i.adp, align 8, !tbaa !231, !alias.scope !1219
  %i.adq = getelementptr i8, ptr %next.gep818, i64 32
  %i.adr = getelementptr i8, ptr %next.gep818, i64 64
  %i.ads = getelementptr i8, ptr %next.gep818, i64 96
  store <4 x i64> %wide.load820, ptr %next.gep818, align 8, !tbaa !231, !alias.scope !1220, !noalias !1221
  store <4 x i64> %wide.load821, ptr %i.adq, align 8, !tbaa !231, !alias.scope !1220, !noalias !1221
  store <4 x i64> %wide.load822, ptr %i.adr, align 8, !tbaa !231, !alias.scope !1220, !noalias !1221
  store <4 x i64> %wide.load823, ptr %i.ads, align 8, !tbaa !231, !alias.scope !1220, !noalias !1221
  %26 = getelementptr i8, ptr %next.gep819, i64 32
  %27 = getelementptr i8, ptr %next.gep819, i64 64
  %28 = getelementptr i8, ptr %next.gep819, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep819, align 8, !tbaa !231, !alias.scope !1219
  store <4 x ptr> splat (ptr null), ptr %26, align 8, !tbaa !231, !alias.scope !1219
  store <4 x ptr> splat (ptr null), ptr %27, align 8, !tbaa !231, !alias.scope !1219
  store <4 x ptr> splat (ptr null), ptr %28, align 8, !tbaa !231, !alias.scope !1219
  %index.next824 = add nuw i64 %index817, 16      ; 2 uses
  %i.adt = icmp eq i64 %index.next824, %n.vec815
  br i1 %i.adt, label %middle.block825, label %vector.body816, !llvm.loop !1107

middle.block825:                                  ; preds = %vector.body816
  %cmp.n826 = icmp eq i64 %i.ada, %n.vec815
  br i1 %cmp.n826, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i402, label %vec.epilog.iter.check828

vec.epilog.iter.check828:                         ; preds = %middle.block825
  %min.epilog.iters.check830 = icmp eq i64 %i.adi, 0
  br i1 %min.epilog.iters.check830, label %.lr.ph.i.i.i17.i398.preheader, label %vec.epilog.ph831, !prof !753

vec.epilog.ph831:                                 ; preds = %vector.main.loop.iter.check812, %vec.epilog.iter.check828
  %vec.epilog.resume.val832 = phi i64 [ %n.vec815, %vec.epilog.iter.check828 ], [ 0, %vector.main.loop.iter.check812 ]
  %n.vec833 = and i64 %i.ada, 4611686018427387900 ; 3 uses
  %i.adu = shl i64 %n.vec833, 3                   ; 2 uses
  %i.adv = getelementptr i8, ptr %i.acw, i64 %i.adu ; 2 uses
  %i.adw = getelementptr i8, ptr %i.abk, i64 %i.adu
  br label %vec.epilog.vector.body834

vec.epilog.vector.body834:                        ; preds = %vec.epilog.vector.body834, %vec.epilog.ph831
  %index835 = phi i64 [ %vec.epilog.resume.val832, %vec.epilog.ph831 ], [ %index.next839, %vec.epilog.vector.body834 ] ; 2 uses
  %i.adx = shl i64 %index835, 3                   ; 2 uses
  %next.gep836 = getelementptr i8, ptr %i.acw, i64 %i.adx
  %next.gep837 = getelementptr i8, ptr %i.abk, i64 %i.adx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %wide.load838 = load <4 x i64>, ptr %next.gep837, align 8, !tbaa !231, !alias.scope !1219
  store <4 x i64> %wide.load838, ptr %next.gep836, align 8, !tbaa !231, !alias.scope !1220, !noalias !1221
  store <4 x ptr> splat (ptr null), ptr %next.gep837, align 8, !tbaa !231, !alias.scope !1219
  %index.next839 = add nuw i64 %index835, 4       ; 2 uses
  %i.ady = icmp eq i64 %index.next839, %n.vec833
  br i1 %i.ady, label %vec.epilog.middle.block840, label %vec.epilog.vector.body834, !llvm.loop !1108

vec.epilog.middle.block840:                       ; preds = %vec.epilog.vector.body834
  %cmp.n841 = icmp eq i64 %i.ada, %n.vec833
  br i1 %cmp.n841, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i402, label %.lr.ph.i.i.i17.i398.preheader

.lr.ph.i.i.i17.i398.preheader:                    ; preds = %iter.check827, %vector.memcheck808, %vec.epilog.iter.check828, %vec.epilog.middle.block840
  %.012.i.i.i18.i399.ph = phi ptr [ %i.acw, %iter.check827 ], [ %i.acw, %vector.memcheck808 ], [ %i.adk, %vec.epilog.iter.check828 ], [ %i.adv, %vec.epilog.middle.block840 ]
  %.0911.i.i.i19.i400.ph = phi ptr [ %i.abk, %iter.check827 ], [ %i.abk, %vector.memcheck808 ], [ %i.adl, %vec.epilog.iter.check828 ], [ %i.adw, %vec.epilog.middle.block840 ]
  br label %.lr.ph.i.i.i17.i398

.lr.ph.i.i.i17.i398:                              ; preds = %.lr.ph.i.i.i17.i398.preheader, %.lr.ph.i.i.i17.i398
  %.012.i.i.i18.i399 = phi ptr [ %i.aeb, %.lr.ph.i.i.i17.i398 ], [ %.012.i.i.i18.i399.ph, %.lr.ph.i.i.i17.i398.preheader ] ; 2 uses
  %.0911.i.i.i19.i400 = phi ptr [ %i.aea, %.lr.ph.i.i.i17.i398 ], [ %.0911.i.i.i19.i400.ph, %.lr.ph.i.i.i17.i398.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.adz = load i64, ptr %.0911.i.i.i19.i400, align 8, !tbaa !231, !alias.scope !1218
  store i64 %i.adz, ptr %.012.i.i.i18.i399, align 8, !tbaa !231, !alias.scope !1217
  store ptr null, ptr %.0911.i.i.i19.i400, align 8, !tbaa !231, !alias.scope !1218
  %i.aea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i400, i64 8 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i399, i64 8 ; 2 uses
  %.not.i.i.i20.i401 = icmp eq ptr %i.aea, %i.abm
  br i1 %.not.i.i.i20.i401, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i402, label %.lr.ph.i.i.i17.i398, !llvm.loop !1109

_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i402: ; preds = %.lr.ph.i.i.i17.i398, %middle.block825, %vec.epilog.middle.block840, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i395
  %.0.lcssa.i.i.i21.i403 = phi ptr [ %i.acw, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i395 ], [ %i.adv, %vec.epilog.middle.block840 ], [ %i.adk, %middle.block825 ], [ %i.aeb, %.lr.ph.i.i.i17.i398 ]
  %.not.i23.i404 = icmp eq ptr %i.abk, null
  br i1 %.not.i23.i404, label %.noexc254, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i402
  %i.aec = load ptr, ptr %i.rg, align 8, !tbaa !232
  %i.aed = ptrtoint ptr %i.aec to i64
  %i.aee = sub i64 %i.aed, %i.abl
  call void @_ZdlPvm(ptr noundef nonnull %i.abk, i64 noundef %i.aee) #28
  br label %.noexc254

.noexc254:                                        ; preds = %bb.cw, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i402
  store ptr %i.acu, ptr %i.rb, align 8, !tbaa !228
  store ptr %.0.lcssa.i.i.i21.i403, ptr %i.re, align 8, !tbaa !229
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %i.acs
  store ptr %i.aef, ptr %i.rg, align 8, !tbaa !232
  br label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_17LastStepSignallerESt14default_deleteIS4_EEEEDaT_.exit"

"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_17LastStepSignallerESt14default_deleteIS4_EEEEDaT_.exit": ; preds = %.noexc254, %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i241, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i239
  %.pr504 = load ptr, ptr %15, align 8, !tbaa !764 ; 5 uses
  %.not.i255 = icmp eq ptr %.pr504, null
  br i1 %.not.i255, label %_ZNSt10unique_ptrIN3gmx17LastStepSignallerESt14default_deleteIS1_EED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_17LastStepSignallerESt14default_deleteIS4_EEEEDaT_.exit"
  %i.aeg = getelementptr inbounds nuw i8, ptr %.pr504, i64 16 ; 2 uses
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !760 ; 3 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.pr504, i64 24
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !761 ; 2 uses
  %.not4.i.i.i.i.i.i256 = icmp eq ptr %i.aeh, %i.aej
  br i1 %.not4.i.i.i.i.i.i256, label %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i264, label %.lr.ph.i.i.i.i.i.i257

.lr.ph.i.i.i.i.i.i257:                            ; preds = %bb.cx, %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i260
  %.05.i.i.i.i.i.i258 = phi ptr [ %i.aep, %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i260 ], [ %i.aeh, %bb.cx ] ; 4 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i258, i64 16
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i.i.i.i.i259 = icmp eq ptr %i.ael, null
  br i1 %.not.i.i.i.i.i.i.i.i259, label %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i260, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i.i.i.i257
  %i.aem = invoke noundef zeroext i1 %i.ael(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i.i258, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i260 unwind label %bb.cz ; 0 uses

bb.cz:                                            ; preds = %bb.cy
  %i.aen = landingpad { ptr, i32 }
          catch ptr null
  %i.aeo = extractvalue { ptr, i32 } %i.aen, 0
  call void @__clang_call_terminate(ptr %i.aeo) #31
  unreachable

_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i260: ; preds = %bb.cy, %.lr.ph.i.i.i.i.i.i257
  %i.aep = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i258, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i261 = icmp eq ptr %i.aep, %i.aej
  br i1 %.not.i.i.i.i.i.i261, label %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i262, label %.lr.ph.i.i.i.i.i.i257, !llvm.loop !13

_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i262: ; preds = %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i260
  %.pr.i.i.i.i263 = load ptr, ptr %i.aeg, align 8, !tbaa !760
  br label %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i264

_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i264: ; preds = %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i262, %bb.cx
  %i.aeq = phi ptr [ %.pr.i.i.i.i263, %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i262 ], [ %i.aeh, %bb.cx ] ; 3 uses
  %.not.i.i1.i.i.i.i265 = icmp eq ptr %i.aeq, null
  br i1 %.not.i.i1.i.i.i.i265, label %_ZNKSt14default_deleteIN3gmx17LastStepSignallerEEclEPS1_.exit.i, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i264
  %i.aer = getelementptr inbounds nuw i8, ptr %.pr504, i64 32
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !762
  %i.aet = ptrtoint ptr %i.aes to i64
  %i.aeu = ptrtoint ptr %i.aeq to i64
  %i.aev = sub i64 %i.aet, %i.aeu
  call void @_ZdlPvm(ptr noundef nonnull %i.aeq, i64 noundef %i.aev) #28
  br label %_ZNKSt14default_deleteIN3gmx17LastStepSignallerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx17LastStepSignallerEEclEPS1_.exit.i: ; preds = %bb.da, %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i264
  call void @_ZdlPvm(ptr noundef nonnull %.pr504, i64 noundef 80) #28
  br label %_ZNSt10unique_ptrIN3gmx17LastStepSignallerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17LastStepSignallerESt14default_deleteIS1_EED2Ev.exit: ; preds = %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_17LastStepSignallerESt14default_deleteIS4_EEEEDaT_.exit.thread", %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_17LastStepSignallerESt14default_deleteIS4_EEEEDaT_.exit", %_ZNKSt14default_deleteIN3gmx17LastStepSignallerEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  %i.aew = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.aex = getelementptr inbounds nuw i8, ptr %i.qi, i64 80
  invoke void @_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE5buildIJRKiRKlRKdEEESt10unique_ptrIS1_St14default_deleteIS1_EEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.991") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.aew, ptr noundef nonnull align 8 dereferenceable(8) %i.xn, ptr noundef nonnull align 8 dereferenceable(8) %i.aex)
          to label %bb.db unwind label %bb.eo

bb.db:                                            ; preds = %_ZNSt10unique_ptrIN3gmx17LastStepSignallerESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN3gmx24TrajectoryElementBuilder20registerWriterClientEPNS_23ITrajectoryWriterClientE(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef null)
          to label %.noexc277 unwind label %bb.et

.noexc277:                                        ; preds = %bb.db
  invoke void @_ZN3gmx14TopologyHolder7Builder14registerClientEPNS_21ITopologyHolderClientE(ptr noundef nonnull align 8 dereferenceable(28) %i.cc, ptr noundef null)
          to label %.noexc278 unwind label %bb.et

.noexc278:                                        ; preds = %.noexc277
  invoke void @_ZN3gmx23CheckpointHelperBuilder14registerClientEPNS_23ICheckpointHelperClientE(ptr noundef nonnull align 8 dereferenceable(84) %i.cd, ptr noundef null)
          to label %.noexc279 unwind label %bb.et

.noexc279:                                        ; preds = %.noexc278
  invoke void @_ZN3gmx19DomDecHelperBuilder14registerClientEPNS_19IDomDecHelperClientE(ptr noundef nonnull align 8 dereferenceable(28) %i.ce, ptr noundef null)
          to label %.noexc280 unwind label %bb.et

.noexc280:                                        ; preds = %.noexc279
  %i.aey = load ptr, ptr %i.rb, align 8, !tbaa !239 ; 15 uses
  %i.aez = ptrtoint ptr %i.aey to i64             ; 5 uses
  %i.afa = load ptr, ptr %i.re, align 8, !tbaa !229 ; 11 uses
  %i.afb = load ptr, ptr %i.rg, align 8, !tbaa !232
  %.not.i.i.i266 = icmp eq ptr %i.afa, %i.afb
  br i1 %.not.i.i.i266, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %.noexc280
  %i.afc = icmp eq ptr %i.aey, %i.afa
  %i.afd = load ptr, ptr %16, align 8, !tbaa !766 ; 2 uses
  store ptr null, ptr %16, align 8, !tbaa !766
  br i1 %i.afc, label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_23NeighborSearchSignallerESt14default_deleteIS4_EEEEDaT_.exit.thread", label %bb.dd

"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_23NeighborSearchSignallerESt14default_deleteIS4_EEEEDaT_.exit.thread": ; preds = %bb.dc
  store ptr %i.afd, ptr %i.afa, align 8, !tbaa !1201
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  store ptr %i.afe, ptr %i.re, align 8, !tbaa !229
  br label %_ZNSt10unique_ptrIN3gmx23NeighborSearchSignallerESt14default_deleteIS1_EED2Ev.exit

bb.dd:                                            ; preds = %bb.dc
  %i.aff = getelementptr inbounds i8, ptr %i.afa, i64 -8 ; 4 uses
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !231
  store i64 %i.afg, ptr %i.afa, align 8, !tbaa !231
  store ptr null, ptr %i.aff, align 8, !tbaa !231
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  store ptr %i.afh, ptr %i.re, align 8, !tbaa !229
  %i.afi = ptrtoint ptr %i.aff to i64
  %i.afj = sub i64 %i.afi, %i.aez
  %i.afk = ashr exact i64 %i.afj, 3               ; 2 uses
  %i.afl = icmp sgt i64 %i.afk, 0
  br i1 %i.afl, label %.lr.ph.i.i.i.i.i.i.i.i.i270, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i267

.lr.ph.i.i.i.i.i.i.i.i.i270:                      ; preds = %bb.dd, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i276
  %.010.i.i.i.i.i.i.i.i.i271 = phi i64 [ %i.aft, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i276 ], [ %i.afk, %bb.dd ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i272 = phi ptr [ %i.afn, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i276 ], [ %i.afa, %bb.dd ]
  %.078.i.i.i.i.i.i.i.i.i273 = phi ptr [ %i.afm, %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i276 ], [ %i.aff, %bb.dd ]
  %i.afm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i273, i64 -8 ; 3 uses
  %i.afn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i272, i64 -8 ; 3 uses
  %i.afo = load ptr, ptr %i.afm, align 8, !tbaa !231
  store ptr null, ptr %i.afm, align 8, !tbaa !231
  %i.afp = load ptr, ptr %i.afn, align 8, !tbaa !231 ; 3 uses
  store ptr %i.afo, ptr %i.afn, align 8, !tbaa !231
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i274 = icmp eq ptr %i.afp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i274, label %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i276, label %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i275

_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i275: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i270
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !180
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 24
  %i.afs = load ptr, ptr %i.afr, align 8
  call void %i.afs(ptr noundef nonnull align 8 dereferenceable(8) %i.afp) #30, !inline_history !1110
  br label %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i276

_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i276: ; preds = %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i275, %.lr.ph.i.i.i.i.i.i.i.i.i270
  %i.aft = add nsw i64 %.010.i.i.i.i.i.i.i.i.i271, -1
  %i.afu = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i271, 1
  br i1 %i.afu, label %.lr.ph.i.i.i.i.i.i.i.i.i270, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i267, !llvm.loop !1066

_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i267: ; preds = %_ZNSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i.i276, %bb.dd
  %i.afv = load ptr, ptr %i.aey, align 8, !tbaa !231 ; 3 uses
  store ptr %i.afd, ptr %i.aey, align 8, !tbaa !231
  %.not.i.i.i.i.i.i.i.i268 = icmp eq ptr %i.afv, null
  br i1 %.not.i.i.i.i.i.i.i.i268, label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_23NeighborSearchSignallerESt14default_deleteIS4_EEEEDaT_.exit", label %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i269

_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i269: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i267
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !180
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 24
  %i.afy = load ptr, ptr %i.afx, align 8
  call void %i.afy(ptr noundef nonnull align 8 dereferenceable(8) %i.afv) #30, !inline_history !1111
  br label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_23NeighborSearchSignallerESt14default_deleteIS4_EEEEDaT_.exit"

bb.de:                                            ; preds = %.noexc280
  %i.afz = ptrtoint ptr %i.afa to i64             ; 3 uses
  %i.aga = sub i64 %i.afz, %i.aez                 ; 2 uses
  %i.agb = icmp eq i64 %i.aga, 9223372036854775800
  br i1 %i.agb, label %bb.df, label %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i407

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
          to label %.noexc425 unwind label %bb.et

.noexc425:                                        ; preds = %bb.df
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i407: ; preds = %bb.de
  %i.agc = ashr exact i64 %i.aga, 3               ; 3 uses
  %.sroa.speculated.i.i408 = call i64 @llvm.umax.i64(i64 %i.agc, i64 1)
  %i.agd = add nsw i64 %.sroa.speculated.i.i408, %i.agc ; 2 uses
  %i.age = icmp ult i64 %i.agd, %i.agc
  %i.agf = call i64 @llvm.umin.i64(i64 %i.agd, i64 1152921504606846975)
  %i.agg = select i1 %i.age, i64 1152921504606846975, i64 %i.agf ; 3 uses
  %.not.i.i409 = icmp ne i64 %i.agg, 0
  call void @llvm.assume(i1 %.not.i.i409)
  %i.agh = shl nuw nsw i64 %i.agg, 3
  %i.agi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agh) #29
          to label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i415 unwind label %bb.et ; 5 uses

_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i415: ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i407
  %i.agj = load ptr, ptr %16, align 8, !tbaa !766
  store ptr null, ptr %16, align 8, !tbaa !766
  store ptr %i.agj, ptr %i.agi, align 8, !tbaa !1201
  %i.agk = getelementptr i8, ptr %i.agi, i64 8    ; 8 uses
  %.not10.i.i.i16.i417 = icmp eq ptr %i.aey, %i.afa
  br i1 %.not10.i.i.i16.i417, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i422, label %iter.check869

iter.check869:                                    ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i415
  %i.agl = add i64 %i.afz, -8
  %i.agm = sub i64 %i.agl, %i.aez                 ; 3 uses
  %i.agn = lshr i64 %i.agm, 3
  %i.ago = add nuw nsw i64 %i.agn, 1              ; 5 uses
  %min.iters.check849 = icmp ult i64 %i.agm, 24
  br i1 %min.iters.check849, label %.lr.ph.i.i.i17.i418.preheader, label %vector.memcheck850

vector.memcheck850:                               ; preds = %iter.check869
  %i.agp = add i64 %i.afz, -8
  %i.agq = sub i64 %i.agp, %i.aez
  %i.agr = and i64 %i.agq, -8                     ; 2 uses
  %i.ags = getelementptr i8, ptr %i.agi, i64 %i.agr
  %i.agt = getelementptr i8, ptr %i.ags, i64 16
  %i.agu = getelementptr i8, ptr %i.aey, i64 %i.agr
  %i.agv = getelementptr i8, ptr %i.agu, i64 8
  %bound0851 = icmp ult ptr %i.agk, %i.agv
  %bound1852 = icmp ult ptr %i.aey, %i.agt
  %found.conflict853 = and i1 %bound0851, %bound1852
  br i1 %found.conflict853, label %.lr.ph.i.i.i17.i418.preheader, label %vector.main.loop.iter.check854

vector.main.loop.iter.check854:                   ; preds = %vector.memcheck850
  %min.iters.check855 = icmp ult i64 %i.agm, 120
  br i1 %min.iters.check855, label %vec.epilog.ph873, label %vector.ph856

vector.ph856:                                     ; preds = %vector.main.loop.iter.check854
  %i.agw = and i64 %i.ago, 12
  %n.vec857 = and i64 %i.ago, 4611686018427387888 ; 4 uses
  %i.agx = shl i64 %n.vec857, 3                   ; 2 uses
  %i.agy = getelementptr i8, ptr %i.agk, i64 %i.agx ; 2 uses
  %i.agz = getelementptr i8, ptr %i.aey, i64 %i.agx
  br label %vector.body858

vector.body858:                                   ; preds = %vector.ph856, %vector.body858
  %index859 = phi i64 [ 0, %vector.ph856 ], [ %index.next866, %vector.body858 ] ; 2 uses
  %i.aha = shl i64 %index859, 3                   ; 2 uses
  %next.gep860 = getelementptr i8, ptr %i.agk, i64 %i.aha ; 4 uses
  %next.gep861 = getelementptr i8, ptr %i.aey, i64 %i.aha ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.ahb = getelementptr i8, ptr %next.gep861, i64 32
  %i.ahc = getelementptr i8, ptr %next.gep861, i64 64
  %i.ahd = getelementptr i8, ptr %next.gep861, i64 96
  %wide.load862 = load <4 x i64>, ptr %next.gep861, align 8, !tbaa !231, !alias.scope !1224
  %wide.load863 = load <4 x i64>, ptr %i.ahb, align 8, !tbaa !231, !alias.scope !1224
  %wide.load864 = load <4 x i64>, ptr %i.ahc, align 8, !tbaa !231, !alias.scope !1224
  %wide.load865 = load <4 x i64>, ptr %i.ahd, align 8, !tbaa !231, !alias.scope !1224
  %i.ahe = getelementptr i8, ptr %next.gep860, i64 32
  %i.ahf = getelementptr i8, ptr %next.gep860, i64 64
  %i.ahg = getelementptr i8, ptr %next.gep860, i64 96
  store <4 x i64> %wide.load862, ptr %next.gep860, align 8, !tbaa !231, !alias.scope !1225, !noalias !1226
  store <4 x i64> %wide.load863, ptr %i.ahe, align 8, !tbaa !231, !alias.scope !1225, !noalias !1226
  store <4 x i64> %wide.load864, ptr %i.ahf, align 8, !tbaa !231, !alias.scope !1225, !noalias !1226
  store <4 x i64> %wide.load865, ptr %i.ahg, align 8, !tbaa !231, !alias.scope !1225, !noalias !1226
  %29 = getelementptr i8, ptr %next.gep861, i64 32
  %30 = getelementptr i8, ptr %next.gep861, i64 64
  %31 = getelementptr i8, ptr %next.gep861, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep861, align 8, !tbaa !231, !alias.scope !1224
  store <4 x ptr> splat (ptr null), ptr %29, align 8, !tbaa !231, !alias.scope !1224
  store <4 x ptr> splat (ptr null), ptr %30, align 8, !tbaa !231, !alias.scope !1224
  store <4 x ptr> splat (ptr null), ptr %31, align 8, !tbaa !231, !alias.scope !1224
  %index.next866 = add nuw i64 %index859, 16      ; 2 uses
  %i.ahh = icmp eq i64 %index.next866, %n.vec857
  br i1 %i.ahh, label %middle.block867, label %vector.body858, !llvm.loop !1118

middle.block867:                                  ; preds = %vector.body858
  %cmp.n868 = icmp eq i64 %i.ago, %n.vec857
  br i1 %cmp.n868, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i422, label %vec.epilog.iter.check870

vec.epilog.iter.check870:                         ; preds = %middle.block867
  %min.epilog.iters.check872 = icmp eq i64 %i.agw, 0
  br i1 %min.epilog.iters.check872, label %.lr.ph.i.i.i17.i418.preheader, label %vec.epilog.ph873, !prof !753

vec.epilog.ph873:                                 ; preds = %vector.main.loop.iter.check854, %vec.epilog.iter.check870
  %vec.epilog.resume.val874 = phi i64 [ %n.vec857, %vec.epilog.iter.check870 ], [ 0, %vector.main.loop.iter.check854 ]
  %n.vec875 = and i64 %i.ago, 4611686018427387900 ; 3 uses
  %i.ahi = shl i64 %n.vec875, 3                   ; 2 uses
  %i.ahj = getelementptr i8, ptr %i.agk, i64 %i.ahi ; 2 uses
  %i.ahk = getelementptr i8, ptr %i.aey, i64 %i.ahi
  br label %vec.epilog.vector.body876

vec.epilog.vector.body876:                        ; preds = %vec.epilog.vector.body876, %vec.epilog.ph873
  %index877 = phi i64 [ %vec.epilog.resume.val874, %vec.epilog.ph873 ], [ %index.next881, %vec.epilog.vector.body876 ] ; 2 uses
  %i.ahl = shl i64 %index877, 3                   ; 2 uses
  %next.gep878 = getelementptr i8, ptr %i.agk, i64 %i.ahl
  %next.gep879 = getelementptr i8, ptr %i.aey, i64 %i.ahl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %wide.load880 = load <4 x i64>, ptr %next.gep879, align 8, !tbaa !231, !alias.scope !1224
  store <4 x i64> %wide.load880, ptr %next.gep878, align 8, !tbaa !231, !alias.scope !1225, !noalias !1226
  store <4 x ptr> splat (ptr null), ptr %next.gep879, align 8, !tbaa !231, !alias.scope !1224
  %index.next881 = add nuw i64 %index877, 4       ; 2 uses
  %i.ahm = icmp eq i64 %index.next881, %n.vec875
  br i1 %i.ahm, label %vec.epilog.middle.block882, label %vec.epilog.vector.body876, !llvm.loop !1119

vec.epilog.middle.block882:                       ; preds = %vec.epilog.vector.body876
  %cmp.n883 = icmp eq i64 %i.ago, %n.vec875
  br i1 %cmp.n883, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i422, label %.lr.ph.i.i.i17.i418.preheader

.lr.ph.i.i.i17.i418.preheader:                    ; preds = %iter.check869, %vector.memcheck850, %vec.epilog.iter.check870, %vec.epilog.middle.block882
  %.012.i.i.i18.i419.ph = phi ptr [ %i.agk, %iter.check869 ], [ %i.agk, %vector.memcheck850 ], [ %i.agy, %vec.epilog.iter.check870 ], [ %i.ahj, %vec.epilog.middle.block882 ]
  %.0911.i.i.i19.i420.ph = phi ptr [ %i.aey, %iter.check869 ], [ %i.aey, %vector.memcheck850 ], [ %i.agz, %vec.epilog.iter.check870 ], [ %i.ahk, %vec.epilog.middle.block882 ]
  br label %.lr.ph.i.i.i17.i418

.lr.ph.i.i.i17.i418:                              ; preds = %.lr.ph.i.i.i17.i418.preheader, %.lr.ph.i.i.i17.i418
  %.012.i.i.i18.i419 = phi ptr [ %i.ahp, %.lr.ph.i.i.i17.i418 ], [ %.012.i.i.i18.i419.ph, %.lr.ph.i.i.i17.i418.preheader ] ; 2 uses
  %.0911.i.i.i19.i420 = phi ptr [ %i.aho, %.lr.ph.i.i.i17.i418 ], [ %.0911.i.i.i19.i420.ph, %.lr.ph.i.i.i17.i418.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.ahn = load i64, ptr %.0911.i.i.i19.i420, align 8, !tbaa !231, !alias.scope !1223
  store i64 %i.ahn, ptr %.012.i.i.i18.i419, align 8, !tbaa !231, !alias.scope !1222
  store ptr null, ptr %.0911.i.i.i19.i420, align 8, !tbaa !231, !alias.scope !1223
  %i.aho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i420, i64 8 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i419, i64 8 ; 2 uses
  %.not.i.i.i20.i421 = icmp eq ptr %i.aho, %i.afa
  br i1 %.not.i.i.i20.i421, label %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i422, label %.lr.ph.i.i.i17.i418, !llvm.loop !1120

_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i422: ; preds = %.lr.ph.i.i.i17.i418, %middle.block867, %vec.epilog.middle.block882, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i415
  %.0.lcssa.i.i.i21.i423 = phi ptr [ %i.agk, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i415 ], [ %i.ahj, %vec.epilog.middle.block882 ], [ %i.agy, %middle.block867 ], [ %i.ahp, %.lr.ph.i.i.i17.i418 ]
  %.not.i23.i424 = icmp eq ptr %i.aey, null
  br i1 %.not.i23.i424, label %.noexc281, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i422
  %i.ahq = load ptr, ptr %i.rg, align 8, !tbaa !232
  %i.ahr = ptrtoint ptr %i.ahq to i64
  %i.ahs = sub i64 %i.ahr, %i.aez
  call void @_ZdlPvm(ptr noundef nonnull %i.aey, i64 noundef %i.ahs) #28
  br label %.noexc281

.noexc281:                                        ; preds = %bb.dg, %_ZNSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i422
  store ptr %i.agi, ptr %i.rb, align 8, !tbaa !228
  store ptr %.0.lcssa.i.i.i21.i423, ptr %i.re, align 8, !tbaa !229
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %i.agg
  store ptr %i.aht, ptr %i.rg, align 8, !tbaa !232
  br label %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_23NeighborSearchSignallerESt14default_deleteIS4_EEEEDaT_.exit"

"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_23NeighborSearchSignallerESt14default_deleteIS4_EEEEDaT_.exit": ; preds = %.noexc281, %_ZNKSt14default_deleteIN3gmx10ISignallerEEclEPS1_.exit.i.i.i.i.i.i.i.i269, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i.i267
  %.pr506 = load ptr, ptr %16, align 8, !tbaa !766 ; 5 uses
  %.not.i282 = icmp eq ptr %.pr506, null
  br i1 %.not.i282, label %_ZNSt10unique_ptrIN3gmx23NeighborSearchSignallerESt14default_deleteIS1_EED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_23NeighborSearchSignallerESt14default_deleteIS4_EEEEDaT_.exit"
  %i.ahu = getelementptr inbounds nuw i8, ptr %.pr506, i64 8 ; 2 uses
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !760 ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.pr506, i64 16
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !761 ; 2 uses
  %.not4.i.i.i.i.i.i283 = icmp eq ptr %i.ahv, %i.ahx
  br i1 %.not4.i.i.i.i.i.i283, label %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i291, label %.lr.ph.i.i.i.i.i.i284

.lr.ph.i.i.i.i.i.i284:                            ; preds = %bb.dh, %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i287
  %.05.i.i.i.i.i.i285 = phi ptr [ %i.aid, %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i287 ], [ %i.ahv, %bb.dh ] ; 4 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i285, i64 16
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i.i.i.i.i286 = icmp eq ptr %i.ahz, null
  br i1 %.not.i.i.i.i.i.i.i.i286, label %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i287, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i.i.i.i.i284
  %i.aia = invoke noundef zeroext i1 %i.ahz(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i.i285, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i.i285, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i287 unwind label %bb.dj ; 0 uses

bb.dj:                                            ; preds = %bb.di
  %i.aib = landingpad { ptr, i32 }
          catch ptr null
  %i.aic = extractvalue { ptr, i32 } %i.aib, 0
  call void @__clang_call_terminate(ptr %i.aic) #31
  unreachable

_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i287: ; preds = %bb.di, %.lr.ph.i.i.i.i.i.i284
  %i.aid = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i285, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i288 = icmp eq ptr %i.aid, %i.ahx
  br i1 %.not.i.i.i.i.i.i288, label %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i289, label %.lr.ph.i.i.i.i.i.i284, !llvm.loop !13

_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i289: ; preds = %_ZSt8_DestroyISt8functionIFvldEEEvPT_.exit.i.i.i.i.i.i287
  %.pr.i.i.i.i290 = load ptr, ptr %i.ahu, align 8, !tbaa !760
  br label %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i291

_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i291: ; preds = %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i289, %bb.dh
  %i.aie = phi ptr [ %.pr.i.i.i.i290, %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i289 ], [ %i.ahv, %bb.dh ] ; 3 uses
  %.not.i.i1.i.i.i.i292 = icmp eq ptr %i.aie, null
  br i1 %.not.i.i1.i.i.i.i292, label %_ZNKSt14default_deleteIN3gmx23NeighborSearchSignallerEEclEPS1_.exit.i, label %bb.dk

bb.dk:                                            ; preds = %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i291
  %i.aif = getelementptr inbounds nuw i8, ptr %.pr506, i64 24
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !762
  %i.aih = ptrtoint ptr %i.aig to i64
  %i.aii = ptrtoint ptr %i.aie to i64
  %i.aij = sub i64 %i.aih, %i.aii
  call void @_ZdlPvm(ptr noundef nonnull %i.aie, i64 noundef %i.aij) #28
  br label %_ZNKSt14default_deleteIN3gmx23NeighborSearchSignallerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx23NeighborSearchSignallerEEclEPS1_.exit.i: ; preds = %bb.dk, %_ZSt8_DestroyIPSt8functionIFvldEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i291
  call void @_ZdlPvm(ptr noundef nonnull %.pr506, i64 noundef 56) #28
  br label %_ZNSt10unique_ptrIN3gmx23NeighborSearchSignallerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx23NeighborSearchSignallerESt14default_deleteIS1_EED2Ev.exit: ; preds = %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_23NeighborSearchSignallerESt14default_deleteIS4_EEEEDaT_.exit.thread", %"_ZZN3gmx32ModularSimulatorAlgorithmBuilder5buildEvENK3$_0clISt10unique_ptrINS_23NeighborSearchSignallerESt14default_deleteIS4_EEEEDaT_.exit", %_ZNKSt14default_deleteIN3gmx23NeighborSearchSignallerEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !188 ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !189
  %i.aiq = load <2 x ptr>, ptr %i.aik, align 8, !tbaa !240
  store <2 x ptr> %i.aiq, ptr %i.ail, align 8, !tbaa !240
  %i.air = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !189
  store ptr %i.ais, ptr %i.aio, align 8, !tbaa !189
  %.not.i.i.i.i.i = icmp eq ptr %i.aim, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aik, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EEaSEOS4_.exit, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt10unique_ptrIN3gmx23NeighborSearchSignallerESt14default_deleteIS1_EED2Ev.exit
  %i.ait = ptrtoint ptr %i.aip to i64
  %i.aiu = ptrtoint ptr %i.aim to i64
  %i.aiv = sub i64 %i.ait, %i.aiu
  call void @_ZdlPvm(ptr noundef nonnull %i.aim, i64 noundef %i.aiv) #28
  br label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EEaSEOS4_.exit: ; preds = %_ZNSt10unique_ptrIN3gmx23NeighborSearchSignallerESt14default_deleteIS1_EED2Ev.exit, %bb.dl
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !220 ; 5 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !221 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !222
  %i.ajd = load <2 x ptr>, ptr %i.aiw, align 8, !tbaa !397
  store <2 x ptr> %i.ajd, ptr %i.aix, align 8, !tbaa !397
  %i.aje = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !222
  store ptr %i.ajf, ptr %i.ajb, align 8, !tbaa !222
  %.not4.i.i.i.i.i = icmp eq ptr %i.aiy, %i.aja
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aiw, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvldRKS0_IFvS0_IFvvEEEEEES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EEaSEOS4_.exit, %_ZSt8_DestroyISt8functionIFvldRKS0_IFvS0_IFvvEEEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ajl, %_ZSt8_DestroyISt8functionIFvldRKS0_IFvS0_IFvvEEEEEEEvPT_.exit.i.i.i.i.i ], [ %i.aiy, %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EEaSEOS4_.exit ] ; 4 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i.i.i.i293 = icmp eq ptr %i.ajh, null
  br i1 %.not.i.i.i.i.i.i.i293, label %_ZSt8_DestroyISt8functionIFvldRKS0_IFvS0_IFvvEEEEEEEvPT_.exit.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.aji = invoke noundef zeroext i1 %i.ajh(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvldRKS0_IFvS0_IFvvEEEEEEEvPT_.exit.i.i.i.i.i unwind label %bb.dn ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.ajj = landingpad { ptr, i32 }
          catch ptr null
  %i.ajk = extractvalue { ptr, i32 } %i.ajj, 0
  call void @__clang_call_terminate(ptr %i.ajk) #31
  unreachable

_ZSt8_DestroyISt8functionIFvldRKS0_IFvS0_IFvvEEEEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.dm, %.lr.ph.i.i.i.i.i
  %i.ajl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i294 = icmp eq ptr %i.ajl, %i.aja
  br i1 %.not.i.i.i.i.i294, label %_ZSt8_DestroyIPSt8functionIFvldRKS0_IFvS0_IFvvEEEEEES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt8functionIFvldRKS0_IFvS0_IFvvEEEEEES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt8functionIFvldRKS0_IFvS0_IFvvEEEEEEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EEaSEOS4_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.aiy, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt8functionIFvldRKS0_IFvS0_IFvvEEEEEESaIS8_EEaSEOSA_.exit, label %bb.do
end_hunk_0
begin_hunk_1_@_ZN3gmx32ModularSimulatorAlgorithmBuilder5buildEv:bb.a
  br label %bb.ee

bb.ed:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.bu, %.noexc188, %.noexc187, %.noexc186, %.noexc185, %.noexc184, %bb.bq
  %i.aml = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx15EnergySignallerESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #30
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pn66 = phi { ptr, i32 } [ %i.aml, %bb.ed ], [ %i.amk, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.eu

bb.ef:                                            ; preds = %_ZNSt10unique_ptrIN3gmx15EnergySignallerESt14default_deleteIS1_EED2Ev.exit
  %i.amm = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.eg:                                            ; preds = %bb.bw
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.eh:                                            ; preds = %bb.bx
  %i.amo = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ei:                                            ; preds = %bb.bz, %bb.by
  %i.amp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit319

bb.ej:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i347, %bb.ce, %.noexc207, %.noexc206, %.noexc205, %.noexc204, %bb.ca
  %i.amq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amr = load ptr, ptr %13, align 8, !tbaa !755 ; 2 uses
  %.not.i318 = icmp eq ptr %i.amr, null
  br i1 %.not.i318, label %_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit319, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @_ZNKSt14default_deleteIN3gmx19TrajectorySignallerEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.amr)
  br label %_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit319

_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit319: ; preds = %bb.ek, %bb.ej, %bb.ei
  %.pn68 = phi { ptr, i32 } [ %i.amp, %bb.ei ], [ %i.amq, %bb.ej ], [ %i.amq, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  br label %bb.el

bb.el:                                            ; preds = %_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit319, %bb.eh
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit319 ], [ %i.amo, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.eg
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %bb.el ], [ %i.amn, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.ef
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn, %bb.em ], [ %i.amm, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %bb.eu

bb.eo:                                            ; preds = %_ZNSt10unique_ptrIN3gmx17LastStepSignallerESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN3gmx19TrajectorySignallerESt14default_deleteIS1_EED2Ev.exit
  %i.ams = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ep:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i367, %bb.cl, %.noexc226, %.noexc225, %.noexc224, %.noexc223, %bb.ch
  %i.amt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx16LoggingSignallerESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #30
  br label %bb.eu

bb.eq:                                            ; preds = %_ZNSt10unique_ptrIN3gmx16LoggingSignallerESt14default_deleteIS1_EED2Ev.exit
  %i.amu = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.er:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i387, %bb.cv, %.noexc252, %.noexc251, %.noexc250, %.noexc249, %bb.cr
  %i.amv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx17LastStepSignallerESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #30
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.pn73 = phi { ptr, i32 } [ %i.amv, %bb.er ], [ %i.amu, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  br label %bb.eu

bb.et:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10ISignallerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i407, %bb.df, %.noexc279, %.noexc278, %.noexc277, %bb.db
  %i.amw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx23NeighborSearchSignallerESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #30
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.ep, %bb.eo, %bb.en, %bb.ee
  %.pn75 = phi { ptr, i32 } [ %i.amw, %bb.et ], [ %i.ams, %bb.eo ], [ %.pn73, %bb.es ], [ %i.amt, %bb.ep ], [ %.pn68.pn.pn.pn, %bb.en ], [ %.pn66, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %.body154

bb.ev:                                            ; preds = %bb.dy, %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE17_M_realloc_insertIJPNS0_26FreeEnergyPerturbationData7ElementEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12emplace_backIJPNS0_16CheckpointHelperEEEERS2_DpOT_.exit
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !700
  %i.ana = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !700
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !700
  %i.ane = load ptr, ptr %i.amx, align 8, !tbaa !700 ; 2 uses
  %i.anf = ptrtoint ptr %i.amz to i64
  %i.ang = ptrtoint ptr %i.ane to i64
  %i.anh = sub i64 %i.anf, %i.ang
  %i.ani = getelementptr inbounds i8, ptr %i.ane, i64 %i.anh
  invoke void @_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.amx, ptr %i.ani, ptr %i.anb, ptr %i.and)
          to label %bb.ew unwind label %bb.fk

bb.ew:                                            ; preds = %bb.ev
  %i.anj = load ptr, ptr %i.akk, align 8, !tbaa !240
  %i.ank = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !240
  %i.anm = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !240
  %i.ano = load ptr, ptr %i.aki, align 8, !tbaa !240 ; 2 uses
  %i.anp = ptrtoint ptr %i.anj to i64
  %i.anq = ptrtoint ptr %i.ano to i64
  %i.anr = sub i64 %i.anp, %i.anq
  %i.ans = getelementptr inbounds i8, ptr %i.ano, i64 %i.anr
  invoke void @_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEEvSA_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.aki, ptr %i.ans, ptr %i.anl, ptr %i.ann)
          to label %bb.ex unwind label %bb.fk

bb.ex:                                            ; preds = %bb.ew
  %i.ant = load ptr, ptr %i.amy, align 8, !tbaa !224 ; 7 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !227
  %.not.i322 = icmp eq ptr %i.ant, %i.anv
  br i1 %.not.i322, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.anw = load ptr, ptr %8, align 8, !tbaa !746
  store ptr null, ptr %8, align 8, !tbaa !746
  store ptr %i.anw, ptr %i.ant, align 8, !tbaa !1228
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  store ptr %i.anx, ptr %i.amy, align 8, !tbaa !224
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_17TrajectoryElementES3_IS9_EEEEERS5_DpOT_.exit

bb.ez:                                            ; preds = %bb.ex
  %i.any = load ptr, ptr %i.amx, align 8, !tbaa !223 ; 9 uses
  %i.anz = ptrtoint ptr %i.ant to i64             ; 2 uses
  %i.aoa = ptrtoint ptr %i.any to i64             ; 3 uses
  %i.aob = sub i64 %i.anz, %i.aoa                 ; 3 uses
  %i.aoc = icmp eq i64 %i.aob, 9223372036854775800
  br i1 %i.aoc, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ez
  %i.aod = ashr exact i64 %i.aob, 3               ; 3 uses
  %.sroa.speculated.i.i427 = call i64 @llvm.umax.i64(i64 %i.aod, i64 1)
  %i.aoe = add nsw i64 %.sroa.speculated.i.i427, %i.aod ; 2 uses
  %i.aof = icmp ult i64 %i.aoe, %i.aod
  %i.aog = call i64 @llvm.umin.i64(i64 %i.aoe, i64 1152921504606846975)
  %i.aoh = select i1 %i.aof, i64 1152921504606846975, i64 %i.aog ; 3 uses
  %.not.i.i428 = icmp ne i64 %i.aoh, 0
  call void @llvm.assume(i1 %.not.i.i428)
  %i.aoi = shl nuw nsw i64 %i.aoh, 3
  %i.aoj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aoi) #29
          to label %.noexc443 unwind label %bb.fk ; 9 uses

.noexc443:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 %i.aob
  %i.aol = load ptr, ptr %8, align 8, !tbaa !746
  store ptr null, ptr %8, align 8, !tbaa !746
  store ptr %i.aol, ptr %i.aok, align 8, !tbaa !1228
  %.not10.i.i.i.i429 = icmp eq ptr %i.any, %i.ant
  br i1 %.not10.i.i.i.i429, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check902

iter.check902:                                    ; preds = %.noexc443
  %i.aom = add i64 %i.anz, -8
  %i.aon = sub i64 %i.aom, %i.aoa                 ; 3 uses
  %i.aoo = lshr i64 %i.aon, 3
  %i.aop = add nuw nsw i64 %i.aoo, 1              ; 5 uses
  %min.iters.check886 = icmp ult i64 %i.aon, 24
  br i1 %min.iters.check886, label %.lr.ph.i.i.i.i430.preheader, label %vector.main.loop.iter.check887

vector.main.loop.iter.check887:                   ; preds = %iter.check902
  %min.iters.check888 = icmp ult i64 %i.aon, 120
  br i1 %min.iters.check888, label %vec.epilog.ph906, label %vector.ph889

vector.ph889:                                     ; preds = %vector.main.loop.iter.check887
  %i.aoq = and i64 %i.aop, 12
  %n.vec890 = and i64 %i.aop, 4611686018427387888 ; 4 uses
  %i.aor = shl i64 %n.vec890, 3                   ; 2 uses
  %i.aos = getelementptr i8, ptr %i.aoj, i64 %i.aor ; 2 uses
  %i.aot = getelementptr i8, ptr %i.any, i64 %i.aor
  br label %vector.body891

vector.body891:                                   ; preds = %vector.ph889, %vector.body891
  %index892 = phi i64 [ 0, %vector.ph889 ], [ %index.next899, %vector.body891 ] ; 2 uses
  %i.aou = shl i64 %index892, 3                   ; 2 uses
  %next.gep893 = getelementptr i8, ptr %i.aoj, i64 %i.aou ; 4 uses
  %next.gep894 = getelementptr i8, ptr %i.any, i64 %i.aou ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %i.aov = getelementptr i8, ptr %next.gep894, i64 32
  %i.aow = getelementptr i8, ptr %next.gep894, i64 64
  %i.aox = getelementptr i8, ptr %next.gep894, i64 96
  %wide.load895 = load <4 x i64>, ptr %next.gep894, align 8, !tbaa !226, !alias.scope !1230
  %wide.load896 = load <4 x i64>, ptr %i.aov, align 8, !tbaa !226, !alias.scope !1230
  %wide.load897 = load <4 x i64>, ptr %i.aow, align 8, !tbaa !226, !alias.scope !1230
  %wide.load898 = load <4 x i64>, ptr %i.aox, align 8, !tbaa !226, !alias.scope !1230
  %i.aoy = getelementptr i8, ptr %next.gep893, i64 32
  %i.aoz = getelementptr i8, ptr %next.gep893, i64 64
  %i.apa = getelementptr i8, ptr %next.gep893, i64 96
  store <4 x i64> %wide.load895, ptr %next.gep893, align 8, !tbaa !226, !alias.scope !1229
  store <4 x i64> %wide.load896, ptr %i.aoy, align 8, !tbaa !226, !alias.scope !1229
  store <4 x i64> %wide.load897, ptr %i.aoz, align 8, !tbaa !226, !alias.scope !1229
  store <4 x i64> %wide.load898, ptr %i.apa, align 8, !tbaa !226, !alias.scope !1229
  %32 = getelementptr i8, ptr %next.gep894, i64 32
  %33 = getelementptr i8, ptr %next.gep894, i64 64
  %34 = getelementptr i8, ptr %next.gep894, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep894, align 8, !tbaa !226, !alias.scope !1230
  store <4 x ptr> splat (ptr null), ptr %32, align 8, !tbaa !226, !alias.scope !1230
  store <4 x ptr> splat (ptr null), ptr %33, align 8, !tbaa !226, !alias.scope !1230
  store <4 x ptr> splat (ptr null), ptr %34, align 8, !tbaa !226, !alias.scope !1230
  %index.next899 = add nuw i64 %index892, 16      ; 2 uses
  %i.apb = icmp eq i64 %index.next899, %n.vec890
  br i1 %i.apb, label %middle.block900, label %vector.body891, !llvm.loop !1124

middle.block900:                                  ; preds = %vector.body891
  %cmp.n901 = icmp eq i64 %i.aop, %n.vec890
  br i1 %cmp.n901, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check903

vec.epilog.iter.check903:                         ; preds = %middle.block900
  %min.epilog.iters.check905 = icmp eq i64 %i.aoq, 0
  br i1 %min.epilog.iters.check905, label %.lr.ph.i.i.i.i430.preheader, label %vec.epilog.ph906, !prof !753

vec.epilog.ph906:                                 ; preds = %vector.main.loop.iter.check887, %vec.epilog.iter.check903
  %vec.epilog.resume.val907 = phi i64 [ %n.vec890, %vec.epilog.iter.check903 ], [ 0, %vector.main.loop.iter.check887 ]
  %n.vec908 = and i64 %i.aop, 4611686018427387900 ; 3 uses
  %i.apc = shl i64 %n.vec908, 3                   ; 2 uses
  %i.apd = getelementptr i8, ptr %i.aoj, i64 %i.apc ; 2 uses
  %i.ape = getelementptr i8, ptr %i.any, i64 %i.apc
  br label %vec.epilog.vector.body909

vec.epilog.vector.body909:                        ; preds = %vec.epilog.vector.body909, %vec.epilog.ph906
  %index910 = phi i64 [ %vec.epilog.resume.val907, %vec.epilog.ph906 ], [ %index.next914, %vec.epilog.vector.body909 ] ; 2 uses
  %i.apf = shl i64 %index910, 3                   ; 2 uses
  %next.gep911 = getelementptr i8, ptr %i.aoj, i64 %i.apf
  %next.gep912 = getelementptr i8, ptr %i.any, i64 %i.apf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %wide.load913 = load <4 x i64>, ptr %next.gep912, align 8, !tbaa !226, !alias.scope !1230
  store <4 x i64> %wide.load913, ptr %next.gep911, align 8, !tbaa !226, !alias.scope !1229
  store <4 x ptr> splat (ptr null), ptr %next.gep912, align 8, !tbaa !226, !alias.scope !1230
  %index.next914 = add nuw i64 %index910, 4       ; 2 uses
  %i.apg = icmp eq i64 %index.next914, %n.vec908
  br i1 %i.apg, label %vec.epilog.middle.block915, label %vec.epilog.vector.body909, !llvm.loop !1125

vec.epilog.middle.block915:                       ; preds = %vec.epilog.vector.body909
  %cmp.n916 = icmp eq i64 %i.aop, %n.vec908
  br i1 %cmp.n916, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i430.preheader

.lr.ph.i.i.i.i430.preheader:                      ; preds = %iter.check902, %vec.epilog.iter.check903, %vec.epilog.middle.block915
  %.012.i.i.i.i431.ph = phi ptr [ %i.aoj, %iter.check902 ], [ %i.aos, %vec.epilog.iter.check903 ], [ %i.apd, %vec.epilog.middle.block915 ]
  %.0911.i.i.i.i432.ph = phi ptr [ %i.any, %iter.check902 ], [ %i.aot, %vec.epilog.iter.check903 ], [ %i.ape, %vec.epilog.middle.block915 ]
  br label %.lr.ph.i.i.i.i430

.lr.ph.i.i.i.i430:                                ; preds = %.lr.ph.i.i.i.i430.preheader, %.lr.ph.i.i.i.i430
  %.012.i.i.i.i431 = phi ptr [ %i.apj, %.lr.ph.i.i.i.i430 ], [ %.012.i.i.i.i431.ph, %.lr.ph.i.i.i.i430.preheader ] ; 2 uses
  %.0911.i.i.i.i432 = phi ptr [ %i.api, %.lr.ph.i.i.i.i430 ], [ %.0911.i.i.i.i432.ph, %.lr.ph.i.i.i.i430.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %i.aph = load i64, ptr %.0911.i.i.i.i432, align 8, !tbaa !226, !alias.scope !1230
  store i64 %i.aph, ptr %.012.i.i.i.i431, align 8, !tbaa !226, !alias.scope !1229
  store ptr null, ptr %.0911.i.i.i.i432, align 8, !tbaa !226, !alias.scope !1230
  %i.api = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i432, i64 8 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i431, i64 8 ; 2 uses
  %.not.i.i.i.i433 = icmp eq ptr %i.api, %i.ant
  br i1 %.not.i.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i430, !llvm.loop !1126

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i430, %middle.block900, %vec.epilog.middle.block915, %.noexc443
  %.0.lcssa.i.i.i.i434 = phi ptr [ %i.aoj, %.noexc443 ], [ %i.apd, %vec.epilog.middle.block915 ], [ %i.aos, %middle.block900 ], [ %i.apj, %.lr.ph.i.i.i.i430 ] ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i434, i64 8
  %.not.i23.i441 = icmp eq ptr %i.any, null
  br i1 %.not.i23.i441, label %.noexc323, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.apl = load ptr, ptr %i.anu, align 8, !tbaa !227
  %i.apm = ptrtoint ptr %i.apl to i64
  %i.apn = sub i64 %i.apm, %i.aoa
  call void @_ZdlPvm(ptr noundef nonnull %i.any, i64 noundef %i.apn) #28
  br label %.noexc323

.noexc323:                                        ; preds = %bb.fa, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.aoj, ptr %i.amx, align 8, !tbaa !223
  store ptr %i.apk, ptr %i.amy, align 8, !tbaa !224
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.aoj, i64 %i.aoh
  store ptr %i.apo, ptr %i.anu, align 8, !tbaa !227
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_17TrajectoryElementES3_IS9_EEEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_17TrajectoryElementES3_IS9_EEEEERS5_DpOT_.exit: ; preds = %.noexc323, %bb.ey
  %i.app = phi ptr [ %.0.lcssa.i.i.i.i434, %.noexc323 ], [ %i.ant, %bb.ey ]
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !226 ; 2 uses
  %i.apr = load ptr, ptr %i.akk, align 8, !tbaa !686 ; 4 uses
  %i.aps = load ptr, ptr %i.akm, align 8, !tbaa !189
  %.not.i324 = icmp eq ptr %i.apr, %i.aps
  br i1 %.not.i324, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_17TrajectoryElementES3_IS9_EEEEERS5_DpOT_.exit
  store ptr %i.apq, ptr %i.apr, align 8, !tbaa !226
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  store ptr %i.apt, ptr %i.akk, align 8, !tbaa !686
  br label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.fc:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_17TrajectoryElementES3_IS9_EEEEERS5_DpOT_.exit
  %i.apu = load ptr, ptr %i.aki, align 8, !tbaa !188 ; 4 uses
  %i.apv = ptrtoint ptr %i.apr to i64
  %i.apw = ptrtoint ptr %i.apu to i64             ; 2 uses
  %i.apx = sub i64 %i.apv, %i.apw                 ; 5 uses
  %i.apy = icmp eq i64 %i.apx, 9223372036854775800
  br i1 %i.apy, label %.invoke, label %_ZNKSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12_M_check_lenEmPKc.exit.i.i325

.invoke:                                          ; preds = %bb.fg, %bb.fc, %bb.ez, %bb.dz, %bb.dt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
          to label %.cont unwind label %bb.fk

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12_M_check_lenEmPKc.exit.i.i325: ; preds = %bb.fc
  %i.apz = ashr exact i64 %i.apx, 3               ; 3 uses
  %.sroa.speculated.i.i.i326 = call i64 @llvm.umax.i64(i64 %i.apz, i64 1)
  %i.aqa = add nsw i64 %.sroa.speculated.i.i.i326, %i.apz ; 2 uses
  %i.aqb = icmp ult i64 %i.aqa, %i.apz
  %i.aqc = call i64 @llvm.umin.i64(i64 %i.aqa, i64 1152921504606846975)
  %i.aqd = select i1 %i.aqb, i64 1152921504606846975, i64 %i.aqc ; 3 uses
  %.not.i.i.i327 = icmp ne i64 %i.aqd, 0
  call void @llvm.assume(i1 %.not.i.i.i327)
  %i.aqe = shl nuw nsw i64 %i.aqd, 3
  %i.aqf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqe) #29
          to label %.noexc331 unwind label %bb.fk ; 4 uses

.noexc331:                                        ; preds = %_ZNKSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12_M_check_lenEmPKc.exit.i.i325
  %i.aqg = getelementptr inbounds i8, ptr %i.aqf, i64 %i.apx ; 2 uses
  store ptr %i.apq, ptr %i.aqg, align 8, !tbaa !226
  %i.aqh = icmp sgt i64 %i.apx, 0
  br i1 %i.aqh, label %bb.fd, label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i328

bb.fd:                                            ; preds = %.noexc331
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aqf, ptr align 8 %i.apu, i64 %i.apx, i1 false)
  br label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i328

_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i328: ; preds = %bb.fd, %.noexc331
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  %.not.i17.i.i329 = icmp eq ptr %i.apu, null
  br i1 %.not.i17.i.i329, label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i328
  %i.aqj = load ptr, ptr %i.akm, align 8, !tbaa !189
  %i.aqk = ptrtoint ptr %i.aqj to i64
  %i.aql = sub i64 %i.aqk, %i.apw
  call void @_ZdlPvm(ptr noundef nonnull %i.apu, i64 noundef %i.aql) #28
  br label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.fe, %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i328
  store ptr %i.aqf, ptr %i.aki, align 8, !tbaa !188
  store ptr %i.aqi, ptr %i.akk, align 8, !tbaa !686
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %i.aqf, i64 %i.aqd
  store ptr %i.aqm, ptr %i.akm, align 8, !tbaa !189
  br label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.fb
  %i.aqn = load ptr, ptr %i.amy, align 8, !tbaa !700
  %i.aqo = getelementptr inbounds i8, ptr %i.aqn, i64 -8
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !226 ; 2 uses
  %i.aqq = load ptr, ptr %i.ain, align 8, !tbaa !686 ; 4 uses
  %i.aqr = load ptr, ptr %i.aio, align 8, !tbaa !189
  %.not.i332 = icmp eq ptr %i.aqq, %i.aqr
  br i1 %.not.i332, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  store ptr %i.aqp, ptr %i.aqq, align 8, !tbaa !226
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8
  store ptr %i.aqs, ptr %i.ain, align 8, !tbaa !686
  br label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit341

bb.fg:                                            ; preds = %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %i.aqt = load ptr, ptr %i.ail, align 8, !tbaa !188 ; 4 uses
  %i.aqu = ptrtoint ptr %i.aqq to i64
  %i.aqv = ptrtoint ptr %i.aqt to i64             ; 2 uses
  %i.aqw = sub i64 %i.aqu, %i.aqv                 ; 5 uses
  %i.aqx = icmp eq i64 %i.aqw, 9223372036854775800
  br i1 %i.aqx, label %.invoke, label %_ZNKSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12_M_check_lenEmPKc.exit.i.i333

_ZNKSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12_M_check_lenEmPKc.exit.i.i333: ; preds = %bb.fg
  %i.aqy = ashr exact i64 %i.aqw, 3               ; 3 uses
  %.sroa.speculated.i.i.i334 = call i64 @llvm.umax.i64(i64 %i.aqy, i64 1)
  %i.aqz = add nsw i64 %.sroa.speculated.i.i.i334, %i.aqy ; 2 uses
  %i.ara = icmp ult i64 %i.aqz, %i.aqy
  %i.arb = call i64 @llvm.umin.i64(i64 %i.aqz, i64 1152921504606846975)
  %i.arc = select i1 %i.ara, i64 1152921504606846975, i64 %i.arb ; 3 uses
  %.not.i.i.i335 = icmp ne i64 %i.arc, 0
  call void @llvm.assume(i1 %.not.i.i.i335)
  %i.ard = shl nuw nsw i64 %i.arc, 3
  %i.are = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ard) #29
          to label %.noexc340 unwind label %bb.fk ; 4 uses

.noexc340:                                        ; preds = %_ZNKSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE12_M_check_lenEmPKc.exit.i.i333
  %i.arf = getelementptr inbounds i8, ptr %i.are, i64 %i.aqw ; 2 uses
  store ptr %i.aqp, ptr %i.arf, align 8, !tbaa !226
  %i.arg = icmp sgt i64 %i.aqw, 0
  br i1 %i.arg, label %bb.fh, label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i336

bb.fh:                                            ; preds = %.noexc340
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.are, ptr align 8 %i.aqt, i64 %i.aqw, i1 false)
  br label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i336

_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i336: ; preds = %bb.fh, %.noexc340
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arf, i64 8
  %.not.i17.i.i337 = icmp eq ptr %i.aqt, null
  br i1 %.not.i17.i.i337, label %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i338, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i336
  %i.ari = load ptr, ptr %i.aio, align 8, !tbaa !189
end_hunk_1
begin_hunk_2_@_ZN3gmx16SignallerBuilderINS_17LastStepSignallerEE19buildCallbackVectorIJEEESt6vectorISt8functionIFvldEESaIS7_EEDpOT_:bb.a
  %.not = icmp eq ptr %i.af, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZNSt6vectorISt8functionIFvldEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #30
  resume { ptr, i32 } %.pn
}

declare void @_ZN3gmx17LastStepSignallerC1ESt6vectorISt8functionIFvldEESaIS4_EEllPNS_11StopHandlerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef align 8, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE19buildCallbackVectorIJEEESt6vectorISt8functionIFvldEESaIS7_EEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.1012") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional", align 8     ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !1306   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1306 ; 2 uses
  %.not11 = icmp eq ptr %i.a, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit
  %.sroa.08.012 = phi ptr [ %i.a, %.lr.ph ], [ %i.af, %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.i = load ptr, ptr %.sroa.08.012, align 8, !tbaa !718 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !180, !noalias !1307
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1307
  invoke void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE20getSignallerCallbackIJEEESt8optionalISt8functionIFvldEEEPNS_30INeighborSearchSignallerClientEDpOT_.exit unwind label %bb.g, !inline_history !1305

_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE20getSignallerCallbackIJEEESt8optionalISt8functionIFvldEEEPNS_30INeighborSearchSignallerClientEDpOT_.exit: ; preds = %bb.b
  %i.m = load i8, ptr %i.d, align 8, !tbaa !33, !range !250, !noundef !242
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.c:                                             ; preds = %_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE20getSignallerCallbackIJEEESt8optionalISt8functionIFvldEEEPNS_30INeighborSearchSignallerClientEDpOT_.exit
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !761  ; 6 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !762
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !29
  store ptr %i.r, ptr %i.q, align 8, !tbaa !29
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !30
  %.not.i.i.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvldEEC2EOS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !396
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !30
  store ptr %i.u, ptr %i.t, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvldEEC2EOS1_.exit.i

_ZNSt8functionIFvldEEC2EOS1_.exit.i:              ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !761
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.e, align 8, !tbaa !761
  br label %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.f:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorISt8functionIFvldEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #30
  br label %bb.l

_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.f, %_ZNSt8functionIFvldEEC2EOS1_.exit.i, %_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE20getSignallerCallbackIJEEESt8optionalISt8functionIFvldEEEPNS_30INeighborSearchSignallerClientEDpOT_.exit
  %i.z = load i8, ptr %i.d, align 8, !tbaa !33, !range !250, !noundef !242
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  store i8 0, ptr %i.d, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 3)
          to label %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #31
  unreachable

_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZNSt6vectorISt8functionIFvldEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #30
  resume { ptr, i32 } %.pn
}

declare void @_ZN3gmx23NeighborSearchSignallerC1ESt6vectorISt8functionIFvldEESaIS4_EElld(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef align 8, i64 noundef, i64 noundef, double noundef) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %.not116 = icmp eq ptr %2, %3
  br i1 %.not116, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !224  ; 31 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %iter.check231, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

iter.check231:                                    ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 9 uses
  %i.r = add i64 %i.b, -8
  %i.s = sub i64 %i.r, %i.c                       ; 3 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 5 uses
  %min.iters.check211 = icmp ult i64 %i.s, 24
  br i1 %min.iters.check211, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck212

vector.memcheck212:                               ; preds = %iter.check231
  %i.v = add i64 %i.b, -8
  %i.w = sub i64 %i.v, %i.c
  %i.x = and i64 %i.w, -8                         ; 2 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = add i64 %i.x, %i.c
  %i.ab = add i64 %i.aa, 8
  %i.ac = sub i64 %i.ab, %i.b
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ac
  %bound0213 = icmp ult ptr %i.i, %i.ad
  %bound1214 = icmp ult ptr %i.q, %i.z
  %found.conflict215 = and i1 %bound0213, %bound1214
  br i1 %found.conflict215, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check216

vector.main.loop.iter.check216:                   ; preds = %vector.memcheck212
  %min.iters.check217 = icmp ult i64 %i.s, 120
  br i1 %min.iters.check217, label %vec.epilog.ph235, label %vector.ph218

vector.ph218:                                     ; preds = %vector.main.loop.iter.check216
  %i.ae = and i64 %i.u, 12
  %n.vec219 = and i64 %i.u, 4611686018427387888   ; 4 uses
  %i.af = shl i64 %n.vec219, 3                    ; 2 uses
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.af
  br label %vector.body220

vector.body220:                                   ; preds = %vector.ph218, %vector.body220
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next228, %vector.body220 ] ; 2 uses
  %i.ai = shl i64 %index221, 3                    ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.i, i64 %i.ai ; 4 uses
  %next.gep223 = getelementptr i8, ptr %i.q, i64 %i.ai ; 8 uses
  %i.aj = getelementptr i8, ptr %next.gep223, i64 32
  %i.ak = getelementptr i8, ptr %next.gep223, i64 64
  %i.al = getelementptr i8, ptr %next.gep223, i64 96
  %wide.load224 = load <4 x i64>, ptr %next.gep223, align 8, !tbaa !226, !alias.scope !1345
  %wide.load225 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !226, !alias.scope !1345
  %wide.load226 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !226, !alias.scope !1345
  %wide.load227 = load <4 x i64>, ptr %i.al, align 8, !tbaa !226, !alias.scope !1345
  %i.am = getelementptr i8, ptr %next.gep222, i64 32
  %i.an = getelementptr i8, ptr %next.gep222, i64 64
  %i.ao = getelementptr i8, ptr %next.gep222, i64 96
  store <4 x i64> %wide.load224, ptr %next.gep222, align 8, !tbaa !226, !alias.scope !1346, !noalias !1345
  store <4 x i64> %wide.load225, ptr %i.am, align 8, !tbaa !226, !alias.scope !1346, !noalias !1345
  store <4 x i64> %wide.load226, ptr %i.an, align 8, !tbaa !226, !alias.scope !1346, !noalias !1345
  store <4 x i64> %wide.load227, ptr %i.ao, align 8, !tbaa !226, !alias.scope !1346, !noalias !1345
  %4 = getelementptr i8, ptr %next.gep223, i64 32
  %5 = getelementptr i8, ptr %next.gep223, i64 64
  %6 = getelementptr i8, ptr %next.gep223, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep223, align 8, !tbaa !226, !alias.scope !1345
  store <4 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !226, !alias.scope !1345
  store <4 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !226, !alias.scope !1345
  store <4 x ptr> splat (ptr null), ptr %6, align 8, !tbaa !226, !alias.scope !1345
  %index.next228 = add nuw i64 %index221, 16      ; 2 uses
  %i.ap = icmp eq i64 %index.next228, %n.vec219
  br i1 %i.ap, label %middle.block229, label %vector.body220, !llvm.loop !1311

middle.block229:                                  ; preds = %vector.body220
  %cmp.n230 = icmp eq i64 %i.u, %n.vec219
  br i1 %cmp.n230, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %vec.epilog.iter.check232

vec.epilog.iter.check232:                         ; preds = %middle.block229
  %min.epilog.iters.check234 = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check234, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph235, !prof !753

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check216, %vec.epilog.iter.check232
  %vec.epilog.resume.val236 = phi i64 [ %n.vec219, %vec.epilog.iter.check232 ], [ 0, %vector.main.loop.iter.check216 ]
  %n.vec237 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec237, 3                    ; 2 uses
  %i.ar = getelementptr i8, ptr %i.i, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.q, i64 %i.aq
  br label %vec.epilog.vector.body238

vec.epilog.vector.body238:                        ; preds = %vec.epilog.vector.body238, %vec.epilog.ph235
  %index239 = phi i64 [ %vec.epilog.resume.val236, %vec.epilog.ph235 ], [ %index.next243, %vec.epilog.vector.body238 ] ; 2 uses
  %i.at = shl i64 %index239, 3                    ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.i, i64 %i.at
  %next.gep241 = getelementptr i8, ptr %i.q, i64 %i.at ; 2 uses
  %wide.load242 = load <4 x i64>, ptr %next.gep241, align 8, !tbaa !226, !alias.scope !1345
  store <4 x i64> %wide.load242, ptr %next.gep240, align 8, !tbaa !226, !alias.scope !1346, !noalias !1345
  store <4 x ptr> splat (ptr null), ptr %next.gep241, align 8, !tbaa !226, !alias.scope !1345
  %index.next243 = add nuw i64 %index239, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next243, %n.vec237
  br i1 %i.au, label %vec.epilog.middle.block244, label %vec.epilog.vector.body238, !llvm.loop !1312

vec.epilog.middle.block244:                       ; preds = %vec.epilog.vector.body238
  %cmp.n245 = icmp eq i64 %i.u, %n.vec237
  br i1 %cmp.n245, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check231, %vector.memcheck212, %vec.epilog.iter.check232, %vec.epilog.middle.block244
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check231 ], [ %i.i, %vector.memcheck212 ], [ %i.ag, %vec.epilog.iter.check232 ], [ %i.ar, %vec.epilog.middle.block244 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %iter.check231 ], [ %i.q, %vector.memcheck212 ], [ %i.ah, %vec.epilog.iter.check232 ], [ %i.as, %vec.epilog.middle.block244 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.av = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !226
  store i64 %i.av, ptr %.013.i.i.i.i.i, align 8, !tbaa !226
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !226
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1313

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block244, %middle.block229
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ay, ptr %i.h, align 8, !tbaa !224
  %i.az = ptrtoint ptr %i.q to i64
  %i.ba = sub i64 %i.az, %i.m
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bk, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %i.bb, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.be, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %i.i, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.bd, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %i.q, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %i.bd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !226
  store ptr null, ptr %i.bd, align 8, !tbaa !226
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !226 ; 3 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !226
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !180
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #30, !inline_history !1314
  br label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i51
  %i.bk = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bl = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit, !llvm.loop !1315

_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit: ; preds = %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.bm = icmp sgt i64 %i.e, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55
  %.012.i.i.i.i.i = phi i64 [ %i.bu, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55 ], [ %i.e, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bt, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55 ], [ %1, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bs, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55 ], [ %2, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %i.bn = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !226
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !226
  %i.bo = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !226 ; 3 uses
  store ptr %i.bn, ptr %.0811.i.i.i.i.i, align 8, !tbaa !226
  %.not.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i53, label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55, label %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i54

_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i52
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !180
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #30, !inline_history !1316
  br label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55

_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55: ; preds = %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i54, %.lr.ph.i.i.i.i.i52
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bu = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bv = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1317

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bw = getelementptr inbounds i8, ptr %2, i64 %i.n ; 8 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bw, %3
  br i1 %.not10.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bx = add i64 %i.b, %i.m
  %i.by = add i64 %i.bx, -8
  %i.bz = add i64 %i.k, %i.c
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ca, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cd = add i64 %i.b, %i.m
  %i.ce = add i64 %i.cd, -8
  %i.cf = add i64 %i.k, %i.c
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = and i64 %i.cg, -8                       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.i, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = add i64 %i.ch, %i.k
  %i.cl = add i64 %i.ck, 8
  %i.cm = sub i64 %i.cl, %i.m
  %i.cn = getelementptr i8, ptr %2, i64 %i.cm
  %bound0 = icmp ult ptr %i.i, %i.cn
  %bound1 = icmp ult ptr %i.bw, %i.cj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check151 = icmp ult i64 %i.ca, 120
  br i1 %min.iters.check151, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.co = and i64 %i.cc, 12
  %n.vec = and i64 %i.cc, 4611686018427387888     ; 4 uses
  %i.cp = shl i64 %n.vec, 3                       ; 2 uses
  %i.cq = getelementptr i8, ptr %i.i, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.bw, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.cs ; 4 uses
  %next.gep152 = getelementptr i8, ptr %i.bw, i64 %i.cs ; 8 uses
  %i.ct = getelementptr i8, ptr %next.gep152, i64 32
  %i.cu = getelementptr i8, ptr %next.gep152, i64 64
  %i.cv = getelementptr i8, ptr %next.gep152, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep152, align 8, !tbaa !226, !alias.scope !1347
  %wide.load153 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !226, !alias.scope !1347
  %wide.load154 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !226, !alias.scope !1347
  %wide.load155 = load <4 x i64>, ptr %i.cv, align 8, !tbaa !226, !alias.scope !1347
  %i.cw = getelementptr i8, ptr %next.gep, i64 32
  %i.cx = getelementptr i8, ptr %next.gep, i64 64
  %i.cy = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !226, !alias.scope !1348, !noalias !1347
  store <4 x i64> %wide.load153, ptr %i.cw, align 8, !tbaa !226, !alias.scope !1348, !noalias !1347
  store <4 x i64> %wide.load154, ptr %i.cx, align 8, !tbaa !226, !alias.scope !1348, !noalias !1347
  store <4 x i64> %wide.load155, ptr %i.cy, align 8, !tbaa !226, !alias.scope !1348, !noalias !1347
  %7 = getelementptr i8, ptr %next.gep152, i64 32
  %8 = getelementptr i8, ptr %next.gep152, i64 64
  %9 = getelementptr i8, ptr %next.gep152, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep152, align 8, !tbaa !226, !alias.scope !1347
  store <4 x ptr> splat (ptr null), ptr %7, align 8, !tbaa !226, !alias.scope !1347
  store <4 x ptr> splat (ptr null), ptr %8, align 8, !tbaa !226, !alias.scope !1347
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !226, !alias.scope !1347
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !1321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.co, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !753

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec156 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.da = shl i64 %n.vec156, 3                    ; 2 uses
  %i.db = getelementptr i8, ptr %i.i, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.bw, i64 %i.da
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index157 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next161, %vec.epilog.vector.body ] ; 2 uses
  %i.dd = shl i64 %index157, 3                    ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.i, i64 %i.dd
  %next.gep159 = getelementptr i8, ptr %i.bw, i64 %i.dd ; 2 uses
  %wide.load160 = load <4 x i64>, ptr %next.gep159, align 8, !tbaa !226, !alias.scope !1347
  store <4 x i64> %wide.load160, ptr %next.gep158, align 8, !tbaa !226, !alias.scope !1348, !noalias !1347
  store <4 x ptr> splat (ptr null), ptr %next.gep159, align 8, !tbaa !226, !alias.scope !1347
  %index.next161 = add nuw i64 %index157, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.de, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1322

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n162 = icmp eq i64 %i.cc, %n.vec156
  br i1 %cmp.n162, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.i, %vector.memcheck ], [ %i.cq, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ]
  %.sroa.08.011.i.i.i.i.ph = phi ptr [ %i.bw, %iter.check ], [ %i.bw, %vector.memcheck ], [ %i.cr, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.011.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.df = load i64, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !226
  store i64 %i.df, ptr %.012.i.i.i.i, align 8, !tbaa !226
  store ptr null, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !226
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.dg, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1323

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.di = sub nsw i64 %i.e, %i.o
  %i.dj = getelementptr [8 x i8], ptr %i.i, i64 %i.di ; 7 uses
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %iter.check189

iter.check189:                                    ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.dk = add i64 %i.k, -8
  %i.dl = sub i64 %i.dk, %i.m                     ; 3 uses
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 5 uses
  %min.iters.check169 = icmp ult i64 %i.dl, 24
  br i1 %min.iters.check169, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.memcheck170

vector.memcheck170:                               ; preds = %iter.check189
  %i.do = add i64 %i.k, -8
  %i.dp = sub i64 %i.do, %i.m
  %i.dq = and i64 %i.dp, -8                       ; 2 uses
  %i.dr = add i64 %i.d, %i.dq
  %i.ds = add i64 %i.dr, 8
  %i.dt = sub i64 %i.ds, %i.n
  %i.du = getelementptr i8, ptr %i.i, i64 %i.dt
  %i.dv = getelementptr i8, ptr %1, i64 %i.dq
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %bound0171 = icmp ult ptr %i.dj, %i.dw
  %bound1172 = icmp ult ptr %1, %i.du
  %found.conflict173 = and i1 %bound0171, %bound1172
  br i1 %found.conflict173, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check174

vector.main.loop.iter.check174:                   ; preds = %vector.memcheck170
  %min.iters.check175 = icmp ult i64 %i.dl, 120
  br i1 %min.iters.check175, label %vec.epilog.ph193, label %vector.ph176

vector.ph176:                                     ; preds = %vector.main.loop.iter.check174
  %i.dx = and i64 %i.dn, 12
  %n.vec177 = and i64 %i.dn, 4611686018427387888  ; 4 uses
  %i.dy = shl i64 %n.vec177, 3                    ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dj, i64 %i.dy
  %i.ea = getelementptr i8, ptr %1, i64 %i.dy
  br label %vector.body178

vector.body178:                                   ; preds = %vector.ph176, %vector.body178
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next186, %vector.body178 ] ; 2 uses
  %i.eb = shl i64 %index179, 3                    ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.dj, i64 %i.eb ; 4 uses
  %next.gep181 = getelementptr i8, ptr %1, i64 %i.eb ; 8 uses
  %i.ec = getelementptr i8, ptr %next.gep181, i64 32
  %i.ed = getelementptr i8, ptr %next.gep181, i64 64
  %i.ee = getelementptr i8, ptr %next.gep181, i64 96
  %wide.load182 = load <4 x i64>, ptr %next.gep181, align 8, !tbaa !226, !alias.scope !1349
  %wide.load183 = load <4 x i64>, ptr %i.ec, align 8, !tbaa !226, !alias.scope !1349
  %wide.load184 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !226, !alias.scope !1349
  %wide.load185 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !226, !alias.scope !1349
  %i.ef = getelementptr i8, ptr %next.gep180, i64 32
  %i.eg = getelementptr i8, ptr %next.gep180, i64 64
  %i.eh = getelementptr i8, ptr %next.gep180, i64 96
  store <4 x i64> %wide.load182, ptr %next.gep180, align 8, !tbaa !226, !alias.scope !1350, !noalias !1349
  store <4 x i64> %wide.load183, ptr %i.ef, align 8, !tbaa !226, !alias.scope !1350, !noalias !1349
  store <4 x i64> %wide.load184, ptr %i.eg, align 8, !tbaa !226, !alias.scope !1350, !noalias !1349
  store <4 x i64> %wide.load185, ptr %i.eh, align 8, !tbaa !226, !alias.scope !1350, !noalias !1349
  %10 = getelementptr i8, ptr %next.gep181, i64 32
  %11 = getelementptr i8, ptr %next.gep181, i64 64
  %12 = getelementptr i8, ptr %next.gep181, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep181, align 8, !tbaa !226, !alias.scope !1349
  store <4 x ptr> splat (ptr null), ptr %10, align 8, !tbaa !226, !alias.scope !1349
  store <4 x ptr> splat (ptr null), ptr %11, align 8, !tbaa !226, !alias.scope !1349
  store <4 x ptr> splat (ptr null), ptr %12, align 8, !tbaa !226, !alias.scope !1349
  %index.next186 = add nuw i64 %index179, 16      ; 2 uses
  %i.ei = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.ei, label %middle.block187, label %vector.body178, !llvm.loop !1327

middle.block187:                                  ; preds = %vector.body178
  %cmp.n188 = icmp eq i64 %i.dn, %n.vec177
  br i1 %cmp.n188, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block187
  %min.epilog.iters.check192 = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check192, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph193, !prof !753

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check174, %vec.epilog.iter.check190
  %vec.epilog.resume.val194 = phi i64 [ %n.vec177, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check174 ]
  %n.vec195 = and i64 %i.dn, 4611686018427387900  ; 3 uses
  %i.ej = shl i64 %n.vec195, 3                    ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dj, i64 %i.ej
  %i.el = getelementptr i8, ptr %1, i64 %i.ej
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph193
  %index197 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph193 ], [ %index.next201, %vec.epilog.vector.body196 ] ; 2 uses
  %i.em = shl i64 %index197, 3                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.dj, i64 %i.em
  %next.gep199 = getelementptr i8, ptr %1, i64 %i.em ; 2 uses
  %wide.load200 = load <4 x i64>, ptr %next.gep199, align 8, !tbaa !226, !alias.scope !1349
  store <4 x i64> %wide.load200, ptr %next.gep198, align 8, !tbaa !226, !alias.scope !1350, !noalias !1349
  store <4 x ptr> splat (ptr null), ptr %next.gep199, align 8, !tbaa !226, !alias.scope !1349
  %index.next201 = add nuw i64 %index197, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next201, %n.vec195
  br i1 %i.en, label %vec.epilog.middle.block202, label %vec.epilog.vector.body196, !llvm.loop !1328

vec.epilog.middle.block202:                       ; preds = %vec.epilog.vector.body196
  %cmp.n203 = icmp eq i64 %i.dn, %n.vec195
  br i1 %cmp.n203, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check189, %vector.memcheck170, %vec.epilog.iter.check190, %vec.epilog.middle.block202
  %.013.i.i.i.i.i58.ph = phi ptr [ %i.dj, %iter.check189 ], [ %i.dj, %vector.memcheck170 ], [ %i.dz, %vec.epilog.iter.check190 ], [ %i.ek, %vec.epilog.middle.block202 ]
  %.sroa.08.012.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check189 ], [ %1, %vector.memcheck170 ], [ %i.ea, %vec.epilog.iter.check190 ], [ %i.el, %vec.epilog.middle.block202 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i57 ], [ %.013.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i57 ], [ %.sroa.08.012.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !226
  store i64 %i.eo, ptr %.013.i.i.i.i.i58, align 8, !tbaa !226
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !226
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 8
  %.not.i.i.i.i.i60 = icmp eq ptr %i.ep, %i.i
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57, !llvm.loop !1329

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62: ; preds = %.lr.ph.i.i.i.i.i57, %middle.block187, %vec.epilog.middle.block202, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.er, ptr %i.h, align 8, !tbaa !224
  %i.es = ashr exact i64 %i.n, 3                  ; 2 uses
  %i.et = icmp sgt i64 %i.es, 0
  br i1 %i.et, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i64:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70
  %.012.i.i.i.i.i65 = phi i64 [ %i.fb, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70 ], [ %i.es, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 2 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.fa, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70 ], [ %1, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %.0910.i.i.i.i.i67 = phi ptr [ %i.ez, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70 ], [ %2, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %i.eu = load ptr, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !226
  store ptr null, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !226
  %i.ev = load ptr, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !226 ; 3 uses
  store ptr %i.eu, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !226
  %.not.i.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i.i.i.i.i68, label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70, label %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i69

_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i64
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !180
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  tail call void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev) #30, !inline_history !1316
  br label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70

_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70: ; preds = %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i69, %.lr.ph.i.i.i.i.i64
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  %i.fb = add nsw i64 %.012.i.i.i.i.i65, -1
  %i.fc = icmp sgt i64 %.012.i.i.i.i.i65, 1
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1317

bb.d:                                             ; preds = %bb.b
  %i.fd = load ptr, ptr %0, align 8, !tbaa !223   ; 11 uses
  %i.fe = ptrtoint ptr %i.fd to i64               ; 3 uses
  %i.ff = sub i64 %i.k, %i.fe
  %i.fg = ashr exact i64 %i.ff, 3                 ; 4 uses
  %i.fh = sub nsw i64 1152921504606846975, %i.fg
  %i.fi = icmp ult i64 %i.fh, %i.e
  br i1 %i.fi, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #33
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 %i.e)
  %i.fj = add nsw i64 %.sroa.speculated.i, %i.fg  ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fg
  %i.fl = tail call i64 @llvm.umin.i64(i64 %i.fj, i64 1152921504606846975)
  %i.fm = select i1 %i.fk, i64 1152921504606846975, i64 %i.fl ; 3 uses
  %.not.i = icmp eq i64 %i.fm, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit, %bb.f
  %i.fp = phi ptr [ %i.fo, %bb.f ], [ null, %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %i.fd, %1
  br i1 %.not11.i.i.i.i.i72, label %iter.check306, label %iter.check264

iter.check264:                                    ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit
  %i.fq = add i64 %i.a, -8
  %i.fr = sub i64 %i.fq, %i.fe                    ; 3 uses
  %i.fs = lshr i64 %i.fr, 3
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 5 uses
  %min.iters.check248 = icmp ult i64 %i.fr, 24
  br i1 %min.iters.check248, label %.lr.ph.i.i.i.i.i73.preheader, label %vector.main.loop.iter.check249

vector.main.loop.iter.check249:                   ; preds = %iter.check264
  %min.iters.check250 = icmp ult i64 %i.fr, 120
  br i1 %min.iters.check250, label %vec.epilog.ph268, label %vector.ph251

vector.ph251:                                     ; preds = %vector.main.loop.iter.check249
  %i.fu = and i64 %i.ft, 12
  %n.vec252 = and i64 %i.ft, 4611686018427387888  ; 4 uses
  %i.fv = shl i64 %n.vec252, 3                    ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fp, i64 %i.fv  ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fd, i64 %i.fv
  br label %vector.body253

vector.body253:                                   ; preds = %vector.ph251, %vector.body253
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next261, %vector.body253 ] ; 2 uses
  %i.fy = shl i64 %index254, 3                    ; 2 uses
  %next.gep255 = getelementptr i8, ptr %i.fp, i64 %i.fy ; 4 uses
  %next.gep256 = getelementptr i8, ptr %i.fd, i64 %i.fy ; 8 uses
  %i.fz = getelementptr i8, ptr %next.gep256, i64 32
  %i.ga = getelementptr i8, ptr %next.gep256, i64 64
  %i.gb = getelementptr i8, ptr %next.gep256, i64 96
  %wide.load257 = load <4 x i64>, ptr %next.gep256, align 8, !tbaa !226
  %wide.load258 = load <4 x i64>, ptr %i.fz, align 8, !tbaa !226
  %wide.load259 = load <4 x i64>, ptr %i.ga, align 8, !tbaa !226
  %wide.load260 = load <4 x i64>, ptr %i.gb, align 8, !tbaa !226
  %i.gc = getelementptr i8, ptr %next.gep255, i64 32
  %i.gd = getelementptr i8, ptr %next.gep255, i64 64
  %i.ge = getelementptr i8, ptr %next.gep255, i64 96
  store <4 x i64> %wide.load257, ptr %next.gep255, align 8, !tbaa !226
  store <4 x i64> %wide.load258, ptr %i.gc, align 8, !tbaa !226
  store <4 x i64> %wide.load259, ptr %i.gd, align 8, !tbaa !226
  store <4 x i64> %wide.load260, ptr %i.ge, align 8, !tbaa !226
  %13 = getelementptr i8, ptr %next.gep256, i64 32
  %14 = getelementptr i8, ptr %next.gep256, i64 64
  %15 = getelementptr i8, ptr %next.gep256, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep256, align 8, !tbaa !226
  store <4 x ptr> splat (ptr null), ptr %13, align 8, !tbaa !226
  store <4 x ptr> splat (ptr null), ptr %14, align 8, !tbaa !226
  store <4 x ptr> splat (ptr null), ptr %15, align 8, !tbaa !226
  %index.next261 = add nuw i64 %index254, 16      ; 2 uses
  %i.gf = icmp eq i64 %index.next261, %n.vec252
  br i1 %i.gf, label %middle.block262, label %vector.body253, !llvm.loop !1330

middle.block262:                                  ; preds = %vector.body253
  %cmp.n263 = icmp eq i64 %i.ft, %n.vec252
  br i1 %cmp.n263, label %iter.check306, label %vec.epilog.iter.check265

vec.epilog.iter.check265:                         ; preds = %middle.block262
  %min.epilog.iters.check267 = icmp eq i64 %i.fu, 0
  br i1 %min.epilog.iters.check267, label %.lr.ph.i.i.i.i.i73.preheader, label %vec.epilog.ph268, !prof !753

vec.epilog.ph268:                                 ; preds = %vector.main.loop.iter.check249, %vec.epilog.iter.check265
  %vec.epilog.resume.val269 = phi i64 [ %n.vec252, %vec.epilog.iter.check265 ], [ 0, %vector.main.loop.iter.check249 ]
  %n.vec270 = and i64 %i.ft, 4611686018427387900  ; 3 uses
  %i.gg = shl i64 %n.vec270, 3                    ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fp, i64 %i.gg  ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fd, i64 %i.gg
  br label %vec.epilog.vector.body271

vec.epilog.vector.body271:                        ; preds = %vec.epilog.vector.body271, %vec.epilog.ph268
  %index272 = phi i64 [ %vec.epilog.resume.val269, %vec.epilog.ph268 ], [ %index.next276, %vec.epilog.vector.body271 ] ; 2 uses
  %i.gj = shl i64 %index272, 3                    ; 2 uses
  %next.gep273 = getelementptr i8, ptr %i.fp, i64 %i.gj
  %next.gep274 = getelementptr i8, ptr %i.fd, i64 %i.gj ; 2 uses
  %wide.load275 = load <4 x i64>, ptr %next.gep274, align 8, !tbaa !226
  store <4 x i64> %wide.load275, ptr %next.gep273, align 8, !tbaa !226
  store <4 x ptr> splat (ptr null), ptr %next.gep274, align 8, !tbaa !226
  %index.next276 = add nuw i64 %index272, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next276, %n.vec270
  br i1 %i.gk, label %vec.epilog.middle.block277, label %vec.epilog.vector.body271, !llvm.loop !1331

vec.epilog.middle.block277:                       ; preds = %vec.epilog.vector.body271
  %cmp.n278 = icmp eq i64 %i.ft, %n.vec270
  br i1 %cmp.n278, label %iter.check306, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %iter.check264, %vec.epilog.iter.check265, %vec.epilog.middle.block277
  %.013.i.i.i.i.i74.ph = phi ptr [ %i.fp, %iter.check264 ], [ %i.fw, %vec.epilog.iter.check265 ], [ %i.gh, %vec.epilog.middle.block277 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %i.fd, %iter.check264 ], [ %i.fx, %vec.epilog.iter.check265 ], [ %i.gi, %vec.epilog.middle.block277 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader ] ; 3 uses
  %i.gl = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !226
  store i64 %i.gl, ptr %.013.i.i.i.i.i74, align 8, !tbaa !226
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !226
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.gm, %1
  br i1 %.not.i.i.i.i.i76, label %iter.check306, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1332

iter.check306:                                    ; preds = %.lr.ph.i.i.i.i.i73, %middle.block262, %vec.epilog.middle.block277, %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %i.fp, %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit ], [ %i.gh, %vec.epilog.middle.block277 ], [ %i.fw, %middle.block262 ], [ %i.gn, %.lr.ph.i.i.i.i.i73 ] ; 8 uses
  %i.go = add i64 %i.b, -8
  %i.gp = sub i64 %i.go, %i.c                     ; 3 uses
  %i.gq = lshr i64 %i.gp, 3
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 5 uses
  %min.iters.check286 = icmp ult i64 %i.gp, 24
  br i1 %min.iters.check286, label %.lr.ph.i.i.i.i79.preheader, label %vector.memcheck287

vector.memcheck287:                               ; preds = %iter.check306
  %i.gs = add i64 %i.b, -8
  %i.gt = sub i64 %i.gs, %i.c
  %i.gu = and i64 %i.gt, -8
  %i.gv = add i64 %i.gu, 8                        ; 2 uses
  %i.gw = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.gv
  %i.gx = getelementptr i8, ptr %2, i64 %i.gv
  %bound0288 = icmp ult ptr %.0.lcssa.i.i.i.i.i77, %i.gx
  %bound1289 = icmp ult ptr %2, %i.gw
  %found.conflict290 = and i1 %bound0288, %bound1289
  br i1 %found.conflict290, label %.lr.ph.i.i.i.i79.preheader, label %vector.main.loop.iter.check291

vector.main.loop.iter.check291:                   ; preds = %vector.memcheck287
  %min.iters.check292 = icmp ult i64 %i.gp, 120
  br i1 %min.iters.check292, label %vec.epilog.ph310, label %vector.ph293

vector.ph293:                                     ; preds = %vector.main.loop.iter.check291
  %i.gy = and i64 %i.gr, 12
  %n.vec294 = and i64 %i.gr, 4611686018427387888  ; 4 uses
  %i.gz = shl i64 %n.vec294, 3                    ; 2 uses
  %i.ha = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.gz ; 2 uses
  %i.hb = getelementptr i8, ptr %2, i64 %i.gz
  br label %vector.body295

vector.body295:                                   ; preds = %vector.ph293, %vector.body295
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next303, %vector.body295 ] ; 2 uses
  %i.hc = shl i64 %index296, 3                    ; 2 uses
  %next.gep297 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.hc ; 4 uses
  %next.gep298 = getelementptr i8, ptr %2, i64 %i.hc ; 8 uses
  %i.hd = getelementptr i8, ptr %next.gep298, i64 32
  %i.he = getelementptr i8, ptr %next.gep298, i64 64
  %i.hf = getelementptr i8, ptr %next.gep298, i64 96
  %wide.load299 = load <4 x i64>, ptr %next.gep298, align 8, !tbaa !226, !alias.scope !1351
  %wide.load300 = load <4 x i64>, ptr %i.hd, align 8, !tbaa !226, !alias.scope !1351
  %wide.load301 = load <4 x i64>, ptr %i.he, align 8, !tbaa !226, !alias.scope !1351
  %wide.load302 = load <4 x i64>, ptr %i.hf, align 8, !tbaa !226, !alias.scope !1351
  %i.hg = getelementptr i8, ptr %next.gep297, i64 32
  %i.hh = getelementptr i8, ptr %next.gep297, i64 64
  %i.hi = getelementptr i8, ptr %next.gep297, i64 96
  store <4 x i64> %wide.load299, ptr %next.gep297, align 8, !tbaa !226, !alias.scope !1352, !noalias !1351
  store <4 x i64> %wide.load300, ptr %i.hg, align 8, !tbaa !226, !alias.scope !1352, !noalias !1351
  store <4 x i64> %wide.load301, ptr %i.hh, align 8, !tbaa !226, !alias.scope !1352, !noalias !1351
  store <4 x i64> %wide.load302, ptr %i.hi, align 8, !tbaa !226, !alias.scope !1352, !noalias !1351
  %16 = getelementptr i8, ptr %next.gep298, i64 32
  %17 = getelementptr i8, ptr %next.gep298, i64 64
  %18 = getelementptr i8, ptr %next.gep298, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep298, align 8, !tbaa !226, !alias.scope !1351
  store <4 x ptr> splat (ptr null), ptr %16, align 8, !tbaa !226, !alias.scope !1351
  store <4 x ptr> splat (ptr null), ptr %17, align 8, !tbaa !226, !alias.scope !1351
  store <4 x ptr> splat (ptr null), ptr %18, align 8, !tbaa !226, !alias.scope !1351
  %index.next303 = add nuw i64 %index296, 16      ; 2 uses
  %i.hj = icmp eq i64 %index.next303, %n.vec294
  br i1 %i.hj, label %middle.block304, label %vector.body295, !llvm.loop !1336

middle.block304:                                  ; preds = %vector.body295
  %cmp.n305 = icmp eq i64 %i.gr, %n.vec294
  br i1 %cmp.n305, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %vec.epilog.iter.check307

vec.epilog.iter.check307:                         ; preds = %middle.block304
  %min.epilog.iters.check309 = icmp eq i64 %i.gy, 0
  br i1 %min.epilog.iters.check309, label %.lr.ph.i.i.i.i79.preheader, label %vec.epilog.ph310, !prof !753

vec.epilog.ph310:                                 ; preds = %vector.main.loop.iter.check291, %vec.epilog.iter.check307
  %vec.epilog.resume.val311 = phi i64 [ %n.vec294, %vec.epilog.iter.check307 ], [ 0, %vector.main.loop.iter.check291 ]
  %n.vec312 = and i64 %i.gr, 4611686018427387900  ; 3 uses
  %i.hk = shl i64 %n.vec312, 3                    ; 2 uses
  %i.hl = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.hk ; 2 uses
  %i.hm = getelementptr i8, ptr %2, i64 %i.hk
  br label %vec.epilog.vector.body313

vec.epilog.vector.body313:                        ; preds = %vec.epilog.vector.body313, %vec.epilog.ph310
  %index314 = phi i64 [ %vec.epilog.resume.val311, %vec.epilog.ph310 ], [ %index.next318, %vec.epilog.vector.body313 ] ; 2 uses
  %i.hn = shl i64 %index314, 3                    ; 2 uses
  %next.gep315 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.hn
  %next.gep316 = getelementptr i8, ptr %2, i64 %i.hn ; 2 uses
  %wide.load317 = load <4 x i64>, ptr %next.gep316, align 8, !tbaa !226, !alias.scope !1351
  store <4 x i64> %wide.load317, ptr %next.gep315, align 8, !tbaa !226, !alias.scope !1352, !noalias !1351
  store <4 x ptr> splat (ptr null), ptr %next.gep316, align 8, !tbaa !226, !alias.scope !1351
  %index.next318 = add nuw i64 %index314, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next318, %n.vec312
  br i1 %i.ho, label %vec.epilog.middle.block319, label %vec.epilog.vector.body313, !llvm.loop !1337

vec.epilog.middle.block319:                       ; preds = %vec.epilog.vector.body313
  %cmp.n320 = icmp eq i64 %i.gr, %n.vec312
  br i1 %cmp.n320, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79.preheader

.lr.ph.i.i.i.i79.preheader:                       ; preds = %iter.check306, %vector.memcheck287, %vec.epilog.iter.check307, %vec.epilog.middle.block319
  %.012.i.i.i.i80.ph = phi ptr [ %.0.lcssa.i.i.i.i.i77, %iter.check306 ], [ %.0.lcssa.i.i.i.i.i77, %vector.memcheck287 ], [ %i.ha, %vec.epilog.iter.check307 ], [ %i.hl, %vec.epilog.middle.block319 ]
  %.sroa.08.011.i.i.i.i81.ph = phi ptr [ %2, %iter.check306 ], [ %2, %vector.memcheck287 ], [ %i.hb, %vec.epilog.iter.check307 ], [ %i.hm, %vec.epilog.middle.block319 ]
  br label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79.preheader, %.lr.ph.i.i.i.i79
  %.012.i.i.i.i80 = phi ptr [ %i.hr, %.lr.ph.i.i.i.i79 ], [ %.012.i.i.i.i80.ph, %.lr.ph.i.i.i.i79.preheader ] ; 2 uses
  %.sroa.08.011.i.i.i.i81 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i79 ], [ %.sroa.08.011.i.i.i.i81.ph, %.lr.ph.i.i.i.i79.preheader ] ; 3 uses
  %i.hp = load i64, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !226
  store i64 %i.hp, ptr %.012.i.i.i.i80, align 8, !tbaa !226
  store ptr null, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !226
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i81, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 8 ; 2 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.hq, %3
  br i1 %.not.i.i.i.i82, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79, !llvm.loop !1338

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84: ; preds = %.lr.ph.i.i.i.i79, %vec.epilog.middle.block319, %middle.block304
  %.lcssa148 = phi ptr [ %i.hl, %vec.epilog.middle.block319 ], [ %i.ha, %middle.block304 ], [ %i.hr, %.lr.ph.i.i.i.i79 ] ; 9 uses
  %.not11.i.i.i.i.i85 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i85, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %iter.check348

iter.check348:                                    ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %i.hs = add i64 %i.k, -8
  %i.ht = sub i64 %i.hs, %i.a                     ; 3 uses
  %i.hu = lshr i64 %i.ht, 3
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 5 uses
  %min.iters.check328 = icmp ult i64 %i.ht, 24
  br i1 %min.iters.check328, label %.lr.ph.i.i.i.i.i86.preheader, label %vector.memcheck329

vector.memcheck329:                               ; preds = %iter.check348
  %i.hw = add i64 %i.k, -8
  %i.hx = sub i64 %i.hw, %i.a
  %i.hy = and i64 %i.hx, -8
  %i.hz = add i64 %i.hy, 8                        ; 2 uses
  %i.ia = getelementptr i8, ptr %.lcssa148, i64 %i.hz
  %i.ib = getelementptr i8, ptr %1, i64 %i.hz
  %bound0330 = icmp ult ptr %.lcssa148, %i.ib
  %bound1331 = icmp ult ptr %1, %i.ia
  %found.conflict332 = and i1 %bound0330, %bound1331
  br i1 %found.conflict332, label %.lr.ph.i.i.i.i.i86.preheader, label %vector.main.loop.iter.check333

vector.main.loop.iter.check333:                   ; preds = %vector.memcheck329
  %min.iters.check334 = icmp ult i64 %i.ht, 120
  br i1 %min.iters.check334, label %vec.epilog.ph352, label %vector.ph335

vector.ph335:                                     ; preds = %vector.main.loop.iter.check333
  %i.ic = and i64 %i.hv, 12
  %n.vec336 = and i64 %i.hv, 4611686018427387888  ; 4 uses
  %i.id = shl i64 %n.vec336, 3                    ; 2 uses
  %i.ie = getelementptr i8, ptr %.lcssa148, i64 %i.id ; 2 uses
  %i.if = getelementptr i8, ptr %1, i64 %i.id
  br label %vector.body337

vector.body337:                                   ; preds = %vector.ph335, %vector.body337
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next345, %vector.body337 ] ; 2 uses
  %i.ig = shl i64 %index338, 3                    ; 2 uses
  %next.gep339 = getelementptr i8, ptr %.lcssa148, i64 %i.ig ; 4 uses
  %next.gep340 = getelementptr i8, ptr %1, i64 %i.ig ; 8 uses
  %i.ih = getelementptr i8, ptr %next.gep340, i64 32
  %i.ii = getelementptr i8, ptr %next.gep340, i64 64
  %i.ij = getelementptr i8, ptr %next.gep340, i64 96
  %wide.load341 = load <4 x i64>, ptr %next.gep340, align 8, !tbaa !226, !alias.scope !1353
  %wide.load342 = load <4 x i64>, ptr %i.ih, align 8, !tbaa !226, !alias.scope !1353
  %wide.load343 = load <4 x i64>, ptr %i.ii, align 8, !tbaa !226, !alias.scope !1353
  %wide.load344 = load <4 x i64>, ptr %i.ij, align 8, !tbaa !226, !alias.scope !1353
  %i.ik = getelementptr i8, ptr %next.gep339, i64 32
  %i.il = getelementptr i8, ptr %next.gep339, i64 64
  %i.im = getelementptr i8, ptr %next.gep339, i64 96
  store <4 x i64> %wide.load341, ptr %next.gep339, align 8, !tbaa !226, !alias.scope !1354, !noalias !1353
  store <4 x i64> %wide.load342, ptr %i.ik, align 8, !tbaa !226, !alias.scope !1354, !noalias !1353
  store <4 x i64> %wide.load343, ptr %i.il, align 8, !tbaa !226, !alias.scope !1354, !noalias !1353
  store <4 x i64> %wide.load344, ptr %i.im, align 8, !tbaa !226, !alias.scope !1354, !noalias !1353
  %19 = getelementptr i8, ptr %next.gep340, i64 32
  %20 = getelementptr i8, ptr %next.gep340, i64 64
  %21 = getelementptr i8, ptr %next.gep340, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep340, align 8, !tbaa !226, !alias.scope !1353
  store <4 x ptr> splat (ptr null), ptr %19, align 8, !tbaa !226, !alias.scope !1353
  store <4 x ptr> splat (ptr null), ptr %20, align 8, !tbaa !226, !alias.scope !1353
  store <4 x ptr> splat (ptr null), ptr %21, align 8, !tbaa !226, !alias.scope !1353
  %index.next345 = add nuw i64 %index338, 16      ; 2 uses
  %i.in = icmp eq i64 %index.next345, %n.vec336
  br i1 %i.in, label %middle.block346, label %vector.body337, !llvm.loop !1342

middle.block346:                                  ; preds = %vector.body337
  %cmp.n347 = icmp eq i64 %i.hv, %n.vec336
  br i1 %cmp.n347, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %vec.epilog.iter.check349

vec.epilog.iter.check349:                         ; preds = %middle.block346
  %min.epilog.iters.check351 = icmp eq i64 %i.ic, 0
  br i1 %min.epilog.iters.check351, label %.lr.ph.i.i.i.i.i86.preheader, label %vec.epilog.ph352, !prof !753

vec.epilog.ph352:                                 ; preds = %vector.main.loop.iter.check333, %vec.epilog.iter.check349
  %vec.epilog.resume.val353 = phi i64 [ %n.vec336, %vec.epilog.iter.check349 ], [ 0, %vector.main.loop.iter.check333 ]
  %n.vec354 = and i64 %i.hv, 4611686018427387900  ; 3 uses
  %i.io = shl i64 %n.vec354, 3                    ; 2 uses
  %i.ip = getelementptr i8, ptr %.lcssa148, i64 %i.io ; 2 uses
  %i.iq = getelementptr i8, ptr %1, i64 %i.io
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph352
  %index356 = phi i64 [ %vec.epilog.resume.val353, %vec.epilog.ph352 ], [ %index.next360, %vec.epilog.vector.body355 ] ; 2 uses
  %i.ir = shl i64 %index356, 3                    ; 2 uses
  %next.gep357 = getelementptr i8, ptr %.lcssa148, i64 %i.ir
  %next.gep358 = getelementptr i8, ptr %1, i64 %i.ir ; 2 uses
  %wide.load359 = load <4 x i64>, ptr %next.gep358, align 8, !tbaa !226, !alias.scope !1353
  store <4 x i64> %wide.load359, ptr %next.gep357, align 8, !tbaa !226, !alias.scope !1354, !noalias !1353
  store <4 x ptr> splat (ptr null), ptr %next.gep358, align 8, !tbaa !226, !alias.scope !1353
  %index.next360 = add nuw i64 %index356, 4       ; 2 uses
  %i.is = icmp eq i64 %index.next360, %n.vec354
  br i1 %i.is, label %vec.epilog.middle.block361, label %vec.epilog.vector.body355, !llvm.loop !1343

vec.epilog.middle.block361:                       ; preds = %vec.epilog.vector.body355
  %cmp.n362 = icmp eq i64 %i.hv, %n.vec354
  br i1 %cmp.n362, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader

.lr.ph.i.i.i.i.i86.preheader:                     ; preds = %iter.check348, %vector.memcheck329, %vec.epilog.iter.check349, %vec.epilog.middle.block361
  %.013.i.i.i.i.i87.ph = phi ptr [ %.lcssa148, %iter.check348 ], [ %.lcssa148, %vector.memcheck329 ], [ %i.ie, %vec.epilog.iter.check349 ], [ %i.ip, %vec.epilog.middle.block361 ]
  %.sroa.08.012.i.i.i.i.i88.ph = phi ptr [ %1, %iter.check348 ], [ %1, %vector.memcheck329 ], [ %i.if, %vec.epilog.iter.check349 ], [ %i.iq, %vec.epilog.middle.block361 ]
  br label %.lr.ph.i.i.i.i.i86

.lr.ph.i.i.i.i.i86:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader, %.lr.ph.i.i.i.i.i86
  %.013.i.i.i.i.i87 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i86 ], [ %.013.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i86.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i88 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i86 ], [ %.sroa.08.012.i.i.i.i.i88.ph, %.lr.ph.i.i.i.i.i86.preheader ] ; 3 uses
  %i.it = load i64, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !226
  store i64 %i.it, ptr %.013.i.i.i.i.i87, align 8, !tbaa !226
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !226
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i88, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i87, i64 8 ; 2 uses
  %.not.i.i.i.i.i89 = icmp eq ptr %i.iu, %i.i
  br i1 %.not.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86, !llvm.loop !1344

_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91: ; preds = %.lr.ph.i.i.i.i.i86, %middle.block346, %vec.epilog.middle.block361, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %.0.lcssa.i.i.i.i.i90 = phi ptr [ %.lcssa148, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84 ], [ %i.ip, %vec.epilog.middle.block361 ], [ %i.ie, %middle.block346 ], [ %i.iv, %.lr.ph.i.i.i.i.i86 ]
  %.not4.i.i = icmp eq ptr %i.fd, %i.i
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ja, %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.fd, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91 ] ; 2 uses
  %i.iw = load ptr, ptr %.05.i.i, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i92, label %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !180
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8
  tail call void %i.iz(ptr noundef nonnull align 8 dereferenceable(8) %i.iw) #30, !inline_history !5
  br label %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ja, %i.i
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91
  %.not.i93 = icmp eq ptr %i.fd, null
  br i1 %.not.i93, label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvT_S7_.exit
  %i.jb = load ptr, ptr %i.f, align 8, !tbaa !227
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %i.fe
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.jd) #28
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EEEvT_S7_.exit, %bb.g
  store ptr %i.fp, ptr %0, align 8, !tbaa !223
  store ptr %.0.lcssa.i.i.i.i.i90, ptr %i.h, align 8, !tbaa !224
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fm
  store ptr %i.je, ptr %i.f, align 8, !tbaa !227
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit: ; preds = %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPN3gmx17ISimulatorElementESaIS2_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEEvSA_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPPN3gmx17ISimulatorElementESt6vectorIS5_SaIS5_EEEEESA_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !686  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPPN3gmx17ISimulatorElementESt6vectorIS5_SaIS5_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !1355

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !686
  br label %_ZSt22__uninitialized_move_aIPPN3gmx17ISimulatorElementES3_SaIS2_EET0_T_S6_S5_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPPN3gmx17ISimulatorElementES3_SaIS2_EET0_T_S6_S5_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !226
  store ptr %i.u, ptr %i.h, align 8, !tbaa !226
  br label %_ZSt22__uninitialized_move_aIPPN3gmx17ISimulatorElementES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPPN3gmx17ISimulatorElementES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !686
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !1355

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN3gmx17ISimulatorElementES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPPN3gmx17ISimulatorElementES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN3gmx17ISimulatorElementES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPPN3gmx17ISimulatorElementES3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !226
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !226
  br label %_ZSt13move_backwardIPPN3gmx17ISimulatorElementES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPPN3gmx17ISimulatorElementES3_ET0_T_S5_S4_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !1355

bb.k:                                             ; preds = %_ZSt13move_backwardIPPN3gmx17ISimulatorElementES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPPN3gmx17ISimulatorElementESt6vectorIS5_SaIS5_EEEEESA_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPPN3gmx17ISimulatorElementES3_ET0_T_S5_S4_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPPN3gmx17ISimulatorElementESt6vectorIS5_SaIS5_EEEEESA_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %2, align 8, !tbaa !226
  store ptr %i.ag, ptr %1, align 8, !tbaa !226
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPPN3gmx17ISimulatorElementESt6vectorIS5_SaIS5_EEEEESA_ET0_T_SD_SC_.exit

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPPN3gmx17ISimulatorElementESt6vectorIS5_SaIS5_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !1355

bb.n:                                             ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPPN3gmx17ISimulatorElementESt6vectorIS5_SaIS5_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !686
  br label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPPN3gmx17ISimulatorElementESt6vectorIS5_SaIS5_EEEEES6_S5_ET0_T_SD_SC_RSaIT1_E.exit

end_hunk_2
