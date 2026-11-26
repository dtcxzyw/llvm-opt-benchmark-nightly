Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemProfContextDisambiguation?download=true
inline.NumInlined: 24972
inline.NumDeleted: 9914
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN12_GLOBAL__N_120CallsiteContextGraphINS_26ModuleCallsiteContextGraphEN4llvm8FunctionEPNS2_11InstructionEE15assignFunctionsEv:bb.a
  %.pre128.i.i.i.i = load i32, ptr %i.oq, align 4, !tbaa !1256, !noalias !6538
  br label %bb.dr

bb.do:                                            ; preds = %._crit_edge.i.i.i.i
  %.val2.i41.i.i.i.i = load ptr, ptr %.sroa.058.0.lcssa.i.i.i.i, align 8, !tbaa !753 ; 2 uses
  %i.bax = getelementptr i8, ptr %.val2.i41.i.i.i.i, i64 8
  %.val2.val.i42.i.i.i.i = load ptr, ptr %i.bax, align 8, !tbaa !755 ; 3 uses
  %i.bay = load ptr, ptr %33, align 8, !tbaa !1254, !noalias !6539 ; 3 uses
  %i.baz = load ptr, ptr %i.op, align 8, !tbaa !1255, !noalias !6539 ; 4 uses
  %i.bba = load i32, ptr %i.oq, align 4, !tbaa !1256, !noalias !6539 ; 4 uses
  %i.bbb = icmp eq i32 %i.bba, 0
  br i1 %i.bbb, label %.loopexit94.i.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bbc = add i32 %i.bba, -1                     ; 2 uses
  %i.bbd = ptrtoint ptr %.val2.val.i42.i.i.i.i to i64
  %i.bbe = mul i64 %i.bbd, -4658895280553007687   ; 2 uses
  %i.bbf = lshr i64 %i.bbe, 31
  %i.bbg = xor i64 %i.bbf, %i.bbe
  %i.bbh = trunc i64 %i.bbg to i32
  %i.bbi = and i32 %i.bbc, %i.bbh                 ; 3 uses
  %i.bbj = zext i32 %i.bbi to i64                 ; 2 uses
  %i.bbk = lshr i64 %i.bbj, 5
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.baz, i64 %i.bbk
  %i.bbm = load i32, ptr %i.bbl, align 4, !tbaa !231
  %i.bbn = and i32 %i.bbi, 31
  %i.bbo = lshr i32 %i.bbm, %i.bbn
  %i.bbp = trunc i32 %i.bbo to i1
  br i1 %i.bbp, label %.lr.ph.i.i.i.i.i43.i.i.i.i, label %.loopexit94.i.i.i.i, !prof !529

.lr.ph.i.i.i.i.i43.i.i.i.i:                       ; preds = %bb.dp, %bb.dq
  %i.bbq = phi i64 [ %i.bbw, %bb.dq ], [ %i.bbj, %bb.dp ]
  %.03.i.i.i.i.i44.i.i.i.i = phi i32 [ %i.bbv, %bb.dq ], [ %i.bbi, %bb.dp ]
  %i.bbr = getelementptr inbounds nuw [24 x i8], ptr %i.bay, i64 %i.bbq
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !638
  %i.bbt = icmp eq ptr %.val2.val.i42.i.i.i.i, %i.bbs
  br i1 %i.bbt, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit, label %bb.dq, !prof !530

bb.dq:                                            ; preds = %.lr.ph.i.i.i.i.i43.i.i.i.i
  %i.bbu = add nuw i32 %.03.i.i.i.i.i44.i.i.i.i, 1
  %i.bbv = and i32 %i.bbu, %i.bbc                 ; 3 uses
  %i.bbw = zext i32 %i.bbv to i64                 ; 2 uses
  %i.bbx = lshr i64 %i.bbw, 5
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %i.baz, i64 %i.bbx
  %i.bbz = load i32, ptr %i.bby, align 4, !tbaa !231
  %i.bca = and i32 %i.bbv, 31
  %i.bcb = lshr i32 %i.bbz, %i.bca
  %i.bcc = trunc i32 %i.bcb to i1
  br i1 %i.bcc, label %.lr.ph.i.i.i.i.i43.i.i.i.i, label %.loopexit94.i.i.i.i, !prof !531

.loopexit94.i.i.i.i:                              ; preds = %bb.dq, %bb.dp, %bb.do
  %i.bcd = getelementptr inbounds nuw i8, ptr %.sroa.058.0.lcssa.i.i.i.i, i64 16
  br label %bb.dr

