Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86AsmParser?download=true
inline.NumInlined: 6472
inline.NumDeleted: 1192
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN12_GLOBAL__N_112X86AsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmRNS1_13FeatureBitsetEbj:bb.a
  %i.amd = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 %.idx826 ; 3 uses
  %.val.i.i = load i16, ptr %i.amd, align 4, !tbaa !1047
  %i.ame = zext i16 %.val.i.i to i64
  %i.amf = getelementptr inbounds nuw i8, ptr @_ZL13MnemonicTable, i64 %i.ame ; 2 uses
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !35
  %i.amh = sext i8 %i.amg to i64                  ; 4 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.313.0450, i64 %i.amh) ; 3 uses
  %i.ami = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ami, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amf, i64 1 ; 2 uses
  %i.amk = tail call i32 @memcmp(ptr noundef nonnull %i.amj, ptr noundef readonly %.sroa.0403.0448, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26
  %.fr.i.i.i.i.i.i = freeze i32 %i.amk            ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.thread.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i

.thread.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i
  %i.aml = icmp ugt i64 %.sroa.313.0450, %i.amh
  br i1 %i.aml, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i, label %.thread.i.i.i.i34.i.i

.thread.i.i.i.i.thread.i.i:                       ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.amm = icmp ugt i64 %.sroa.313.0450, %i.amh
  br i1 %i.amm, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.amn = icmp slt i32 %.fr.i.i.i.i.i.i, 0
  br i1 %i.amn, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i, %.thread.i.i.i.i.thread.i.i, %.thread.i.i.i.i.i.i
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amd, i64 20
  %i.amp = xor i64 %i.amc, -1
  %i.amq = add nsw i64 %.01322.i.i, %i.amp
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.thread15.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i, %.thread.i.i.i.i.thread.i.i
  %i.amr = tail call i32 @memcmp(ptr noundef readonly %.sroa.0403.0448, ptr noundef nonnull %i.amj, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26
  %.fr.i.i.i.i29.i.i = freeze i32 %i.amr          ; 2 uses
  %.not.not.i.i.i.i30.i.i = icmp eq i32 %.fr.i.i.i.i29.i.i, 0
  br i1 %.not.not.i.i.i.i30.i.i, label %.thread.i.i.i.i34.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i

.thread.i.i.i.i34.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i, %.thread.i.i.i.i.i.i
  %i.ams = icmp ult i64 %.sroa.313.0450, %i.amh
  br i1 %i.ams, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.thread15.i.i, label %.critedge.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i
  %i.amt = icmp slt i32 %.fr.i.i.i.i29.i.i, 0
  br i1 %i.amt, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.thread15.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i, %.thread.i.i.i.i34.i.i
  %.not825 = icmp eq i64 %i.amc, 0
  br i1 %.not825, label %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i
  %.04.i.i.i = phi i64 [ %.1.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i ], [ %i.amc, %.critedge.i.i ] ; 2 uses
  %.0113.i.i.i = phi ptr [ %.112.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i ], [ %.021.i.i, %.critedge.i.i ] ; 2 uses
  %i.amu = lshr i64 %.04.i.i.i, 1                 ; 3 uses
  %i.amv = getelementptr inbounds nuw [20 x i8], ptr %.0113.i.i.i, i64 %i.amu ; 2 uses
  %.val.i.i.i = load i16, ptr %i.amv, align 4, !tbaa !1047
  %i.amw = zext i16 %.val.i.i.i to i64
  %i.amx = getelementptr inbounds nuw i8, ptr @_ZL13MnemonicTable, i64 %i.amw ; 2 uses
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !35
  %i.amz = sext i8 %i.amy to i64                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.313.0450, i64 %i.amz) ; 2 uses
  %i.ana = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ana, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 1
  %i.anc = tail call i32 @memcmp(ptr noundef nonnull %i.anb, ptr noundef readonly %.sroa.0403.0448, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #26
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.anc          ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.and = icmp eq i64 %.sroa.313.0450, %i.amz
  br i1 %i.and, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i, label %bb.ni

bb.ni:                                            ; preds = %.thread.i.i.i.i.i.i.i
  %i.ane = icmp ugt i64 %.sroa.313.0450, %i.amz
  %i.anf = select i1 %i.ane, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i: ; preds = %bb.ni, %.thread.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %i.anf, %bb.ni ], [ 0, %.thread.i.i.i.i.i.i.i ]
  %i.ang = icmp slt i32 %.1.i.i.i.i.i.i.i, 0      ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amv, i64 20
  %i.ani = xor i64 %i.amu, -1
  %i.anj = add nsw i64 %.04.i.i.i, %i.ani
  %.112.i.i.i = select i1 %i.ang, ptr %i.anh, ptr %.0113.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.ang, i64 %i.anj, i64 %i.amu ; 2 uses
  %i.ank = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ank, label %.lr.ph.i.i.i, label %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i, !llvm.loop !1035

_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i, %.critedge.i.i
  %.011.lcssa.i.i.i = phi ptr [ %.021.i.i, %.critedge.i.i ], [ %.112.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i ] ; 3 uses
  %.idx = mul nuw nsw i64 %.01322.i.i, 20
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amd, i64 20 ; 2 uses
  %i.anm = add nuw nsw i64 %.idx826, 20
  %gepdiff = sub nsw i64 %.idx, %i.anm            ; 2 uses
  %i.ann = icmp sgt i64 %gepdiff, 0
  br i1 %i.ann, label %.lr.ph.preheader.i38.i.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit

.lr.ph.preheader.i38.i.i:                         ; preds = %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i
  %i.ano = udiv exact i64 %gepdiff, 20
  br label %.lr.ph.i39.i.i

.lr.ph.i39.i.i:                                   ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i, %.lr.ph.preheader.i38.i.i
  %.04.i40.i.i = phi i64 [ %.1.i52.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i ], [ %i.ano, %.lr.ph.preheader.i38.i.i ] ; 2 uses
  %.0113.i41.i.i = phi ptr [ %.112.i51.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i ], [ %i.anl, %.lr.ph.preheader.i38.i.i ] ; 2 uses
  %i.anp = lshr i64 %.04.i40.i.i, 1               ; 3 uses
  %i.anq = getelementptr inbounds nuw [20 x i8], ptr %.0113.i41.i.i, i64 %i.anp ; 2 uses
  %.val14.i.i.i = load i16, ptr %i.anq, align 4, !tbaa !1047
  %i.anr = zext i16 %.val14.i.i.i to i64
  %i.ans = getelementptr inbounds nuw i8, ptr @_ZL13MnemonicTable, i64 %i.anr ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !35
  %i.anu = sext i8 %i.ant to i64                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i44.i.i = tail call i64 @llvm.umin.i64(i64 %i.anu, i64 %.sroa.313.0450) ; 2 uses
  %i.anv = icmp eq i64 %.sroa.speculated.i.i.i.i.i44.i.i, 0
  br i1 %i.anv, label %.thread.i.i.i.i.i53.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i: ; preds = %.lr.ph.i39.i.i
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ans, i64 1
  %i.anx = tail call i32 @memcmp(ptr noundef readonly %.sroa.0403.0448, ptr noundef nonnull %i.anw, i64 noundef %.sroa.speculated.i.i.i.i.i44.i.i) #26
  %.fr.i.i.i.i.i46.i.i = freeze i32 %i.anx        ; 2 uses
  %.not.not.i.i.i.i.i47.i.i = icmp eq i32 %.fr.i.i.i.i.i46.i.i, 0
  %.inv.i.i.i.i.i48.i.i = icmp sgt i32 %.fr.i.i.i.i.i46.i.i, -1
  %spec.select.i.i.i.i.i49.i.i = select i1 %.inv.i.i.i.i.i48.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i47.i.i, label %.thread.i.i.i.i.i53.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i

.thread.i.i.i.i.i53.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i, %.lr.ph.i39.i.i
  %i.any = icmp eq i64 %.sroa.313.0450, %i.anu
  br i1 %i.any, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i, label %bb.nj

bb.nj:                                            ; preds = %.thread.i.i.i.i.i53.i.i
  %i.anz = icmp ult i64 %.sroa.313.0450, %i.anu
  %i.aoa = select i1 %i.anz, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i: ; preds = %bb.nj, %.thread.i.i.i.i.i53.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i
  %.1.i.i.i.i.i50.i.i = phi i32 [ %spec.select.i.i.i.i.i49.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i ], [ %i.aoa, %bb.nj ], [ 0, %.thread.i.i.i.i.i53.i.i ]
  %i.aob = icmp slt i32 %.1.i.i.i.i.i50.i.i, 0    ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anq, i64 20
  %i.aod = xor i64 %i.anp, -1
  %i.aoe = add nsw i64 %.04.i40.i.i, %i.aod
  %.112.i51.i.i = select i1 %i.aob, ptr %.0113.i41.i.i, ptr %i.aoc ; 2 uses
  %.1.i52.i.i = select i1 %i.aob, i64 %i.anp, i64 %i.aoe ; 2 uses
  %i.aof = icmp sgt i64 %.1.i52.i.i, 0
  br i1 %i.aof, label %.lr.ph.i39.i.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit, !llvm.loop !1036

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.thread15.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i, %.thread.i.i.i.i34.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i
  %.1.i.i = phi ptr [ %i.amo, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i ], [ %.021.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i ], [ %.021.i.i, %.thread.i.i.i.i34.i.i ]
  %.2.i.i = phi i64 [ %i.amq, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i ], [ %i.amc, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i ], [ %i.amc, %.thread.i.i.i.i34.i.i ] ; 2 uses
  %i.aog = icmp sgt i64 %.2.i.i, 0
  br i1 %i.aog, label %.lr.ph.i.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.thread, !llvm.loop !1037

_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i, %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i
  %.sroa.3.0.i.i = phi ptr [ %i.anl, %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i ], [ %.112.i51.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i ] ; 2 uses
  %i.aoh = icmp eq ptr %.011.lcssa.i.i.i, %.sroa.3.0.i.i
  br i1 %i.aoh, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit
  %i.aoi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aoj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.09.ptr.1.i166 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aok = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 114 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 74 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 37 uses
  br label %bb.nk

bb.nk:                                            ; preds = %.preheader, %.thread509
  %.0113689 = phi ptr [ %.011.lcssa.i.i.i, %.preheader ], [ %i.clx, %.thread509 ] ; 8 uses
  %.0121688 = phi i32 [ 0, %.preheader ], [ %.8.ph, %.thread509 ] ; 7 uses
  %.0127687 = phi i8 [ 0, %.preheader ], [ %.2129.ph, %.thread509 ] ; 4 uses
  %.0131686 = phi i1 [ false, %.preheader ], [ %.1132.ph, %.thread509 ] ; 6 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.0113689, i64 10
  %i.aoo = load i8, ptr %i.aon, align 2, !tbaa !1048
  %i.aop = zext i8 %i.aoo to i64
  %i.aoq = getelementptr inbounds nuw [48 x i8], ptr @_ZL14FeatureBitsets, i64 %i.aop ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !tbaa.struct !152
  %i.aor = load i64, ptr %i.aoq, align 16, !tbaa !51, !noalias !1049 ; 2 uses
  %i.aos = load i64, ptr %7, align 8, !tbaa !51, !alias.scope !1049
  %i.aot = and i64 %i.aos, %i.aor
  store i64 %i.aot, ptr %7, align 8, !tbaa !51, !alias.scope !1049
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aoi, i8 0, i64 40, i1 false)
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.aoq, i64 48)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.aou = getelementptr inbounds nuw i8, ptr %.0113689, i64 11
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %.thread
  %indvars.iv = phi i64 [ 0, %bb.nk ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.0106684 = phi i32 [ 1, %bb.nk ], [ %.4490, %.thread ] ; 8 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 %indvars.iv
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !35 ; 10 uses
  %i.aox = zext i8 %i.aow to i32                  ; 154 uses
  %i.aoy = zext i32 %.0106684 to i64              ; 5 uses
  %i.aoz = load i32, ptr %i.a, align 8, !tbaa !103
  %.not151 = icmp ugt i32 %i.aoz, %.0106684
  br i1 %.not151, label %bb.no, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  switch i8 %i.aow, label %bb.nn [
    i8 0, label %.thread492
    i8 1, label %.thread
  ]

bb.nn:                                            ; preds = %bb.nm
  %i.apa = zext i8 %i.aow to i64
  %i.apb = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.apa ; 3 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 4
  %i.apd = load i16, ptr %i.apc, align 4, !tbaa !1051
  %i.ape = zext i16 %i.apd to i32
  %i.apf = sub nsw i32 1, %i.ape                  ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apb, i64 6
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !1052
  %i.api = zext i16 %i.aph to i32
  %.not.i161 = icmp ult i32 %i.apf, %i.api
  br i1 %.not.i161, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit, label %.thread492.thread

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit: ; preds = %bb.nn
  %i.apj = load i32, ptr %i.apb, align 8, !tbaa !1053
  %i.apk = add i32 %i.apj, %i.apf                 ; 2 uses
  %i.apl = lshr i32 %i.apk, 3
  %i.apm = zext nneg i32 %i.apl to i64
  %i.apn = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.apm
  %i.apo = load i8, ptr %i.apn, align 1, !tbaa !35
  %i.app = zext i8 %i.apo to i32
  %i.apq = and i32 %i.apk, 7
  %i.apr = lshr i32 %i.app, %i.apq
  %i.aps = trunc i32 %i.apr to i1
  br i1 %i.aps, label %.thread, label %.thread492.thread

.thread492.thread:                                ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit, %bb.nn
  store i64 %i.aoy, ptr %3, align 8, !tbaa !51
  br label %.thread509

bb.no:                                            ; preds = %bb.nl
  %i.apt = load ptr, ptr %1, align 8, !tbaa !28
  %i.apu = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %i.aoy
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !143 ; 174 uses
  %i.apw = load ptr, ptr %i.aoj, align 8, !tbaa !1054 ; 2 uses
  %i.apx = icmp eq i8 %i.aow, 0
  br i1 %i.apx, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apv, i64 48 ; 2 uses
  %i.apz = load i32, ptr %i.apy, align 8, !tbaa !138 ; 62 uses
  %i.aqa = icmp eq i32 %i.apz, 0
  %i.aqb = icmp ult i8 %i.aow, 12
  %or.cond.i = select i1 %i.aqa, i1 %i.aqb, i1 false
  br i1 %or.cond.i, label %bb.nq, label %bb.oh

bb.nq:                                            ; preds = %bb.np
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !35 ; 14 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apv, i64 120
  %i.aqf = load i32, ptr %i.aqe, align 8, !tbaa !35
  switch i32 %i.aqf, label %bb.of [
    i32 1, label %bb.nr
    i32 3, label %bb.nu
    i32 5, label %bb.nv
    i32 6, label %bb.nw
    i32 7, label %bb.ob
  ]

bb.nr:                                            ; preds = %bb.nq
  %i.aqg = load i8, ptr %i.aqd, align 1, !tbaa !35
  switch i8 %i.aqg, label %bb.of [
    i8 42, label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i
    i8 123, label %bb.ns
    i8 125, label %bb.nt
  ]

bb.ns:                                            ; preds = %bb.nr
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i

bb.nt:                                            ; preds = %bb.nr
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i

bb.nu:                                            ; preds = %bb.nq
  %i.aqh = load i16, ptr %i.aqd, align 1
  %i.aqi = xor i16 %i.aqh, 31355
  %i.aqj = getelementptr i8, ptr %i.aqd, i64 2
  %i.aqk = load i8, ptr %i.aqj, align 1
  %i.aql = zext i8 %i.aqk to i16
  %i.aqm = xor i16 %i.aql, 125
  %i.aqn = or i16 %i.aqi, %i.aqm
  %i.aqo = icmp ne i16 %i.aqn, 0
  %i.aqp = zext i1 %i.aqo to i32
  %.not13.i.i = icmp eq i32 %i.aqp, 0
  br i1 %.not13.i.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i, label %bb.of

bb.nv:                                            ; preds = %bb.nq
  %i.aqq = load i32, ptr %i.aqd, align 1
  %i.aqr = xor i32 %i.aqq, 1700885371
  %i.aqs = getelementptr i8, ptr %i.aqd, i64 4
  %i.aqt = load i8, ptr %i.aqs, align 1
  %i.aqu = zext i8 %i.aqt to i32
  %i.aqv = xor i32 %i.aqu, 125
  %i.aqw = or i32 %i.aqr, %i.aqv
  %i.aqx = icmp ne i32 %i.aqw, 0
  %i.aqy = zext i1 %i.aqx to i32
  %.not11.i.i = icmp eq i32 %i.aqy, 0
  br i1 %.not11.i.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i, label %bb.of

bb.nw:                                            ; preds = %bb.nq
  %i.aqz = load i32, ptr %i.aqd, align 1
  %i.ara = icmp ne i32 %i.aqz, 1869885819
  %i.arb = zext i1 %i.ara to i32
  %.not6.i.i = icmp eq i32 %i.arb, 0
  br i1 %.not6.i.i, label %bb.nx, label %bb.of

bb.nx:                                            ; preds = %bb.nw
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqd, i64 4
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !35
  switch i8 %i.ard, label %bb.of [
    i8 50, label %bb.ny
    i8 52, label %bb.nz
    i8 56, label %bb.oa
  ]

bb.ny:                                            ; preds = %bb.nx
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqd, i64 5
  %i.arf = load i8, ptr %i.are, align 1, !tbaa !35
  %.not9.i.i = icmp eq i8 %i.arf, 125
  br i1 %.not9.i.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i, label %bb.of

bb.nz:                                            ; preds = %bb.nx
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqd, i64 5
  %i.arh = load i8, ptr %i.arg, align 1, !tbaa !35
  %.not8.i.i = icmp eq i8 %i.arh, 125
  br i1 %.not8.i.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i, label %bb.of

bb.oa:                                            ; preds = %bb.nx
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqd, i64 5
  %i.arj = load i8, ptr %i.ari, align 1, !tbaa !35
  %.not7.i.i = icmp eq i8 %i.arj, 125
  br i1 %.not7.i.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i, label %bb.of

bb.ob:                                            ; preds = %bb.nq
  %i.ark = load i32, ptr %i.aqd, align 1
  %i.arl = icmp ne i32 %i.ark, 1869885819
  %i.arm = zext i1 %i.arl to i32
  %.not.i.i = icmp eq i32 %i.arm, 0
  br i1 %.not.i.i, label %bb.oc, label %bb.of

bb.oc:                                            ; preds = %bb.ob
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqd, i64 4
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !35
  switch i8 %i.aro, label %bb.of [
    i8 49, label %bb.od
    i8 51, label %bb.oe
  ]

bb.od:                                            ; preds = %bb.oc
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aqd, i64 5
  %i.arq = load i16, ptr %i.arp, align 1
  %i.arr = icmp ne i16 %i.arq, 32054
  %i.ars = zext i1 %i.arr to i32
  %.not4.i.i = icmp eq i32 %i.ars, 0
  br i1 %.not4.i.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i, label %bb.of

bb.oe:                                            ; preds = %bb.oc
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqd, i64 5
  %i.aru = load i16, ptr %i.art, align 1
  %i.arv = icmp ne i16 %i.aru, 32050
  %i.arw = zext i1 %i.arv to i32
  %.not2.i.i = icmp eq i32 %i.arw, 0
  br i1 %.not2.i.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i, label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.od, %bb.oc, %bb.ob, %bb.oa, %bb.nz, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nr, %bb.nq
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i

_ZL16matchTokenStringN4llvm9StringRefE.exit.i:    ; preds = %bb.of, %bb.oe, %bb.od, %bb.oa, %bb.nz, %bb.ny, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr
  %.0.i.i = phi i32 [ 0, %bb.of ], [ 4, %bb.od ], [ 3, %bb.ns ], [ 11, %bb.nt ], [ 2, %bb.nr ], [ 10, %bb.nu ], [ 9, %bb.nv ], [ 5, %bb.ny ], [ 7, %bb.nz ], [ 8, %bb.oa ], [ 6, %bb.oe ] ; 2 uses
  %i.arx = icmp eq i32 %.0.i.i, %i.aox
  br i1 %i.arx, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %bb.og

bb.og:                                            ; preds = %_ZL16matchTokenStringN4llvm9StringRefE.exit.i
  %i.ary = zext nneg i32 %.0.i.i to i64
  %i.arz = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.ary ; 3 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 4
  %i.asb = load i16, ptr %i.asa, align 4, !tbaa !1051
  %i.asc = zext i16 %i.asb to i32
  %i.asd = sub nsw i32 %i.aox, %i.asc             ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arz, i64 6
  %i.asf = load i16, ptr %i.ase, align 2, !tbaa !1052
  %i.asg = zext i16 %i.asf to i32
  %.not.i279.i = icmp ult i32 %i.asd, %i.asg
  br i1 %.not.i279.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i: ; preds = %bb.og
  %i.ash = load i32, ptr %i.arz, align 8, !tbaa !1053
  %i.asi = add i32 %i.ash, %i.asd                 ; 2 uses
  %i.asj = lshr i32 %i.asi, 3
  %i.ask = zext nneg i32 %i.asj to i64
  %i.asl = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.ask
  %i.asm = load i8, ptr %i.asl, align 1, !tbaa !35
  %i.asn = zext i8 %i.asm to i32
  %i.aso = and i32 %i.asi, 7
  %i.asp = lshr i32 %i.asn, %i.aso
  %.fr.i = freeze i32 %i.asp
  %i.asq = trunc i32 %.fr.i to i1
  br i1 %i.asq, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

bb.oh:                                            ; preds = %bb.np
  switch i8 %i.aow, label %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i [
    i8 -119, label %bb.oi
    i8 -118, label %bb.oj
    i8 -117, label %bb.ol
    i8 -116, label %bb.oo
    i8 -115, label %bb.or
    i8 -114, label %bb.ot
    i8 -113, label %bb.ou
    i8 -112, label %bb.ow
    i8 -111, label %bb.oy
    i8 -110, label %bb.pa
    i8 -109, label %bb.pc
    i8 -108, label %bb.pe
    i8 -107, label %bb.pg
    i8 -106, label %bb.pi
    i8 -105, label %bb.pk
    i8 -104, label %bb.pl
    i8 -103, label %bb.pn
    i8 -102, label %bb.pq
    i8 -101, label %bb.pr
    i8 -100, label %bb.pw
    i8 -99, label %bb.qb
    i8 -98, label %bb.qg
    i8 -97, label %bb.ql
    i8 -96, label %bb.qn
    i8 -95, label %bb.qo
    i8 -94, label %bb.qp
    i8 -93, label %bb.qq
    i8 -92, label %bb.qr
    i8 -91, label %bb.qs
    i8 -90, label %bb.qt
    i8 -89, label %bb.qu
    i8 -88, label %bb.qv
    i8 -87, label %bb.qw
    i8 -86, label %bb.qx
    i8 -85, label %bb.qy
    i8 -84, label %bb.rc
    i8 -83, label %bb.rg
    i8 -82, label %bb.rk
    i8 -81, label %bb.ro
    i8 -80, label %bb.rp
    i8 -79, label %bb.rq
    i8 -78, label %bb.rr
    i8 -77, label %bb.rs
    i8 -76, label %bb.rt
    i8 -75, label %bb.ru
    i8 -74, label %bb.rx
    i8 -73, label %bb.ry
    i8 -72, label %bb.sb
    i8 -71, label %bb.sc
    i8 -70, label %bb.sd
    i8 -69, label %bb.sg
    i8 -68, label %bb.sh
    i8 -67, label %bb.si
    i8 -66, label %bb.sj
    i8 -65, label %bb.sk
    i8 -64, label %bb.sn
    i8 -63, label %bb.so
    i8 -62, label %bb.sr
    i8 -61, label %bb.ss
    i8 -60, label %bb.st
    i8 -59, label %bb.su
    i8 -58, label %bb.sv
  ]

bb.oi:                                            ; preds = %bb.oh
  %i.asr = icmp eq i32 %i.apz, 2
  br i1 %i.asr, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.oj:                                            ; preds = %bb.oh
  %i.ass = icmp eq i32 %i.apz, 2
  br i1 %i.ass, label %bb.ok, label %.sink.split

bb.ok:                                            ; preds = %bb.oj
  %i.ast = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !35 ; 2 uses
  %i.asv = load i8, ptr %i.asu, align 8, !tbaa !99
  %.not.i281.i = icmp eq i8 %i.asv, 1
  br i1 %.not.i281.i, label %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.i:   ; preds = %bb.ok
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asu, i64 16
  %i.asx = load i64, ptr %i.asw, align 8, !tbaa !164
  %i.asy = add i64 %i.asx, 128
  %i.asz = icmp ult i64 %i.asy, 256
  br i1 %i.asz, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.ol:                                            ; preds = %bb.oh
  %i.ata = icmp eq i32 %i.apz, 2
  br i1 %i.ata, label %bb.om, label %.sink.split

bb.om:                                            ; preds = %bb.ol
  %i.atb = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !35 ; 2 uses
  %i.atd = load i8, ptr %i.atc, align 8, !tbaa !99
  %.not.i377 = icmp eq i8 %i.atd, 1
  br i1 %.not.i377, label %bb.on, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.on:                                            ; preds = %bb.om
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atc, i64 16
  %i.atf = load i64, ptr %i.ate, align 8, !tbaa !164 ; 3 uses
  %i.atg = add i64 %i.atf, 128
  %i.ath = icmp ult i64 %i.atg, 256
  br i1 %i.ath, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %8

8:                                                ; preds = %bb.on
  %9 = icmp ult i64 %i.atf, 65536
  br i1 %9, label %_ZNK4llvm10X86Operand14isImmSExti16i8Ev.exit, label %.sink.split

_ZNK4llvm10X86Operand14isImmSExti16i8Ev.exit:     ; preds = %8
  %sext.i.i378 = shl nuw i64 %i.atf, 48
  %10 = ashr exact i64 %sext.i.i378, 48
  %11 = add nsw i64 %10, 128
  %12 = icmp ult i64 %11, 256
  br i1 %12, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.oo:                                            ; preds = %bb.oh
  %i.ati = icmp eq i32 %i.apz, 2
  br i1 %i.ati, label %bb.op, label %.sink.split

bb.op:                                            ; preds = %bb.oo
  %i.atj = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !35 ; 2 uses
  %i.atl = load i8, ptr %i.atk, align 8, !tbaa !99
  %.not.i375 = icmp eq i8 %i.atl, 1
  br i1 %.not.i375, label %bb.oq, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.oq:                                            ; preds = %bb.op
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atk, i64 16
  %i.atn = load i64, ptr %i.atm, align 8, !tbaa !164 ; 3 uses
  %i.ato = add i64 %i.atn, 128
  %i.atp = icmp ult i64 %i.ato, 256
  br i1 %i.atp, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %13

13:                                               ; preds = %bb.oq
  %14 = icmp ult i64 %i.atn, 4294967296
  br i1 %14, label %_ZNK4llvm10X86Operand14isImmSExti32i8Ev.exit, label %.sink.split

_ZNK4llvm10X86Operand14isImmSExti32i8Ev.exit:     ; preds = %13
  %sext.i.i = shl nuw i64 %i.atn, 32
  %15 = ashr exact i64 %sext.i.i, 32
  %16 = add nsw i64 %15, 128
  %17 = icmp ult i64 %16, 256
  br i1 %17, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.or:                                            ; preds = %bb.oh
  %i.atq = icmp eq i32 %i.apz, 2
  br i1 %i.atq, label %bb.os, label %.sink.split

bb.os:                                            ; preds = %bb.or
  %i.atr = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !35 ; 2 uses
  %i.att = load i8, ptr %i.ats, align 8, !tbaa !99
  %.not.i286.i = icmp eq i8 %i.att, 1
  br i1 %.not.i286.i, label %_ZNK4llvm10X86Operand15isImmSExti64i32Ev.exit.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

_ZNK4llvm10X86Operand15isImmSExti64i32Ev.exit.i:  ; preds = %bb.os
  %i.atu = getelementptr inbounds nuw i8, ptr %i.ats, i64 16
  %i.atv = load i64, ptr %i.atu, align 8, !tbaa !164
  %i.atw = add i64 %i.atv, 2147483648
  %i.atx = icmp ult i64 %i.atw, 4294967296
  br i1 %i.atx, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.ot:                                            ; preds = %bb.oh
  %i.aty = icmp eq i32 %i.apz, 2
  br i1 %i.aty, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.ou:                                            ; preds = %bb.oh
  %i.atz = icmp eq i32 %i.apz, 2
  br i1 %i.atz, label %bb.ov, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

bb.ov:                                            ; preds = %bb.ou
  %i.aua = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !35 ; 2 uses
  %i.auc = load i8, ptr %i.aub, align 8, !tbaa !99
  %.not.i290.i = icmp eq i8 %i.auc, 1
  br i1 %.not.i290.i, label %_ZNK4llvm10X86Operand15isImmUnsignedi4Ev.exit.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

_ZNK4llvm10X86Operand15isImmUnsignedi4Ev.exit.i:  ; preds = %bb.ov
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aub, i64 16
  %i.aue = load i64, ptr %i.aud, align 8, !tbaa !164
  %i.auf = icmp ult i64 %i.aue, 16
  br i1 %i.auf, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

bb.ow:                                            ; preds = %bb.oh
  %i.aug = icmp eq i32 %i.apz, 2
  br i1 %i.aug, label %bb.ox, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

bb.ox:                                            ; preds = %bb.ow
  %i.auh = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !35 ; 2 uses
  %i.auj = load i8, ptr %i.aui, align 8, !tbaa !99
  %.not.i293.i = icmp eq i8 %i.auj, 1
  br i1 %.not.i293.i, label %_ZNK4llvm10X86Operand15isImmUnsignedi6Ev.exit.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

_ZNK4llvm10X86Operand15isImmUnsignedi6Ev.exit.i:  ; preds = %bb.ox
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %i.aul = load i64, ptr %i.auk, align 8, !tbaa !164
  %i.aum = icmp ult i64 %i.aul, 64
  br i1 %i.aum, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

bb.oy:                                            ; preds = %bb.oh
  %i.aun = icmp eq i32 %i.apz, 2
  br i1 %i.aun, label %bb.oz, label %.sink.split

bb.oz:                                            ; preds = %bb.oy
  %i.auo = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !35 ; 2 uses
  %i.auq = load i8, ptr %i.aup, align 8, !tbaa !99
  %.not.i296.i = icmp eq i8 %i.auq, 1
  br i1 %.not.i296.i, label %_ZNK4llvm10X86Operand15isImmUnsignedi8Ev.exit.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

_ZNK4llvm10X86Operand15isImmUnsignedi8Ev.exit.i:  ; preds = %bb.oz
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aup, i64 16
  %i.aus = load i64, ptr %i.aur, align 8, !tbaa !164
  %i.aut = add i64 %i.aus, 128
  %i.auu = icmp ult i64 %i.aut, 384
  br i1 %i.auu, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.pa:                                            ; preds = %bb.oh
  %i.auv = icmp eq i32 %i.apz, 1
  br i1 %i.auv, label %bb.pb, label %.sink.split

bb.pb:                                            ; preds = %bb.pa
  %i.auw = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 11) #22 ; 3 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i.i372 = load i32, ptr %i.aux, align 8, !tbaa !61 ; 2 uses
  %i.auy = lshr i32 %.sroa.0.0.copyload.i.i372, 3 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auw, i64 18
  %i.ava = load i16, ptr %i.auz, align 2, !tbaa !33
  %i.avb = zext i16 %i.ava to i32
  %.not.i.i373 = icmp samesign ult i32 %i.auy, %i.avb
  br i1 %.not.i.i373, label %_ZNK4llvm10X86Operand10isVK16PairEv.exit, label %.sink.split

