Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/checker_detector?download=true
inline.NumInlined: 3254
inline.NumDeleted: 1191
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv3mcc20CCheckerDetectorImpl14findCandidatesERKSt6vectorIS2_INS_6Point_IiEESaIS4_EESaIS6_EERS2_INS0_6CChartESaISB_EE:bb.a
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %indvars.iv368, 32
  %.sroa.0184.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %indvars.iv371
  store i64 %.sroa.0184.0.insert.insert, ptr %.sroa.13.1314, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.13.1314, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

bb.am:                                            ; preds = %bb.ak
  %i.kt = ptrtoint ptr %.sroa.18.1315 to i64      ; 2 uses
  %i.ku = ptrtoint ptr %.sroa.0208.1313 to i64    ; 3 uses
  %i.kv = sub i64 %i.kt, %i.ku                    ; 4 uses
  %i.kw = icmp eq i64 %i.kv, 9223372036854775800
  br i1 %i.kw, label %bb.an, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #31
          to label %.noexc128 unwind label %.loopexit.split-lp

.noexc128:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.am
  %i.kx = ashr exact i64 %i.kv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kx, i64 1)
  %i.ky = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kx ; 2 uses
  %i.kz = icmp ult i64 %i.ky, %i.kx
  %i.la = call i64 @llvm.umin.i64(i64 %i.ky, i64 1152921504606846975)
  %i.lb = select i1 %i.kz, i64 1152921504606846975, i64 %i.la ; 3 uses
  %.not.i.i.i.i126 = icmp ne i64 %i.lb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i126)
  %i.lc = shl nuw nsw i64 %i.lb, 3
  %i.ld = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lc) #28
          to label %.noexc129 unwind label %.loopexit ; 8 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.kv
  %.sroa.6.0.insert.shift191 = shl nuw nsw i64 %indvars.iv368, 32
  %.sroa.0184.0.insert.insert188 = or disjoint i64 %.sroa.6.0.insert.shift191, %indvars.iv371
  store i64 %.sroa.0184.0.insert.insert188, ptr %i.le, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0208.1313, %.sroa.18.1315
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc129
  %i.lf = ptrtoaddr ptr %i.ld to i64
  %i.lg = add i64 %i.kt, -8
  %i.lh = sub i64 %i.lg, %i.ku                    ; 2 uses
  %i.li = lshr i64 %i.lh, 3
  %i.lj = add nuw nsw i64 %i.li, 1                ; 2 uses
  %min.iters.check471 = icmp ult i64 %i.lh, 24
  %i.lk = sub i64 %i.ku, %i.lf
  %diff.check469 = icmp ugt i64 %i.lk, -32
  %or.cond502 = or i1 %min.iters.check471, %diff.check469
  br i1 %or.cond502, label %.lr.ph.i.i.i.i.i.i.preheader505, label %vector.ph472

vector.ph472:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec473 = and i64 %i.lj, 4611686018427387900  ; 3 uses
  %i.ll = shl i64 %n.vec473, 3                    ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ld, i64 %i.ll  ; 2 uses
  %i.ln = getelementptr i8, ptr %.sroa.0208.1313, i64 %i.ll
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph472
  %index475 = phi i64 [ 0, %vector.ph472 ], [ %index.next480, %vector.body474 ] ; 2 uses
  %i.lo = shl i64 %index475, 3                    ; 2 uses
  %next.gep476 = getelementptr i8, ptr %i.ld, i64 %i.lo ; 2 uses
  %next.gep477 = getelementptr i8, ptr %.sroa.0208.1313, i64 %i.lo ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.lp = getelementptr i8, ptr %next.gep477, i64 16
  %wide.load478 = load <2 x i64>, ptr %next.gep477, align 4, !alias.scope !217, !noalias !214
  %wide.load479 = load <2 x i64>, ptr %i.lp, align 4, !alias.scope !217, !noalias !214
  %i.lq = getelementptr i8, ptr %next.gep476, i64 16
  store <2 x i64> %wide.load478, ptr %next.gep476, align 4, !alias.scope !214, !noalias !217
  store <2 x i64> %wide.load479, ptr %i.lq, align 4, !alias.scope !214, !noalias !217
  %index.next480 = add nuw i64 %index475, 4       ; 2 uses
  %i.lr = icmp eq i64 %index.next480, %n.vec473
  br i1 %i.lr, label %middle.block481, label %vector.body474, !llvm.loop !219

middle.block481:                                  ; preds = %vector.body474
  %cmp.n482 = icmp eq i64 %i.lj, %n.vec473
  br i1 %cmp.n482, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader505