bb.dr:                                            ; preds = %.loopexit94.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i
  %i.bce = phi i32 [ %i.bba, %.loopexit94.i.i.i.i ], [ %.pre128.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 4 uses
  %i.bcf = phi ptr [ %i.baz, %.loopexit94.i.i.i.i ], [ %.pre126.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 4 uses
  %i.bcg = phi ptr [ %i.bay, %.loopexit94.i.i.i.i ], [ %.pre.i.i.i.i445, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.058.1.i.i.i.i = phi ptr [ %i.bcd, %.loopexit94.i.i.i.i ], [ %.sroa.058.0.lcssa.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %.val2.i46.i.i.i.i = load ptr, ptr %.sroa.058.1.i.i.i.i, align 8, !tbaa !753 ; 2 uses
  %i.bch = getelementptr i8, ptr %.val2.i46.i.i.i.i, i64 8
  %.val2.val.i47.i.i.i.i = load ptr, ptr %i.bch, align 8, !tbaa !755 ; 3 uses
  %i.bci = icmp eq i32 %i.bce, 0
  br i1 %i.bci, label %.loopexit.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.bcj = add i32 %i.bce, -1                     ; 2 uses
  %i.bck = ptrtoint ptr %.val2.val.i47.i.i.i.i to i64
  %i.bcl = mul i64 %i.bck, -4658895280553007687   ; 2 uses
  %i.bcm = lshr i64 %i.bcl, 31
  %i.bcn = xor i64 %i.bcm, %i.bcl
  %i.bco = trunc i64 %i.bcn to i32
  %i.bcp = and i32 %i.bcj, %i.bco                 ; 3 uses
  %i.bcq = zext i32 %i.bcp to i64                 ; 2 uses
  %i.bcr = lshr i64 %i.bcq, 5
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %i.bcr
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !231
  %i.bcu = and i32 %i.bcp, 31
  %i.bcv = lshr i32 %i.bct, %i.bcu
  %i.bcw = trunc i32 %i.bcv to i1
  br i1 %i.bcw, label %.lr.ph.i.i.i.i.i48.i.i.i.i, label %.loopexit.i.i.i.i, !prof !529

.lr.ph.i.i.i.i.i48.i.i.i.i:                       ; preds = %bb.ds, %bb.dt
  %i.bcx = phi i64 [ %i.bdd, %bb.dt ], [ %i.bcq, %bb.ds ]
  %.03.i.i.i.i.i49.i.i.i.i = phi i32 [ %i.bdc, %bb.dt ], [ %i.bcp, %bb.ds ]
  %i.bcy = getelementptr inbounds nuw [24 x i8], ptr %i.bcg, i64 %i.bcx
  %i.bcz = load ptr, ptr %i.bcy, align 8, !tbaa !638
  %i.bda = icmp eq ptr %.val2.val.i47.i.i.i.i, %i.bcz
  br i1 %i.bda, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit, label %bb.dt, !prof !530

bb.dt:                                            ; preds = %.lr.ph.i.i.i.i.i48.i.i.i.i
  %i.bdb = add nuw i32 %.03.i.i.i.i.i49.i.i.i.i, 1
  %i.bdc = and i32 %i.bdb, %i.bcj                 ; 3 uses
  %i.bdd = zext i32 %i.bdc to i64                 ; 2 uses
  %i.bde = lshr i64 %i.bdd, 5
  %i.bdf = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %i.bde
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !231
  %i.bdh = and i32 %i.bdc, 31
  %i.bdi = lshr i32 %i.bdg, %i.bdh
  %i.bdj = trunc i32 %i.bdi to i1
  br i1 %i.bdj, label %.lr.ph.i.i.i.i.i48.i.i.i.i, label %.loopexit.i.i.i.i, !prof !531

.loopexit.i.i.i.i:                                ; preds = %bb.dt, %bb.ds, %bb.dr
  %i.bdk = getelementptr inbounds nuw i8, ptr %.sroa.058.1.i.i.i.i, i64 16
  br label %bb.du

bb.du:                                            ; preds = %.loopexit.i.i.i.i, %._crit_edge._crit_edge129.i.i.i.i
  %i.bdl = phi i32 [ %i.bce, %.loopexit.i.i.i.i ], [ %.pre134.i.i.i.i, %._crit_edge._crit_edge129.i.i.i.i ] ; 3 uses
  %i.bdm = phi ptr [ %i.bcf, %.loopexit.i.i.i.i ], [ %.pre132.i.i.i.i, %._crit_edge._crit_edge129.i.i.i.i ] ; 3 uses
  %i.bdn = phi ptr [ %i.bcg, %.loopexit.i.i.i.i ], [ %.pre130.i.i.i.i, %._crit_edge._crit_edge129.i.i.i.i ] ; 2 uses
  %.sroa.058.2.i.i.i.i = phi ptr [ %i.bdk, %.loopexit.i.i.i.i ], [ %.sroa.058.0.lcssa.i.i.i.i, %._crit_edge._crit_edge129.i.i.i.i ] ; 2 uses
  %.val2.i51.i.i.i.i = load ptr, ptr %.sroa.058.2.i.i.i.i, align 8, !tbaa !753 ; 2 uses
  %i.bdo = getelementptr i8, ptr %.val2.i51.i.i.i.i, i64 8
  %.val2.val.i52.i.i.i.i = load ptr, ptr %i.bdo, align 8, !tbaa !755 ; 3 uses
  %i.bdp = icmp eq i32 %i.bdl, 0
  br i1 %i.bdp, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.bdq = add i32 %i.bdl, -1                     ; 2 uses
  %i.bdr = ptrtoint ptr %.val2.val.i52.i.i.i.i to i64
  %i.bds = mul i64 %i.bdr, -4658895280553007687   ; 2 uses
  %i.bdt = lshr i64 %i.bds, 31
  %i.bdu = xor i64 %i.bdt, %i.bds
  %i.bdv = trunc i64 %i.bdu to i32
  %i.bdw = and i32 %i.bdq, %i.bdv                 ; 3 uses
  %i.bdx = zext i32 %i.bdw to i64                 ; 2 uses
  %i.bdy = lshr i64 %i.bdx, 5
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %i.bdm, i64 %i.bdy
  %i.bea = load i32, ptr %i.bdz, align 4, !tbaa !231
  %i.beb = and i32 %i.bdw, 31
  %i.bec = lshr i32 %i.bea, %i.beb
  %i.bed = trunc i32 %i.bec to i1
  br i1 %i.bed, label %.lr.ph.i.i.i.i.i53.i.i.i.i, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.thread, !prof !529

.lr.ph.i.i.i.i.i53.i.i.i.i:                       ; preds = %bb.dv, %bb.dw
  %i.bee = phi i64 [ %i.bek, %bb.dw ], [ %i.bdx, %bb.dv ]
  %.03.i.i.i.i.i54.i.i.i.i = phi i32 [ %i.bej, %bb.dw ], [ %i.bdw, %bb.dv ]
  %i.bef = getelementptr inbounds nuw [24 x i8], ptr %i.bdn, i64 %i.bee
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !638
  %i.beh = icmp eq ptr %.val2.val.i52.i.i.i.i, %i.beg
  br i1 %i.beh, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit, label %bb.dw, !prof !530

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i.i53.i.i.i.i
  %i.bei = add nuw i32 %.03.i.i.i.i.i54.i.i.i.i, 1
  %i.bej = and i32 %i.bei, %i.bdq                 ; 3 uses
  %i.bek = zext i32 %i.bej to i64                 ; 2 uses
  %i.bel = lshr i64 %i.bek, 5
  %i.bem = getelementptr inbounds nuw [4 x i8], ptr %i.bdm, i64 %i.bel
  %i.ben = load i32, ptr %i.bem, align 4, !tbaa !231
  %i.beo = and i32 %i.bej, 31
  %i.bep = lshr i32 %i.ben, %i.beo
  %i.beq = trunc i32 %i.bep to i1
  br i1 %i.beq, label %.lr.ph.i.i.i.i.i53.i.i.i.i, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.thread, !prof !531

_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i38.i.i.i.i
  %i.ber = getelementptr inbounds nuw i8, ptr %.sroa.058.0111.i.i.i.i, i64 48
  br label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit

_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4360: ; preds = %.lr.ph.i.i.i.i.i33.i.i.i.i
  %i.bes = getelementptr inbounds nuw i8, ptr %.sroa.058.0111.i.i.i.i, i64 32
  br label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit

_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4361: ; preds = %.lr.ph.i.i.i.i.i28.i.i.i.i
  %i.bet = getelementptr inbounds nuw i8, ptr %.sroa.058.0111.i.i.i.i, i64 16
  br label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit

_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i43.i.i.i.i, %.lr.ph.i.i.i.i.i48.i.i.i.i, %.lr.ph.i.i.i.i.i53.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i447, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4361, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4360, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit
  %i.beu = phi i32 [ %i.awj, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4361 ], [ %i.awj, %.lr.ph.i.i.i.i.i.i.i.i.i447 ], [ %i.awj, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit ], [ %i.bdl, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %i.awj, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4360 ], [ %i.bce, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %i.bba, %.lr.ph.i.i.i.i.i43.i.i.i.i ] ; 3 uses
  %i.bev = phi ptr [ %i.awi, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4361 ], [ %i.awi, %.lr.ph.i.i.i.i.i.i.i.i.i447 ], [ %i.awi, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit ], [ %i.bdm, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %i.awi, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4360 ], [ %i.bcf, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %i.baz, %.lr.ph.i.i.i.i.i43.i.i.i.i ] ; 3 uses
  %i.bew = phi ptr [ %i.awh, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4361 ], [ %i.awh, %.lr.ph.i.i.i.i.i.i.i.i.i447 ], [ %i.awh, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit ], [ %i.bdn, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %i.awh, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4360 ], [ %i.bcg, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %i.bay, %.lr.ph.i.i.i.i.i43.i.i.i.i ] ; 3 uses
  %.val.i.i448 = phi ptr [ %.val2.val.i2770.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4361 ], [ %.val2.val.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i447 ], [ %.val2.val.i3790.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit ], [ %.val2.val.i52.i.i.i.i, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %.val2.val.i3279.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4360 ], [ %.val2.val.i47.i.i.i.i, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %.val2.val.i42.i.i.i.i, %.lr.ph.i.i.i.i.i43.i.i.i.i ] ; 3 uses
  %.val284 = phi ptr [ %.val2.i2668.pn.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4361 ], [ %.val2.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i447 ], [ %.val2.i3688.pn.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit ], [ %.val2.i51.i.i.i.i, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %.val2.i3177.pn.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4360 ], [ %.val2.i46.i.i.i.i, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %.val2.i41.i.i.i.i, %.lr.ph.i.i.i.i.i43.i.i.i.i ]
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %i.bet, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4361 ], [ %.sroa.058.0111.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i447 ], [ %i.ber, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit ], [ %.sroa.058.2.i.i.i.i, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %i.bes, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.loopexit4360 ], [ %.sroa.058.1.i.i.i.i, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %.sroa.058.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i43.i.i.i.i ]
  %.not2899 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.val382
  br i1 %.not2899, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit
  %i.bex = getelementptr inbounds nuw i8, ptr %.val284, i64 8
  %i.bey = add i32 %i.beu, -1                     ; 2 uses
  %i.bez = ptrtoint ptr %.val.i.i448 to i64
  %i.bfa = mul i64 %i.bez, -4658895280553007687   ; 2 uses
  %i.bfb = lshr i64 %i.bfa, 31
  %i.bfc = xor i64 %i.bfb, %i.bfa
  %i.bfd = trunc i64 %i.bfc to i32
  %i.bfe = and i32 %i.bey, %i.bfd                 ; 3 uses
  %i.bff = zext i32 %i.bfe to i64                 ; 2 uses
  %i.bfg = getelementptr inbounds nuw [24 x i8], ptr %i.bew, i64 %i.bff ; 2 uses
  %i.bfh = lshr i64 %i.bff, 5
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %i.bfh
  %i.bfj = load i32, ptr %i.bfi, align 4, !tbaa !231
  %i.bfk = and i32 %i.bfe, 31
  %i.bfl = lshr i32 %i.bfj, %i.bfk
  %i.bfm = trunc i32 %i.bfl to i1
  br i1 %i.bfm, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !529

.lr.ph.i.i.i:                                     ; preds = %bb.dx, %bb.dy
  %i.bfn = phi ptr [ %i.bft, %bb.dy ], [ %i.bfg, %bb.dx ] ; 3 uses
  %.05.i.i.i = phi i32 [ %i.bfr, %bb.dy ], [ %i.bfe, %bb.dx ]
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !638
  %i.bfp = icmp eq ptr %.val.i.i448, %i.bfo
  br i1 %i.bfp, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_EixERKSA_.exit.loopexit.a, label %bb.dy, !prof !530

bb.dy:                                            ; preds = %.lr.ph.i.i.i
  %i.bfq = add nuw i32 %.05.i.i.i, 1
  %i.bfr = and i32 %i.bfq, %i.bey                 ; 3 uses
  %i.bfs = zext i32 %i.bfr to i64                 ; 2 uses
  %i.bft = getelementptr inbounds nuw [24 x i8], ptr %i.bew, i64 %i.bfs ; 2 uses
  %i.bfu = lshr i64 %i.bfs, 5
  %i.bfv = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %i.bfu
  %i.bfw = load i32, ptr %i.bfv, align 4, !tbaa !231
  %i.bfx = and i32 %i.bfr, 31
  %i.bfy = lshr i32 %i.bfw, %i.bfx
  %i.bfz = trunc i32 %i.bfy to i1
  br i1 %i.bfz, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !531, !llvm.loop !145

.loopexit.i.i:                                    ; preds = %bb.dy, %bb.dx
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.bfg, %bb.dx ], [ %i.bft, %bb.dy ]
  %.val6.i.i.i449 = load i32, ptr %i.or, align 8, !tbaa !1257
  %i.bga = shl i32 %.val6.i.i.i449, 2
  %i.bgb = add i32 %i.bga, 4
  %i.bgc = mul i32 %i.beu, 3
  %.not.i.i.i = icmp ult i32 %i.bgb, %i.bgc
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E22findBucketForInsertionISA_EEPSG_RKT_SK_.exit.i.i, label %bb.dz, !prof !530

bb.dz:                                            ; preds = %.loopexit.i.i
  %i.bgd = shl i32 %i.beu, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %33, i32 noundef %i.bgd)
  %.val5.i.i.i = load ptr, ptr %i.bex, align 8    ; 5 uses
  %i.bge = load ptr, ptr %33, align 8, !tbaa !1254, !noalias !6540 ; 5 uses
  %i.bgf = load ptr, ptr %i.op, align 8, !tbaa !1255, !noalias !6540 ; 5 uses
  %i.bgg = load i32, ptr %i.oq, align 4, !tbaa !1256, !noalias !6540 ; 2 uses
  %i.bgh = icmp ne i32 %i.bgg, 0
  call void @llvm.assume(i1 %i.bgh)
  %i.bgi = add i32 %i.bgg, -1                     ; 2 uses
  %i.bgj = ptrtoint ptr %.val5.i.i.i to i64
  %i.bgk = mul i64 %i.bgj, -4658895280553007687   ; 2 uses
  %i.bgl = lshr i64 %i.bgk, 31
  %i.bgm = xor i64 %i.bgl, %i.bgk
  %i.bgn = trunc i64 %i.bgm to i32
  %i.bgo = and i32 %i.bgi, %i.bgn                 ; 3 uses
  %i.bgp = zext i32 %i.bgo to i64                 ; 2 uses
  %i.bgq = getelementptr inbounds nuw [24 x i8], ptr %i.bge, i64 %i.bgp ; 2 uses
  %i.bgr = lshr i64 %i.bgp, 5
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.bgf, i64 %i.bgr
  %i.bgt = load i32, ptr %i.bgs, align 4, !tbaa !231
  %i.bgu = and i32 %i.bgo, 31
  %i.bgv = lshr i32 %i.bgt, %i.bgu
  %i.bgw = trunc i32 %i.bgv to i1
  br i1 %i.bgw, label %.lr.ph.i1362, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E22findBucketForInsertionISA_EEPSG_RKT_SK_.exit.i.i, !prof !529

.lr.ph.i1362:                                     ; preds = %bb.dz, %bb.ea
  %i.bgx = phi ptr [ %i.bhd, %bb.ea ], [ %i.bgq, %bb.dz ] ; 2 uses
  %.05.i = phi i32 [ %i.bhb, %bb.ea ], [ %i.bgo, %bb.dz ]
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !638
  %i.bgz = icmp eq ptr %.val5.i.i.i, %i.bgy
  br i1 %i.bgz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E22findBucketForInsertionISA_EEPSG_RKT_SK_.exit.i.i, label %bb.ea, !prof !530

bb.ea:                                            ; preds = %.lr.ph.i1362
  %i.bha = add nuw i32 %.05.i, 1
  %i.bhb = and i32 %i.bha, %i.bgi                 ; 3 uses
  %i.bhc = zext i32 %i.bhb to i64                 ; 2 uses
  %i.bhd = getelementptr inbounds nuw [24 x i8], ptr %i.bge, i64 %i.bhc ; 2 uses
  %i.bhe = lshr i64 %i.bhc, 5
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %i.bgf, i64 %i.bhe
  %i.bhg = load i32, ptr %i.bhf, align 4, !tbaa !231
  %i.bhh = and i32 %i.bhb, 31
  %i.bhi = lshr i32 %i.bhg, %i.bhh
  %i.bhj = trunc i32 %i.bhi to i1
  br i1 %i.bhj, label %.lr.ph.i1362, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E22findBucketForInsertionISA_EEPSG_RKT_SK_.exit.i.i, !prof !531, !llvm.loop !145

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E22findBucketForInsertionISA_EEPSG_RKT_SK_.exit.i.i: ; preds = %bb.ea, %.lr.ph.i1362, %bb.dz, %.loopexit.i.i
  %i.bhk = phi ptr [ %.val.i.i448, %.loopexit.i.i ], [ %.val5.i.i.i, %bb.dz ], [ %.val5.i.i.i, %.lr.ph.i1362 ], [ %.val5.i.i.i, %bb.ea ]
  %.val7.i.i.i = phi ptr [ %i.bew, %.loopexit.i.i ], [ %i.bge, %bb.dz ], [ %i.bge, %.lr.ph.i1362 ], [ %i.bge, %bb.ea ]
  %.val4.i.i.i = phi ptr [ %i.bev, %.loopexit.i.i ], [ %i.bgf, %bb.dz ], [ %i.bgf, %.lr.ph.i1362 ], [ %i.bgf, %bb.ea ]
  %i.bhl = phi ptr [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ], [ %i.bgq, %bb.dz ], [ %i.bhd, %bb.ea ], [ %i.bgx, %.lr.ph.i1362 ] ; 4 uses
  %i.bhm = ptrtoint ptr %i.bhl to i64
  %i.bhn = ptrtoint ptr %.val7.i.i.i to i64
  %i.bho = sub i64 %i.bhm, %i.bhn
  %i.bhp = sdiv exact i64 %i.bho, 24              ; 2 uses
  %i.bhq = trunc i64 %i.bhp to i32
  %i.bhr = and i32 %i.bhq, 31
  %i.bhs = shl nuw i32 1, %i.bhr
  %i.bht = lshr i64 %i.bhp, 5
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.bht ; 2 uses
  %i.bhv = load i32, ptr %i.bhu, align 4, !tbaa !231
  %i.bhw = or i32 %i.bhs, %i.bhv
  store i32 %i.bhw, ptr %i.bhu, align 4, !tbaa !231
  %.val.i.i.i.i = load i32, ptr %i.or, align 8, !tbaa !1257
  %i.bhx = add i32 %.val.i.i.i.i, 1
  store i32 %i.bhx, ptr %i.or, align 8, !tbaa !1257
  store ptr %i.bhk, ptr %i.bhl, align 8, !tbaa !638
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  store ptr null, ptr %i.bhy, align 8, !tbaa !1241
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhl, i64 16
  store i32 0, ptr %i.bhz, align 8, !tbaa !769
  br label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.thread

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_EixERKSA_.exit.loopexit.a: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bfn, i64 8
  %.val375.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1241
  %.phi.trans.insert3806 = getelementptr i8, ptr %i.bfn, i64 16
  %.val376.pre = load i32, ptr %.phi.trans.insert3806, align 8, !tbaa !769
  br label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.thread

_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.thread: ; preds = %bb.dw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E22findBucketForInsertionISA_EEPSG_RKT_SK_.exit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_EixERKSA_.exit.loopexit.a, %bb.du, %bb.dv, %._crit_edge.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit
  %48 = phi i1 [ true, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E22findBucketForInsertionISA_EEPSG_RKT_SK_.exit.i.i ], [ false, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit ], [ false, %._crit_edge.i.i.i.i ], [ false, %bb.dv ], [ false, %bb.du ], [ true, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_EixERKSA_.exit.loopexit.a ], [ false, %bb.dw ] ; 2 uses
  %.sroa.52757.0 = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E22findBucketForInsertionISA_EEPSG_RKT_SK_.exit.i.i ], [ 0, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit ], [ 0, %._crit_edge.i.i.i.i ], [ 0, %bb.dv ], [ 0, %bb.du ], [ %.val376.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_EixERKSA_.exit.loopexit.a ], [ 0, %bb.dw ]
  %.sroa.02756.0 = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E22findBucketForInsertionISA_EEPSG_RKT_SK_.exit.i.i ], [ null, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit ], [ null, %._crit_edge.i.i.i.i ], [ null, %bb.dv ], [ null, %bb.du ], [ %.val375.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextNodeENS8_8FuncInfoENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_EixERKSA_.exit.loopexit.a ], [ null, %bb.dw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  %i.bia = trunc nuw i64 %i.anm to i32            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %.val383 = load ptr, ptr %35, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  store i32 128, ptr %i.os, align 4, !tbaa !528
  %i.bib = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 8208, i64 noundef 8) #28 ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 8192 ; 2 uses
  store ptr %i.bib, ptr %21, align 8, !tbaa !526
  store ptr %i.bic, ptr %i.ou, align 8, !tbaa !527
  store i32 0, ptr %i.ot, align 8, !tbaa !516
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bic, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.ov, align 8, !tbaa !592
  store i32 1, ptr %i.ow, align 8
  store i32 0, ptr %i.ox, align 8
  %i.bid = call noundef ptr @_ZN4llvm13CloneFunctionEPNS_8FunctionERNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEEPNS_14ClonedCodeInfoE(ptr noundef %.val383, ptr noundef nonnull align 8 dereferenceable(176) %21, ptr noundef null) #28 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.bie = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %.val383) #28 ; 2 uses
  %i.bif = extractvalue { ptr, i64 } %i.bie, 0    ; 2 uses
  %i.big = extractvalue { ptr, i64 } %i.bie, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr %i.bif, ptr %20, align 8
  store i64 %i.big, ptr %.sroa.210.0..sroa_idx.i.i, align 8
  store i8 5, ptr %.sroa.311.0..sroa_idx.i.i, align 8
  store i8 1, ptr %.sroa.412.0..sroa_idx.i.i, align 1
  %.not.i.i.i451 = icmp eq ptr %.sroa.22.13390, %.sroa.02826.13389
  br i1 %.not.i.i.i451, label %bb.eb, label %_ZN4llvmplERKNS_5TwineES2_.exit16.i.i.i