_ZNK4llvm10X86Operand10isVK16PairEv.exit:         ; preds = %bb.pb
  %i.avc = and i32 %.sroa.0.0.copyload.i.i372, 7
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auw, i64 4
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !34
  %i.avf = zext i32 %i.ave to i64
  %i.avg = getelementptr inbounds nuw i8, ptr %i.auw, i64 %i.avf
  %i.avh = zext nneg i32 %i.auy to i64
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avg, i64 %i.avh
  %i.avj = load i8, ptr %i.avi, align 1, !tbaa !35
  %i.avk = zext i8 %i.avj to i32
  %i.avl = shl nuw nsw i32 1, %i.avc
  %i.avm = and i32 %i.avl, %i.avk
  %.not657 = icmp eq i32 %i.avm, 0
  br i1 %.not657, label %.sink.split, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.pc:                                            ; preds = %bb.oh
  %i.avn = icmp eq i32 %i.apz, 1
  br i1 %i.avn, label %bb.pd, label %.sink.split

bb.pd:                                            ; preds = %bb.pc
  %i.avo = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 10) #22 ; 3 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i.i369 = load i32, ptr %i.avp, align 8, !tbaa !61 ; 2 uses
  %i.avq = lshr i32 %.sroa.0.0.copyload.i.i369, 3 ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avo, i64 18
  %i.avs = load i16, ptr %i.avr, align 2, !tbaa !33
  %i.avt = zext i16 %i.avs to i32
  %.not.i.i370 = icmp samesign ult i32 %i.avq, %i.avt
  br i1 %.not.i.i370, label %_ZNK4llvm10X86Operand9isVK1PairEv.exit, label %.sink.split