.lr.ph.i.i.i.i.i.i.preheader505:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block481
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.lm, %middle.block481 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0208.1313, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ln, %middle.block481 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader505, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader505 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader505 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.ls = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !217, !noalias !214
  store i64 %i.ls, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !214, !noalias !217
  %i.lt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i127 = icmp eq ptr %i.lt, %.sroa.18.1315
  br i1 %.not.i.i.i.i.i.i127, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !220

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block481, %.noexc129
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ld, %.noexc129 ], [ %i.lm, %middle.block481 ], [ %i.lu, %.lr.ph.i.i.i.i.i.i ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0208.1313, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0208.1313, i64 noundef %i.kv) #29
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lb
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit252 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.al, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %_ZNK2cv6Point_IiE3dotERKS1_.exit124.3
  %.sroa.0208.2 = phi ptr [ %.sroa.0208.1313, %_ZNK2cv6Point_IiE3dotERKS1_.exit124.3 ], [ %i.ld, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0208.1313, %bb.al ] ; 3 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.1314, %_ZNK2cv6Point_IiE3dotERKS1_.exit124.3 ], [ %i.lv, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ks, %bb.al ] ; 3 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.1315, %_ZNK2cv6Point_IiE3dotERKS1_.exit124.3 ], [ %i.lw, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.1315, %bb.al ] ; 3 uses
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.lx = load ptr, ptr %i.v, align 8, !tbaa !193 ; 3 uses
  %i.ly = load ptr, ptr %4, align 8, !tbaa !196   ; 4 uses
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = sdiv exact i64 %i.mb, 56                ; 3 uses
  %i.md = trunc i64 %i.mc to i32
  %i.me = trunc nuw i64 %indvars.iv.next369 to i32
  %i.mf = icmp slt i32 %i.me, %i.md
  br i1 %i.mf, label %.lr.ph317, label %._crit_edge, !llvm.loop !221

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.ae, %._crit_edge325
  %.sroa.16181.0 = phi ptr [ null, %._crit_edge325 ], [ %i.gv, %bb.ae ] ; 4 uses
  %.sroa.0175.0 = phi ptr [ null, %._crit_edge325 ], [ %i.gt, %bb.ae ] ; 6 uses
  %i.mg = ptrtoint ptr %.sroa.0208.0.lcssa to i64 ; 3 uses
  %.not341 = icmp eq ptr %.sroa.13.0.lcssa, %.sroa.0208.0.lcssa
  br i1 %.not341, label %._crit_edge335, label %.lr.ph334.preheader

.lr.ph334.preheader:                              ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.mh = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.mi = sub i64 %i.mh, %i.mg
  %i.mj = ashr exact i64 %i.mi, 3
  br label %.lr.ph334

._crit_edge335:                                   ; preds = %bb.aq, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.mk = load ptr, ptr %2, align 8, !tbaa !196   ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !193 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.mm, %i.mk
  br i1 %.not.i.i130, label %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge335, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.mn, %.lr.ph.i.i.i.i ], [ %i.mk, %._crit_edge335 ] ; 2 uses
  call void @_ZN2cv3mcc6CChartD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i.i.i) #27
  %i.mn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i131 = icmp eq ptr %i.mn, %i.mm
  br i1 %.not.i.i.i.i131, label %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !222

_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !193
  br label %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EE5clearEv.exit: ; preds = %._crit_edge335, %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.mo = load ptr, ptr %i.v, align 8, !tbaa !193
  %i.mp = load ptr, ptr %4, align 8, !tbaa !196   ; 2 uses
  %.not342 = icmp eq ptr %i.mo, %i.mp
  br i1 %.not342, label %._crit_edge339, label %.lr.ph338

.lr.ph338:                                        ; preds = %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EE5clearEv.exit
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.aw

.lr.ph334:                                        ; preds = %.lr.ph334.preheader, %bb.aq
  %.044333 = phi i64 [ %i.nm, %bb.aq ], [ 0, %.lr.ph334.preheader ] ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0208.0.lcssa, i64 %.044333 ; 3 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !223
  %i.mt = sext i32 %i.ms to i64
  %i.mu = load ptr, ptr %4, align 8, !tbaa !196
  %i.mv = getelementptr inbounds nuw [56 x i8], ptr %i.mu, i64 %i.mt
  %i.mw = invoke noundef float @_ZN2cv3mcc9perimeterERKSt6vectorINS_6Point_IfEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.mv)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %.lr.ph334
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 4 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !225
  %i.mz = sext i32 %i.my to i64
  %i.na = load ptr, ptr %4, align 8, !tbaa !196
  %i.nb = getelementptr inbounds nuw [56 x i8], ptr %i.na, i64 %i.mz
  %i.nc = invoke noundef float @_ZN2cv3mcc9perimeterERKSt6vectorINS_6Point_IfEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.nb)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.nd = fcmp ogt float %i.mw, %i.nc
  %.val252 = load i32, ptr %i.mx, align 4
  %.043.in.a = load i32, ptr %i.mr, align 4
  %.043.in = select i1 %i.nd, i32 %.val252, i32 %.043.in.a ; 2 uses
  %.043 = sext i32 %.043.in to i64                ; 2 uses
  %i.ne = sdiv i32 %.043.in, 64
  %.sext = sext i32 %i.ne to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %.sroa.0175.0, i64 %.sext
  %i.ng = and i64 %.043, -9223372036854775745
  %i.nh = icmp ugt i64 %i.ng, -9223372036854775808
  %storemerge.idx.i.i.i.i.i132 = select i1 %i.nh, i64 -8, i64 0
  %storemerge.i.i.i.i.i133 = getelementptr inbounds i8, ptr %i.nf, i64 %storemerge.idx.i.i.i.i.i132 ; 2 uses
  %i.ni = and i64 %.043, 63
  %i.nj = shl nuw i64 1, %i.ni
  %i.nk = load i64, ptr %storemerge.i.i.i.i.i133, align 8, !tbaa !153
  %i.nl = or i64 %i.nj, %i.nk
  store i64 %i.nl, ptr %storemerge.i.i.i.i.i133, align 8, !tbaa !153
  %i.nm = add nuw i64 %.044333, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.nm, %i.mj
  br i1 %exitcond.not, label %._crit_edge335, label %.lr.ph334, !llvm.loop !226