bb.eb:                                            ; preds = %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.thread
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(34) %20) #28
  br label %_ZL18getMemProfFuncNameB5cxx11N4llvm5TwineEj.exit.i.i

_ZN4llvmplERKNS_5TwineES2_.exit16.i.i.i:          ; preds = %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE11ContextEdgeEESaISB_EEZNS9_15assignFunctionsEvEUlRKSB_E0_EEDaOT_T0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28, !noalias !6541
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28, !noalias !6541
  store ptr %i.bif, ptr %19, align 8, !tbaa !207, !alias.scope !6542, !noalias !6541
  store i64 %i.big, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !207, !alias.scope !6542, !noalias !6541
  store ptr @_ZL18MemProfCloneSuffixB5cxx11, ptr %i.oy, align 8, !tbaa !207, !alias.scope !6542, !noalias !6541
  store i8 5, ptr %i.oz, align 8, !tbaa !390, !alias.scope !6542, !noalias !6541
  store i8 4, ptr %i.pa, align 1, !tbaa !391, !alias.scope !6542, !noalias !6541
  %i.bih = inttoptr i64 %i.anm to ptr
  store ptr %19, ptr %18, align 8, !tbaa !207, !alias.scope !6543, !noalias !6541
  store ptr %i.bih, ptr %i.pb, align 8, !tbaa !207, !alias.scope !6543, !noalias !6541
  store i8 2, ptr %i.pc, align 8, !tbaa !390, !alias.scope !6543, !noalias !6541
  store i8 9, ptr %i.pd, align 1, !tbaa !391, !alias.scope !6543, !noalias !6541
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(34) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28, !noalias !6541
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28, !noalias !6541
  br label %_ZL18getMemProfFuncNameB5cxx11N4llvm5TwineEj.exit.i.i

_ZL18getMemProfFuncNameB5cxx11N4llvm5TwineEj.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit16.i.i.i, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  store i8 4, ptr %i.pe, align 8, !tbaa !390
  store i8 1, ptr %i.pf, align 1, !tbaa !391
  store ptr %22, ptr %23, align 8, !tbaa !207
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %i.bid, ptr noundef nonnull align 8 dereferenceable(34) %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  %i.bii = load ptr, ptr %22, align 8, !tbaa !206
  %i.bij = load i64, ptr %i.pg, align 8, !tbaa !386
  %i.bik = call noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140) %i.bid) #28 ; 5 uses
  %.not.i1393 = icmp eq ptr %i.bik, null
  br i1 %.not.i1393, label %_ZL27updateSubprogramLinkageNamePN4llvm8FunctionENS_9StringRefE.exit, label %bb.ec