_ZNK4llvm10X86Operand9isVK1PairEv.exit:           ; preds = %bb.pd
  %i.avu = and i32 %.sroa.0.0.copyload.i.i369, 7
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avo, i64 4
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !34
  %i.avx = zext i32 %i.avw to i64
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avo, i64 %i.avx
  %i.avz = zext nneg i32 %i.avq to i64
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avy, i64 %i.avz
  %i.awb = load i8, ptr %i.awa, align 1, !tbaa !35
  %i.awc = zext i8 %i.awb to i32
  %i.awd = shl nuw nsw i32 1, %i.avu
  %i.awe = and i32 %i.awd, %i.awc
  %.not656 = icmp eq i32 %i.awe, 0
  br i1 %.not656, label %.sink.split, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.pe:                                            ; preds = %bb.oh
  %i.awf = icmp eq i32 %i.apz, 1
  br i1 %i.awf, label %bb.pf, label %.sink.split

bb.pf:                                            ; preds = %bb.pe
  %i.awg = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 12) #22 ; 3 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i.i366 = load i32, ptr %i.awh, align 8, !tbaa !61 ; 2 uses
  %i.awi = lshr i32 %.sroa.0.0.copyload.i.i366, 3 ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awg, i64 18
  %i.awk = load i16, ptr %i.awj, align 2, !tbaa !33
  %i.awl = zext i16 %i.awk to i32
  %.not.i.i367 = icmp samesign ult i32 %i.awi, %i.awl
  br i1 %.not.i.i367, label %_ZNK4llvm10X86Operand9isVK2PairEv.exit, label %.sink.split

