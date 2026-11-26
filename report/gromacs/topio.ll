Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/topio?download=true
inline.NumInlined: 1510
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZL10read_topolPKcRKSt8optionalINSt10filesystem7__cxx114pathEES0_S0_P8t_symtabP22PreprocessingAtomTypesPSt6vectorI19MoleculeInformationSaISD_EEPSt10unique_ptrISD_St14default_deleteISD_EERN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSO_95EEEP15CombinationRulePdP12t_gromppoptsPfPSC_I14gmx_molblock_tSaISY_EEPbbbbP14WarningHandlerRKNSM_8MDLoggerE:bb.a
  store ptr %i.hv, ptr %42, align 8, !tbaa !20
  store i64 0, ptr %i.hw, align 8, !tbaa !26
  store i8 1, ptr %i.hx, align 8, !tbaa !176
  %i.ut = sub nsw i32 %i.ul, %i.uq
  %i.uu = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %42, ptr noundef nonnull @.str.32, i32 noundef %i.ut, i32 noundef %i.ul)
          to label %bb.gu unwind label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.uv = load ptr, ptr %i.ur, align 8, !tbaa !170
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.ux = load ptr, ptr %i.uw, align 8
  invoke void %i.ux(ptr noundef nonnull align 8 dereferenceable(8) %i.ur, ptr noundef nonnull align 8 dereferenceable(40) %i.uu)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.gv, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %bb.gu
  %i.uy = load ptr, ptr %42, align 8, !tbaa !24   ; 2 uses
  %i.uz = icmp eq ptr %i.uy, %i.hv
  br i1 %i.uz, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i540: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.va = load i64, ptr %i.hv, align 8, !tbaa !25
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.uy, i64 noundef %i.vb) #29
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.vc = landingpad { ptr, i32 }
          cleanup
  %i.vd = load ptr, ptr %42, align 8, !tbaa !24   ; 2 uses
  %i.ve = icmp eq ptr %i.vd, %i.hv
  br i1 %i.ve, label %_ZN3gmx14LogEntryWriterD2Ev.exit544, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i542

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i542: ; preds = %bb.gv
  %i.vf = load i64, ptr %i.hv, align 8, !tbaa !25
  %i.vg = add i64 %i.vf, 1
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.vg) #29
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit544

_ZN3gmx14LogEntryWriterD2Ev.exit544:              ; preds = %bb.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i542
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %.body

bb.gw:                                            ; preds = %bb.gs, %_ZN3gmx14LogEntryWriterD2Ev.exit
  %i.vh = load ptr, ptr %i.q, align 8, !tbaa !263
  invoke void @_Z12free_nbparamPP9t_nbparami(ptr noundef %i.vh, i32 noundef %i.ui)
          to label %bb.gx unwind label %.loopexit.split-lp832.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gx:                                            ; preds = %bb.gw
  %i.vi = trunc nuw i8 %.0345 to i1
  br i1 %i.vi, label %bb.gy, label %bb.hm

bb.gy:                                            ; preds = %bb.gx
  %i.vj = load i32, ptr %9, align 4, !tbaa !180
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uo, i64 8 ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !199
  %i.vm = load ptr, ptr %i.uo, align 8, !tbaa !200
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = ptrtoint ptr %i.vm to i64
  %i.vp = sub i64 %i.vn, %i.vo
  %i.vq = sdiv exact i64 %i.vp, 112
  %i.vr = trunc i64 %i.vq to i32
  %i.vs = sitofp i32 %i.vr to double
  %i.vt = call double @sqrt(double noundef %i.vs) #28
  %i.vu = fptosi double %i.vt to i32              ; 6 uses
  %i.vv = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 1204), align 4, !tbaa !309
  %i.vw = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 1208), align 8, !tbaa !310
  %i.vx = add nsw i32 %i.vw, %i.vv                ; 14 uses
  %i.vy = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 1076), align 4, !tbaa !309 ; 2 uses
  %.not.i545 = icmp eq i32 %i.vx, %i.vy
  %i.vz = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 1080), align 8
  %.not42.i546 = icmp eq i32 %i.vy, %i.vz
  %or.cond46.i = select i1 %.not.i545, i1 %.not42.i546, i1 false
  br i1 %or.cond46.i, label %bb.hf, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %.noexc556 unwind label %.loopexit.split-lp832.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc556:                                        ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 1 dereferenceable(68) @.str.13, i8 noundef zeroext 2)
          to label %bb.ha unwind label %bb.hc