bb.ec:                                            ; preds = %_ZL18getMemProfFuncNameB5cxx11N4llvm5TwineEj.exit.i.i
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bid, i64 40
  %i.bim = load ptr, ptr %i.bil, align 8, !tbaa !1049
  %i.bin = load ptr, ptr %i.bim, align 8, !tbaa !384, !nonnull !213, !align !385
  %i.bio = call noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.bin, ptr %i.bii, i64 %i.bij) #28 ; 2 uses
  call void @_ZN4llvm6MDNode18replaceOperandWithEjPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(40) %i.bik, i32 noundef 3, ptr noundef %i.bio) #28
  %i.bip = getelementptr inbounds i8, ptr %i.bik, i64 -16 ; 2 uses
  %i.biq = load i64, ptr %i.bip, align 8          ; 2 uses
  %i.bir = and i64 %i.biq, 2
  %.not.i.i.i.i.i1394 = icmp eq i64 %i.bir, 0
  br i1 %.not.i.i.i.i.i1394, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bis = getelementptr inbounds i8, ptr %i.bik, i64 -32
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !216
  br label %_ZNK4llvm12DISubprogram14getDeclarationEv.exit.i

bb.ee:                                            ; preds = %bb.ec
  %i.biu = lshr i64 %i.biq, 2
  %i.biv = and i64 %i.biu, 15
  %i.biw = sub nsw i64 0, %i.biv
  %i.bix = getelementptr inbounds [8 x i8], ptr %i.bip, i64 %i.biw
  br label %_ZNK4llvm12DISubprogram14getDeclarationEv.exit.i

_ZNK4llvm12DISubprogram14getDeclarationEv.exit.i: ; preds = %bb.ee, %bb.ed
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bix, %bb.ee ], [ %i.bit, %bb.ed ]
  %i.biy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 48
  %i.biz = load ptr, ptr %i.biy, align 8, !tbaa !458 ; 2 uses
  %.not13.i1395 = icmp eq ptr %i.biz, null
  br i1 %.not13.i1395, label %_ZL27updateSubprogramLinkageNamePN4llvm8FunctionENS_9StringRefE.exit, label %_ZNSt10unique_ptrIN4llvm12DISubprogramENS0_17TempMDNodeDeleterEED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm12DISubprogramENS0_17TempMDNodeDeleterEED2Ev.exit.i: ; preds = %_ZNK4llvm12DISubprogram14getDeclarationEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZNK4llvm12DISubprogram9cloneImplEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.609") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %i.biz)
  %i.bja = load ptr, ptr %1, align 8, !tbaa !1051
  call void @_ZN4llvm6MDNode18replaceOperandWithEjPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(40) %i.bja, i32 noundef 3, ptr noundef %i.bio) #28
  %i.bjb = load i64, ptr %1, align 8, !tbaa !1051
  %i.bjc = inttoptr i64 %i.bjb to ptr
  store ptr null, ptr %1, align 8, !tbaa !1051
  %i.bjd = call noundef ptr @_ZN4llvm6MDNode22replaceWithUniquedImplEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bjc) #28
  call void @_ZN4llvm6MDNode18replaceOperandWithEjPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(40) %i.bik, i32 noundef 6, ptr noundef %i.bjd) #28
  %i.bje = load ptr, ptr %1, align 8, !tbaa !1051 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.bje, null
  br i1 %.not.i14.i, label %_ZNSt10unique_ptrIN4llvm12DISubprogramENS0_17TempMDNodeDeleterEED2Ev.exit15.i, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt10unique_ptrIN4llvm12DISubprogramENS0_17TempMDNodeDeleterEED2Ev.exit.i
  call void @_ZN4llvm6MDNode15deleteTemporaryEPS0_(ptr noundef nonnull %i.bje) #28
  br label %_ZNSt10unique_ptrIN4llvm12DISubprogramENS0_17TempMDNodeDeleterEED2Ev.exit15.i

_ZNSt10unique_ptrIN4llvm12DISubprogramENS0_17TempMDNodeDeleterEED2Ev.exit15.i: ; preds = %bb.ef, %_ZNSt10unique_ptrIN4llvm12DISubprogramENS0_17TempMDNodeDeleterEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %_ZL27updateSubprogramLinkageNamePN4llvm8FunctionENS_9StringRefE.exit

_ZL27updateSubprogramLinkageNamePN4llvm8FunctionENS_9StringRefE.exit: ; preds = %_ZL18getMemProfFuncNameB5cxx11N4llvm5TwineEj.exit.i.i, %_ZNK4llvm12DISubprogram14getDeclarationEv.exit.i, %_ZNSt10unique_ptrIN4llvm12DISubprogramENS0_17TempMDNodeDeleterEED2Ev.exit15.i
  %.val17.i.i = load ptr, ptr %i.sw, align 8, !tbaa !783 ; 2 uses
  %.val.i.i452 = load ptr, ptr %i.sy, align 8, !tbaa !783 ; 2 uses
  %.not15.i.i = icmp eq ptr %.val17.i.i, %.val.i.i452
  br i1 %.not15.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i453

._crit_edge.i.i:                                  ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_120CallsiteContextGraphINS2_26ModuleCallsiteContextGraphENS_8FunctionEPNS_11InstructionEE8CallInfoES9_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEES9_S9_SB_SE_EixERKS9_.exit1381, %_ZL27updateSubprogramLinkageNamePN4llvm8FunctionENS_9StringRefE.exit
  %i.bjf = load ptr, ptr %i.po, align 8, !tbaa !1259
  %i.bjg = load i64, ptr %i.pp, align 8, !tbaa !1260
  %i.bjh = call noundef nonnull align 8 dereferenceable(24) ptr %i.bjf(i64 noundef %i.bjg, ptr noundef nonnull %.val383) #28, !inline_history !6064
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @_ZN4llvm18OptimizationRemarkC1EPKcNS_9StringRefEPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(432) %24, ptr noundef nonnull @.str.76, ptr nonnull @.str.98, i64 12, ptr noundef nonnull %.val383) #28
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %24, ptr nonnull @.str.103, i64 14) #28
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr nonnull @.str.104, i64 11, ptr noundef nonnull %i.bid) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.pq, ptr %2, align 8, !tbaa !387
  %i.bji = load ptr, ptr %25, align 8, !tbaa !206 ; 2 uses
  %i.bjj = load i64, ptr %i.pr, align 8, !tbaa !386 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.bjj, ptr %i.b, align 8, !tbaa !460
  %i.bjk = icmp ugt i64 %i.bjj, 15
  br i1 %i.bjk, label %bb.eg, label %._crit_edge.i.i.i.i1390

bb.eg:                                            ; preds = %._crit_edge.i.i
  %i.bjl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #28 ; 2 uses
  store ptr %i.bjl, ptr %2, align 8, !tbaa !206
  %i.bjm = load i64, ptr %i.b, align 8, !tbaa !460
  store i64 %i.bjm, ptr %i.pq, align 8, !tbaa !207
  br label %._crit_edge.i.i.i.i1390

