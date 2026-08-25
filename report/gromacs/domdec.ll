Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec?download=true
inline.NumInlined: 3413
inline.NumDeleted: 1670
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN3gmx26DomainDecompositionBuilder4ImplC2ERKNS_8MDLoggerERKNS_7MpiCommERKNS_13DomdecOptionsERKNS_12MdrunOptionsERK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPA3_KfNS_8ArrayRefIKNS_17RangePartitioningEEEbfNSQ_IKNS_11BasicVectorIfEEEEbbbbb:bb.a
  br label %bb.bu

.loopexit.split-lp.i.i.i:                         ; preds = %bb.br
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i.i.i.i, label %.body107, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.rm) #31, !noalias !644
  br label %.body107

_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i: ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i, %bb.bp, %bb.bn, %.noexc112
  %.sroa.020.1.i.i = phi ptr [ %.sroa.020.0.i.i, %.noexc112 ], [ %.sroa.020.0.i.i, %bb.bn ], [ %i.ru, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.020.0.i.i, %bb.bp ] ; 9 uses
  %.sroa.8.1.i.i = phi ptr [ %.sroa.8.0.i.i, %.noexc112 ], [ %.sroa.8.0.i.i, %bb.bn ], [ %i.ry, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i ], [ %i.rj, %bb.bp ] ; 3 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.0.i.i, %.noexc112 ], [ %.sroa.11.0.i.i, %bb.bn ], [ %i.rz, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.11.0.i.i, %bb.bp ] ; 3 uses
  %i.sa = phi ptr [ %i.qw, %.noexc112 ], [ %i.qw, %bb.bn ], [ %i.ru, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i ], [ %i.qw, %bb.bp ]
  %i.sb = phi ptr [ %i.qx, %.noexc112 ], [ %i.qx, %bb.bn ], [ %i.rz, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i ], [ %i.qx, %bb.bp ]
  %i.sc = phi ptr [ %i.qy, %.noexc112 ], [ %i.qy, %bb.bn ], [ %i.ry, %_ZNSt6vectorI21InteractionListHandleSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i ], [ %i.rj, %bb.bp ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not24.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 95
  br i1 %.not24.i.i.i, label %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader.i.i, label %.noexc112

_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader.i.i: ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EE9push_backEOS0_.exit.i.i.i
  %.not32.i.i = icmp eq ptr %.sroa.020.1.i.i, %.sroa.8.1.i.i
  br i1 %.not32.i.i, label %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit._crit_edge.i.i, label %.lr.ph.i55.i

_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit._crit_edge.i.i: ; preds = %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.i.i, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader.i.i
  %.1.lcssa.i.i = phi i32 [ %.037.i.i, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader.i.i ], [ %.2.i.i, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.i.i ] ; 2 uses
  %.not.i.i.i14.i.i = icmp eq ptr %.sroa.020.1.i.i, null
  br i1 %.not.i.i.i14.i.i, label %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit._crit_edge.i.i
  %i.sd = ptrtoint ptr %.sroa.11.1.i.i to i64
  %i.se = ptrtoint ptr %.sroa.020.1.i.i to i64
  %i.sf = sub i64 %i.sd, %i.se
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.1.i.i, i64 noundef %i.sf) #31, !noalias !566
  br label %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit.i.i: ; preds = %bb.bw, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29, !noalias !566
  %i.sg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13IListIteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %36)
          to label %.noexc113 unwind label %.loopexit ; 0 uses