bb.ha:                                            ; preds = %.noexc556
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 115) #27
          to label %bb.hb unwind label %bb.hd

bb.hb:                                            ; preds = %bb.ha
  unreachable

bb.hc:                                            ; preds = %.noexc556
  %i.wa = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hd:                                            ; preds = %bb.ha
  %i.wb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #28
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.pn.i547 = phi { ptr, i32 } [ %i.wb, %bb.hd ], [ %i.wa, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  %i.wc = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.we = icmp eq ptr %i.wc, %i.wd
  br i1 %i.we, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i549, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i548: ; preds = %bb.he
  %i.wf = load i64, ptr %i.wd, align 8, !tbaa !25
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i549

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i549: ; preds = %bb.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i548
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %.body

bb.hf:                                            ; preds = %bb.gy
  %i.wh = load ptr, ptr @stderr, align 8, !tbaa !312
  %i.wi = fpext float %.0357 to double
  %i.wj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wh, ptr noundef nonnull @.str.68, double noundef %i.wi) #33 ; 0 uses
  %i.wk = load ptr, ptr %i.hy, align 8, !tbaa !200 ; 3 uses
  %i.wl = load ptr, ptr %i.hz, align 8, !tbaa !199 ; 2 uses
  %.not.i.i.i551 = icmp eq ptr %i.wl, %i.wk
  br i1 %.not.i.i.i551, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE5clearEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.hf, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.wy, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i.i ], [ %i.wk, %bb.hf ] ; 5 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !24 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 88 ; 2 uses
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.wq = load i64, ptr %i.wo, align 8, !tbaa !25
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ws = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i552 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i552, label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.wt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !193
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = ptrtoint ptr %i.ws to i64
  %i.wx = sub i64 %i.wv, %i.ww
  call void @_ZdlPvm(ptr noundef nonnull %i.ws, i64 noundef %i.wx) #29
  br label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i.i: ; preds = %bb.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.wy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.wy, %i.wl
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i.i
  store ptr %i.wk, ptr %i.hz, align 8, !tbaa !199
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE5clearEv.exit.i

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ia, i8 0, i64 44, i1 false)
  store float -4.092030e+05, ptr %24, align 4
  %i.wz = load ptr, ptr %i.uo, align 8, !tbaa !201 ; 5 uses
  %i.xa = ptrtoaddr ptr %i.wz to i64              ; 4 uses
  %i.xb = load ptr, ptr %i.vk, align 8, !tbaa !201 ; 4 uses
  %.not5557.i = icmp eq ptr %i.wz, %i.xb
  br i1 %.not5557.i, label %.loopexit839, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE5clearEv.exit.i
  %i.xc = icmp slt i32 %i.vx, 7
  %i.xd = and i32 %i.vj, -2
  %or.cond.i553 = icmp eq i32 %i.xd, 2
  br i1 %i.xc, label %.lr.ph60.split.us.i, label %.invoke

.lr.ph60.split.us.i:                              ; preds = %.lr.ph60.i
  %i.xe = icmp sgt i32 %i.vx, 0
  br i1 %i.xe, label %.lr.ph60.split.us.split.us.i, label %.preheader.us.i

.lr.ph60.split.us.split.us.i:                     ; preds = %.lr.ph60.split.us.i
  %i.xf = zext nneg i32 %i.vx to i64              ; 4 uses
  %invariant.gep87.i = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %i.xf ; 14 uses
  %i.xg = shl nuw nsw i64 %i.xf, 2                ; 2 uses
  br i1 %or.cond.i553, label %.preheader.us.us.us.i.preheader, label %.preheader.us.us.i.preheader