bb.ar:                                            ; preds = %.lr.ph334
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.as:                                            ; preds = %bb.ap
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

._crit_edge339:                                   ; preds = %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EE5clearEv.exit
  %.not.i.i134 = icmp eq ptr %.sroa.0175.0, null
  br i1 %.not.i.i134, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %._crit_edge339.thread

._crit_edge339.thread:                            ; preds = %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EE9push_backERKS2_.exit156, %._crit_edge339
  %i.np = ptrtoint ptr %.sroa.16181.0 to i64
  %i.nq = ptrtoint ptr %.sroa.0175.0 to i64
  %i.nr = sub i64 %i.np, %i.nq                    ; 2 uses
  %i.ns = ashr exact i64 %i.nr, 3
  %i.nt = sub nsw i64 0, %i.ns
  %i.nu = getelementptr inbounds [8 x i8], ptr %.sroa.16181.0, i64 %i.nt
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nr) #29
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %._crit_edge339, %._crit_edge339.thread
  %.not.i.i.i135 = icmp eq ptr %.sroa.0208.0.lcssa, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.nv = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.nw = sub i64 %i.nv, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0208.0.lcssa, i64 noundef %i.nw) #29
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit:        ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.at
  %i.nx = load ptr, ptr %4, align 8, !tbaa !196   ; 3 uses
  %i.ny = load ptr, ptr %i.v, align 8, !tbaa !193 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.nx, %i.ny
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.nz, %.lr.ph.i.i.i ], [ %i.nx, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3mcc6CChartD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i.i) #27
  %i.nz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %i.nz, %i.ny
  br i1 %.not.i.i.i136, label %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !222

_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !196
  br label %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit
  %i.oa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.nx, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !207
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = sub i64 %i.od, %i.oe
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef %i.of) #29
  br label %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.og = load ptr, ptr %3, align 8, !tbaa !174   ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EED2Ev.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !177
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.og to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.ol) #29
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EED2Ev.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.aw:                                            ; preds = %.lr.ph338, %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EE9push_backERKS2_.exit156
  %i.om = phi ptr [ %i.mp, %.lr.ph338 ], [ %i.qk, %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EE9push_backERKS2_.exit156 ]
  %.0337 = phi i64 [ 0, %.lr.ph338 ], [ %i.qi, %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EE9push_backERKS2_.exit156 ] ; 5 uses
  %i.on = sdiv i64 %.0337, 64
  %i.oo = getelementptr inbounds [8 x i8], ptr %.sroa.0175.0, i64 %i.on
  %i.op = and i64 %.0337, -9223372036854775745
  %i.oq = icmp ugt i64 %i.op, -9223372036854775808
  %storemerge.idx.i.i.i.i.i138 = select i1 %i.oq, i64 -8, i64 0
  %storemerge.i.i.i.i.i139 = getelementptr inbounds i8, ptr %i.oo, i64 %storemerge.idx.i.i.i.i.i138
  %i.or = and i64 %.0337, 63
  %i.os = shl nuw i64 1, %i.or
  %i.ot = load i64, ptr %storemerge.i.i.i.i.i139, align 8, !tbaa !153
  %i.ou = and i64 %i.ot, %i.os
  %.not251 = icmp eq i64 %i.ou, 0
  br i1 %.not251, label %bb.ax, label %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EE9push_backERKS2_.exit156