_ZNK4llvm10X86Operand9isVK2PairEv.exit:           ; preds = %bb.pf
  %i.awm = and i32 %.sroa.0.0.copyload.i.i366, 7
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awg, i64 4
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !34
  %i.awp = zext i32 %i.awo to i64
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awg, i64 %i.awp
  %i.awr = zext nneg i32 %i.awi to i64
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awq, i64 %i.awr
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !35
  %i.awu = zext i8 %i.awt to i32
  %i.awv = shl nuw nsw i32 1, %i.awm
  %i.aww = and i32 %i.awv, %i.awu
  %.not655 = icmp eq i32 %i.aww, 0
  br i1 %.not655, label %.sink.split, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.pg:                                            ; preds = %bb.oh
  %i.awx = icmp eq i32 %i.apz, 1
  br i1 %i.awx, label %bb.ph, label %.sink.split

bb.ph:                                            ; preds = %bb.pg
  %i.awy = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 13) #22 ; 3 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i.i363 = load i32, ptr %i.awz, align 8, !tbaa !61 ; 2 uses
  %i.axa = lshr i32 %.sroa.0.0.copyload.i.i363, 3 ; 2 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awy, i64 18
  %i.axc = load i16, ptr %i.axb, align 2, !tbaa !33
  %i.axd = zext i16 %i.axc to i32
  %.not.i.i364 = icmp samesign ult i32 %i.axa, %i.axd
  br i1 %.not.i.i364, label %_ZNK4llvm10X86Operand9isVK4PairEv.exit, label %.sink.split

_ZNK4llvm10X86Operand9isVK4PairEv.exit:           ; preds = %bb.ph
  %i.axe = and i32 %.sroa.0.0.copyload.i.i363, 7
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awy, i64 4
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !34
  %i.axh = zext i32 %i.axg to i64
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awy, i64 %i.axh
  %i.axj = zext nneg i32 %i.axa to i64
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axi, i64 %i.axj
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !35
  %i.axm = zext i8 %i.axl to i32
  %i.axn = shl nuw nsw i32 1, %i.axe
  %i.axo = and i32 %i.axn, %i.axm
  %.not654 = icmp eq i32 %i.axo, 0
  br i1 %.not654, label %.sink.split, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.pi:                                            ; preds = %bb.oh
  %i.axp = icmp eq i32 %i.apz, 1
  br i1 %i.axp, label %bb.pj, label %.sink.split

bb.pj:                                            ; preds = %bb.pi
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112X86AsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmRNS1_13FeatureBitsetEbj:bb.a
  %i.bpb = select i1 %i.box, i1 %spec.select.i.i184, i1 false
  br i1 %i.bpb, label %bb.se, label %.sink.split