.preheader.us.us.i.preheader:                     ; preds = %.lr.ph60.split.us.split.us.i
  %55 = add i64 %i.iv, %i.xg
  %56 = sub i64 %55, %i.xa
  %i.xh = sub i64 %i.iw, %i.xa
  %invariant.op = add i64 %i.xh, -1
  %invariant.op1759 = add i64 %56, -1
  %broadcast.splatinsert1538 = insertelement <8 x float> poison, float %.0357, i64 0
  %broadcast.splat1539 = shufflevector <8 x float> %broadcast.splatinsert1538, <8 x float> poison, <8 x i32> zeroinitializer
  %trip.count.minus.11535 = add nsw i64 %i.xf, -1
  %broadcast.splatinsert1536 = insertelement <8 x i64> poison, i64 %trip.count.minus.11535, i64 0
  %broadcast.splat1537 = shufflevector <8 x i64> %broadcast.splatinsert1536, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.xi = icmp uge <8 x i64> %broadcast.splat1537, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.vx, 1
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep87.i, i64 4
  %exitcond.not.i.1 = icmp eq i32 %i.vx, 2
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep87.i, i64 8
  %exitcond.not.i.2 = icmp eq i32 %i.vx, 3
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep87.i, i64 12
  %exitcond.not.i.3 = icmp eq i32 %i.vx, 4
  %gep.i.4 = getelementptr inbounds nuw i8, ptr %invariant.gep87.i, i64 16
  %exitcond.not.i.4 = icmp eq i32 %i.vx, 5
  %gep.i.5 = getelementptr inbounds nuw i8, ptr %invariant.gep87.i, i64 20
  br label %.preheader.us.us.i

.preheader.us.us.us.i.preheader:                  ; preds = %.lr.ph60.split.us.split.us.i
  %57 = add i64 %i.it, %i.xg
  %58 = sub i64 %57, %i.xa
  %i.xj = sub i64 %i.iu, %i.xa
  %invariant.op1761 = add i64 %i.xj, -1
  %invariant.op1763 = add i64 %58, -1
  %broadcast.splatinsert1517 = insertelement <8 x float> poison, float %.0357, i64 0
  %broadcast.splat1518 = shufflevector <8 x float> %broadcast.splatinsert1517, <8 x float> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %trip.count.minus.1 = add nsw i64 %i.xf, -1
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.xk = icmp uge <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 3 uses
  %i.xl = shufflevector <8 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float poison, float 1.000000e+00, float poison, float 1.000000e+00, float poison>, <8 x float> %broadcast.splat1518, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  %exitcond72.not.i = icmp eq i32 %i.vx, 1
  %gep88.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep87.i, i64 4
  %exitcond72.not.i.1 = icmp eq i32 %i.vx, 2
  %gep88.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep87.i, i64 8
  %exitcond72.not.i.2 = icmp eq i32 %i.vx, 3
  %gep88.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep87.i, i64 12
  %exitcond72.not.i.3 = icmp eq i32 %i.vx, 4
  %gep88.i.4 = getelementptr inbounds nuw i8, ptr %invariant.gep87.i, i64 16
  %exitcond72.not.i.4 = icmp eq i32 %i.vx, 5
  %gep88.i.5 = getelementptr inbounds nuw i8, ptr %invariant.gep87.i, i64 20
  br label %.preheader.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %.preheader.us.us.us.i.preheader, %.noexc559
  %indvar = phi i64 [ 0, %.preheader.us.us.us.i.preheader ], [ %indvar.next, %.noexc559 ] ; 2 uses
  %.03659.us.us.us.i = phi i32 [ 0, %.preheader.us.us.us.i.preheader ], [ %i.yg, %.noexc559 ] ; 3 uses
  %.sroa.052.058.us.us.us.i = phi ptr [ %i.wz, %.preheader.us.us.us.i.preheader ], [ %i.yh, %.noexc559 ] ; 7 uses
  %i.xm = sdiv i32 %.03659.us.us.us.i, %i.vu
  %i.xn = srem i32 %.03659.us.us.us.i, %i.vu
  store i32 %i.xm, ptr %23, align 4, !tbaa !25
  store i32 %i.xn, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !25
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.us.i, i64 24 ; 2 uses
  %i.xp = mul i64 %indvar, -112                   ; 2 uses
  %.reass1762 = add i64 %i.xp, %invariant.op1761
  %diff.check = icmp ult i64 %.reass1762, 31
  %.reass1764 = add i64 %i.xp, %invariant.op1763
  %diff.check1516 = icmp ult i64 %.reass1764, 31
  %conflict.rdx = or i1 %diff.check, %diff.check1516
  br i1 %conflict.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.us.i
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.xo, <8 x i1> %i.xk, <8 x float> poison), !tbaa !62
  %i.xq = fmul <8 x float> %wide.masked.load, %i.xl ; 2 uses
  call void @llvm.masked.store.v8f32.p0(<8 x float> %i.xq, ptr align 4 %24, <8 x i1> %i.xk), !tbaa !62
  call void @llvm.masked.store.v8f32.p0(<8 x float> %i.xq, ptr align 4 %invariant.gep87.i, <8 x i1> %i.xk), !tbaa !62
  br label %._crit_edge.split.us64.us.us.i