bb.ax:                                            ; preds = %bb.aw
  %i.ov = getelementptr inbounds nuw [56 x i8], ptr %i.om, i64 %.0337 ; 5 uses
  %i.ow = load ptr, ptr %i.ml, align 8, !tbaa !193 ; 7 uses
  %i.ox = load ptr, ptr %i.mq, align 8, !tbaa !207
  %.not.i142 = icmp eq ptr %i.ow, %i.ox
  br i1 %.not.i142, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !206 ; 2 uses
  %i.pa = load ptr, ptr %i.ov, align 8, !tbaa !202 ; 2 uses
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = sub i64 %i.pb, %i.pc                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ow, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i143 = icmp eq ptr %i.oz, %i.pa
  br i1 %.not.i.i.i.i.i.i143, label %.noexc154, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pe = icmp ugt i64 %i.pd, 9223372036854775800
  br i1 %i.pe, label %.noexc.i.i.i.i152, label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i.i.i144, !prof !68

.noexc.i.i.i.i152:                                ; preds = %bb.az
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc153 unwind label %.thread.loopexit.split-lp

.noexc153:                                        ; preds = %.noexc.i.i.i.i152
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i.i.i144: ; preds = %bb.az
  %i.pf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pd) #28
          to label %.noexc154 unwind label %.thread.loopexit

.noexc154:                                        ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i.i.i144, %bb.ay
  %i.pg = phi ptr [ null, %bb.ay ], [ %i.pf, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i.i.i144 ] ; 8 uses
  store ptr %i.pg, ptr %i.ow, align 8, !tbaa !202
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 2 uses
  store ptr %i.pg, ptr %i.ph, align 8, !tbaa !206
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pd
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store ptr %i.pi, ptr %i.pj, align 8, !tbaa !205
  %i.pk = load ptr, ptr %i.ov, align 8, !tbaa !208 ; 5 uses
  %i.pl = load ptr, ptr %i.oy, align 8, !tbaa !208 ; 3 uses
  %.not7.i.i.i.i.i.i.i145 = icmp eq ptr %i.pk, %i.pl
  br i1 %.not7.i.i.i.i.i.i.i145, label %_ZN2cv3mcc6CChartC2ERKS1_.exit.i150, label %.lr.ph.i.i.i.i.i.i.i146.preheader

.lr.ph.i.i.i.i.i.i.i146.preheader:                ; preds = %.noexc154
  %i.pm = ptrtoaddr ptr %i.pk to i64              ; 2 uses
  %i.pn = ptrtoaddr ptr %i.pg to i64
  %i.po = ptrtoaddr ptr %i.pl to i64
  %i.pp = add i64 %i.po, -8
  %i.pq = sub i64 %i.pp, %i.pm                    ; 2 uses
  %i.pr = lshr i64 %i.pq, 3
  %i.ps = add nuw nsw i64 %i.pr, 1                ; 2 uses
  %min.iters.check488 = icmp ult i64 %i.pq, 24
  %i.pt = sub i64 %i.pm, %i.pn
  %diff.check486 = icmp ugt i64 %i.pt, -32
  %or.cond503 = or i1 %min.iters.check488, %diff.check486
  br i1 %or.cond503, label %.lr.ph.i.i.i.i.i.i.i146.preheader504, label %vector.ph489

vector.ph489:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i146.preheader
  %n.vec490 = and i64 %i.ps, 4611686018427387900  ; 3 uses
  %i.pu = shl i64 %n.vec490, 3                    ; 2 uses
  %i.pv = getelementptr i8, ptr %i.pg, i64 %i.pu  ; 2 uses
  %i.pw = getelementptr i8, ptr %i.pk, i64 %i.pu
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next497, %vector.body491 ] ; 2 uses
  %i.px = shl i64 %index492, 3                    ; 2 uses
  %next.gep493 = getelementptr i8, ptr %i.pg, i64 %i.px ; 2 uses
  %next.gep494 = getelementptr i8, ptr %i.pk, i64 %i.px ; 2 uses
  %i.py = getelementptr i8, ptr %next.gep494, i64 16
  %wide.load495 = load <2 x i64>, ptr %next.gep494, align 4
  %wide.load496 = load <2 x i64>, ptr %i.py, align 4
  %i.pz = getelementptr i8, ptr %next.gep493, i64 16
  store <2 x i64> %wide.load495, ptr %next.gep493, align 4
  store <2 x i64> %wide.load496, ptr %i.pz, align 4
  %index.next497 = add nuw i64 %index492, 4       ; 2 uses
  %i.qa = icmp eq i64 %index.next497, %n.vec490
  br i1 %i.qa, label %middle.block498, label %vector.body491, !llvm.loop !227

middle.block498:                                  ; preds = %vector.body491
  %cmp.n499 = icmp eq i64 %i.ps, %n.vec490
  br i1 %cmp.n499, label %_ZN2cv3mcc6CChartC2ERKS1_.exit.i150, label %.lr.ph.i.i.i.i.i.i.i146.preheader504