bb.se:                                            ; preds = %bb.sd
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.apv, i64 128 ; 2 uses
  %.sroa.0.0.copyload.i.i185 = load i32, ptr %i.bpc, align 8, !tbaa !61
  %.not.i186 = icmp eq i32 %.sroa.0.0.copyload.i.i185, 0
  br i1 %.not.i186, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bpd = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 7) #22 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load i32, ptr %i.bpc, align 8, !tbaa !61 ; 2 uses
  %i.bpe = lshr i32 %.sroa.0.0.copyload.i2.i, 3   ; 2 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpd, i64 18
  %i.bpg = load i16, ptr %i.bpf, align 2, !tbaa !33
  %i.bph = zext i16 %i.bpg to i32
  %.not.i.i187 = icmp samesign ult i32 %i.bpe, %i.bph
  br i1 %.not.i.i187, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, label %.sink.split

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i: ; preds = %bb.sf
  %i.bpi = and i32 %.sroa.0.0.copyload.i2.i, 7
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpd, i64 4
  %i.bpk = load i32, ptr %i.bpj, align 4, !tbaa !34
  %i.bpl = zext i32 %i.bpk to i64
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpd, i64 %i.bpl
  %i.bpn = zext nneg i32 %i.bpe to i64
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpm, i64 %i.bpn
  %i.bpp = load i8, ptr %i.bpo, align 1, !tbaa !35
  %i.bpq = zext i8 %i.bpp to i32
  %i.bpr = shl nuw nsw i32 1, %i.bpi
  %i.bps = and i32 %i.bpr, %i.bpq
  %.not4.i = icmp eq i32 %i.bps, 0
  br i1 %.not4.i, label %.sink.split, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.sg:                                            ; preds = %bb.oh
  %i.bpt = tail call noundef zeroext i1 @_ZNK4llvm10X86Operand13isMem512_GR32Ev(ptr noundef nonnull align 8 dereferenceable(160) %i.apv)
  br i1 %i.bpt, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sh:                                            ; preds = %bb.oh
  %i.bpu = tail call noundef zeroext i1 @_ZNK4llvm10X86Operand13isMem512_GR64Ev(ptr noundef nonnull align 8 dereferenceable(160) %i.apv)
  br i1 %i.bpu, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.si:                                            ; preds = %bb.oh
  %i.bpv = icmp eq i32 %i.apz, 3
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bpx = load i32, ptr %i.bpw, align 8
  %i.bpy = and i32 %i.bpx, -65
  %spec.select.i355.i = icmp eq i32 %i.bpy, 0
  %i.bpz = select i1 %i.bpv, i1 %spec.select.i355.i, i1 false
  br i1 %i.bpz, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sj:                                            ; preds = %bb.oh
  %i.bqa = icmp eq i32 %i.apz, 3
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bqc = load i32, ptr %i.bqb, align 8
  %i.bqd = and i32 %i.bqc, -65
  %spec.select.i.i357.i = icmp eq i32 %i.bqd, 0
  %i.bqe = select i1 %i.bqa, i1 %spec.select.i.i357.i, i1 false
  br i1 %i.bqe, label %_ZNK4llvm10X86Operand13isMem64_RC128Ev.exit.i, label %.sink.split

_ZNK4llvm10X86Operand13isMem64_RC128Ev.exit.i:    ; preds = %bb.sj
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %i.bqg = load i32, ptr %i.bqf, align 8, !tbaa !60
  %i.bqh = add i32 %i.bqg, -135
  %spec.select.i1.i358.i = icmp ult i32 %i.bqh, 16
  br i1 %spec.select.i1.i358.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sk:                                            ; preds = %bb.oh
  %i.bqi = icmp eq i32 %i.apz, 3
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bqk = load i32, ptr %i.bqj, align 8
  %i.bql = and i32 %i.bqk, -65
  %spec.select.i.i360.i = icmp eq i32 %i.bql, 0
  %i.bqm = select i1 %i.bqi, i1 %spec.select.i.i360.i, i1 false
  br i1 %i.bqm, label %bb.sl, label %.sink.split

bb.sl:                                            ; preds = %bb.sk
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i361.i = load i32, ptr %i.bqn, align 8, !tbaa !61 ; 3 uses
  %i.bqo = icmp ugt i32 %.sroa.0.0.copyload.i361.i, 134
  br i1 %i.bqo, label %bb.sm, label %.sink.split

bb.sm:                                            ; preds = %bb.sl
  %i.bqp = icmp ult i32 %.sroa.0.0.copyload.i361.i, 151
  %i.bqq = add i32 %.sroa.0.0.copyload.i361.i, -215
  %spec.select.i1.i362.i = icmp ult i32 %i.bqq, 16
  %or.cond501.i = or i1 %i.bqp, %spec.select.i1.i362.i
  br i1 %or.cond501.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sn:                                            ; preds = %bb.oh
  %i.bqr = icmp eq i32 %i.apz, 3
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bqt = load i32, ptr %i.bqs, align 8
  %i.bqu = and i32 %i.bqt, -65
  %spec.select.i.i364.i = icmp eq i32 %i.bqu, 0
  %i.bqv = select i1 %i.bqr, i1 %spec.select.i.i364.i, i1 false
  br i1 %i.bqv, label %_ZNK4llvm10X86Operand13isMem64_RC256Ev.exit.i, label %.sink.split

_ZNK4llvm10X86Operand13isMem64_RC256Ev.exit.i:    ; preds = %bb.sn
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %i.bqx = load i32, ptr %i.bqw, align 8, !tbaa !60
  %i.bqy = add i32 %i.bqx, -191
  %spec.select.i1.i365.i = icmp ult i32 %i.bqy, 16
  br i1 %spec.select.i1.i365.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.so:                                            ; preds = %bb.oh
  %i.bqz = icmp eq i32 %i.apz, 3
  %i.bra = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.brb = load i32, ptr %i.bra, align 8
  %i.brc = and i32 %i.brb, -65
  %spec.select.i.i367.i = icmp eq i32 %i.brc, 0
  %i.brd = select i1 %i.bqz, i1 %spec.select.i.i367.i, i1 false
  br i1 %i.brd, label %bb.sp, label %.sink.split

bb.sp:                                            ; preds = %bb.so
  %i.bre = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i368.i = load i32, ptr %i.bre, align 8, !tbaa !61 ; 3 uses
  %i.brf = icmp ugt i32 %.sroa.0.0.copyload.i368.i, 190
  br i1 %i.brf, label %bb.sq, label %.sink.split

bb.sq:                                            ; preds = %bb.sp
  %i.brg = icmp ult i32 %.sroa.0.0.copyload.i368.i, 207
  %i.brh = add i32 %.sroa.0.0.copyload.i368.i, -231
  %spec.select.i1.i369.i = icmp ult i32 %i.brh, 16
  %or.cond502.i = or i1 %i.brg, %spec.select.i1.i369.i
  br i1 %or.cond502.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sr:                                            ; preds = %bb.oh
  %i.bri = icmp eq i32 %i.apz, 3
  %i.brj = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.brk = load i32, ptr %i.brj, align 8
  %i.brl = and i32 %i.brk, -65
  %spec.select.i.i371.i = icmp eq i32 %i.brl, 0
  %i.brm = select i1 %i.bri, i1 %spec.select.i.i371.i, i1 false
  br i1 %i.brm, label %_ZNK4llvm10X86Operand13isMem64_RC512Ev.exit.i, label %.sink.split

_ZNK4llvm10X86Operand13isMem64_RC512Ev.exit.i:    ; preds = %bb.sr
  %i.brn = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i372.i = load i32, ptr %i.brn, align 8, !tbaa !61
  %i.bro = add i32 %.sroa.0.0.copyload.i372.i, -247
  %spec.select.i1.i373.i = icmp ult i32 %i.bro, 32
  br i1 %spec.select.i1.i373.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.ss:                                            ; preds = %bb.oh
  %i.brp = icmp eq i32 %i.apz, 3
  br i1 %i.brp, label %_ZNK4llvm10X86Operand7isMem80Ev.exit.i, label %.sink.split

_ZNK4llvm10X86Operand7isMem80Ev.exit.i:           ; preds = %bb.ss
  %i.brq = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.brr = load i32, ptr %i.brq, align 8, !tbaa !35
  switch i32 %i.brr, label %.sink.split [
    i32 80, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i
    i32 0, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i
  ]

bb.st:                                            ; preds = %bb.oh
  %i.brs = icmp eq i32 %i.apz, 3
  %i.brt = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bru = load i32, ptr %i.brt, align 8
  %i.brv = and i32 %i.bru, -9
  %spec.select.i378.i = icmp eq i32 %i.brv, 0
  %i.brw = select i1 %i.brs, i1 %spec.select.i378.i, i1 false
  br i1 %i.brw, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.su:                                            ; preds = %bb.oh
  %i.brx = icmp eq i32 %i.apz, 3
  br i1 %i.brx, label %_ZNK4llvm10X86Operand8isSibMemEv.exit.i, label %.sink.split

_ZNK4llvm10X86Operand8isSibMemEv.exit.i:          ; preds = %bb.su
  %i.bry = getelementptr inbounds nuw i8, ptr %i.apv, i64 128
  %i.brz = load i32, ptr %i.bry, align 8, !tbaa !60
  switch i32 %i.brz, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i [
    i32 58, label %.sink.split
    i32 29, label %.sink.split
  ]

bb.sv:                                            ; preds = %bb.oh
  %i.bsa = icmp eq i32 %i.apz, 3
  br i1 %i.bsa, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i: ; preds = %bb.oh
  %i.bsb = icmp eq i32 %i.apz, 1
  %i.bsc = add i8 %i.aow, 124
  %i.bsd = icmp ult i8 %i.bsc, 5
  %or.cond66.i = select i1 %i.bsb, i1 %i.bsd, i1 false
  br i1 %or.cond66.i, label %bb.sw, label %bb.sx

