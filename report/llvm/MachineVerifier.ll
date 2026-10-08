Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineVerifier?download=true
inline.NumInlined: 6145
inline.NumDeleted: 2597
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_115MachineVerifier6verifyERKN4llvm15MachineFunctionE:bb.a
  %.sroa.9317.0414.i.i = phi i64 [ %.sroa.9317.0.i.i, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.i.i ], [ 0, %bb.yd ]
  %.sroa.6316.0413.i.i = phi ptr [ %.sroa.6316.0.i.i, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.i.i ], [ null, %bb.yd ]
  %i.eqh = load i32, ptr %i.ejx, align 4, !tbaa !338
  switch i32 %i.eqh, label %bb.ym [
    i32 74, label %bb.yk
    i32 0, label %bb.yk
  ]

bb.yk:                                            ; preds = %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread.i.i, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread.i.i
  %i.eqi = and i64 %.sroa.9317.0414.i.i, 6
  %i.eqj = icmp eq i64 %i.eqi, 6
  %.not155456.i.i = icmp eq ptr %.sroa.6316.0413.i.i, null
  %.not155.i.i = select i1 %i.eqj, i1 true, i1 %.not155456.i.i
  br i1 %.not155.i.i, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.i.i
  %.sroa.044.0.copyload.i.i = load i64, ptr %i.eoy, align 8, !tbaa !248
  %i.eqk = or i64 %.sroa.044.0.copyload.i.i, %.sroa.0327.0492.i.i
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yl, %bb.yk, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread.i.i, %bb.yc
  %.sroa.0327.2.i.i = phi i64 [ %.sroa.0327.0492.i.i, %bb.yc ], [ %.sroa.0327.0492.i.i, %bb.yk ], [ %i.eqk, %bb.yl ], [ %.sroa.0327.0492.i.i, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread.i.i ] ; 2 uses
  %i.eql = getelementptr inbounds nuw i8, ptr %.sroa.0322.0493.i.i, i64 104
  %.sroa.0322.0.i.i = load ptr, ptr %i.eql, align 8, !tbaa !553 ; 2 uses
  %.not454.i.i = icmp eq ptr %.sroa.0322.0.i.i, null
  br i1 %.not454.i.i, label %._crit_edge.i.i220, label %bb.yc

bb.yn:                                            ; preds = %._crit_edge.i.i220
  call fastcc void @_ZN12_GLOBAL__N_115MachineVerifier6reportEPKcPKN4llvm14MachineOperandEjNS3_3LLTE(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull @.str.364, ptr noundef nonnull %i.dik, i32 noundef %i.eoh, i64 0)
  %.val164.i.i = load ptr, ptr %i.akw, align 8, !tbaa !322
  call fastcc void @_ZNK12_GLOBAL__N_115MachineVerifier14report_contextERKN4llvm12LiveIntervalE(ptr %.val164.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.0.i359.i)
  %.val170.i.i = load ptr, ptr %i.akw, align 8, !tbaa !322
  call fastcc void @_ZNK12_GLOBAL__N_115MachineVerifier14report_contextEN4llvm9SlotIndexE(ptr %.val170.i.i, i64 %.sroa.0353.0.i.i)
  br label %bb.yo

bb.yo:                                            ; preds = %bb.yn, %._crit_edge.i.i220
  %i.eqm = load i32, ptr %i.ejx, align 4, !tbaa !338
  switch i32 %i.eqm, label %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.thread.i.i [
    i32 74, label %bb.yp
    i32 0, label %bb.yp
  ]

bb.yp:                                            ; preds = %bb.yo, %bb.yo
  %.not455.i.i = icmp eq i64 %.sroa.0327.0.lcssa.i.i, %storemerge580.i.i
  br i1 %.not455.i.i, label %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.thread.i.i, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  call fastcc void @_ZN12_GLOBAL__N_115MachineVerifier6reportEPKcPKN4llvm14MachineOperandEjNS3_3LLTE(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull @.str.365, ptr noundef nonnull %i.dik, i32 noundef %i.eoh, i64 0)
  %.val163.i.i = load ptr, ptr %i.akw, align 8, !tbaa !322
  call fastcc void @_ZNK12_GLOBAL__N_115MachineVerifier14report_contextERKN4llvm12LiveIntervalE(ptr %.val163.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.0.i359.i)
  %.val169.i.i = load ptr, ptr %i.akw, align 8, !tbaa !322
  call fastcc void @_ZNK12_GLOBAL__N_115MachineVerifier14report_contextEN4llvm9SlotIndexE(ptr %.val169.i.i, i64 %.sroa.0353.0.i.i)
  br label %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.thread.i.i