.noexc113:                                        ; preds = %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit.i.i
  %.sroa.06.0.copyload.i.i = load ptr, ptr %36, align 8, !noalias !566
  %.sroa.27.0.copyload.i.i = load i64, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %33), !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %34), !noalias !566
  store ptr %.sroa.06.0.copyload.i.i, ptr %33, align 8, !noalias !566
  store i64 %.sroa.27.0.copyload.i.i, ptr %i.qs, align 8, !noalias !566
  store ptr %.sroa.08.0.copyload.i.i, ptr %34, align 8, !noalias !566
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.qt, align 8, !noalias !566
  %i.sh = invoke noundef zeroext i1 @_ZNK13IListIteratoreqERKS_(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %.noexc114 unwind label %.loopexit

.noexc114:                                        ; preds = %.noexc113
  call void @llvm.lifetime.end.p0(ptr nonnull %33), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %34), !noalias !566
  br i1 %i.sh, label %_ZL24multi_body_bondeds_countRK10gmx_mtop_t.exit.loopexit.i, label %.lr.ph38.i.i

.lr.ph.i55.i:                                     ; preds = %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader.i.i, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.i.i
  %.134.i.i = phi i32 [ %.2.i.i, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.i.i ], [ %.037.i.i, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader.i.i ] ; 2 uses
  %.sroa.017.033.i.i = phi ptr [ %i.tm, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.i.i ], [ %.sroa.020.1.i.i, %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.preheader.i.i ] ; 4 uses
  %i.si = load i32, ptr %.sroa.017.033.i.i, align 8, !tbaa !650, !noalias !566
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !652, !noalias !566
  %i.sn = icmp sgt i32 %i.sm, 2
  br i1 %i.sn, label %bb.bx, label %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.i.i

bb.bx:                                            ; preds = %.lr.ph.i55.i
  %i.so = invoke noundef i32 @_ZNK10IListProxy4nmolEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.by unwind label %bb.bz, !noalias !566

bb.by:                                            ; preds = %bb.bx
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i.i, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !653, !noalias !566, !nonnull !22, !align !234 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !169, !noalias !566
  %i.st = load ptr, ptr %i.sq, align 8, !tbaa !23, !noalias !566
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = ptrtoint ptr %i.st to i64
  %i.sw = sub i64 %i.su, %i.sv
  %i.sx = ashr exact i64 %i.sw, 2
  %.val.i.i = load i32, ptr %.sroa.017.033.i.i, align 8, !tbaa !650, !noalias !566
  %i.sy = sext i32 %.val.i.i to i64
  %i.sz = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !652, !noalias !566
  %i.tc = add nsw i32 %i.tb, 1
  %i.td = sext i32 %i.tc to i64
  %i.te = udiv i64 %i.sx, %i.td
  %i.tf = trunc i64 %i.te to i32
  %i.tg = mul i32 %i.so, %i.tf
  %i.th = add i32 %i.tg, %.134.i.i
  br label %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.ti = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i15.i.i = icmp eq ptr %.sroa.020.1.i.i, null
  br i1 %.not.i.i.i15.i.i, label %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit16.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tj = ptrtoint ptr %.sroa.11.1.i.i to i64
  %i.tk = ptrtoint ptr %.sroa.020.1.i.i to i64
  %i.tl = sub i64 %i.tj, %i.tk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.1.i.i, i64 noundef %i.tl) #31, !noalias !566
  br label %_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit16.i.i

_ZNSt6vectorI21InteractionListHandleSaIS0_EED2Ev.exit16.i.i: ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29, !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29, !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29, !noalias !566
  br label %.body107

_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit.i.i: ; preds = %bb.by, %.lr.ph.i55.i
  %.2.i.i = phi i32 [ %i.th, %bb.by ], [ %.134.i.i, %.lr.ph.i55.i ] ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i.i, i64 16 ; 2 uses
  %.not.i56.i = icmp eq ptr %i.tm, %.sroa.8.1.i.i
  br i1 %.not.i56.i, label %_ZL13extractIListsRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEi.exit._crit_edge.i.i, label %.lr.ph.i55.i

_ZL24multi_body_bondeds_countRK10gmx_mtop_t.exit.loopexit.i: ; preds = %.noexc114
  %.pre.pre.i = load i8, ptr %57, align 8, !tbaa !527, !range !21, !alias.scope !566
  %i.tn = icmp sgt i32 %.1.lcssa.i.i, 0
  %i.to = zext i1 %i.tn to i8
  %i.tp = trunc nuw i8 %.pre.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29, !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29, !noalias !566
  store i8 %i.to, ptr %i.la, align 2, !tbaa !248, !alias.scope !566
  br i1 %i.tp, label %bb.cf, label %.thread