bb.sw:                                            ; preds = %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i
  %i.bse = load ptr, ptr %i.apw, align 8, !tbaa !20
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bse, i64 40
  %i.bsg = load ptr, ptr %i.bsf, align 8
  %i.bsh = tail call noundef i32 %i.bsg(ptr noundef nonnull align 8 dereferenceable(320) %i.apw, i32 noundef 2) #22, !inline_history !1040
  %i.bsi = zext i32 %i.bsh to i64
  %i.bsj = getelementptr inbounds nuw [20 x i8], ptr @_ZZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoEE26RegClassByHwModeMatchTable, i64 %i.bsi
  %i.bsk = zext i8 %i.aow to i64
  %i.bsl = getelementptr [4 x i8], ptr %i.bsj, i64 %i.bsk
  %i.bsm = getelementptr i8, ptr %i.bsl, i64 -528
  %i.bsn = load i32, ptr %i.bsm, align 4, !tbaa !35
  br label %.sink.split

.sink.split:                                      ; preds = %bb.sf, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, %bb.sd, %bb.ro, %bb.rl, %bb.rm, %bb.rn, %bb.rk, %bb.rh, %bb.ri, %bb.rj, %bb.rg, %bb.rd, %bb.re, %bb.rf, %bb.rc, %bb.qz, %bb.ra, %bb.rb, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qt, %bb.qs, %bb.qr, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qh, %bb.qi, %bb.qj, %bb.qk, %bb.qg, %bb.qc, %bb.qd, %bb.qe, %bb.qf, %bb.qb, %bb.px, %bb.py, %bb.pz, %bb.qa, %bb.pw, %bb.ps, %bb.pt, %bb.pu, %bb.pv, %bb.pr, %bb.pn, %bb.po, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i, %bb.pl, %bb.pj, %bb.pi, %bb.ph, %bb.pg, %bb.pf, %bb.pe, %bb.pd, %bb.pc, %bb.pb, %bb.pa, %13, %bb.oo, %8, %bb.ol, %bb.oi, %bb.oj, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.i, %_ZNK4llvm10X86Operand14isImmSExti16i8Ev.exit, %_ZNK4llvm10X86Operand14isImmSExti32i8Ev.exit, %bb.or, %_ZNK4llvm10X86Operand15isImmSExti64i32Ev.exit.i, %bb.ot, %bb.oy, %_ZNK4llvm10X86Operand15isImmUnsignedi8Ev.exit.i, %_ZNK4llvm10X86Operand10isVK16PairEv.exit, %_ZNK4llvm10X86Operand9isVK1PairEv.exit, %_ZNK4llvm10X86Operand9isVK2PairEv.exit, %_ZNK4llvm10X86Operand9isVK4PairEv.exit, %_ZNK4llvm10X86Operand9isVK8PairEv.exit, %bb.pk, %_ZNK4llvm10X86Operand12isGR32orGR64Ev.exit, %_ZNK4llvm10X86Operand9isAbsMem8Ev.exit, %bb.pq, %_ZNK4llvm10X86Operand10isDstIdx16Ev.exit, %_ZNK4llvm10X86Operand10isDstIdx32Ev.exit, %_ZNK4llvm10X86Operand10isDstIdx64Ev.exit, %_ZNK4llvm10X86Operand9isDstIdx8Ev.exit, %_ZNK4llvm10X86Operand16isMemConstOffs64Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs16_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs16_32Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs16_8Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_32Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_64Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs32_8Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_32Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_64Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs64_8Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx16Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx32Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx64Ev.exit, %_ZNK4llvm10X86Operand9isSrcIdx8Ev.exit, %_ZNK4llvm10X86Operand8isAbsMemEv.exit, %bb.rp, %bb.rq, %bb.rr, %bb.rs, %bb.rt, %_ZNK4llvm10X86Operand13isMem32_RC128Ev.exit.i, %bb.ru, %bb.rv, %bb.rw, %bb.rx, %_ZNK4llvm10X86Operand13isMem32_RC256Ev.exit.i, %bb.ry, %bb.rz, %bb.sa, %bb.sb, %_ZNK4llvm10X86Operand13isMem32_RC512Ev.exit.i, %bb.sc, %bb.sg, %bb.sh, %bb.si, %bb.sj, %_ZNK4llvm10X86Operand13isMem64_RC128Ev.exit.i, %bb.sk, %bb.sl, %bb.sm, %bb.sn, %_ZNK4llvm10X86Operand13isMem64_RC256Ev.exit.i, %bb.so, %bb.sp, %bb.sq, %bb.sr, %_ZNK4llvm10X86Operand13isMem64_RC512Ev.exit.i, %bb.ss, %_ZNK4llvm10X86Operand7isMem80Ev.exit.i, %bb.st, %bb.su, %_ZNK4llvm10X86Operand8isSibMemEv.exit.i, %_ZNK4llvm10X86Operand8isSibMemEv.exit.i, %bb.sv, %bb.sw
  %.0213.i.ph = phi i32 [ %i.bsn, %bb.sw ], [ %i.aox, %bb.sv ], [ %i.aox, %_ZNK4llvm10X86Operand8isSibMemEv.exit.i ], [ %i.aox, %_ZNK4llvm10X86Operand8isSibMemEv.exit.i ], [ %i.aox, %bb.su ], [ %i.aox, %bb.st ], [ %i.aox, %_ZNK4llvm10X86Operand7isMem80Ev.exit.i ], [ %i.aox, %bb.ss ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem64_RC512Ev.exit.i ], [ %i.aox, %bb.sr ], [ %i.aox, %bb.sq ], [ %i.aox, %bb.sp ], [ %i.aox, %bb.so ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem64_RC256Ev.exit.i ], [ %i.aox, %bb.sn ], [ %i.aox, %bb.sm ], [ %i.aox, %bb.sl ], [ %i.aox, %bb.sk ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem64_RC128Ev.exit.i ], [ %i.aox, %bb.sj ], [ %i.aox, %bb.si ], [ %i.aox, %bb.sh ], [ %i.aox, %bb.sg ], [ %i.aox, %bb.sc ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem32_RC512Ev.exit.i ], [ %i.aox, %bb.sb ], [ %i.aox, %bb.sa ], [ %i.aox, %bb.rz ], [ %i.aox, %bb.ry ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem32_RC256Ev.exit.i ], [ %i.aox, %bb.rx ], [ %i.aox, %bb.rw ], [ %i.aox, %bb.rv ], [ %i.aox, %bb.ru ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem32_RC128Ev.exit.i ], [ %i.aox, %bb.rt ], [ %i.aox, %bb.rs ], [ %i.aox, %bb.rr ], [ %i.aox, %bb.rq ], [ %i.aox, %bb.rp ], [ %i.aox, %_ZNK4llvm10X86Operand8isAbsMemEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand9isSrcIdx8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isSrcIdx64Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isSrcIdx32Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isSrcIdx16Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand13isMemOffs64_8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs64_64Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs64_32Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs64_16Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand13isMemOffs32_8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs32_64Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs32_32Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs32_16Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand13isMemOffs16_8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs16_32Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs16_16Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand16isMemConstOffs64Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand9isDstIdx8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isDstIdx64Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isDstIdx32Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isDstIdx16Ev.exit ], [ %i.aox, %bb.pq ], [ %i.aox, %_ZNK4llvm10X86Operand9isAbsMem8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand12isGR32orGR64Ev.exit ], [ %i.aox, %bb.pk ], [ %i.aox, %_ZNK4llvm10X86Operand9isVK8PairEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand9isVK4PairEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand9isVK2PairEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand9isVK1PairEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isVK16PairEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand15isImmUnsignedi8Ev.exit.i ], [ %i.aox, %bb.oy ], [ %i.aox, %bb.ot ], [ %i.aox, %_ZNK4llvm10X86Operand15isImmSExti64i32Ev.exit.i ], [ %i.aox, %bb.or ], [ %i.aox, %_ZNK4llvm10X86Operand14isImmSExti32i8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isImmSExti16i8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.i ], [ %i.aox, %bb.oj ], [ %i.aox, %bb.oi ], [ %i.aox, %bb.ol ], [ %i.aox, %8 ], [ %i.aox, %bb.oo ], [ %i.aox, %13 ], [ %i.aox, %bb.pa ], [ %i.aox, %bb.pb ], [ %i.aox, %bb.pc ], [ %i.aox, %bb.pd ], [ %i.aox, %bb.pe ], [ %i.aox, %bb.pf ], [ %i.aox, %bb.pg ], [ %i.aox, %bb.ph ], [ %i.aox, %bb.pi ], [ %i.aox, %bb.pj ], [ %i.aox, %bb.pl ], [ %i.aox, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i ], [ %i.aox, %bb.po ], [ %i.aox, %bb.pn ], [ %i.aox, %bb.pr ], [ %i.aox, %bb.pv ], [ %i.aox, %bb.pu ], [ %i.aox, %bb.pt ], [ %i.aox, %bb.ps ], [ %i.aox, %bb.pw ], [ %i.aox, %bb.qa ], [ %i.aox, %bb.pz ], [ %i.aox, %bb.py ], [ %i.aox, %bb.px ], [ %i.aox, %bb.qb ], [ %i.aox, %bb.qf ], [ %i.aox, %bb.qe ], [ %i.aox, %bb.qd ], [ %i.aox, %bb.qc ], [ %i.aox, %bb.qg ], [ %i.aox, %bb.qk ], [ %i.aox, %bb.qj ], [ %i.aox, %bb.qi ], [ %i.aox, %bb.qh ], [ %i.aox, %bb.ql ], [ %i.aox, %bb.qm ], [ %i.aox, %bb.qn ], [ %i.aox, %bb.qo ], [ %i.aox, %bb.qp ], [ %i.aox, %bb.qq ], [ %i.aox, %bb.qr ], [ %i.aox, %bb.qs ], [ %i.aox, %bb.qt ], [ %i.aox, %bb.qu ], [ %i.aox, %bb.qv ], [ %i.aox, %bb.qw ], [ %i.aox, %bb.qx ], [ %i.aox, %bb.qy ], [ %i.aox, %bb.rb ], [ %i.aox, %bb.ra ], [ %i.aox, %bb.qz ], [ %i.aox, %bb.rc ], [ %i.aox, %bb.rf ], [ %i.aox, %bb.re ], [ %i.aox, %bb.rd ], [ %i.aox, %bb.rg ], [ %i.aox, %bb.rj ], [ %i.aox, %bb.ri ], [ %i.aox, %bb.rh ], [ %i.aox, %bb.rk ], [ %i.aox, %bb.rn ], [ %i.aox, %bb.rm ], [ %i.aox, %bb.rl ], [ %i.aox, %bb.ro ], [ %i.aox, %bb.sd ], [ %i.aox, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i ], [ %i.aox, %bb.sf ]
  %i.bso = load i32, ptr %i.apy, align 8, !tbaa !138
  br label %bb.sx