scalar.ph:                                        ; preds = %.preheader.us.us.us.i
  %i.xr = load float, ptr %i.xo, align 4, !tbaa !62 ; 2 uses
  store float %i.xr, ptr %24, align 4, !tbaa !62
  store float %i.xr, ptr %invariant.gep87.i, align 4, !tbaa !62
  br i1 %exitcond72.not.i, label %._crit_edge.split.us64.us.us.i, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.us.i, i64 28
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !62
  %i.xu = fmul float %i.xt, %.0357                ; 2 uses
  store float %i.xu, ptr %i.jc, align 4, !tbaa !62
  store float %i.xu, ptr %gep88.i.1, align 4, !tbaa !62
  br i1 %exitcond72.not.i.1, label %._crit_edge.split.us64.us.us.i, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.us.i, i64 32
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !62 ; 2 uses
  store float %i.xw, ptr %i.jd, align 4, !tbaa !62
  store float %i.xw, ptr %gep88.i.2, align 4, !tbaa !62
  br i1 %exitcond72.not.i.2, label %._crit_edge.split.us64.us.us.i, label %scalar.ph.3

scalar.ph.3:                                      ; preds = %scalar.ph.2
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.us.i, i64 36
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !62
  %i.xz = fmul float %i.xy, %.0357                ; 2 uses
  store float %i.xz, ptr %i.je, align 4, !tbaa !62
  store float %i.xz, ptr %gep88.i.3, align 4, !tbaa !62
  br i1 %exitcond72.not.i.3, label %._crit_edge.split.us64.us.us.i, label %scalar.ph.4

scalar.ph.4:                                      ; preds = %scalar.ph.3
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.us.i, i64 40
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !62 ; 2 uses
  store float %i.yb, ptr %i.jf, align 4, !tbaa !62
  store float %i.yb, ptr %gep88.i.4, align 4, !tbaa !62
  br i1 %exitcond72.not.i.4, label %._crit_edge.split.us64.us.us.i, label %scalar.ph.5

scalar.ph.5:                                      ; preds = %scalar.ph.4
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.us.i, i64 44
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !62
  %i.ye = fmul float %i.yd, %.0357                ; 2 uses
  store float %i.ye, ptr %i.jg, align 4, !tbaa !62
  store float %i.ye, ptr %gep88.i.5, align 4, !tbaa !62
  br label %._crit_edge.split.us64.us.us.i