_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.thread.i.i: ; preds = %bb.xo, %bb.yq, %bb.yp, %bb.yo, %bb.xz, %bb.xy, %.loopexit470.i.i, %_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit.thread.i.i, %_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit.i.i, %bb.xn, %bb.xm, %bb.xl
  %i.eqn = load ptr, ptr %i.alp, align 8, !tbaa !453, !noalias !971 ; 2 uses
  %i.eqo = load ptr, ptr %i.als, align 8, !tbaa !412, !noalias !971 ; 4 uses
  %i.eqp = load i32, ptr %i.alr, align 4, !tbaa !411, !noalias !971 ; 3 uses
  %i.eqq = icmp eq i32 %i.eqp, 0                  ; 2 uses
  br i1 %i.eqq, label %.loopexit469.i.i, label %bb.yr

bb.yr:                                            ; preds = %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.thread.i.i
  %i.eqr = add i32 %i.eqp, -1                     ; 2 uses
  %i.eqs = mul i32 %i.eds, 37
  %.019.i.i.i.i.i.i = and i32 %i.eqr, %i.eqs      ; 3 uses
  %i.eqt = zext i32 %.019.i.i.i.i.i.i to i64      ; 2 uses
  %i.equ = lshr i64 %i.eqt, 5
  %i.eqv = getelementptr inbounds nuw [4 x i8], ptr %i.eqo, i64 %i.equ
  %i.eqw = load i32, ptr %i.eqv, align 4, !tbaa !241
  %i.eqx = and i32 %.019.i.i.i.i.i.i, 31
  %i.eqy = lshr i32 %i.eqw, %i.eqx
  %i.eqz = trunc i32 %i.eqy to i1
  br i1 %i.eqz, label %.lr.ph.i.i.i.i189.i.i, label %.loopexit469.i.i, !prof !242

bb.ys:                                            ; preds = %.lr.ph.i.i.i.i189.i.i
  %i.era = add nuw i32 %.020.i.i.i.i.i.i, 1
  %.0.i.i.i.i.i.i = and i32 %i.era, %i.eqr        ; 3 uses
  %i.erb = zext i32 %.0.i.i.i.i.i.i to i64        ; 2 uses
  %i.erc = lshr i64 %i.erb, 5
  %i.erd = getelementptr inbounds nuw [4 x i8], ptr %i.eqo, i64 %i.erc
  %i.ere = load i32, ptr %i.erd, align 4, !tbaa !241
  %i.erf = and i32 %.0.i.i.i.i.i.i, 31
  %i.erg = lshr i32 %i.ere, %i.erf
  %i.erh = trunc i32 %i.erg to i1
  br i1 %i.erh, label %.lr.ph.i.i.i.i189.i.i, label %.loopexit469.i.i, !prof !244

.lr.ph.i.i.i.i189.i.i:                            ; preds = %bb.yr, %bb.ys
  %i.eri = phi i64 [ %i.erb, %bb.ys ], [ %i.eqt, %bb.yr ]
  %.020.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i, %bb.ys ], [ %.019.i.i.i.i.i.i, %bb.yr ]
  %i.erj = getelementptr inbounds nuw [4 x i8], ptr %i.eqn, i64 %i.eri
  %i.erk = load i32, ptr %i.erj, align 4, !tbaa !455
  %i.erl = icmp eq i32 %i.eds, %i.erk
  br i1 %i.erl, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i, label %bb.ys, !prof !243

.loopexit469.i.i:                                 ; preds = %bb.ys, %bb.yr, %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.thread.i.i
  %i.erm = icmp ult i32 %i.eds, 1073741824
  br i1 %i.erm, label %bb.yt, label %bb.za

bb.yt:                                            ; preds = %.loopexit469.i.i
  %.val166.i.i = load i32, ptr %i.kb, align 8, !tbaa !116
  %i.ern = icmp ult i32 %i.eds, %.val166.i.i
  br i1 %i.ern, label %_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit190.i.i, label %_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit190.thread.i.i

_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit190.i.i: ; preds = %bb.yt
  %.val165.i.i = load ptr, ptr %i.jc, align 8
  %i.ero = and i32 %i.eds, 63
  %i.erp = zext nneg i32 %i.ero to i64
  %i.erq = shl nuw i64 1, %i.erp
  %i.err = lshr i32 %i.eds, 6
  %i.ers = zext nneg i32 %i.err to i64
  %i.ert = getelementptr inbounds nuw [8 x i8], ptr %.val165.i.i, i64 %i.ers
  %i.eru = load i64, ptr %i.ert, align 8, !tbaa !248
  %i.erv = and i64 %i.eru, %i.erq
  %.not457.i.i = icmp eq i64 %i.erv, 0
  br i1 %.not457.i.i, label %_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit190.thread.i.i, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i