._crit_edge.i.i.i.i1390:                          ; preds = %bb.eg, %._crit_edge.i.i
  %i.bjn = phi ptr [ %i.bjl, %bb.eg ], [ %i.pq, %._crit_edge.i.i ] ; 2 uses
  switch i64 %i.bjj, label %bb.ei [
    i64 1, label %bb.eh
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.eh:                                            ; preds = %._crit_edge.i.i.i.i1390
  %i.bjo = load i8, ptr %i.bji, align 1, !tbaa !207
  store i8 %i.bjo, ptr %i.bjn, align 1, !tbaa !207
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.ei:                                            ; preds = %._crit_edge.i.i.i.i1390
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bjn, ptr align 1 %i.bji, i64 %i.bjj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.ei, %bb.eh, %._crit_edge.i.i.i.i1390
  %i.bjp = load i64, ptr %i.b, align 8, !tbaa !460 ; 2 uses
  store i64 %i.bjp, ptr %i.ps, align 8, !tbaa !386
  %i.bjq = load ptr, ptr %2, align 8, !tbaa !206
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 %i.bjp
  store i8 0, ptr %i.bjr, align 1, !tbaa !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  store ptr %i.pv, ptr %i.pt, align 8, !tbaa !387
  %i.bjs = load ptr, ptr %i.pu, align 8, !tbaa !206 ; 2 uses
  %i.bjt = load i64, ptr %i.pw, align 8, !tbaa !386 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.bjt, ptr %i.a, align 8, !tbaa !460
  %i.bju = icmp ugt i64 %i.bjt, 15
  br i1 %i.bju, label %bb.ej, label %._crit_edge.i.i4.i.i

bb.ej:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.bjv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.pt, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.bjv, ptr %i.pt, align 8, !tbaa !206
  %i.bjw = load i64, ptr %i.a, align 8, !tbaa !460
  store i64 %i.bjw, ptr %i.pv, align 8, !tbaa !207
  br label %._crit_edge.i.i4.i.i

._crit_edge.i.i4.i.i:                             ; preds = %bb.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.bjx = phi ptr [ %i.bjv, %bb.ej ], [ %i.pv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ] ; 2 uses
  switch i64 %i.bjt, label %bb.el [
    i64 1, label %bb.ek
    i64 0, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i
  ]

bb.ek:                                            ; preds = %._crit_edge.i.i4.i.i
  %i.bjy = load i8, ptr %i.bjs, align 1, !tbaa !207
  store i8 %i.bjy, ptr %i.bjx, align 1, !tbaa !207
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i

bb.el:                                            ; preds = %._crit_edge.i.i4.i.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE15assignFunctionsEv:bb.a
  %.pre128.i.i.i.i = load i32, ptr %i.oo, align 4, !tbaa !1329, !noalias !8045
  br label %bb.dt

bb.dq:                                            ; preds = %._crit_edge.i.i.i.i
  %.val2.i41.i.i.i.i = load ptr, ptr %.sroa.058.0.lcssa.i.i.i.i, align 8, !tbaa !967 ; 2 uses
  %i.azb = getelementptr i8, ptr %.val2.i41.i.i.i.i, i64 8
  %.val2.val.i42.i.i.i.i = load ptr, ptr %i.azb, align 8, !tbaa !969 ; 3 uses
  %i.azc = load ptr, ptr %22, align 8, !tbaa !1327, !noalias !8046 ; 3 uses
  %i.azd = load ptr, ptr %i.on, align 8, !tbaa !1328, !noalias !8046 ; 4 uses
  %i.aze = load i32, ptr %i.oo, align 4, !tbaa !1329, !noalias !8046 ; 4 uses
  %i.azf = icmp eq i32 %i.aze, 0
  br i1 %i.azf, label %.loopexit94.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.azg = add i32 %i.aze, -1                     ; 2 uses
  %i.azh = ptrtoint ptr %.val2.val.i42.i.i.i.i to i64
  %i.azi = mul i64 %i.azh, -4658895280553007687   ; 2 uses
  %i.azj = lshr i64 %i.azi, 31
  %i.azk = xor i64 %i.azj, %i.azi
  %i.azl = trunc i64 %i.azk to i32
  %i.azm = and i32 %i.azg, %i.azl                 ; 3 uses
  %i.azn = zext i32 %i.azm to i64                 ; 2 uses
  %i.azo = lshr i64 %i.azn, 5
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.azd, i64 %i.azo
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !231
  %i.azr = and i32 %i.azm, 31
  %i.azs = lshr i32 %i.azq, %i.azr
  %i.azt = trunc i32 %i.azs to i1
  br i1 %i.azt, label %.lr.ph.i.i.i.i.i43.i.i.i.i, label %.loopexit94.i.i.i.i, !prof !529

.lr.ph.i.i.i.i.i43.i.i.i.i:                       ; preds = %bb.dr, %bb.ds
  %i.azu = phi i64 [ %i.baa, %bb.ds ], [ %i.azn, %bb.dr ]
  %.03.i.i.i.i.i44.i.i.i.i = phi i32 [ %i.azz, %bb.ds ], [ %i.azm, %bb.dr ]
  %i.azv = getelementptr inbounds nuw [24 x i8], ptr %i.azc, i64 %i.azu
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !854
  %i.azx = icmp eq ptr %.val2.val.i42.i.i.i.i, %i.azw
  br i1 %i.azx, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit, label %bb.ds, !prof !530

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i.i43.i.i.i.i
  %i.azy = add nuw i32 %.03.i.i.i.i.i44.i.i.i.i, 1
  %i.azz = and i32 %i.azy, %i.azg                 ; 3 uses
  %i.baa = zext i32 %i.azz to i64                 ; 2 uses
  %i.bab = lshr i64 %i.baa, 5
  %i.bac = getelementptr inbounds nuw [4 x i8], ptr %i.azd, i64 %i.bab
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !231
  %i.bae = and i32 %i.azz, 31
  %i.baf = lshr i32 %i.bad, %i.bae
  %i.bag = trunc i32 %i.baf to i1
  br i1 %i.bag, label %.lr.ph.i.i.i.i.i43.i.i.i.i, label %.loopexit94.i.i.i.i, !prof !531

.loopexit94.i.i.i.i:                              ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.bah = getelementptr inbounds nuw i8, ptr %.sroa.058.0.lcssa.i.i.i.i, i64 16
  br label %bb.dt

bb.dt:                                            ; preds = %.loopexit94.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i
  %i.bai = phi i32 [ %i.aze, %.loopexit94.i.i.i.i ], [ %.pre128.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 4 uses
  %i.baj = phi ptr [ %i.azd, %.loopexit94.i.i.i.i ], [ %.pre126.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 4 uses
  %i.bak = phi ptr [ %i.azc, %.loopexit94.i.i.i.i ], [ %.pre.i.i.i.i450, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.058.1.i.i.i.i = phi ptr [ %i.bah, %.loopexit94.i.i.i.i ], [ %.sroa.058.0.lcssa.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %.val2.i46.i.i.i.i = load ptr, ptr %.sroa.058.1.i.i.i.i, align 8, !tbaa !967 ; 2 uses
  %i.bal = getelementptr i8, ptr %.val2.i46.i.i.i.i, i64 8
  %.val2.val.i47.i.i.i.i = load ptr, ptr %i.bal, align 8, !tbaa !969 ; 3 uses
  %i.bam = icmp eq i32 %i.bai, 0
  br i1 %i.bam, label %.loopexit.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ban = add i32 %i.bai, -1                     ; 2 uses
  %i.bao = ptrtoint ptr %.val2.val.i47.i.i.i.i to i64
  %i.bap = mul i64 %i.bao, -4658895280553007687   ; 2 uses
  %i.baq = lshr i64 %i.bap, 31
  %i.bar = xor i64 %i.baq, %i.bap
  %i.bas = trunc i64 %i.bar to i32
  %i.bat = and i32 %i.ban, %i.bas                 ; 3 uses
  %i.bau = zext i32 %i.bat to i64                 ; 2 uses
  %i.bav = lshr i64 %i.bau, 5
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.baj, i64 %i.bav
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !231
  %i.bay = and i32 %i.bat, 31
  %i.baz = lshr i32 %i.bax, %i.bay
  %i.bba = trunc i32 %i.baz to i1
  br i1 %i.bba, label %.lr.ph.i.i.i.i.i48.i.i.i.i, label %.loopexit.i.i.i.i, !prof !529

.lr.ph.i.i.i.i.i48.i.i.i.i:                       ; preds = %bb.du, %bb.dv
  %i.bbb = phi i64 [ %i.bbh, %bb.dv ], [ %i.bau, %bb.du ]
  %.03.i.i.i.i.i49.i.i.i.i = phi i32 [ %i.bbg, %bb.dv ], [ %i.bat, %bb.du ]
  %i.bbc = getelementptr inbounds nuw [24 x i8], ptr %i.bak, i64 %i.bbb
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !854
  %i.bbe = icmp eq ptr %.val2.val.i47.i.i.i.i, %i.bbd
  br i1 %i.bbe, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit, label %bb.dv, !prof !530

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i.i48.i.i.i.i
  %i.bbf = add nuw i32 %.03.i.i.i.i.i49.i.i.i.i, 1
  %i.bbg = and i32 %i.bbf, %i.ban                 ; 3 uses
  %i.bbh = zext i32 %i.bbg to i64                 ; 2 uses
  %i.bbi = lshr i64 %i.bbh, 5
  %i.bbj = getelementptr inbounds nuw [4 x i8], ptr %i.baj, i64 %i.bbi
  %i.bbk = load i32, ptr %i.bbj, align 4, !tbaa !231
  %i.bbl = and i32 %i.bbg, 31
  %i.bbm = lshr i32 %i.bbk, %i.bbl
  %i.bbn = trunc i32 %i.bbm to i1
  br i1 %i.bbn, label %.lr.ph.i.i.i.i.i48.i.i.i.i, label %.loopexit.i.i.i.i, !prof !531

.loopexit.i.i.i.i:                                ; preds = %bb.dv, %bb.du, %bb.dt
  %i.bbo = getelementptr inbounds nuw i8, ptr %.sroa.058.1.i.i.i.i, i64 16
  br label %bb.dw

bb.dw:                                            ; preds = %.loopexit.i.i.i.i, %._crit_edge._crit_edge129.i.i.i.i
  %i.bbp = phi i32 [ %i.bai, %.loopexit.i.i.i.i ], [ %.pre134.i.i.i.i, %._crit_edge._crit_edge129.i.i.i.i ] ; 3 uses
  %i.bbq = phi ptr [ %i.baj, %.loopexit.i.i.i.i ], [ %.pre132.i.i.i.i, %._crit_edge._crit_edge129.i.i.i.i ] ; 3 uses
  %i.bbr = phi ptr [ %i.bak, %.loopexit.i.i.i.i ], [ %.pre130.i.i.i.i, %._crit_edge._crit_edge129.i.i.i.i ] ; 2 uses
  %.sroa.058.2.i.i.i.i = phi ptr [ %i.bbo, %.loopexit.i.i.i.i ], [ %.sroa.058.0.lcssa.i.i.i.i, %._crit_edge._crit_edge129.i.i.i.i ] ; 2 uses
  %.val2.i51.i.i.i.i = load ptr, ptr %.sroa.058.2.i.i.i.i, align 8, !tbaa !967 ; 2 uses
  %i.bbs = getelementptr i8, ptr %.val2.i51.i.i.i.i, i64 8
  %.val2.val.i52.i.i.i.i = load ptr, ptr %i.bbs, align 8, !tbaa !969 ; 3 uses
  %i.bbt = icmp eq i32 %i.bbp, 0
  br i1 %i.bbt, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bbu = add i32 %i.bbp, -1                     ; 2 uses
  %i.bbv = ptrtoint ptr %.val2.val.i52.i.i.i.i to i64
  %i.bbw = mul i64 %i.bbv, -4658895280553007687   ; 2 uses
  %i.bbx = lshr i64 %i.bbw, 31
  %i.bby = xor i64 %i.bbx, %i.bbw
  %i.bbz = trunc i64 %i.bby to i32
  %i.bca = and i32 %i.bbu, %i.bbz                 ; 3 uses
  %i.bcb = zext i32 %i.bca to i64                 ; 2 uses
  %i.bcc = lshr i64 %i.bcb, 5
  %i.bcd = getelementptr inbounds nuw [4 x i8], ptr %i.bbq, i64 %i.bcc
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !231
  %i.bcf = and i32 %i.bca, 31
  %i.bcg = lshr i32 %i.bce, %i.bcf
  %i.bch = trunc i32 %i.bcg to i1
  br i1 %i.bch, label %.lr.ph.i.i.i.i.i53.i.i.i.i, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.thread, !prof !529

.lr.ph.i.i.i.i.i53.i.i.i.i:                       ; preds = %bb.dx, %bb.dy
  %i.bci = phi i64 [ %i.bco, %bb.dy ], [ %i.bcb, %bb.dx ]
  %.03.i.i.i.i.i54.i.i.i.i = phi i32 [ %i.bcn, %bb.dy ], [ %i.bca, %bb.dx ]
  %i.bcj = getelementptr inbounds nuw [24 x i8], ptr %i.bbr, i64 %i.bci
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !854
  %i.bcl = icmp eq ptr %.val2.val.i52.i.i.i.i, %i.bck
  br i1 %i.bcl, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit, label %bb.dy, !prof !530

bb.dy:                                            ; preds = %.lr.ph.i.i.i.i.i53.i.i.i.i
  %i.bcm = add nuw i32 %.03.i.i.i.i.i54.i.i.i.i, 1
  %i.bcn = and i32 %i.bcm, %i.bbu                 ; 3 uses
  %i.bco = zext i32 %i.bcn to i64                 ; 2 uses
  %i.bcp = lshr i64 %i.bco, 5
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.bbq, i64 %i.bcp
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !231
  %i.bcs = and i32 %i.bcn, 31
  %i.bct = lshr i32 %i.bcr, %i.bcs
  %i.bcu = trunc i32 %i.bct to i1
  br i1 %i.bcu, label %.lr.ph.i.i.i.i.i53.i.i.i.i, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.thread, !prof !531

_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i38.i.i.i.i
  %i.bcv = getelementptr inbounds nuw i8, ptr %.sroa.058.0111.i.i.i.i, i64 48
  br label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit

_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4313: ; preds = %.lr.ph.i.i.i.i.i33.i.i.i.i
  %i.bcw = getelementptr inbounds nuw i8, ptr %.sroa.058.0111.i.i.i.i, i64 32
  br label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit

_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4314: ; preds = %.lr.ph.i.i.i.i.i28.i.i.i.i
  %i.bcx = getelementptr inbounds nuw i8, ptr %.sroa.058.0111.i.i.i.i, i64 16
  br label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit

_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i43.i.i.i.i, %.lr.ph.i.i.i.i.i48.i.i.i.i, %.lr.ph.i.i.i.i.i53.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i452, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4314, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4313, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit
  %i.bcy = phi i32 [ %i.aun, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4314 ], [ %i.aun, %.lr.ph.i.i.i.i.i.i.i.i.i452 ], [ %i.aun, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit ], [ %i.bbp, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %i.aun, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4313 ], [ %i.bai, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %i.aze, %.lr.ph.i.i.i.i.i43.i.i.i.i ] ; 3 uses
  %i.bcz = phi ptr [ %i.aum, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4314 ], [ %i.aum, %.lr.ph.i.i.i.i.i.i.i.i.i452 ], [ %i.aum, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit ], [ %i.bbq, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %i.aum, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4313 ], [ %i.baj, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %i.azd, %.lr.ph.i.i.i.i.i43.i.i.i.i ] ; 3 uses
  %i.bda = phi ptr [ %i.aul, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4314 ], [ %i.aul, %.lr.ph.i.i.i.i.i.i.i.i.i452 ], [ %i.aul, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit ], [ %i.bbr, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %i.aul, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4313 ], [ %i.bak, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %i.azc, %.lr.ph.i.i.i.i.i43.i.i.i.i ] ; 3 uses
  %.val.i.i453 = phi ptr [ %.val2.val.i2770.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4314 ], [ %.val2.val.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i452 ], [ %.val2.val.i3790.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit ], [ %.val2.val.i52.i.i.i.i, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %.val2.val.i3279.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4313 ], [ %.val2.val.i47.i.i.i.i, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %.val2.val.i42.i.i.i.i, %.lr.ph.i.i.i.i.i43.i.i.i.i ] ; 3 uses
  %.val284 = phi ptr [ %.val2.i2668.pn.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4314 ], [ %.val2.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i452 ], [ %.val2.i3688.pn.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit ], [ %.val2.i51.i.i.i.i, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %.val2.i3177.pn.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4313 ], [ %.val2.i46.i.i.i.i, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %.val2.i41.i.i.i.i, %.lr.ph.i.i.i.i.i43.i.i.i.i ]
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %i.bcx, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4314 ], [ %.sroa.058.0111.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i452 ], [ %i.bcv, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit ], [ %.sroa.058.2.i.i.i.i, %.lr.ph.i.i.i.i.i53.i.i.i.i ], [ %i.bcw, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.loopexit4313 ], [ %.sroa.058.1.i.i.i.i, %.lr.ph.i.i.i.i.i48.i.i.i.i ], [ %.sroa.058.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i43.i.i.i.i ]
  %.not2916 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.val380
  br i1 %.not2916, label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.thread, label %bb.dz

bb.dz:                                            ; preds = %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit
  %i.bdb = getelementptr inbounds nuw i8, ptr %.val284, i64 8
  %i.bdc = add i32 %i.bcy, -1                     ; 2 uses
  %i.bdd = ptrtoint ptr %.val.i.i453 to i64
  %i.bde = mul i64 %i.bdd, -4658895280553007687   ; 2 uses
  %i.bdf = lshr i64 %i.bde, 31
  %i.bdg = xor i64 %i.bdf, %i.bde
  %i.bdh = trunc i64 %i.bdg to i32
  %i.bdi = and i32 %i.bdc, %i.bdh                 ; 3 uses
  %i.bdj = zext i32 %i.bdi to i64                 ; 2 uses
  %i.bdk = getelementptr inbounds nuw [24 x i8], ptr %i.bda, i64 %i.bdj ; 2 uses
  %i.bdl = lshr i64 %i.bdj, 5
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %i.bcz, i64 %i.bdl
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !231
  %i.bdo = and i32 %i.bdi, 31
  %i.bdp = lshr i32 %i.bdn, %i.bdo
  %i.bdq = trunc i32 %i.bdp to i1
  br i1 %i.bdq, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !529

.lr.ph.i.i.i:                                     ; preds = %bb.dz, %bb.ea
  %i.bdr = phi ptr [ %i.bdx, %bb.ea ], [ %i.bdk, %bb.dz ] ; 3 uses
  %.05.i.i.i = phi i32 [ %i.bdv, %bb.ea ], [ %i.bdi, %bb.dz ]
  %i.bds = load ptr, ptr %i.bdr, align 8, !tbaa !854
  %i.bdt = icmp eq ptr %.val.i.i453, %i.bds
  br i1 %i.bdt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_EixERKS9_.exit.loopexit.a, label %bb.ea, !prof !530

bb.ea:                                            ; preds = %.lr.ph.i.i.i
  %i.bdu = add nuw i32 %.05.i.i.i, 1
  %i.bdv = and i32 %i.bdu, %i.bdc                 ; 3 uses
  %i.bdw = zext i32 %i.bdv to i64                 ; 2 uses
  %i.bdx = getelementptr inbounds nuw [24 x i8], ptr %i.bda, i64 %i.bdw ; 2 uses
  %i.bdy = lshr i64 %i.bdw, 5
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %i.bcz, i64 %i.bdy
  %i.bea = load i32, ptr %i.bdz, align 4, !tbaa !231
  %i.beb = and i32 %i.bdv, 31
  %i.bec = lshr i32 %i.bea, %i.beb
  %i.bed = trunc i32 %i.bec to i1
  br i1 %i.bed, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !531, !llvm.loop !167

.loopexit.i.i:                                    ; preds = %bb.ea, %bb.dz
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.bdk, %bb.dz ], [ %i.bdx, %bb.ea ]
  %.val6.i.i.i454 = load i32, ptr %i.op, align 8, !tbaa !1330
  %i.bee = shl i32 %.val6.i.i.i454, 2
  %i.bef = add i32 %i.bee, 4
  %i.beg = mul i32 %i.bcy, 3
  %.not.i.i.i = icmp ult i32 %i.bef, %i.beg
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit.i.i, label %bb.eb, !prof !530

bb.eb:                                            ; preds = %.loopexit.i.i
  %i.beh = shl i32 %i.bcy, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %22, i32 noundef %i.beh)
  %.val5.i.i.i = load ptr, ptr %i.bdb, align 8    ; 5 uses
  %i.bei = load ptr, ptr %22, align 8, !tbaa !1327, !noalias !8047 ; 5 uses
  %i.bej = load ptr, ptr %i.on, align 8, !tbaa !1328, !noalias !8047 ; 5 uses
  %i.bek = load i32, ptr %i.oo, align 4, !tbaa !1329, !noalias !8047 ; 2 uses
  %i.bel = icmp ne i32 %i.bek, 0
  call void @llvm.assume(i1 %i.bel)
  %i.bem = add i32 %i.bek, -1                     ; 2 uses
  %i.ben = ptrtoint ptr %.val5.i.i.i to i64
  %i.beo = mul i64 %i.ben, -4658895280553007687   ; 2 uses
  %i.bep = lshr i64 %i.beo, 31
  %i.beq = xor i64 %i.bep, %i.beo
  %i.ber = trunc i64 %i.beq to i32
  %i.bes = and i32 %i.bem, %i.ber                 ; 3 uses
  %i.bet = zext i32 %i.bes to i64                 ; 2 uses
  %i.beu = getelementptr inbounds nuw [24 x i8], ptr %i.bei, i64 %i.bet ; 2 uses
  %i.bev = lshr i64 %i.bet, 5
  %i.bew = getelementptr inbounds nuw [4 x i8], ptr %i.bej, i64 %i.bev
  %i.bex = load i32, ptr %i.bew, align 4, !tbaa !231
  %i.bey = and i32 %i.bes, 31
  %i.bez = lshr i32 %i.bex, %i.bey
  %i.bfa = trunc i32 %i.bez to i1
  br i1 %i.bfa, label %.lr.ph.i1398, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit.i.i, !prof !529

.lr.ph.i1398:                                     ; preds = %bb.eb, %bb.ec
  %i.bfb = phi ptr [ %i.bfh, %bb.ec ], [ %i.beu, %bb.eb ] ; 2 uses
  %.05.i = phi i32 [ %i.bff, %bb.ec ], [ %i.bes, %bb.eb ]
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !854
  %i.bfd = icmp eq ptr %.val5.i.i.i, %i.bfc
  br i1 %i.bfd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit.i.i, label %bb.ec, !prof !530

bb.ec:                                            ; preds = %.lr.ph.i1398
  %i.bfe = add nuw i32 %.05.i, 1
  %i.bff = and i32 %i.bfe, %i.bem                 ; 3 uses
  %i.bfg = zext i32 %i.bff to i64                 ; 2 uses
  %i.bfh = getelementptr inbounds nuw [24 x i8], ptr %i.bei, i64 %i.bfg ; 2 uses
  %i.bfi = lshr i64 %i.bfg, 5
  %i.bfj = getelementptr inbounds nuw [4 x i8], ptr %i.bej, i64 %i.bfi
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !231
  %i.bfl = and i32 %i.bff, 31
  %i.bfm = lshr i32 %i.bfk, %i.bfl
  %i.bfn = trunc i32 %i.bfm to i1
  br i1 %i.bfn, label %.lr.ph.i1398, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit.i.i, !prof !531, !llvm.loop !167

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit.i.i: ; preds = %bb.ec, %.lr.ph.i1398, %bb.eb, %.loopexit.i.i
  %i.bfo = phi ptr [ %.val.i.i453, %.loopexit.i.i ], [ %.val5.i.i.i, %bb.eb ], [ %.val5.i.i.i, %.lr.ph.i1398 ], [ %.val5.i.i.i, %bb.ec ]
  %.val7.i.i.i = phi ptr [ %i.bda, %.loopexit.i.i ], [ %i.bei, %bb.eb ], [ %i.bei, %.lr.ph.i1398 ], [ %i.bei, %bb.ec ]
  %.val4.i.i.i = phi ptr [ %i.bcz, %.loopexit.i.i ], [ %i.bej, %bb.eb ], [ %i.bej, %.lr.ph.i1398 ], [ %i.bej, %bb.ec ]
  %i.bfp = phi ptr [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ], [ %i.beu, %bb.eb ], [ %i.bfh, %bb.ec ], [ %i.bfb, %.lr.ph.i1398 ] ; 4 uses
  %i.bfq = ptrtoint ptr %i.bfp to i64
  %i.bfr = ptrtoint ptr %.val7.i.i.i to i64
  %i.bfs = sub i64 %i.bfq, %i.bfr
  %i.bft = sdiv exact i64 %i.bfs, 24              ; 2 uses
  %i.bfu = trunc i64 %i.bft to i32
  %i.bfv = and i32 %i.bfu, 31
  %i.bfw = shl nuw i32 1, %i.bfv
  %i.bfx = lshr i64 %i.bft, 5
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.bfx ; 2 uses
  %i.bfz = load i32, ptr %i.bfy, align 4, !tbaa !231
  %i.bga = or i32 %i.bfw, %i.bfz
  store i32 %i.bga, ptr %i.bfy, align 4, !tbaa !231
  %.val.i.i.i.i = load i32, ptr %i.op, align 8, !tbaa !1330
  %i.bgb = add i32 %.val.i.i.i.i, 1
  store i32 %i.bgb, ptr %i.op, align 8, !tbaa !1330
  store ptr %i.bfo, ptr %i.bfp, align 8, !tbaa !854
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfp, i64 8
  store ptr null, ptr %i.bgc, align 8, !tbaa !1315
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfp, i64 16
  store i32 0, ptr %i.bgd, align 8, !tbaa !979
  br label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.thread

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_EixERKS9_.exit.loopexit.a: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  %.val373.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1315
  %.phi.trans.insert3781 = getelementptr i8, ptr %i.bdr, i64 16
  %.val374.pre = load i32, ptr %.phi.trans.insert3781, align 8, !tbaa !979
  br label %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.thread

_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.thread: ; preds = %bb.dy, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_EixERKS9_.exit.loopexit.a, %bb.dw, %bb.dx, %._crit_edge.i.i.i.i, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit
  %37 = phi i1 [ true, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit.i.i ], [ false, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit ], [ false, %._crit_edge.i.i.i.i ], [ false, %bb.dx ], [ false, %bb.dw ], [ true, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_EixERKS9_.exit.loopexit.a ], [ false, %bb.dy ] ; 2 uses
  %.sroa.52775.0 = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit.i.i ], [ 0, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit ], [ 0, %._crit_edge.i.i.i.i ], [ 0, %bb.dx ], [ 0, %bb.dw ], [ %.val374.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_EixERKS9_.exit.loopexit.a ], [ 0, %bb.dy ]
  %.sroa.02774.0 = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E22findBucketForInsertionIS9_EEPSF_RKT_SJ_.exit.i.i ], [ null, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit ], [ null, %._crit_edge.i.i.i.i ], [ null, %bb.dx ], [ null, %bb.dw ], [ %.val373.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE11ContextNodeENS7_8FuncInfoENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_EixERKS9_.exit.loopexit.a ], [ null, %bb.dy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %i.bge = trunc nuw i64 %i.alm to i32            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %.val381 = load ptr, ptr %24, align 8
  %.val382 = load ptr, ptr %i.re, align 8, !tbaa !993 ; 2 uses
  %.val383 = load ptr, ptr %i.rg, align 8, !tbaa !993 ; 2 uses
  %.not68.i.i = icmp eq ptr %.val382, %.val383
  br i1 %.not68.i.i, label %_ZN12_GLOBAL__N_120CallsiteContextGraphINS_25IndexCallsiteContextGraphEN4llvm15FunctionSummaryENS_9IndexCallEE24cloneFunctionForCallsiteERNS5_8FuncInfoERNS5_8CallInfoERNS2_8DenseMapIS8_S8_NS2_12DenseMapInfoIS8_vEENS2_6detail12DenseMapPairIS8_S8_EEEERSt6vectorIS8_SaIS8_EEj.exit, label %.lr.ph.i.i456

.lr.ph.i.i456:                                    ; preds = %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.thread, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE8CallInfoES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_EixERKS8_.exit1418
  %.sroa.04.09.i.i = phi ptr [ %i.bkw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE8CallInfoES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_EixERKS8_.exit1418 ], [ %.val382, %_ZN4llvm7find_ifIRSt6vectorISt10shared_ptrIN12_GLOBAL__N_120CallsiteContextGraphINS3_25IndexCallsiteContextGraphENS_15FunctionSummaryENS3_9IndexCallEE11ContextEdgeEESaISA_EEZNS8_15assignFunctionsEvEUlRKSA_E0_EEDaOT_T0_.exit.thread ] ; 7 uses
  %.val17.i.i = load i64, ptr %.sroa.04.09.i.i, align 8 ; 2 uses
  %i.bgf = and i64 %.val17.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bgf, 0
  %i.bgg = and i64 %.val17.i.i, -5                ; 2 uses
  %i.bgh = inttoptr i64 %i.bgg to ptr             ; 6 uses
  %.not7.i.i = icmp eq i64 %i.bgg, 0
  %.not.i.i457 = or i1 %.not.i.i.i.i.i.i, %.not7.i.i
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgh, i64 8 ; 5 uses
  br i1 %.not.i.i457, label %bb.eg, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i.i456
  %i.bgj = load i64, ptr %i.bgi, align 8, !tbaa !233 ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgh, i64 16
  %i.bgl = load i64, ptr %i.bgk, align 8, !tbaa !8048
  %.not.i.i.i458 = icmp ult i64 %i.bgj, %i.bgl
  br i1 %.not.i.i.i458, label %bb.ef, label %bb.ee, !prof !530

bb.ee:                                            ; preds = %bb.ed
  call void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(24) %i.bgh, i8 noundef zeroext 0)
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.bgm = load ptr, ptr %i.bgh, align 8, !tbaa !234
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 %i.bgj
  store i8 0, ptr %i.bgn, align 1
  %i.bgo = load i64, ptr %i.bgi, align 8, !tbaa !233
  %i.bgp = add i64 %i.bgo, 1
  store i64 %i.bgp, ptr %i.bgi, align 8, !tbaa !233
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.i