_ZL24multi_body_bondeds_countRK10gmx_mtop_t.exit.i: ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29, !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29, !noalias !566
  store i8 0, ptr %i.la, align 2, !tbaa !248, !alias.scope !566
  br i1 %10, label %bb.cf, label %.thread

bb.cb:                                            ; preds = %.loopexit.i
  store i8 0, ptr %i.la, align 2, !tbaa !248, !alias.scope !566
  br i1 %10, label %bb.cf, label %.thread

.thread:                                          ; preds = %.loopexit.i.thread, %bb.cb, %_ZL24multi_body_bondeds_countRK10gmx_mtop_t.exit.i, %_ZL24multi_body_bondeds_countRK10gmx_mtop_t.exit.loopexit.i
  %i.tq = invoke noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768) %i.kh, i32 noundef 62)
          to label %.noexc115 unwind label %.loopexit.split-lp

.noexc115:                                        ; preds = %.thread
  %i.tr = icmp sgt i32 %i.tq, 0
  br i1 %i.tr, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.noexc115
  %i.ts = invoke noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768) %i.kh, i32 noundef 63)
          to label %.noexc116 unwind label %.loopexit.split-lp

.noexc116:                                        ; preds = %bb.cc
  %i.tt = icmp sgt i32 %i.ts, 0
  %i.tu = zext i1 %i.tt to i8
  br label %bb.cd

bb.cd:                                            ; preds = %.noexc116, %.noexc115
  %i.tv = phi i8 [ 1, %.noexc115 ], [ %i.tu, %.noexc116 ] ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %57, i64 44
  store i8 %i.tv, ptr %i.tw, align 4, !tbaa !654, !alias.scope !566
  %i.tx = invoke noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768) %i.kh, i32 noundef 64)
          to label %bb.ce unwind label %.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cd
  %i.ty = icmp sgt i32 %i.tx, 0
  %i.tz = getelementptr inbounds nuw i8, ptr %57, i64 45
  %i.ua = zext i1 %i.ty to i8
  store i8 %i.ua, ptr %i.tz, align 1, !tbaa !655, !alias.scope !566
  %i.ub = trunc nuw i8 %i.tv to i1
  %i.uc = xor i1 %i.ub, true
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ki, i64 356
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !656, !noalias !566 ; 2 uses
  br label %bb.cg