bb.sx:                                            ; preds = %.sink.split, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i
  %i.bsp = phi i32 [ %i.apz, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i ], [ %i.bso, %.sink.split ]
  %.0213.i = phi i32 [ %i.aox, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i ], [ %.0213.i.ph, %.sink.split ] ; 2 uses
  %i.bsq = icmp eq i32 %i.bsp, 1
  br i1 %i.bsq, label %bb.sy, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

bb.sy:                                            ; preds = %bb.sx
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i383.i = load i32, ptr %i.bsr, align 8, !tbaa !61 ; 2 uses
  %i.bss = add i32 %.sroa.0.0.copyload.i383.i, -1
  %i.bst = icmp ult i32 %i.bss, 1073741823
  br i1 %i.bst, label %bb.sz, label %bb.ta

bb.sz:                                            ; preds = %bb.sy
  %i.bsu = zext nneg i32 %.sroa.0.0.copyload.i383.i to i64
  %i.bsv = getelementptr inbounds nuw [2 x i8], ptr @_ZZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoEE5Table, i64 %i.bsu
  %i.bsw = load i16, ptr %i.bsv, align 2, !tbaa !420
  %i.bsx = zext i16 %i.bsw to i32
  br label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %bb.sy
  %i.bsy = phi i32 [ %i.bsx, %bb.sz ], [ 0, %bb.sy ] ; 2 uses
  %i.bsz = icmp eq i32 %i.bsy, %.0213.i
  br i1 %i.bsz, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.bta = zext nneg i32 %i.bsy to i64
  %i.btb = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.bta ; 3 uses
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 4
  %i.btd = load i16, ptr %i.btc, align 4, !tbaa !1051
  %i.bte = zext i16 %i.btd to i32
  %i.btf = sub nsw i32 %.0213.i, %i.bte           ; 2 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btb, i64 6
  %i.bth = load i16, ptr %i.btg, align 2, !tbaa !1052
  %i.bti = zext i16 %i.bth to i32
  %.not.i384.i = icmp ult i32 %i.btf, %i.bti
  br i1 %.not.i384.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit386.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit386.i: ; preds = %bb.tb
  %i.btj = load i32, ptr %i.btb, align 8, !tbaa !1053
  %i.btk = add i32 %i.btj, %i.btf                 ; 2 uses
  %i.btl = lshr i32 %i.btk, 3
  %i.btm = zext nneg i32 %i.btl to i64
  %i.btn = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.btm
  %i.bto = load i8, ptr %i.btn, align 1, !tbaa !35
  %i.btp = zext i8 %i.bto to i32
  %i.btq = and i32 %i.btk, 7
  %i.btr = lshr i32 %i.btp, %i.btq
  %i.bts = trunc i32 %i.btr to i1
  br i1 %i.bts, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i: ; preds = %bb.pp, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i357, %bb.oq, %bb.op, %bb.on, %bb.om, %_ZL16matchTokenStringN4llvm9StringRefE.exit.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i, %bb.sv, %bb.ta, %bb.sm, %bb.sq, %bb.oi, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.i, %_ZNK4llvm10X86Operand14isImmSExti16i8Ev.exit, %_ZNK4llvm10X86Operand14isImmSExti32i8Ev.exit, %_ZNK4llvm10X86Operand15isImmSExti64i32Ev.exit.i, %bb.ot, %bb.ok, %_ZNK4llvm10X86Operand15isImmUnsignedi8Ev.exit.i, %_ZNK4llvm10X86Operand10isVK16PairEv.exit, %_ZNK4llvm10X86Operand9isVK1PairEv.exit, %_ZNK4llvm10X86Operand9isVK2PairEv.exit, %_ZNK4llvm10X86Operand9isVK4PairEv.exit, %_ZNK4llvm10X86Operand9isVK8PairEv.exit, %bb.pk, %_ZNK4llvm10X86Operand12isGR32orGR64Ev.exit, %_ZNK4llvm10X86Operand9isAbsMem8Ev.exit, %bb.pq, %_ZNK4llvm10X86Operand10isDstIdx16Ev.exit, %_ZNK4llvm10X86Operand10isDstIdx32Ev.exit, %_ZNK4llvm10X86Operand10isDstIdx64Ev.exit, %_ZNK4llvm10X86Operand9isDstIdx8Ev.exit, %_ZNK4llvm10X86Operand16isMemConstOffs64Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs16_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs16_32Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs16_8Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_32Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_64Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs32_8Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_32Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_64Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs64_8Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx16Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx32Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx64Ev.exit, %_ZNK4llvm10X86Operand9isSrcIdx8Ev.exit, %_ZNK4llvm10X86Operand8isAbsMemEv.exit, %bb.rp, %bb.rq, %bb.rr, %bb.rs, %_ZNK4llvm10X86Operand13isMem32_RC128Ev.exit.i, %_ZNK4llvm10X86Operand13isMem32_RC256Ev.exit.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit386.i, %_ZNK4llvm10X86Operand13isMem32_RC512Ev.exit.i, %bb.sc, %bb.sg, %bb.sh, %bb.si, %_ZNK4llvm10X86Operand13isMem64_RC128Ev.exit.i, %_ZNK4llvm10X86Operand13isMem64_RC256Ev.exit.i, %bb.sa, %_ZNK4llvm10X86Operand13isMem64_RC512Ev.exit.i, %_ZNK4llvm10X86Operand7isMem80Ev.exit.i, %_ZNK4llvm10X86Operand7isMem80Ev.exit.i, %bb.st, %_ZNK4llvm10X86Operand8isSibMemEv.exit.i, %_ZNK4llvm10X86Operand15isImmUnsignedi4Ev.exit.i, %_ZNK4llvm10X86Operand15isImmUnsignedi6Ev.exit.i, %bb.os, %bb.oz, %bb.rw, %bb.se, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i
  %i.btt = add nuw i32 %.0106684, 1
  br label %.thread

_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit: ; preds = %bb.tb, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit386.i, %bb.ow, %bb.ox, %_ZNK4llvm10X86Operand15isImmUnsignedi6Ev.exit.i, %bb.ou, %bb.ov, %_ZNK4llvm10X86Operand15isImmUnsignedi4Ev.exit.i, %bb.sx, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i, %bb.og, %bb.no
  %.62.i = phi i32 [ 0, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i ], [ 0, %bb.sx ], [ 7, %bb.ou ], [ 8, %bb.ow ], [ 0, %bb.no ], [ 0, %bb.og ], [ 7, %_ZNK4llvm10X86Operand15isImmUnsignedi4Ev.exit.i ], [ 7, %bb.ov ], [ 8, %_ZNK4llvm10X86Operand15isImmUnsignedi6Ev.exit.i ], [ 8, %bb.ox ], [ 0, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit386.i ], [ 0, %bb.tb ]
  %i.btu = load ptr, ptr %0, align 8, !tbaa !20
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 104
  %i.btw = load ptr, ptr %i.btv, align 8
  %i.btx = tail call noundef i32 %i.btw(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.apv, i32 noundef %i.aox) #22 ; 3 uses
  %.not152 = icmp eq i32 %i.btx, 4
  %i.bty = add nuw i32 %.0106684, 1
  br i1 %.not152, label %.thread, label %bb.tc

bb.tc:                                            ; preds = %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit
  %i.btz = icmp ne i32 %i.btx, 0
  %or.cond = and i1 %.not9.i.i.i.i.i, %i.btz
  %spec.select = select i1 %or.cond, i32 %i.btx, i32 %.62.i ; 3 uses
  %i.bua = icmp eq i32 %spec.select, 0
  br i1 %i.bua, label %bb.td, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165.thread482

bb.td:                                            ; preds = %bb.tc
  %i.bub = icmp eq i8 %i.aow, 1
  br i1 %i.bub, label %.thread, label %bb.te

bb.te:                                            ; preds = %bb.td
  %i.buc = zext i8 %i.aow to i64
  %i.bud = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.buc ; 3 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 4
  %i.buf = load i16, ptr %i.bue, align 4, !tbaa !1051
  %i.bug = zext i16 %i.buf to i32
  %i.buh = sub nsw i32 1, %i.bug                  ; 2 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %i.bud, i64 6
  %i.buj = load i16, ptr %i.bui, align 2, !tbaa !1052
  %i.buk = zext i16 %i.buj to i32
  %.not.i163 = icmp ult i32 %i.buh, %i.buk
  br i1 %.not.i163, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165.thread482

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165: ; preds = %bb.te
  %i.bul = load i32, ptr %i.bud, align 8, !tbaa !1053
  %i.bum = add i32 %i.bul, %i.buh                 ; 2 uses
  %i.bun = lshr i32 %i.bum, 3
  %i.buo = zext nneg i32 %i.bun to i64
  %i.bup = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.buo
  %i.buq = load i8, ptr %i.bup, align 1, !tbaa !35
  %i.bur = zext i8 %i.buq to i32
  %i.bus = and i32 %i.bum, 7
  %i.but = lshr i32 %i.bur, %i.bus
  %i.buu = trunc i32 %i.but to i1
  br i1 %i.buu, label %.thread, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165.thread482

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165.thread482: ; preds = %bb.te, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165, %bb.tc
  %i.buv = trunc nuw i8 %.0127687 to i1
  br i1 %i.buv, label %.thread509, label %bb.tf