bb.eg:                                            ; preds = %.lr.ph.i.i456
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgh, i64 16 ; 3 uses
  %i.bgr = load i32, ptr %i.bgq, align 8, !tbaa !230 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgh, i64 20
  %i.bgt = load i32, ptr %i.bgs, align 4, !tbaa !235
  %.not.i23.i.i = icmp ult i32 %i.bgr, %i.bgt
  br i1 %.not.i23.i.i, label %bb.ei, label %bb.eh, !prof !530

bb.eh:                                            ; preds = %bb.eg
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bgi, i32 noundef 0)
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.bgu = zext i32 %i.bgr to i64
  %i.bgv = load ptr, ptr %i.bgi, align 8, !tbaa !216
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bgu
  store i32 0, ptr %i.bgw, align 1
  %i.bgx = load i32, ptr %i.bgq, align 8, !tbaa !230
  %i.bgy = add i32 %i.bgx, 1
  store i32 %i.bgy, ptr %i.bgq, align 8, !tbaa !230
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.i: ; preds = %bb.ei, %bb.eh, %bb.ef, %bb.ee
  %.val15.i.i = load i64, ptr %.sroa.04.09.i.i, align 8 ; 3 uses
  %i.bgz = load ptr, ptr %27, align 8, !tbaa !1016, !noalias !8049 ; 3 uses
  %i.bha = load ptr, ptr %i.oq, align 8, !tbaa !1017, !noalias !8049 ; 3 uses
  %i.bhb = load i32, ptr %i.or, align 4, !tbaa !1018, !noalias !8049 ; 4 uses
  %i.bhc = icmp eq i32 %i.bhb, 0
  br i1 %i.bhc, label %.loopexit.i.i1401, label %bb.ej