bb.cf:                                            ; preds = %_ZL24multi_body_bondeds_countRK10gmx_mtop_t.exit.loopexit.i, %_ZL24multi_body_bondeds_countRK10gmx_mtop_t.exit.i, %bb.cb, %.thread185
  %i.uf = getelementptr inbounds nuw i8, ptr %57, i64 44
  store i8 0, ptr %i.uf, align 4, !tbaa !654, !alias.scope !566
  %i.ug = getelementptr inbounds nuw i8, ptr %57, i64 45
  store i8 0, ptr %i.ug, align 1, !tbaa !655, !alias.scope !566
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ki, i64 356
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !656, !noalias !566 ; 2 uses
  %.val52.i397 = load float, ptr %i.lg, align 8
  %i.uj = call float @llvm.fmuladd.f32(float %.val52.i397, float 2.000000e+00, float %i.ui)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %.in = phi float [ %i.ui, %bb.cf ], [ %i.ue, %bb.ce ]
  %.not.i95400 = phi i1 [ true, %bb.cf ], [ %i.uc, %bb.ce ]
  %.val49109.i398 = phi i1 [ true, %bb.cf ], [ false, %bb.ce ]
  %i.uk = phi float [ %i.uj, %bb.cf ], [ %i.ue, %bb.ce ]
  %i.ul = fcmp oeq float %.in, 0.000000e+00
  %i.um = select i1 %i.ul, float f0x5D5E0B6B, float %i.uk ; 7 uses
  %i.un = getelementptr inbounds nuw i8, ptr %57, i64 36 ; 4 uses
  store float %i.um, ptr %i.un, align 4, !tbaa !657, !alias.scope !566
  store float 0.000000e+00, ptr %i.lb, align 8, !tbaa !658, !alias.scope !566
  %i.uo = getelementptr inbounds nuw i8, ptr %57, i64 40 ; 3 uses
  store i8 0, ptr %i.ld, align 4, !tbaa !531, !alias.scope !566
  %i.up = load ptr, ptr %i.kx, align 8, !tbaa !563, !alias.scope !566 ; 3 uses
  %i.uq = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !563, !alias.scope !566
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = ptrtoint ptr %i.up to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.ut
  %i.uv = invoke noundef float @_Z30minCellSizeForAtomDisplacementRK10gmx_mtop_tRK10t_inputrecN3gmx8ArrayRefIKNS5_17RangePartitioningEEEf12ChanceTarget(ptr noundef nonnull align 8 dereferenceable(768) %i.kh, ptr noundef nonnull align 8 dereferenceable(888) %i.ki, ptr %i.up, ptr %i.uu, float noundef f0x2B8CBCCC, i32 noundef 1)
          to label %.noexc118 unwind label %.loopexit.split-lp ; 3 uses

.noexc118:                                        ; preds = %bb.cg
  %i.uw = getelementptr inbounds nuw i8, ptr %i.kf, i64 32 ; 5 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !541, !noalias !566 ; 3 uses
  %i.uy = icmp eq ptr %i.ux, null
  br i1 %i.uy, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %.noexc118
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29, !noalias !566
  %i.uz = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uz, i8 0, i64 24, i1 false), !noalias !566
  store ptr %i.uz, ptr %39, align 8, !tbaa !39, !noalias !566
  %i.va = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 0, ptr %i.va, align 8, !tbaa !46, !noalias !566
  %i.vb = fpext float %i.uv to double
  %i.vc = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull @.str.105, double noundef %i.vb)
          to label %bb.ci unwind label %bb.cj, !noalias !566

bb.ci:                                            ; preds = %bb.ch
  %i.vd = load ptr, ptr %i.ux, align 8, !tbaa !546, !noalias !566
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %i.vf = load ptr, ptr %i.ve, align 8, !noalias !566
  invoke void %i.vf(ptr noundef nonnull align 8 dereferenceable(8) %i.ux, ptr noundef nonnull align 8 dereferenceable(40) %i.vc)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i98 unwind label %bb.cj, !noalias !566, !inline_history !548

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i98: ; preds = %bb.ci
  %i.vg = load ptr, ptr %39, align 8, !tbaa !44, !noalias !566 ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.uz
  br i1 %i.vh, label %_ZN3gmx14LogEntryWriterD2Ev.exit.i100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i98
  %i.vi = load i64, ptr %i.uz, align 8, !tbaa !26, !noalias !566
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vj) #31, !noalias !566
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit.i100

_ZN3gmx14LogEntryWriterD2Ev.exit.i100:            ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29, !noalias !566
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.vk = landingpad { ptr, i32 }
          cleanup
  %i.vl = load ptr, ptr %39, align 8, !tbaa !44, !noalias !566 ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.uz
  br i1 %i.vm, label %_ZN3gmx14LogEntryWriterD2Ev.exit61.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59.i: ; preds = %bb.cj
  %i.vn = load i64, ptr %i.uz, align 8, !tbaa !26, !noalias !566
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #31, !noalias !566
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit61.i

_ZN3gmx14LogEntryWriterD2Ev.exit61.i:             ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29, !noalias !566
  br label %.body107