_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit190.thread.i.i: ; preds = %_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit190.i.i, %bb.yt
  %i.erw = load ptr, ptr %i.s, align 8, !tbaa !229 ; 2 uses
  %i.erx = getelementptr inbounds nuw i8, ptr %i.erw, i64 56
  %i.ery = load ptr, ptr %i.erx, align 8, !tbaa !450, !noalias !972
  %i.erz = getelementptr inbounds nuw i8, ptr %i.erw, i64 8
  %i.esa = load ptr, ptr %i.erz, align 8, !tbaa !451, !noalias !972
  %i.esb = zext nneg i32 %i.eds to i64            ; 2 uses
  %i.esc = getelementptr inbounds nuw [24 x i8], ptr %i.esa, i64 %i.esb
  %i.esd = getelementptr inbounds nuw i8, ptr %i.esc, i64 4
  %i.ese = load i32, ptr %i.esd, align 4, !tbaa !940, !noalias !972
  %i.esf = zext i32 %i.ese to i64
  %i.esg = getelementptr inbounds nuw [2 x i8], ptr %i.ery, i64 %i.esf ; 2 uses
  %i.esh = load i16, ptr %i.esg, align 2, !tbaa !456, !noalias !972 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.esh, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit591.i.i, label %.lr.ph497.i.i

.lr.ph497.i.i:                                    ; preds = %_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit190.thread.i.i
  %i.esi = zext i16 %i.esh to i32
  %i.esj = add nuw nsw i32 %i.eds, %i.esi
  %i.esk = add i32 %i.eqp, -1                     ; 2 uses
  br label %bb.yu

bb.yu:                                            ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, %.lr.ph497.i.i
  %.sroa.0300.0496.i.i = phi i32 [ %i.esj, %.lr.ph497.i.i ], [ %i.eti, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.esg, %.lr.ph497.i.i ], [ %.sroa.5302.0495.i.i, %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i ]
  %.sroa.5302.0495.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2 ; 2 uses
  %i.esl = and i32 %.sroa.0300.0496.i.i, 65535    ; 2 uses
  br i1 %i.eqq, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, label %bb.yv

bb.yv:                                            ; preds = %bb.yu
  %i.esm = mul nuw nsw i32 %i.esl, 37
  %.019.i.i.i.i193.i.i = and i32 %i.esm, %i.esk   ; 3 uses
  %i.esn = zext nneg i32 %.019.i.i.i.i193.i.i to i64 ; 2 uses
  %i.eso = lshr i64 %i.esn, 5
  %i.esp = getelementptr inbounds nuw [4 x i8], ptr %i.eqo, i64 %i.eso
  %i.esq = load i32, ptr %i.esp, align 4, !tbaa !241
  %i.esr = and i32 %.019.i.i.i.i193.i.i, 31
  %i.ess = lshr i32 %i.esq, %i.esr
  %i.est = trunc i32 %i.ess to i1
  br i1 %i.est, label %.lr.ph.i.i.i.i195.i.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, !prof !242

bb.yw:                                            ; preds = %.lr.ph.i.i.i.i195.i.i
  %i.esu = add nuw i32 %.020.i.i.i.i196.i.i, 1
  %.0.i.i.i.i197.i.i = and i32 %i.esu, %i.esk     ; 3 uses
  %i.esv = zext i32 %.0.i.i.i.i197.i.i to i64     ; 2 uses
  %i.esw = lshr i64 %i.esv, 5
  %i.esx = getelementptr inbounds nuw [4 x i8], ptr %i.eqo, i64 %i.esw
  %i.esy = load i32, ptr %i.esx, align 4, !tbaa !241
  %i.esz = and i32 %.0.i.i.i.i197.i.i, 31
  %i.eta = lshr i32 %i.esy, %i.esz
  %i.etb = trunc i32 %i.eta to i1
  br i1 %i.etb, label %.lr.ph.i.i.i.i195.i.i, label %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, !prof !244

.lr.ph.i.i.i.i195.i.i:                            ; preds = %bb.yv, %bb.yw
  %i.etc = phi i64 [ %i.esv, %bb.yw ], [ %i.esn, %bb.yv ]
  %.020.i.i.i.i196.i.i = phi i32 [ %.0.i.i.i.i197.i.i, %bb.yw ], [ %.019.i.i.i.i193.i.i, %bb.yv ]
  %i.etd = getelementptr inbounds nuw [4 x i8], ptr %i.eqn, i64 %i.etc
  %i.ete = load i32, ptr %i.etd, align 4, !tbaa !455
  %i.etf = icmp eq i32 %i.esl, %i.ete
  br i1 %i.etf, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i, label %bb.yw, !prof !243

_ZN4llvm16MCSubRegIteratorppEv.exit.i.i:          ; preds = %bb.yw, %bb.yv, %bb.yu
  %i.etg = load i16, ptr %.sroa.5302.0495.i.i, align 2, !tbaa !456 ; 2 uses
  %i.eth = zext i16 %i.etg to i32
  %i.eti = add i32 %.sroa.0300.0496.i.i, %i.eth
  %.not.i.i199.i.i = icmp eq i16 %i.etg, 0
  br i1 %.not.i.i199.i.i, label %.loopexit591.i.i, label %bb.yu