bb.ej:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.i
  %i.bhd = add i32 %i.bhb, -1                     ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8
  %.val20.i.i.i1400 = load i32, ptr %i.bhe, align 8, !tbaa !231 ; 2 uses
  %i.bhf = mul i64 %.val15.i.i, -4658895280553007687 ; 2 uses
  %i.bhg = lshr i64 %i.bhf, 31
  %i.bhh = xor i64 %i.bhg, %i.bhf
  %i.bhi = mul i32 %.val20.i.i.i1400, 37
  %i.bhj = shl i64 %i.bhh, 32
  %i.bhk = zext i32 %i.bhi to i64
  %i.bhl = or disjoint i64 %i.bhj, %i.bhk
  %i.bhm = mul i64 %i.bhl, -4658895280553007687   ; 2 uses
  %i.bhn = lshr i64 %i.bhm, 31
  %i.bho = xor i64 %i.bhn, %i.bhm
  %i.bhp = trunc i64 %i.bho to i32
  %i.bhq = and i32 %i.bhd, %i.bhp                 ; 3 uses
  %i.bhr = zext i32 %i.bhq to i64                 ; 2 uses
  %i.bhs = getelementptr inbounds nuw [32 x i8], ptr %i.bgz, i64 %i.bhr ; 2 uses
  %i.bht = lshr i64 %i.bhr, 5
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %i.bha, i64 %i.bht
  %i.bhv = load i32, ptr %i.bhu, align 4, !tbaa !231
  %i.bhw = and i32 %i.bhq, 31
  %i.bhx = lshr i32 %i.bhv, %i.bhw
  %i.bhy = trunc i32 %i.bhx to i1
  br i1 %i.bhy, label %.lr.ph.i.i.i1413, label %.loopexit.i.i1401, !prof !529