bb.ck:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit.i100, %.noexc118
  %i.vp = fcmp ogt float %i.uv, 0.000000e+00
  %.sroa.speculated19.i = select i1 %i.vp, float %i.uv, float 0.000000e+00 ; 4 uses
  store float %.sroa.speculated19.i, ptr %i.uo, align 8, !tbaa !659, !alias.scope !566
  %i.vq = load i8, ptr %i.kz, align 1, !tbaa !529, !range !21, !alias.scope !566, !noundef !22
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.cl, label %bb.dc

bb.cl:                                            ; preds = %bb.ck
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vt = load float, ptr %i.vs, align 8, !tbaa !660, !noalias !566 ; 3 uses
  %i.vu = fcmp ogt float %i.vt, 0.000000e+00
  br i1 %i.vu, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %.val50.i = load float, ptr %i.lg, align 8, !alias.scope !566
  %i.vv = call float @llvm.fmuladd.f32(float %.val50.i, float 2.000000e+00, float %i.vt)
  %.0.i62.i = select i1 %.val49109.i398, float %i.vv, float %i.vt ; 5 uses
  store float %.0.i62.i, ptr %i.lb, align 8, !tbaa !658, !alias.scope !566
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !661, !range !21, !noalias !566, !noundef !22
  %i.vy = trunc nuw i8 %i.vx to i1
  %i.vz = fcmp ogt float %.0.i62.i, %i.um         ; 2 uses
  br i1 %i.vy, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.wa = zext i1 %i.vz to i8
  store i8 %i.wa, ptr %i.ld, align 4, !tbaa !531, !alias.scope !566
  br label %bb.cx

bb.co:                                            ; preds = %bb.cm
  %.val186 = load float, ptr %i.un, align 4
  %i.wb = select i1 %i.vz, float %.0.i62.i, float %.val186
  store float %i.wb, ptr %i.un, align 4, !tbaa !657, !alias.scope !566
  br label %bb.cx

bb.cp:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29, !noalias !566
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !204, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29, !noalias !566
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !204, !noalias !566
  br i1 %i.kd, label %.noexc119, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.wc = load i8, ptr %i.l, align 8, !tbaa !662, !range !21, !noalias !566, !noundef !22
  %i.wd = trunc nuw i8 %i.wc to i1
  invoke void @_Z21dd_bonded_cg_distanceRKN3gmx8MDLoggerERK10gmx_mtop_tRK10t_inputrecNS_8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KfNS_16DDBondedCheckingEPfSI_(ptr noundef nonnull align 8 dereferenceable(40) %i.kf, ptr noundef nonnull align 8 dereferenceable(768) %i.kh, ptr noundef nonnull align 8 dereferenceable(888) %i.ki, ptr %i.kq, ptr %i.kw, ptr noundef %8, i1 noundef zeroext %i.wd, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
          to label %.noexc119 unwind label %.loopexit.split-lp

.noexc119:                                        ; preds = %bb.cq, %bb.cp
  invoke void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef 4, ptr noundef nonnull %i.f, ptr noundef %i.kg)
          to label %.noexc120 unwind label %.loopexit.split-lp

.noexc120:                                        ; preds = %.noexc119
  invoke void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef 4, ptr noundef nonnull %i.g, ptr noundef %i.kg)
          to label %.noexc121 unwind label %.loopexit.split-lp

.noexc121:                                        ; preds = %.noexc120
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !661, !range !21, !noalias !566, !noundef !22
  %i.wg = trunc nuw i8 %i.wf to i1
  %i.wh = load float, ptr %i.f, align 4, !tbaa !204, !noalias !566 ; 2 uses
  %i.wi = load float, ptr %i.g, align 4, !tbaa !204, !noalias !566 ; 3 uses
  %i.wj = fcmp olt float %i.wh, %i.wi
  %i.wk = select i1 %i.wj, float %i.wi, float %i.wh ; 3 uses
  br i1 %i.wg, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %.noexc121
  %i.wl = fcmp ogt float %i.wk, %i.um
  br i1 %i.wl, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.wm = fmul float %i.wk, 1.100000e+00
  store i8 1, ptr %i.ld, align 4, !tbaa !531, !alias.scope !566
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %i.wn = fmul float %i.wi, 1.100000e+00          ; 2 uses
  %i.wo = fcmp olt float %i.um, %i.wn
  %.sroa.speculated.i = select i1 %i.wo, float %i.um, float %i.wn
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.sroa.speculated.sink.i = phi float [ %i.wm, %bb.cs ], [ %.sroa.speculated.i, %bb.ct ] ; 2 uses
  store float %.sroa.speculated.sink.i, ptr %i.lb, align 8, !tbaa !658, !alias.scope !566
  store i8 1, ptr %i.le, align 1, !tbaa !532, !alias.scope !566
  br label %bb.cw