bb.tf:                                            ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165.thread482
  %i.buw = icmp eq ptr %.0113689, %.011.lcssa.i.i.i
  br i1 %i.buw, label %bb.th, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.bux = load i64, ptr %3, align 8, !tbaa !51
  %.not153 = icmp ugt i64 %i.bux, %i.aoy
  br i1 %.not153, label %.thread509, label %bb.th

bb.th:                                            ; preds = %bb.tg, %bb.tf
  br i1 %.not9.i.i.i.i.i, label %bb.ti, label %bb.tj

bb.ti:                                            ; preds = %bb.th
  %i.buy = load i64, ptr %3, align 8, !tbaa !51
  %i.buz = icmp ne i64 %i.buy, %i.aoy
  %i.bva = icmp ne i32 %spec.select, 0
  %or.cond6 = or i1 %i.bva, %i.buz
  %spec.select157 = select i1 %or.cond6, i32 %spec.select, i32 %.0121688
  br label %bb.tj

bb.tj:                                            ; preds = %bb.ti, %bb.th
  %.2123 = phi i32 [ %.0121688, %bb.th ], [ %spec.select157, %bb.ti ]
  store i64 %i.aoy, ptr %3, align 8, !tbaa !51
  br label %.thread509

.thread:                                          ; preds = %bb.nm, %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit, %bb.td, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit
  %.4490 = phi i32 [ %.0106684, %bb.nm ], [ %.0106684, %bb.td ], [ %.0106684, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit ], [ %i.btt, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i ], [ %.0106684, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165 ], [ %i.bty, %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not150 = icmp eq i64 %indvars.iv.next, 9
  br i1 %.not150, label %.thread492, label %bb.nl, !llvm.loop !1041

.thread492:                                       ; preds = %.thread, %bb.nm
  br i1 %.not9.i.i.i.i.i, label %bb.tm, label %bb.tk

bb.tk:                                            ; preds = %.thread492
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8
  %i.bvb = xor i64 %.sroa.0.0.copyload, -1
  %i.bvc = and i64 %i.aor, %i.bvb                 ; 2 uses
  %i.bvd = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bvc)
  %i.bve = load <6 x i64>, ptr %4, align 8, !tbaa !51
  %i.bvf = tail call range(i64 0, 65) <6 x i64> @llvm.ctpop.v6i64(<6 x i64> %i.bve)
  %i.bvg = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %i.bvf)
  %.not154 = icmp samesign ugt i64 %i.bvd, %i.bvg
  br i1 %.not154, label %.thread509, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  store i64 %i.bvc, ptr %4, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.ptr.1.i166, i8 0, i64 40, i1 false)
  br label %.thread509

bb.tm:                                            ; preds = %.thread492
  store i32 0, ptr %i.aok, align 8, !tbaa !103
  %i.bvh = getelementptr inbounds nuw i8, ptr %.0113689, i64 4 ; 2 uses
  %i.bvi = load i32, ptr %i.bvh, align 4, !tbaa !1055
  store i32 %i.bvi, ptr %2, align 8, !tbaa !165
  %i.bvj = load ptr, ptr %0, align 8, !tbaa !20
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvj, i64 112
  %i.bvl = load ptr, ptr %i.bvk, align 8
  %i.bvm = tail call noundef i32 %i.bvl(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(16) %1) #22 ; 2 uses
  %.not155 = icmp eq i32 %i.bvm, 4
  br i1 %.not155, label %bb.to, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  store i32 0, ptr %i.aok, align 8, !tbaa !103
  br label %.thread509

bb.to:                                            ; preds = %bb.tm
  %i.bvn = getelementptr inbounds nuw i8, ptr %.0113689, i64 8
  %i.bvo = load i16, ptr %i.bvn, align 4, !tbaa !1056 ; 2 uses
  br i1 %5, label %bb.tp, label %bb.ts

bb.tp:                                            ; preds = %bb.to
  %i.bvp = getelementptr inbounds nuw i8, ptr %.0113689, i64 8
  %i.bvq = zext i16 %i.bvo to i32
  %i.bvr = load ptr, ptr %0, align 8, !tbaa !20
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 128
  %i.bvt = load ptr, ptr %i.bvs, align 8
  tail call void %i.bvt(ptr noundef nonnull align 8 dereferenceable(130) %0, i32 noundef %i.bvq, ptr noundef nonnull align 8 dereferenceable(16) %1) #22
  %i.bvu = load i16, ptr %i.bvp, align 4, !tbaa !1056
  %i.bvv = zext i16 %i.bvu to i64
  %i.bvw = getelementptr inbounds nuw [13 x i8], ptr @_ZL15ConversionTable, i64 %i.bvv ; 2 uses
  %i.bvx = load i8, ptr %i.bvw, align 1, !tbaa !35 ; 2 uses
  %.not39.i = icmp eq i8 %i.bvx, 0
  br i1 %.not39.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.tp, %.critedge34.i
  %i.bvy = phi i8 [ %i.bwt, %.critedge34.i ], [ %i.bvx, %bb.tp ]
  %.02540.i = phi ptr [ %i.bws, %.critedge34.i ], [ %i.bvw, %bb.tp ] ; 2 uses
  %cond1.i = icmp eq i8 %i.bvy, 2
  br i1 %cond1.i, label %bb.tq, label %.critedge34.i

bb.tq:                                            ; preds = %.lr.ph.i
  %i.bvz = getelementptr inbounds nuw i8, ptr %.02540.i, i64 1
  %i.bwa = load i8, ptr %i.bvz, align 1, !tbaa !35
  %i.bwb = zext i8 %i.bwa to i64
  %i.bwc = getelementptr inbounds nuw [3 x i8], ptr @_ZL19TiedAsmOperandTable, i64 %i.bwb ; 2 uses
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwc, i64 1
  %i.bwe = load i8, ptr %i.bwd, align 1, !tbaa !35 ; 2 uses
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwc, i64 2
  %i.bwg = load i8, ptr %i.bwf, align 1, !tbaa !35 ; 2 uses
  %.not32.i = icmp eq i8 %i.bwe, %i.bwg
  br i1 %.not32.i, label %.critedge34.i, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.bwh = zext i8 %i.bwe to i64
  %i.bwi = load ptr, ptr %1, align 8, !tbaa !28   ; 2 uses
  %i.bwj = getelementptr inbounds nuw [8 x i8], ptr %i.bwi, i64 %i.bwh
  %i.bwk = zext i8 %i.bwg to i64                  ; 2 uses
  %i.bwl = getelementptr inbounds nuw [8 x i8], ptr %i.bwi, i64 %i.bwk
  %i.bwm = load ptr, ptr %i.bwj, align 8, !tbaa !143
  %i.bwn = load ptr, ptr %i.bwl, align 8, !tbaa !143
  %i.bwo = load ptr, ptr %0, align 8, !tbaa !20
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 136
  %i.bwq = load ptr, ptr %i.bwp, align 8
  %i.bwr = tail call noundef zeroext i1 %i.bwq(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.bwm, ptr noundef nonnull align 8 dereferenceable(48) %i.bwn) #22, !inline_history !1042
  br i1 %i.bwr, label %.critedge34.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.thread.sink.split

.critedge34.i:                                    ; preds = %bb.tr, %bb.tq, %.lr.ph.i
  %i.bws = getelementptr inbounds nuw i8, ptr %.02540.i, i64 2 ; 2 uses
  %i.bwt = load i8, ptr %i.bws, align 1, !tbaa !35 ; 2 uses
  %.not.i171 = icmp eq i8 %i.bwt, 0
  br i1 %.not.i171, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.thread, label %.lr.ph.i, !llvm.loop !1043

bb.ts:                                            ; preds = %bb.to
  %i.bwu = load i32, ptr %i.bvh, align 4, !tbaa !1055
  %i.bwv = zext i16 %i.bvo to i64
  %i.bww = getelementptr inbounds nuw [13 x i8], ptr @_ZL15ConversionTable, i64 %i.bwv ; 2 uses
  store i32 %i.bwu, ptr %2, align 8, !tbaa !165
  %i.bwx = load i8, ptr %i.bww, align 1, !tbaa !35 ; 2 uses
  %.not5.i = icmp eq i8 %i.bwx, 0
  br i1 %.not5.i, label %_ZN12_GLOBAL__N_112X86AsmParser15convertToMCInstEjRN4llvm6MCInstEjRKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit, label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %bb.ts, %_ZNK4llvm10X86Operand14addRegOperandsERNS_6MCInstEj.exit.i
  %i.bwy = phi i8 [ %i.ckr, %_ZNK4llvm10X86Operand14addRegOperandsERNS_6MCInstEj.exit.i ], [ %i.bwx, %bb.ts ]
  %.06.i = phi ptr [ %i.ckq, %_ZNK4llvm10X86Operand14addRegOperandsERNS_6MCInstEj.exit.i ], [ %i.bww, %bb.ts ] ; 2 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.bxa = load i8, ptr %i.bwz, align 1, !tbaa !35 ; 13 uses
  switch i8 %i.bwy, label %bb.tt [
    i8 1, label %bb.tu
    i8 2, label %bb.tx
    i8 3, label %bb.ua
    i8 4, label %bb.ud
    i8 5, label %bb.uk
    i8 6, label %bb.ul
    i8 7, label %bb.uo
    i8 8, label %bb.ur
end_hunk_1