end_hunk_0
begin_hunk_1_@_ZN2cv3mcc20CCheckerDetectorImpl24removeTooCloseDetectionsEv:bb.a
  %i.ho = shl i64 %n.vec, 3                       ; 2 uses
  %i.hp = getelementptr i8, ptr %i.hg, i64 %i.ho  ; 2 uses
  %i.hq = getelementptr i8, ptr %.sroa.0136.1219, i64 %i.ho
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hg, i64 %i.hr ; 2 uses
  %next.gep354 = getelementptr i8, ptr %.sroa.0136.1219, i64 %i.hr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.hs = getelementptr i8, ptr %next.gep354, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep354, align 4, !alias.scope !367, !noalias !364
  %wide.load355 = load <2 x i64>, ptr %i.hs, align 4, !alias.scope !367, !noalias !364
  %i.ht = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !364, !noalias !367
  store <2 x i64> %wide.load355, ptr %i.ht, align 4, !alias.scope !364, !noalias !367
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader357

.lr.ph.i.i.i.i.i.i.preheader357:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hp, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0136.1219, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader357, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader357 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader357 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.hv = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !367, !noalias !364
  store i64 %i.hv, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !364, !noalias !367
  %i.hw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hw, %.sroa.13.1218
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !370

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc69
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.hg, %.noexc69 ], [ %i.hp, %middle.block ], [ %i.hx, %.lr.ph.i.i.i.i.i.i ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0136.1219, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.1219, i64 noundef %i.gy) #29
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.he
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

.loopexit150:                                     ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit152 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp151:                            ; preds = %bb.w
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.u, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %_ZNK2cv6Point_IiE3dotERKS1_.exit.3
  %.sroa.18.2 = phi ptr [ %.sroa.18.1217, %_ZNK2cv6Point_IiE3dotERKS1_.exit.3 ], [ %i.hz, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.1217, %bb.u ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.1218, %_ZNK2cv6Point_IiE3dotERKS1_.exit.3 ], [ %i.hy, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.gv, %bb.u ] ; 2 uses
  %.sroa.0136.2 = phi ptr [ %.sroa.0136.1219, %_ZNK2cv6Point_IiE3dotERKS1_.exit.3 ], [ %i.hg, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0136.1219, %bb.u ] ; 2 uses
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %i.ia = load ptr, ptr %i.b, align 8, !tbaa !65  ; 2 uses
  %i.ib = load ptr, ptr %i.a, align 8, !tbaa !64  ; 3 uses
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id                    ; 2 uses
  %i.if = lshr exact i64 %i.ie, 4
  %i.ig = trunc i64 %i.if to i32
  %i.ih = trunc nuw i64 %indvars.iv.next264 to i32
  %i.ii = icmp slt i32 %i.ih, %i.ig
  br i1 %i.ii, label %.lr.ph, label %._crit_edge, !llvm.loop !371

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.c, %._crit_edge229
  %.sroa.16109.0 = phi ptr [ null, %._crit_edge229 ], [ %i.t, %bb.c ] ; 4 uses
  %.sroa.0103.0 = phi ptr [ null, %._crit_edge229 ], [ %i.r, %bb.c ] ; 6 uses
  %i.ij = ptrtoint ptr %.sroa.0136.0.lcssa to i64 ; 2 uses
  %.not245 = icmp eq ptr %.sroa.13.0.lcssa, %.sroa.0136.0.lcssa
  br i1 %.not245, label %._crit_edge240, label %.lr.ph239.preheader

.lr.ph239.preheader:                              ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ik = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.il = sub i64 %i.ik, %i.ij
  %i.im = ashr exact i64 %i.il, 3
  br label %.lr.ph239

._crit_edge240:                                   ; preds = %bb.ad, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.in = load ptr, ptr %i.b, align 8, !tbaa !65  ; 3 uses
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !64  ; 3 uses
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq                    ; 3 uses
  %.not.i.i.i.i70 = icmp eq ptr %i.in, %i.io
  br i1 %.not.i.i.i.i70, label %.noexc72, label %bb.y

bb.y:                                             ; preds = %._crit_edge240
  %i.is = icmp ugt i64 %i.ir, 9223372036854775792
  br i1 %i.is, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3PtrINS0_3mcc8CCheckerEEEE8allocateEmPKv.exit.i.i.i.i, !prof !68

.noexc.i.i:                                       ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc71 unwind label %bb.ap

.noexc71:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3PtrINS0_3mcc8CCheckerEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.y
  %i.it = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ir) #28
          to label %_ZNSt15__new_allocatorIN2cv3PtrINS0_3mcc8CCheckerEEEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge unwind label %bb.ap

_ZNSt15__new_allocatorIN2cv3PtrINS0_3mcc8CCheckerEEEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3PtrINS0_3mcc8CCheckerEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !121
  %.pre269 = load ptr, ptr %i.b, align 8, !tbaa !121
  br label %.noexc72