bb.cv:                                            ; preds = %.noexc121
  %i.wp = fmul float %i.wk, 1.100000e+00          ; 4 uses
  store float %i.wp, ptr %i.lb, align 8, !tbaa !658, !alias.scope !566
  %i.wq = fcmp olt float %i.um, %i.wp
  %i.wr = select i1 %i.wq, float %i.wp, float %i.um
  store float %i.wr, ptr %i.un, align 4, !tbaa !657, !alias.scope !566
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.ws = phi float [ %i.wp, %bb.cv ], [ %.sroa.speculated.sink.i, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29, !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29, !noalias !566
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.co, %bb.cn
  %i.wt = phi float [ %.0.i62.i, %bb.cn ], [ %.0.i62.i, %bb.co ], [ %i.ws, %bb.cw ] ; 3 uses
  %i.wu = load ptr, ptr %i.uw, align 8, !tbaa !541, !noalias !566 ; 3 uses
  %i.wv = icmp eq ptr %i.wu, null
  br i1 %i.wv, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #29, !noalias !566
  %i.ww = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ww, i8 0, i64 24, i1 false), !noalias !566
  store ptr %i.ww, ptr %40, align 8, !tbaa !39, !noalias !566
  %i.wx = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 0, ptr %i.wx, align 8, !tbaa !46, !noalias !566
  %i.wy = fpext float %i.wt to double
  %i.wz = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull @.str.106, double noundef %i.wy)
          to label %bb.cz unwind label %bb.da, !noalias !566

bb.cz:                                            ; preds = %bb.cy
  %i.xa = load ptr, ptr %i.wu, align 8, !tbaa !546, !noalias !566
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %i.xc = load ptr, ptr %i.xb, align 8, !noalias !566
  invoke void %i.xc(ptr noundef nonnull align 8 dereferenceable(8) %i.wu, ptr noundef nonnull align 8 dereferenceable(40) %i.wz)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit69.i unwind label %bb.da, !noalias !566, !inline_history !548

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit69.i: ; preds = %bb.cz
  %i.xd = load ptr, ptr %40, align 8, !tbaa !44, !noalias !566 ; 2 uses
  %i.xe = icmp eq ptr %i.xd, %i.ww
  br i1 %i.xe, label %_ZN3gmx14LogEntryWriterD2Ev.exit72.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit69.i
  %i.xf = load i64, ptr %i.ww, align 8, !tbaa !26, !noalias !566
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xg) #31, !noalias !566
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit72.i

_ZN3gmx14LogEntryWriterD2Ev.exit72.i:             ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit69.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29, !noalias !566
  br label %bb.db

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.xh = landingpad { ptr, i32 }
          cleanup
  %i.xi = load ptr, ptr %40, align 8, !tbaa !44, !noalias !566 ; 2 uses
  %i.xj = icmp eq ptr %i.xi, %i.ww
  br i1 %i.xj, label %_ZN3gmx14LogEntryWriterD2Ev.exit75.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i: ; preds = %bb.da
  %i.xk = load i64, ptr %i.ww, align 8, !tbaa !26, !noalias !566
  %i.xl = add i64 %i.xk, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xl) #31, !noalias !566
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit75.i

_ZN3gmx14LogEntryWriterD2Ev.exit75.i:             ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29, !noalias !566
  br label %.body107