._crit_edge.split.us64.us.us.i:                   ; preds = %scalar.ph, %scalar.ph.1, %scalar.ph.2, %scalar.ph.3, %scalar.ph.4, %scalar.ph.5, %vector.body
  %i.yf = invoke noundef nonnull align 8 dereferenceable(105) ptr @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE12emplace_backIJRSt5arrayIiLm2EERS4_IfLm12EEEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 4 dereferenceable(48) %24)
          to label %.noexc559 unwind label %.loopexit.split-lp832.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc559:                                        ; preds = %._crit_edge.split.us64.us.us.i
  %i.yg = add nuw nsw i32 %.03659.us.us.us.i, 1
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.us.i, i64 112 ; 2 uses
  %.not55.us.us.us.i = icmp eq ptr %i.yh, %i.xb
  %indvar.next = add i64 %indvar, 1
  br i1 %.not55.us.us.us.i, label %.loopexit839, label %.preheader.us.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %.noexc560
  %indvar1525 = phi i64 [ 0, %.preheader.us.us.i.preheader ], [ %indvar.next1526, %.noexc560 ] ; 2 uses
  %.03659.us.us.i = phi i32 [ 0, %.preheader.us.us.i.preheader ], [ %i.zf, %.noexc560 ] ; 3 uses
  %.sroa.052.058.us.us.i = phi ptr [ %i.wz, %.preheader.us.us.i.preheader ], [ %i.zg, %.noexc560 ] ; 7 uses
  %i.yi = sdiv i32 %.03659.us.us.i, %i.vu
  %i.yj = srem i32 %.03659.us.us.i, %i.vu
  store i32 %i.yi, ptr %23, align 4, !tbaa !25
  store i32 %i.yj, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !25
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.i, i64 24 ; 2 uses
  %i.yl = mul i64 %indvar1525, -112               ; 2 uses
  %.reass = add i64 %i.yl, %invariant.op
  %diff.check1529 = icmp ult i64 %.reass, 31
  %.reass1760 = add i64 %i.yl, %invariant.op1759
  %diff.check1530 = icmp ult i64 %.reass1760, 31
  %conflict.rdx1531 = or i1 %diff.check1529, %diff.check1530
  br i1 %conflict.rdx1531, label %scalar.ph1527, label %vector.body1540

vector.body1540:                                  ; preds = %.preheader.us.us.i
  %wide.masked.load1543 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.yk, <8 x i1> %i.xi, <8 x float> poison), !tbaa !62
  %i.ym = fmul <8 x float> %broadcast.splat1539, %wide.masked.load1543 ; 2 uses
  call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ym, ptr align 4 %24, <8 x i1> %i.xi), !tbaa !62
  call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ym, ptr align 4 %invariant.gep87.i, <8 x i1> %i.xi), !tbaa !62
  br label %._crit_edge.split.us.us.us.i

scalar.ph1527:                                    ; preds = %.preheader.us.us.i
  %i.yn = load float, ptr %i.yk, align 4, !tbaa !62
  %i.yo = fmul float %.0357, %i.yn                ; 2 uses
  store float %i.yo, ptr %24, align 4, !tbaa !62
  store float %i.yo, ptr %invariant.gep87.i, align 4, !tbaa !62
  br i1 %exitcond.not.i, label %._crit_edge.split.us.us.us.i, label %scalar.ph1527.1

scalar.ph1527.1:                                  ; preds = %scalar.ph1527
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.i, i64 28
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !62
  %i.yr = fmul float %.0357, %i.yq                ; 2 uses
  store float %i.yr, ptr %i.ix, align 4, !tbaa !62
  store float %i.yr, ptr %gep.i.1, align 4, !tbaa !62
  br i1 %exitcond.not.i.1, label %._crit_edge.split.us.us.us.i, label %scalar.ph1527.2

scalar.ph1527.2:                                  ; preds = %scalar.ph1527.1
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.i, i64 32
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !62
  %i.yu = fmul float %.0357, %i.yt                ; 2 uses
  store float %i.yu, ptr %i.iy, align 4, !tbaa !62
  store float %i.yu, ptr %gep.i.2, align 4, !tbaa !62
  br i1 %exitcond.not.i.2, label %._crit_edge.split.us.us.us.i, label %scalar.ph1527.3