.noexc72:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3PtrINS0_3mcc8CCheckerEEEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge, %._crit_edge240
  %i.iu = phi ptr [ %i.in, %._crit_edge240 ], [ %.pre269, %_ZNSt15__new_allocatorIN2cv3PtrINS0_3mcc8CCheckerEEEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge ] ; 3 uses
  %i.iv = phi ptr [ %i.io, %._crit_edge240 ], [ %.pre, %_ZNSt15__new_allocatorIN2cv3PtrINS0_3mcc8CCheckerEEEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge ] ; 3 uses
  %i.iw = phi ptr [ null, %._crit_edge240 ], [ %i.it, %_ZNSt15__new_allocatorIN2cv3PtrINS0_3mcc8CCheckerEEEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge ] ; 5 uses
  store ptr %i.iw, ptr %3, align 8, !tbaa !64
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !65
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ir
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !71
  %.not7.i.i.i.i.i = icmp eq ptr %i.iv, %i.iu
  br i1 %.not7.i.i.i.i.i, label %.loopexit149, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc72, %_ZSt10_ConstructIN2cv3PtrINS0_3mcc8CCheckerEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.jj, %_ZSt10_ConstructIN2cv3PtrINS0_3mcc8CCheckerEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.iw, %.noexc72 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ji, %_ZSt10_ConstructIN2cv3PtrINS0_3mcc8CCheckerEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.iv, %.noexc72 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !35 ; 2 uses
  %i.jc = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !21
  store <2 x ptr> %i.jc, ptr %.09.i.i.i.i.i, align 8, !tbaa !21
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN2cv3PtrINS0_3mcc8CCheckerEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 3 uses
  %i.je = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.je, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !61
  %i.jg = add nsw i32 %i.jf, 1
  store i32 %i.jg, ptr %i.jd, align 4, !tbaa !61
  br label %_ZSt10_ConstructIN2cv3PtrINS0_3mcc8CCheckerEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.jh = atomicrmw volatile add ptr %i.jd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN2cv3PtrINS0_3mcc8CCheckerEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN2cv3PtrINS0_3mcc8CCheckerEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.ab, %bb.aa, %.lr.ph.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ji, %i.iu
  br i1 %.not.i.i.i.i.i, label %.loopexit149.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !372

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %bb.ad
  %.026238 = phi i64 [ %i.kn, %bb.ad ], [ 0, %.lr.ph239.preheader ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0136.0.lcssa, i64 %.026238 ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !223
  %i.jm = sext i32 %i.jl to i64
  %i.jn = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %i.jm
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !316 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !30
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 152
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = invoke noundef float %i.js(ptr noundef nonnull align 8 dereferenceable(8) %i.jp)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %.lr.ph239
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jk, i64 4 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !225
  %i.jw = sext i32 %i.jv to i64
  %i.jx = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.jw
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !316 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !30
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 152
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = invoke noundef float %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jz)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ke = fcmp olt float %i.jt, %i.kd
  %.val149 = load i32, ptr %i.ju, align 4
  %.025.in.a = load i32, ptr %i.jk, align 4
  %.025.in = select i1 %i.ke, i32 %.val149, i32 %.025.in.a ; 2 uses
  %.025 = sext i32 %.025.in to i64                ; 2 uses
  %i.kf = sdiv i32 %.025.in, 64
  %.sext = sext i32 %i.kf to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %.sroa.0103.0, i64 %.sext
  %i.kh = and i64 %.025, -9223372036854775745
  %i.ki = icmp ugt i64 %i.kh, -9223372036854775808
  %storemerge.idx.i.i.i.i.i73 = select i1 %i.ki, i64 -8, i64 0
  %storemerge.i.i.i.i.i74 = getelementptr inbounds i8, ptr %i.kg, i64 %storemerge.idx.i.i.i.i.i73 ; 2 uses
  %i.kj = and i64 %.025, 63
  %i.kk = shl nuw i64 1, %i.kj
  %i.kl = load i64, ptr %storemerge.i.i.i.i.i74, align 8, !tbaa !153
  %i.km = or i64 %i.kk, %i.kl
  store i64 %i.km, ptr %storemerge.i.i.i.i.i74, align 8, !tbaa !153
  %i.kn = add nuw i64 %.026238, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.kn, %i.im
  br i1 %exitcond.not, label %._crit_edge240, label %.lr.ph239, !llvm.loop !373

bb.ae:                                            ; preds = %.lr.ph239
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.af:                                            ; preds = %bb.ac
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit149.loopexit:                            ; preds = %_ZSt10_ConstructIN2cv3PtrINS0_3mcc8CCheckerEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre270 = load ptr, ptr %i.a, align 8, !tbaa !64
  %.pre271 = load ptr, ptr %i.b, align 8, !tbaa !65
  br label %.loopexit149