bb.db:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit72.i, %bb.cx
  %i.xm = fcmp olt float %.sroa.speculated19.i, %i.wt
  %i.xn = select i1 %i.xm, float %i.wt, float %.sroa.speculated19.i ; 2 uses
  store float %i.xn, ptr %i.uo, align 8, !tbaa !659, !alias.scope !566
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.ck
  %i.xo = phi float [ %i.xn, %bb.db ], [ %.sroa.speculated19.i, %bb.ck ] ; 3 uses
  store float 0.000000e+00, ptr %i.lc, align 8, !tbaa !530, !alias.scope !566
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !663, !noalias !566 ; 4 uses
  %i.xr = fcmp ugt float %i.xq, 0.000000e+00
  %or.cond.i = select i1 %.not.i95400, i1 true, i1 %i.xr
  br i1 %or.cond.i, label %._crit_edge.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.xs = invoke noundef float @_ZN3gmx12constr_r_maxERKNS_8MDLoggerEPK10gmx_mtop_tPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(40) %i.kf, ptr noundef nonnull align 8 dereferenceable(768) %i.kh, ptr noundef nonnull align 8 dereferenceable(888) %i.ki)
          to label %.noexc122 unwind label %.loopexit.split-lp ; 6 uses

.noexc122:                                        ; preds = %bb.dd
  store float %i.xs, ptr %i.lc, align 8, !tbaa !530, !alias.scope !566
  %i.xt = load ptr, ptr %i.uw, align 8, !tbaa !541, !noalias !566 ; 3 uses
  %i.xu = icmp eq ptr %i.xt, null
  br i1 %i.xu, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %.noexc122
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29, !noalias !566
  %i.xv = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xv, i8 0, i64 24, i1 false), !noalias !566
  store ptr %i.xv, ptr %41, align 8, !tbaa !39, !noalias !566
  %i.xw = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 0, ptr %i.xw, align 8, !tbaa !46, !noalias !566
  %i.xx = fpext float %i.xs to double
  %i.xy = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull @.str.107, double noundef %i.xx)
          to label %bb.df unwind label %bb.dg, !noalias !566

bb.df:                                            ; preds = %bb.de
  %i.xz = load ptr, ptr %i.xt, align 8, !tbaa !546, !noalias !566
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %i.yb = load ptr, ptr %i.ya, align 8, !noalias !566
  invoke void %i.yb(ptr noundef nonnull align 8 dereferenceable(8) %i.xt, ptr noundef nonnull align 8 dereferenceable(40) %i.xy)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit77.i unwind label %bb.dg, !noalias !566, !inline_history !548

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit77.i: ; preds = %bb.df
  %i.yc = load ptr, ptr %41, align 8, !tbaa !44, !noalias !566 ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.xv
  br i1 %i.yd, label %_ZN3gmx14LogEntryWriterD2Ev.exit80.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit77.i
  %i.ye = load i64, ptr %i.xv, align 8, !tbaa !26, !noalias !566
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yf) #31, !noalias !566
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit80.i

_ZN3gmx14LogEntryWriterD2Ev.exit80.i:             ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit77.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29, !noalias !566
  br label %bb.dh

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.yg = landingpad { ptr, i32 }
          cleanup
  %i.yh = load ptr, ptr %41, align 8, !tbaa !44, !noalias !566 ; 2 uses
  %i.yi = icmp eq ptr %i.yh, %i.xv
  br i1 %i.yi, label %_ZN3gmx14LogEntryWriterD2Ev.exit83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i81.i: ; preds = %bb.dg
  %i.yj = load i64, ptr %i.xv, align 8, !tbaa !26, !noalias !566
  %i.yk = add i64 %i.yj, 1
  call void @_ZdlPvm(ptr noundef %i.yh, i64 noundef %i.yk) #31, !noalias !566
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit83.i

_ZN3gmx14LogEntryWriterD2Ev.exit83.i:             ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29, !noalias !566
  br label %.body107

end_hunk_0