scalar.ph1527.3:                                  ; preds = %scalar.ph1527.2
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.i, i64 36
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !62
  %i.yx = fmul float %.0357, %i.yw                ; 2 uses
  store float %i.yx, ptr %i.iz, align 4, !tbaa !62
  store float %i.yx, ptr %gep.i.3, align 4, !tbaa !62
  br i1 %exitcond.not.i.3, label %._crit_edge.split.us.us.us.i, label %scalar.ph1527.4

scalar.ph1527.4:                                  ; preds = %scalar.ph1527.3
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.i, i64 40
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !62
  %i.za = fmul float %.0357, %i.yz                ; 2 uses
  store float %i.za, ptr %i.ja, align 4, !tbaa !62
  store float %i.za, ptr %gep.i.4, align 4, !tbaa !62
  br i1 %exitcond.not.i.4, label %._crit_edge.split.us.us.us.i, label %scalar.ph1527.5

scalar.ph1527.5:                                  ; preds = %scalar.ph1527.4
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.i, i64 44
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !62
  %i.zd = fmul float %.0357, %i.zc                ; 2 uses
  store float %i.zd, ptr %i.jb, align 4, !tbaa !62
  store float %i.zd, ptr %gep.i.5, align 4, !tbaa !62
  br label %._crit_edge.split.us.us.us.i

._crit_edge.split.us.us.us.i:                     ; preds = %scalar.ph1527, %scalar.ph1527.1, %scalar.ph1527.2, %scalar.ph1527.3, %scalar.ph1527.4, %scalar.ph1527.5, %vector.body1540
  %i.ze = invoke noundef nonnull align 8 dereferenceable(105) ptr @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE12emplace_backIJRSt5arrayIiLm2EERS4_IfLm12EEEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 4 dereferenceable(48) %24)
          to label %.noexc560 unwind label %.loopexit.split-lp832.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc560:                                        ; preds = %._crit_edge.split.us.us.us.i
  %i.zf = add nuw nsw i32 %.03659.us.us.i, 1
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.us.i, i64 112 ; 2 uses
  %.not55.us.us.i = icmp eq ptr %i.zg, %i.xb
  %indvar.next1526 = add i64 %indvar1525, 1
  br i1 %.not55.us.us.i, label %.loopexit839, label %.preheader.us.us.i

.preheader.us.i:                                  ; preds = %.lr.ph60.split.us.i, %.noexc561
  %.03659.us.i = phi i32 [ %i.zk, %.noexc561 ], [ 0, %.lr.ph60.split.us.i ] ; 3 uses
  %.sroa.052.058.us.i = phi ptr [ %i.zl, %.noexc561 ], [ %i.wz, %.lr.ph60.split.us.i ]
  %i.zh = sdiv i32 %.03659.us.i, %i.vu
  %i.zi = srem i32 %.03659.us.i, %i.vu
  store i32 %i.zh, ptr %23, align 4, !tbaa !25
  store i32 %i.zi, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !25
  %i.zj = invoke noundef nonnull align 8 dereferenceable(105) ptr @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE12emplace_backIJRSt5arrayIiLm2EERS4_IfLm12EEEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 4 dereferenceable(48) %24)
          to label %.noexc561 unwind label %.loopexit.split-lp832.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc561:                                        ; preds = %.preheader.us.i
  %i.zk = add nuw nsw i32 %.03659.us.i, 1
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.052.058.us.i, i64 112 ; 2 uses
  %.not55.us.i = icmp eq ptr %i.zl, %i.xb
  br i1 %.not55.us.i, label %.loopexit839, label %.preheader.us.i

.loopexit839:                                     ; preds = %.noexc561, %.noexc560, %.noexc559, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE5clearEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  %i.zm = load ptr, ptr %i.r, align 8, !tbaa !263
end_hunk_0