.loopexit149:                                     ; preds = %.loopexit149.loopexit, %.noexc72
  %i.kq = phi ptr [ %i.iu, %.noexc72 ], [ %.pre271, %.loopexit149.loopexit ] ; 3 uses
  %i.kr = phi ptr [ %i.iv, %.noexc72 ], [ %.pre270, %.loopexit149.loopexit ] ; 4 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.iw, %.noexc72 ], [ %i.jj, %.loopexit149.loopexit ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ix, align 8, !tbaa !65
  %.not.i.i75 = icmp eq ptr %i.kq, %i.kr
  br i1 %.not.i.i75, label %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit149, %_ZSt8_DestroyIN2cv3PtrINS0_3mcc8CCheckerEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.lj, %_ZSt8_DestroyIN2cv3PtrINS0_3mcc8CCheckerEEEEvPT_.exit.i.i.i.i ], [ %i.kr, %.loopexit149 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !35 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv3PtrINS0_3mcc8CCheckerEEEEvPT_.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 4 uses
  %i.kv = load atomic i64, ptr %i.ku acquire, align 8 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 4294967297
  %i.kx = trunc i64 %i.kv to i32                  ; 2 uses
  br i1 %i.kw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ku, align 8, !tbaa !27
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  store i32 0, ptr %i.ky, align 4, !tbaa !29
  %i.kz = load ptr, ptr %i.kt, align 8, !tbaa !30
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(16) %i.kt) #27, !inline_history !73
  %i.lc = load ptr, ptr %i.kt, align 8, !tbaa !30
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(16) %i.kt) #27, !inline_history !73
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3mcc8CCheckerEEEEvPT_.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.lf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.lf, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lg = add nsw i32 %i.kx, -1
  store i32 %i.lg, ptr %i.ku, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.lh = atomicrmw volatile add ptr %i.ku, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kx, %bb.aj ], [ %i.lh, %bb.ak ]
  %i.li = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.li, label %bb.al, label %_ZSt8_DestroyIN2cv3PtrINS0_3mcc8CCheckerEEEEvPT_.exit.i.i.i.i, !prof !68

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kt) #27
  br label %_ZSt8_DestroyIN2cv3PtrINS0_3mcc8CCheckerEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_3mcc8CCheckerEEEEvPT_.exit.i.i.i.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ah, %.lr.ph.i.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.lj, %i.kq
  br i1 %.not.i.i.i.i76, label %_ZSt8_DestroyIPN2cv3PtrINS0_3mcc8CCheckerEEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !69

_ZSt8_DestroyIPN2cv3PtrINS0_3mcc8CCheckerEEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_3mcc8CCheckerEEEEvPT_.exit.i.i.i.i
  store ptr %i.kr, ptr %i.b, align 8, !tbaa !65
  %.pre272 = load ptr, ptr %i.ix, align 8, !tbaa !65
  br label %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE5clearEv.exit

_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE5clearEv.exit: ; preds = %.loopexit149, %_ZSt8_DestroyIPN2cv3PtrINS0_3mcc8CCheckerEEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.lk = phi ptr [ %i.kq, %.loopexit149 ], [ %i.kr, %_ZSt8_DestroyIPN2cv3PtrINS0_3mcc8CCheckerEEES4_EvT_S6_RSaIT0_E.exit.i.i ]
  %i.ll = phi ptr [ %.0.lcssa.i.i.i.i.i, %.loopexit149 ], [ %.pre272, %_ZSt8_DestroyIPN2cv3PtrINS0_3mcc8CCheckerEEES4_EvT_S6_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.lm = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %.not246 = icmp eq ptr %i.ll, %i.lm
  br i1 %.not246, label %._crit_edge244, label %.lr.ph243

.lr.ph243:                                        ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE5clearEv.exit
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.aq

._crit_edge244.loopexit:                          ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE9push_backERKS4_.exit
  %.pre275.a = load ptr, ptr %i.b, align 8, !tbaa !121
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %._crit_edge244.loopexit, %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE5clearEv.exit
  %i.lo = phi ptr [ %.pre275.a, %._crit_edge244.loopexit ], [ %i.lk, %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE5clearEv.exit ] ; 6 uses
  %i.lp = load ptr, ptr %i.a, align 8, !tbaa !121 ; 6 uses
  %.not.i.i77 = icmp eq ptr %i.lp, %i.lo
  br i1 %.not.i.i77, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_3mcc8CCheckerEEESt6vectorIS6_SaIS6_EEEEZNS4_20CCheckerDetectorImpl24removeTooCloseDetectionsEvE3$_0EvT_SE_T0_.exit", label %bb.am

bb.am:                                            ; preds = %._crit_edge244
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr                    ; 2 uses
  %i.lt = ashr exact i64 %i.ls, 4
  %i.lu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lt, i1 true)
  %i.lv = shl nuw nsw i64 %i.lu, 1
  %i.lw = xor i64 %i.lv, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_3mcc8CCheckerEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_20CCheckerDetectorImpl24removeTooCloseDetectionsEvE3$_0EEEvT_SH_T0_T1_"(ptr %i.lp, ptr %i.lo, i64 noundef %i.lw)
          to label %.noexc80 unwind label %.loopexit.split-lp