.lr.ph.i.i.i1413:                                 ; preds = %bb.ej, %bb.ek
  %i.bhz = phi ptr [ %i.big, %bb.ek ], [ %i.bhs, %bb.ej ] ; 3 uses
  %.029.i.i.i1414 = phi i32 [ %i.bie, %bb.ek ], [ %i.bhq, %bb.ej ]
  %.val23.i.i.i1415 = load i64, ptr %i.bhz, align 8
  %i.bia = getelementptr i8, ptr %i.bhz, i64 8
  %.val24.i.i.i1416 = load i32, ptr %i.bia, align 8
  %i.bib = icmp eq i64 %.val15.i.i, %.val23.i.i.i1415
  %i.bic = icmp eq i32 %.val20.i.i.i1400, %.val24.i.i.i1416
  %spec.select.i.i.i.i1417 = select i1 %i.bib, i1 %i.bic, i1 false
  br i1 %spec.select.i.i.i.i1417, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE8CallInfoES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_EixERKS8_.exit1418, label %bb.ek, !prof !530

bb.ek:                                            ; preds = %.lr.ph.i.i.i1413
  %i.bid = add nuw i32 %.029.i.i.i1414, 1
  %i.bie = and i32 %i.bid, %i.bhd                 ; 3 uses
  %i.bif = zext i32 %i.bie to i64                 ; 2 uses
  %i.big = getelementptr inbounds nuw [32 x i8], ptr %i.bgz, i64 %i.bif ; 2 uses
  %i.bih = lshr i64 %i.bif, 5
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.bha, i64 %i.bih
  %i.bij = load i32, ptr %i.bii, align 4, !tbaa !231
  %i.bik = and i32 %i.bie, 31
  %i.bil = lshr i32 %i.bij, %i.bik
  %i.bim = trunc i32 %i.bil to i1
  br i1 %i.bim, label %.lr.ph.i.i.i1413, label %.loopexit.i.i1401, !prof !531, !llvm.loop !78

.loopexit.i.i1401:                                ; preds = %bb.ek, %bb.ej, %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.i
  %.lcssa33.sink.i.ph.i.i1402 = phi ptr [ %i.bhs, %bb.ej ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i.i ], [ %i.big, %bb.ek ]
  %.val5.i.i.i1403 = load i32, ptr %i.os, align 8, !tbaa !1019
  %i.bin = shl i32 %.val5.i.i.i1403, 2
  %i.bio = add i32 %i.bin, 4
  %i.bip = mul i32 %i.bhb, 3
  %.not.i.i.i1404 = icmp ult i32 %i.bio, %i.bip
  br i1 %.not.i.i.i1404, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE8CallInfoES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E22findBucketForInsertionIS8_EEPSD_RKT_SH_.exit.i.i1408, label %bb.el, !prof !530

bb.el:                                            ; preds = %.loopexit.i.i1401
  %i.biq = shl i32 %i.bhb, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE8CallInfoES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E4growEj(ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef %i.biq)
  %i.bir = load ptr, ptr %27, align 8, !tbaa !1016, !noalias !8050 ; 5 uses
  %i.bis = load ptr, ptr %i.oq, align 8, !tbaa !1017, !noalias !8050 ; 5 uses
  %i.bit = load i32, ptr %i.or, align 4, !tbaa !1018, !noalias !8050 ; 2 uses
  %i.biu = icmp ne i32 %i.bit, 0
  call void @llvm.assume(i1 %i.biu)
  %i.biv = add i32 %i.bit, -1                     ; 2 uses
  %.val.i2015 = load i64, ptr %.sroa.04.09.i.i, align 8 ; 2 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8
  %.val20.i2016 = load i32, ptr %i.biw, align 8, !tbaa !231 ; 2 uses
  %i.bix = mul i64 %.val.i2015, -4658895280553007687 ; 2 uses
  %i.biy = lshr i64 %i.bix, 31
  %i.biz = xor i64 %i.biy, %i.bix
  %i.bja = mul i32 %.val20.i2016, 37
  %i.bjb = shl i64 %i.biz, 32
  %i.bjc = zext i32 %i.bja to i64
  %i.bjd = or disjoint i64 %i.bjb, %i.bjc
  %i.bje = mul i64 %i.bjd, -4658895280553007687   ; 2 uses
  %i.bjf = lshr i64 %i.bje, 31
  %i.bjg = xor i64 %i.bjf, %i.bje
  %i.bjh = trunc i64 %i.bjg to i32
  %i.bji = and i32 %i.biv, %i.bjh                 ; 3 uses
  %i.bjj = zext i32 %i.bji to i64                 ; 2 uses
  %i.bjk = getelementptr inbounds nuw [32 x i8], ptr %i.bir, i64 %i.bjj ; 2 uses
  %i.bjl = lshr i64 %i.bjj, 5
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.bjl
  %i.bjn = load i32, ptr %i.bjm, align 4, !tbaa !231
  %i.bjo = and i32 %i.bji, 31
  %i.bjp = lshr i32 %i.bjn, %i.bjo
  %i.bjq = trunc i32 %i.bjp to i1
  br i1 %i.bjq, label %.lr.ph.i2019, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE8CallInfoES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E22findBucketForInsertionIS8_EEPSD_RKT_SH_.exit.i.i1408, !prof !529

.lr.ph.i2019:                                     ; preds = %bb.el, %bb.em
  %i.bjr = phi ptr [ %i.bjy, %bb.em ], [ %i.bjk, %bb.el ] ; 3 uses
  %.029.i2020 = phi i32 [ %i.bjw, %bb.em ], [ %i.bji, %bb.el ]
  %.val23.i2021 = load i64, ptr %i.bjr, align 8
  %i.bjs = getelementptr i8, ptr %i.bjr, i64 8
  %.val24.i2022 = load i32, ptr %i.bjs, align 8
  %i.bjt = icmp eq i64 %.val.i2015, %.val23.i2021
  %i.bju = icmp eq i32 %.val20.i2016, %.val24.i2022
  %spec.select.i.i2023 = select i1 %i.bjt, i1 %i.bju, i1 false
  br i1 %spec.select.i.i2023, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE8CallInfoES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E22findBucketForInsertionIS8_EEPSD_RKT_SH_.exit.i.i1408, label %bb.em, !prof !530

bb.em:                                            ; preds = %.lr.ph.i2019
  %i.bjv = add nuw i32 %.029.i2020, 1
  %i.bjw = and i32 %i.bjv, %i.biv                 ; 3 uses
  %i.bjx = zext i32 %i.bjw to i64                 ; 2 uses
  %i.bjy = getelementptr inbounds nuw [32 x i8], ptr %i.bir, i64 %i.bjx ; 2 uses
  %i.bjz = lshr i64 %i.bjx, 5
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.bjz
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !231
  %i.bkc = and i32 %i.bjw, 31
  %i.bkd = lshr i32 %i.bkb, %i.bkc
  %i.bke = trunc i32 %i.bkd to i1
  br i1 %i.bke, label %.lr.ph.i2019, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE8CallInfoES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E22findBucketForInsertionIS8_EEPSD_RKT_SH_.exit.i.i1408, !prof !531, !llvm.loop !78

_ZN4llvm12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_120CallsiteContextGraphINS2_25IndexCallsiteContextGraphENS_15FunctionSummaryENS2_9IndexCallEE8CallInfoES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E22findBucketForInsertionIS8_EEPSD_RKT_SH_.exit.i.i1408: ; preds = %bb.em, %.lr.ph.i2019, %bb.el, %.loopexit.i.i1401
  %.val6.i.i.i1409 = phi ptr [ %i.bgz, %.loopexit.i.i1401 ], [ %i.bir, %bb.el ], [ %i.bir, %.lr.ph.i2019 ], [ %i.bir, %bb.em ]
  %.val4.i.i.i1410 = phi ptr [ %i.bha, %.loopexit.i.i1401 ], [ %i.bis, %bb.el ], [ %i.bis, %.lr.ph.i2019 ], [ %i.bis, %bb.em ]
  %i.bkf = phi ptr [ %.lcssa33.sink.i.ph.i.i1402, %.loopexit.i.i1401 ], [ %i.bjk, %bb.el ], [ %i.bjy, %bb.em ], [ %i.bjr, %.lr.ph.i2019 ] ; 5 uses
  %i.bkg = ptrtoint ptr %i.bkf to i64
  %i.bkh = ptrtoint ptr %.val6.i.i.i1409 to i64
  %i.bki = sub i64 %i.bkg, %i.bkh
  %i.bkj = ashr exact i64 %i.bki, 5               ; 2 uses
  %i.bkk = trunc i64 %i.bkj to i32
  %i.bkl = and i32 %i.bkk, 31
  %i.bkm = shl nuw i32 1, %i.bkl
end_hunk_1