.loopexit591.i.i:                                 ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.i.i, %_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit190.thread.i.i
  %i.etj = getelementptr inbounds nuw i8, ptr %i.edz, i64 32
  %i.etk = load ptr, ptr %i.etj, align 8, !tbaa !401 ; 2 uses
  %i.etl = getelementptr inbounds nuw i8, ptr %i.edz, i64 40
  %i.etm = load i24, ptr %i.etl, align 8
  %i.etn = zext i24 %i.etm to i64                 ; 2 uses
  %i.eto = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.edz) #20
  %i.etp = zext i32 %i.eto to i64                 ; 2 uses
  %i.etq = getelementptr inbounds nuw [32 x i8], ptr %i.etk, i64 %i.etn
  %.not159498.i.i = icmp samesign eq i64 %i.etp, %i.etn
  br i1 %.not159498.i.i, label %.critedge.i.i215, label %.lr.ph502.i.i

.lr.ph502.i.i:                                    ; preds = %.loopexit591.i.i
  %i.etr = getelementptr inbounds nuw [32 x i8], ptr %i.etk, i64 %i.etp
  br label %bb.yx

bb.yx:                                            ; preds = %"_ZN4llvm6all_ofINS_14iterator_rangeINS_17MCRegUnitIteratorEEEZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKNS_14MachineOperandEjE3$_0EEbOT_T0_.exit.i.i", %.lr.ph502.i.i
  %.4500.i.i = phi i1 [ true, %.lr.ph502.i.i ], [ %.6.i.i, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_17MCRegUnitIteratorEEEZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKNS_14MachineOperandEjE3$_0EEbOT_T0_.exit.i.i" ] ; 3 uses
  %.0143499.i.i = phi ptr [ %i.etr, %.lr.ph502.i.i ], [ %i.eve, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_17MCRegUnitIteratorEEEZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKNS_14MachineOperandEjE3$_0EEbOT_T0_.exit.i.i" ] ; 3 uses
  %i.ets = load i32, ptr %.0143499.i.i, align 8
  %i.ett = and i32 %i.ets, 33554687
  %or.cond442.i.i = icmp eq i32 %i.ett, 33554432
  br i1 %or.cond442.i.i, label %bb.yy, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_17MCRegUnitIteratorEEEZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKNS_14MachineOperandEjE3$_0EEbOT_T0_.exit.i.i"

bb.yy:                                            ; preds = %bb.yx
  %i.etu = getelementptr inbounds nuw i8, ptr %.0143499.i.i, i64 4
  %i.etv = load i32, ptr %i.etu, align 4, !tbaa !246 ; 3 uses
  %i.etw = add i32 %i.etv, -1073741824
  %i.etx = icmp ult i32 %i.etw, -1073741823
  %.not459.i.i = icmp eq i32 %i.etv, %i.eds
  %or.cond465.i.i = or i1 %.not459.i.i, %i.etx
  br i1 %or.cond465.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_17MCRegUnitIteratorEEEZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKNS_14MachineOperandEjE3$_0EEbOT_T0_.exit.i.i", label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.ety = load ptr, ptr %i.s, align 8, !tbaa !229 ; 2 uses
  %i.etz = getelementptr inbounds nuw i8, ptr %i.ety, i64 56
  %i.eua = load ptr, ptr %i.etz, align 8, !tbaa !450, !noalias !973 ; 3 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.eua, null
  br i1 %.not8.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_17MCRegUnitIteratorEEEZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKNS_14MachineOperandEjE3$_0EEbOT_T0_.exit.i.i", label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.yz
  %i.eub = getelementptr inbounds nuw i8, ptr %i.ety, i64 8
  %i.euc = load ptr, ptr %i.eub, align 8, !tbaa !451, !noalias !973 ; 2 uses
  %i.eud = getelementptr inbounds nuw [24 x i8], ptr %i.euc, i64 %i.esb
  %i.eue = getelementptr inbounds nuw i8, ptr %i.eud, i64 16
  %i.euf = load i32, ptr %i.eue, align 4, !tbaa !549, !noalias !973 ; 2 uses
  %i.eug = lshr i32 %i.euf, 12
  %i.euh = zext nneg i32 %i.eug to i64
  %i.eui = getelementptr inbounds nuw [2 x i8], ptr %i.eua, i64 %i.euh
  %i.euj = and i32 %i.euf, 4095
  %i.euk = zext nneg i32 %i.etv to i64
  %i.eul = getelementptr inbounds nuw [24 x i8], ptr %i.euc, i64 %i.euk
  %i.eum = getelementptr inbounds nuw i8, ptr %i.eul, i64 16
  %i.eun = load i32, ptr %i.eum, align 4, !tbaa !549, !noalias !974 ; 2 uses
  %i.euo = lshr i32 %i.eun, 12
  %i.eup = zext nneg i32 %i.euo to i64
  %i.euq = getelementptr inbounds nuw [2 x i8], ptr %i.eua, i64 %i.eup
  %i.eur = and i32 %i.eun, 4095
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i:       ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKN4llvm14MachineOperandEjE3$_0EclINS4_17MCRegUnitIteratorEEEbT_.exit.i.i.i.i.i.i.i", %.lr.ph.split.i.i.i.i.i.i.i
  %i.eus = phi i32 [ %i.euj, %.lr.ph.split.i.i.i.i.i.i.i ], [ %i.evd, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKN4llvm14MachineOperandEjE3$_0EclINS4_17MCRegUnitIteratorEEEbT_.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.eut = phi ptr [ %i.eui, %.lr.ph.split.i.i.i.i.i.i.i ], [ %i.eva, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKN4llvm14MachineOperandEjE3$_0EclINS4_17MCRegUnitIteratorEEEbT_.exit.i.i.i.i.i.i.i" ] ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i
  %i.euu = phi ptr [ %i.euw, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.euq, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.euv = phi i32 [ %i.euz, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.eur, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.euv, %i.eus
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKN4llvm14MachineOperandEjE3$_0EclINS4_17MCRegUnitIteratorEEEbT_.exit.i.i.i.i.i.i.i", label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.euw = getelementptr inbounds nuw i8, ptr %i.euu, i64 2
  %i.eux = load i16, ptr %i.euu, align 2, !tbaa !456, !noalias !975 ; 2 uses
  %i.euy = sext i16 %i.eux to i32
  %i.euz = add i32 %i.euv, %i.euy
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i203.i.i = icmp eq i16 %i.eux, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i203.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_17MCRegUnitIteratorEEEZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKNS_14MachineOperandEjE3$_0EEbOT_T0_.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKN4llvm14MachineOperandEjE3$_0EclINS4_17MCRegUnitIteratorEEEbT_.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eva = getelementptr inbounds nuw i8, ptr %i.eut, i64 2
  %i.evb = load i16, ptr %i.eut, align 2, !tbaa !456, !noalias !976 ; 2 uses
  %i.evc = sext i16 %i.evb to i32
  %i.evd = add i32 %i.eus, %i.evc
  %.not.i.i.i.i.i.i.i.i.i216 = icmp eq i16 %i.evb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i216, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_17MCRegUnitIteratorEEEZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKNS_14MachineOperandEjE3$_0EEbOT_T0_.exit.i.i", label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !793

"_ZN4llvm6all_ofINS_14iterator_rangeINS_17MCRegUnitIteratorEEEZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKNS_14MachineOperandEjE3$_0EEbOT_T0_.exit.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKN4llvm14MachineOperandEjE3$_0EclINS4_17MCRegUnitIteratorEEEbT_.exit.i.i.i.i.i.i.i", %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.yz, %bb.yy, %bb.yx
  %.6.i.i = phi i1 [ %.4500.i.i, %bb.yx ], [ %.4500.i.i, %bb.yy ], [ %.4500.i.i, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.yz ], [ false, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKN4llvm14MachineOperandEjE3$_0EclINS4_17MCRegUnitIteratorEEEbT_.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.eve = getelementptr inbounds nuw i8, ptr %.0143499.i.i, i64 32 ; 2 uses
  %.not159.i.i = icmp eq ptr %i.eve, %i.etq
  br i1 %.not159.i.i, label %._crit_edge503.i.i, label %bb.yx

._crit_edge503.i.i:                               ; preds = %"_ZN4llvm6all_ofINS_14iterator_rangeINS_17MCRegUnitIteratorEEEZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKNS_14MachineOperandEjE3$_0EEbOT_T0_.exit.i.i"
  br i1 %.6.i.i, label %.critedge.i.i215, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i

.critedge.i.i215:                                 ; preds = %._crit_edge503.i.i, %.loopexit591.i.i
  %i.evf = trunc nuw nsw i64 %indvars.iv to i32
  call fastcc void @_ZN12_GLOBAL__N_115MachineVerifier6reportEPKcPKN4llvm14MachineOperandEjNS3_3LLTE(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull @.str.366, ptr noundef nonnull %i.dik, i32 noundef %i.evf, i64 0)
  br label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i

bb.za:                                            ; preds = %.loopexit469.i.i
  %i.evg = load ptr, ptr %i.ab, align 8, !tbaa !231 ; 2 uses
  %i.evh = getelementptr inbounds nuw i8, ptr %i.evg, i64 48
  %i.evi = and i32 %i.eds, 2147483647
  %i.evj = zext nneg i32 %i.evi to i64
  %i.evk = load ptr, ptr %i.evh, align 8
  %i.evl = getelementptr inbounds nuw [16 x i8], ptr %i.evk, i64 %i.evj
  %i.evm = getelementptr inbounds nuw i8, ptr %i.evl, i64 8
  %i.evn = getelementptr inbounds nuw i8, ptr %i.evg, i64 312
  %i.evo = zext nneg i32 %i.eds to i64
  %i.evp = load ptr, ptr %i.evn, align 8
  %i.evq = getelementptr inbounds nuw [8 x i8], ptr %i.evp, i64 %i.evo
  %.0.in.i.i.i.i.i = select i1 %i.eee, ptr %i.evm, ptr %i.evq
  %.0.i.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !471 ; 3 uses
  %.not.i.i.i205.i.i = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %.not.i.i.i205.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i.i, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  %i.evr = load i32, ptr %.0.i.i.i.i.i, align 8
  %i.evs = and i32 %i.evr, 16777216
  %.not.i.i.i.i206.i.i = icmp eq i32 %i.evs, 0
  br i1 %.not.i.i.i.i206.i.i, label %bb.zc, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread429.i.i

bb.zc:                                            ; preds = %bb.zb
  %i.evt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.evu = load ptr, ptr %i.evt, align 8, !tbaa !246 ; 2 uses
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.evu, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i.i

_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i.i: ; preds = %bb.zc
  %i.evv = load i32, ptr %i.evu, align 8
  %i.evw = and i32 %i.evv, 16777216
  %.not.i.i.i.i.i207.i.i = icmp eq i32 %i.evw, 0
  br i1 %.not.i.i.i.i.i207.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread429.i.i

_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i.i: ; preds = %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i.i, %bb.zc, %bb.za
  %i.evx = trunc nuw nsw i64 %indvars.iv to i32
  call fastcc void @_ZN12_GLOBAL__N_115MachineVerifier6reportEPKcPKN4llvm14MachineOperandEjNS3_3LLTE(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull @.str.367, ptr noundef nonnull %i.dik, i32 noundef %i.evx, i64 0)
  br label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i

_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread429.i.i: ; preds = %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i.i, %bb.zb
  %i.evy = getelementptr inbounds nuw i8, ptr %i.edz, i64 24
  %i.evz = load ptr, ptr %i.evy, align 8, !tbaa !457
  %i.ewa = call fastcc noundef nonnull align 8 dereferenceable(304) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_115MachineVerifier6BBInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_EixEOS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.ale, ptr %i.evz) ; 4 uses
  %i.ewb = getelementptr inbounds nuw i8, ptr %i.ewa, i64 32
  %i.ewc = load ptr, ptr %i.ewb, align 8, !tbaa !453, !noalias !977
  %i.ewd = getelementptr inbounds nuw i8, ptr %i.ewa, i64 40
  %i.ewe = load ptr, ptr %i.ewd, align 8, !tbaa !412, !noalias !977 ; 2 uses
  %i.ewf = getelementptr inbounds nuw i8, ptr %i.ewa, i64 52
  %i.ewg = load i32, ptr %i.ewf, align 4, !tbaa !411, !noalias !977 ; 2 uses
  %i.ewh = icmp eq i32 %i.ewg, 0
  br i1 %i.ewh, label %.loopexit.i.i206, label %bb.zd

bb.zd:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread429.i.i
  %i.ewi = add i32 %i.ewg, -1                     ; 2 uses
  %i.ewj = mul i32 %i.eds, 37
  %.019.i.i.i.i208.i.i = and i32 %i.ewi, %i.ewj   ; 3 uses
  %i.ewk = zext i32 %.019.i.i.i.i208.i.i to i64   ; 2 uses
  %i.ewl = lshr i64 %i.ewk, 5
  %i.ewm = getelementptr inbounds nuw [4 x i8], ptr %i.ewe, i64 %i.ewl
  %i.ewn = load i32, ptr %i.ewm, align 4, !tbaa !241
  %i.ewo = and i32 %.019.i.i.i.i208.i.i, 31
  %i.ewp = lshr i32 %i.ewn, %i.ewo
  %i.ewq = trunc i32 %i.ewp to i1
  br i1 %i.ewq, label %.lr.ph.i.i.i.i210.i.i, label %.loopexit.i.i206, !prof !242

bb.ze:                                            ; preds = %.lr.ph.i.i.i.i210.i.i
  %i.ewr = add nuw i32 %.020.i.i.i.i211.i.i, 1
  %.0.i.i.i.i212.i.i = and i32 %i.ewr, %i.ewi     ; 3 uses
  %i.ews = zext i32 %.0.i.i.i.i212.i.i to i64     ; 2 uses
  %i.ewt = lshr i64 %i.ews, 5
  %i.ewu = getelementptr inbounds nuw [4 x i8], ptr %i.ewe, i64 %i.ewt
  %i.ewv = load i32, ptr %i.ewu, align 4, !tbaa !241
  %i.eww = and i32 %.0.i.i.i.i212.i.i, 31
  %i.ewx = lshr i32 %i.ewv, %i.eww
  %i.ewy = trunc i32 %i.ewx to i1
  br i1 %i.ewy, label %.lr.ph.i.i.i.i210.i.i, label %.loopexit.i.i206, !prof !244

.lr.ph.i.i.i.i210.i.i:                            ; preds = %bb.zd, %bb.ze
  %i.ewz = phi i64 [ %i.ews, %bb.ze ], [ %i.ewk, %bb.zd ]
  %.020.i.i.i.i211.i.i = phi i32 [ %.0.i.i.i.i212.i.i, %bb.ze ], [ %.019.i.i.i.i208.i.i, %bb.zd ]
  %i.exa = getelementptr inbounds nuw [4 x i8], ptr %i.ewc, i64 %i.ewz
  %i.exb = load i32, ptr %i.exa, align 4, !tbaa !455
  %i.exc = icmp eq i32 %i.eds, %i.exb
  br i1 %i.exc, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit213.i.i, label %bb.ze, !prof !243

_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit213.i.i: ; preds = %.lr.ph.i.i.i.i210.i.i
  %i.exd = trunc nuw nsw i64 %indvars.iv to i32
  call fastcc void @_ZN12_GLOBAL__N_115MachineVerifier6reportEPKcPKN4llvm14MachineOperandEjNS3_3LLTE(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull @.str.368, ptr noundef nonnull %i.dik, i32 noundef %i.exd, i64 0)
  br label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i

.loopexit.i.i206:                                 ; preds = %bb.ze, %bb.zd, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread429.i.i
  %i.exe = getelementptr inbounds nuw i8, ptr %i.edz, i64 52
  %i.exf = load i32, ptr %i.exe, align 4, !tbaa !338
  switch i32 %i.exf, label %bb.zf [
    i32 74, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i
    i32 0, label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i
  ]

bb.zf:                                            ; preds = %.loopexit.i.i206
  %i.exg = getelementptr inbounds nuw i8, ptr %i.ewa, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i32 %i.eds, ptr %7, align 8
  store ptr %i.edz, ptr %i.ami, align 8
  %i.exh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPKNS_12MachineInstrENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E24lookupOrInsertIntoBucketIS2_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.exg, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ami), !noalias !978 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i

_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i189.i.i, %.lr.ph.i.i.i.i195.i.i, %bb.zf, %.loopexit.i.i206, %.loopexit.i.i206, %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit213.i.i, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i.i, %.critedge.i.i215, %._crit_edge503.i.i, %_ZN12_GLOBAL__N_115MachineVerifier10isReservedEN4llvm8RegisterE.exit190.i.i, %_ZNK4llvm19MachineRegisterInfo25shouldTrackSubRegLivenessENS_8RegisterE.exit.thread.i.i
  %i.exi = load i32, ptr %i.dik, align 8          ; 2 uses
  %i.exj = and i32 %i.exi, 16777216
  %.not460.i.i = icmp eq i32 %i.exj, 0
  br i1 %.not460.i.i, label %_ZN12_GLOBAL__N_115MachineVerifier13checkLivenessEPKN4llvm14MachineOperandEj.exit.i, label %bb.zg

bb.zg:                                            ; preds = %_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_.exit.i.i
  %i.exk = and i32 %i.exi, 83886080
  %i.exl = icmp eq i32 %i.exk, 83886080
  br i1 %i.exl, label %bb.zh, label %bb.zl

bb.zh:                                            ; preds = %bb.zg
  %i.exm = load i32, ptr %i.amn, align 8, !tbaa !114 ; 2 uses
  %i.exn = load i32, ptr %i.amo, align 4, !tbaa !115
  %.not.i.i218.i.i = icmp ult i32 %i.exm, %i.exn
  br i1 %.not.i.i218.i.i, label %bb.zj, label %bb.zi, !prof !243

bb.zi:                                            ; preds = %bb.zh
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(80) %i.amm, i32 %i.eds)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i219.i.i

bb.zj:                                            ; preds = %bb.zh
  %i.exo = zext i32 %i.exm to i64
  %i.exp = load ptr, ptr %i.amm, align 8, !tbaa !113
  %i.exq = getelementptr inbounds nuw [4 x i8], ptr %i.exp, i64 %i.exo
  store i32 %i.eds, ptr %i.exq, align 1
  %i.exr = load i32, ptr %i.amn, align 8, !tbaa !114
  %i.exs = add i32 %i.exr, 1
  store i32 %i.exs, ptr %i.amn, align 8, !tbaa !114
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i219.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i219.i.i: ; preds = %bb.zj, %bb.zi
  %i.ext = icmp ult i32 %i.eds, 1073741824
  br i1 %i.ext, label %bb.zk, label %_ZN12_GLOBAL__N_115MachineVerifier17addRegWithSubRegsERN4llvm11SmallVectorINS1_8RegisterELj16EEES3_.exit224.i.i

bb.zk:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i219.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.exu = load ptr, ptr %i.s, align 8, !tbaa !229 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.exv = getelementptr inbounds nuw i8, ptr %i.exu, i64 56
  %i.exw = load ptr, ptr %i.exv, align 8, !tbaa !450, !noalias !979
  %i.exx = getelementptr inbounds nuw i8, ptr %i.exu, i64 8
  %i.exy = load ptr, ptr %i.exx, align 8, !tbaa !451, !noalias !979
  %i.exz = zext nneg i32 %i.eds to i64
  %i.eya = getelementptr inbounds nuw [24 x i8], ptr %i.exy, i64 %i.exz
  %i.eyb = getelementptr inbounds nuw i8, ptr %i.eya, i64 4
  %i.eyc = load i32, ptr %i.eyb, align 4, !tbaa !940, !noalias !979
  %i.eyd = zext i32 %i.eyc to i64
  %i.eye = getelementptr inbounds nuw [2 x i8], ptr %i.exw, i64 %i.eyd ; 2 uses
  %i.eyf = getelementptr inbounds nuw i8, ptr %i.eye, i64 2
  %i.eyg = load i16, ptr %i.eye, align 2, !tbaa !456, !noalias !979 ; 2 uses
  %i.eyh = sext i16 %i.eyg to i32
  %i.eyi = add nsw i32 %i.eds, %i.eyh             ; 2 uses
  %.not.i.i.i.i.i220.i.i = icmp eq i16 %i.eyg, 0
  %spec.select.i.i221.i.i = select i1 %.not.i.i.i.i.i220.i.i, ptr null, ptr %i.eyf
  %i.eyj = trunc i32 %i.eyi to i16
  store i32 %i.eyi, ptr %5, align 8, !alias.scope !979
  store ptr %spec.select.i.i221.i.i, ptr %.sroa.5.0..sroa_idx.i.i222.i.i, align 8, !alias.scope !979
  store i16 %i.eyj, ptr %.sroa.68.0..sroa_idx.i.i223.i.i, align 8, !alias.scope !979
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amp, i8 0, i64 24, i1 false), !alias.scope !979
  %i.eyk = load ptr, ptr %i.amm, align 8, !tbaa !113
  %i.eyl = load i32, ptr %i.amn, align 8, !tbaa !114
  %i.eym = zext i32 %i.eyl to i64
  %i.eyn = getelementptr inbounds nuw [4 x i8], ptr %i.eyk, i64 %i.eym
  %i.eyo = call noundef ptr @_ZN4llvm15SmallVectorImplINS_8RegisterEE6insertINS_16MCSubRegIteratorEvEEPS1_S5_T_S6_(ptr noundef nonnull align 8 dereferenceable(80) %i.amm, ptr noundef %i.eyn, ptr noundef nonnull byval(%"class.llvm::MCSubRegIterator") align 8 %5, ptr noundef nonnull byval(%"class.llvm::MCSubRegIterator") align 8 %i.amp) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN12_GLOBAL__N_115MachineVerifier17addRegWithSubRegsERN4llvm11SmallVectorINS1_8RegisterELj16EEES3_.exit224.thread.i.i

bb.zl:                                            ; preds = %bb.zg
  %i.eyp = load i32, ptr %i.alv, align 8, !tbaa !114 ; 2 uses
  %i.eyq = load i32, ptr %i.amk, align 4, !tbaa !115
  %.not.i.i225.i.i = icmp ult i32 %i.eyp, %i.eyq
  br i1 %.not.i.i225.i.i, label %bb.zn, label %bb.zm, !prof !243

bb.zm:                                            ; preds = %bb.zl
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(80) %i.amj, i32 %i.eds)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i226.i.i

bb.zn:                                            ; preds = %bb.zl
  %i.eyr = zext i32 %i.eyp to i64
  %i.eys = load ptr, ptr %i.amj, align 8, !tbaa !113
  %i.eyt = getelementptr inbounds nuw [4 x i8], ptr %i.eys, i64 %i.eyr
  store i32 %i.eds, ptr %i.eyt, align 1
  %i.eyu = load i32, ptr %i.alv, align 8, !tbaa !114
  %i.eyv = add i32 %i.eyu, 1
  store i32 %i.eyv, ptr %i.alv, align 8, !tbaa !114
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i226.i.i
end_hunk_0