.noexc80:                                         ; preds = %bb.am
  %i.lx = icmp sgt i64 %i.ls, 256
  br i1 %i.lx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.noexc80
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lp, i64 256 ; 3 uses
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_3mcc8CCheckerEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20CCheckerDetectorImpl24removeTooCloseDetectionsEvE3$_0EEEvT_SH_T0_"(ptr %i.lp, ptr nonnull %i.ly)
          to label %.noexc81 unwind label %.loopexit.split-lp

.noexc81:                                         ; preds = %bb.an
  %.not6.i.i.i.i = icmp eq ptr %i.ly, %i.lo
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_3mcc8CCheckerEEESt6vectorIS6_SaIS6_EEEEZNS4_20CCheckerDetectorImpl24removeTooCloseDetectionsEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i.i.i.i78

.lr.ph.i.i.i.i78:                                 ; preds = %.noexc81, %.noexc82
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.lz, %.noexc82 ], [ %i.ly, %.noexc81 ] ; 2 uses
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_3mcc8CCheckerEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_20CCheckerDetectorImpl24removeTooCloseDetectionsEvE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.07.i.i.i.i)
          to label %.noexc82 unwind label %.loopexit

.noexc82:                                         ; preds = %.lr.ph.i.i.i.i78
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.lz, %i.lo
  br i1 %.not.i.i.i.i79, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_3mcc8CCheckerEEESt6vectorIS6_SaIS6_EEEEZNS4_20CCheckerDetectorImpl24removeTooCloseDetectionsEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i.i.i.i78, !llvm.loop !374

bb.ao:                                            ; preds = %.noexc80
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_3mcc8CCheckerEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20CCheckerDetectorImpl24removeTooCloseDetectionsEvE3$_0EEEvT_SH_T0_"(ptr %i.lp, ptr %i.lo)
          to label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_3mcc8CCheckerEEESt6vectorIS6_SaIS6_EEEEZNS4_20CCheckerDetectorImpl24removeTooCloseDetectionsEvE3$_0EvT_SE_T0_.exit" unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %_ZNSt15__new_allocatorIN2cv3PtrINS0_3mcc8CCheckerEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aq:                                            ; preds = %.lr.ph243, %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE9push_backERKS4_.exit
  %i.mb = phi ptr [ %i.lm, %.lr.ph243 ], [ %i.my, %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %i.mc = phi ptr [ %i.ll, %.lr.ph243 ], [ %i.mz, %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.0242 = phi i64 [ 0, %.lr.ph243 ], [ %i.na, %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE9push_backERKS4_.exit ] ; 5 uses
  %i.md = sdiv i64 %.0242, 64
  %i.me = getelementptr inbounds [8 x i8], ptr %.sroa.0103.0, i64 %i.md
  %i.mf = and i64 %.0242, -9223372036854775745
  %i.mg = icmp ugt i64 %i.mf, -9223372036854775808
  %storemerge.idx.i.i.i.i.i84 = select i1 %i.mg, i64 -8, i64 0
  %storemerge.i.i.i.i.i85 = getelementptr inbounds i8, ptr %i.me, i64 %storemerge.idx.i.i.i.i.i84
  %i.mh = and i64 %.0242, 63
  %i.mi = shl nuw i64 1, %i.mh
  %i.mj = load i64, ptr %storemerge.i.i.i.i.i85, align 8, !tbaa !153
  %i.mk = and i64 %i.mj, %i.mi
  %.not = icmp eq i64 %i.mk, 0
  br i1 %.not, label %bb.ar, label %_ZNSt6vectorIN2cv3PtrINS0_3mcc8CCheckerEEESaIS4_EE9push_backERKS4_.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %.0242 ; 3 uses
  %i.mm = load ptr, ptr %i.b, align 8, !tbaa !65  ; 5 uses
  %i.mn = load ptr, ptr %i.ln, align 8, !tbaa !71
  %.not.i = icmp eq ptr %i.mm, %i.mn
  br i1 %.not.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !35 ; 2 uses
  %i.mq = load <2 x ptr>, ptr %i.ml, align 8, !tbaa !21
  store <2 x ptr> %i.mq, ptr %i.mm, align 8, !tbaa !21
  %.not.i.i.i.i.i88 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i.i88, label %_ZN2cv3PtrINS_3mcc8CCheckerEEC2ERKS3_.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 3 uses
  %i.ms = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i89 = icmp eq i8 %i.ms, 0
  br i1 %.not.i.i.i.i.i.i89, label %bb.av, label %bb.au
end_hunk_1
