Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86AsmParser?download=true
inline.NumInlined: 6472
inline.NumDeleted: 1192
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN12_GLOBAL__N_112X86AsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmRNS1_13FeatureBitsetEbj:bb.a
  %i.amd = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 %.idx825 ; 3 uses
  %.val.i.i = load i16, ptr %i.amd, align 4, !tbaa !1047
  %i.ame = zext i16 %.val.i.i to i64
  %i.amf = getelementptr inbounds nuw i8, ptr @_ZL13MnemonicTable, i64 %i.ame ; 2 uses
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !35
  %i.amh = sext i8 %i.amg to i64                  ; 4 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.313.0449, i64 %i.amh) ; 3 uses
  %i.ami = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ami, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amf, i64 1 ; 2 uses
  %i.amk = tail call i32 @memcmp(ptr noundef nonnull %i.amj, ptr noundef readonly %.sroa.0402.0447, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26
  %.fr.i.i.i.i.i.i = freeze i32 %i.amk            ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.thread.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i

.thread.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i
  %i.aml = icmp ugt i64 %.sroa.313.0449, %i.amh
  br i1 %i.aml, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i, label %.thread.i.i.i.i34.i.i

.thread.i.i.i.i.thread.i.i:                       ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.amm = icmp ugt i64 %.sroa.313.0449, %i.amh
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
  %i.amr = tail call i32 @memcmp(ptr noundef readonly %.sroa.0402.0447, ptr noundef nonnull %i.amj, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26
  %.fr.i.i.i.i29.i.i = freeze i32 %i.amr          ; 2 uses
  %.not.not.i.i.i.i30.i.i = icmp eq i32 %.fr.i.i.i.i29.i.i, 0
  br i1 %.not.not.i.i.i.i30.i.i, label %.thread.i.i.i.i34.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i

.thread.i.i.i.i34.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i, %.thread.i.i.i.i.i.i
  %i.ams = icmp ult i64 %.sroa.313.0449, %i.amh
  br i1 %i.ams, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.thread15.i.i, label %.critedge.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i
  %i.amt = icmp slt i32 %.fr.i.i.i.i29.i.i, 0
  br i1 %i.amt, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.thread15.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i, %.thread.i.i.i.i34.i.i
  %.not824 = icmp eq i64 %i.amc, 0
  br i1 %.not824, label %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i, label %.lr.ph.i.i.i

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
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.313.0449, i64 %i.amz) ; 2 uses
  %i.ana = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ana, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 1
  %i.anc = tail call i32 @memcmp(ptr noundef nonnull %i.anb, ptr noundef readonly %.sroa.0402.0447, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #26
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.anc          ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.and = icmp eq i64 %.sroa.313.0449, %i.amz
  br i1 %i.and, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i, label %bb.ni

bb.ni:                                            ; preds = %.thread.i.i.i.i.i.i.i
  %i.ane = icmp ugt i64 %.sroa.313.0449, %i.amz
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
  %i.anm = add nuw nsw i64 %.idx825, 20
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
  %.sroa.speculated.i.i.i.i.i44.i.i = tail call i64 @llvm.umin.i64(i64 %i.anu, i64 %.sroa.313.0449) ; 2 uses
  %i.anv = icmp eq i64 %.sroa.speculated.i.i.i.i.i44.i.i, 0
  br i1 %i.anv, label %.thread.i.i.i.i.i53.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i: ; preds = %.lr.ph.i39.i.i
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ans, i64 1
  %i.anx = tail call i32 @memcmp(ptr noundef readonly %.sroa.0402.0447, ptr noundef nonnull %i.anw, i64 noundef %.sroa.speculated.i.i.i.i.i44.i.i) #26
  %.fr.i.i.i.i.i46.i.i = freeze i32 %i.anx        ; 2 uses
  %.not.not.i.i.i.i.i47.i.i = icmp eq i32 %.fr.i.i.i.i.i46.i.i, 0
  %.inv.i.i.i.i.i48.i.i = icmp sgt i32 %.fr.i.i.i.i.i46.i.i, -1
  %spec.select.i.i.i.i.i49.i.i = select i1 %.inv.i.i.i.i.i48.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i47.i.i, label %.thread.i.i.i.i.i53.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i

.thread.i.i.i.i.i53.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i, %.lr.ph.i39.i.i
  %i.any = icmp eq i64 %.sroa.313.0449, %i.anu
  br i1 %i.any, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i, label %bb.nj

bb.nj:                                            ; preds = %.thread.i.i.i.i.i53.i.i
  %i.anz = icmp ult i64 %.sroa.313.0449, %i.anu
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

bb.nk:                                            ; preds = %.preheader, %.thread508
  %.0113688 = phi ptr [ %.011.lcssa.i.i.i, %.preheader ], [ %i.cme, %.thread508 ] ; 8 uses
  %.0121687 = phi i32 [ 0, %.preheader ], [ %.8.ph, %.thread508 ] ; 7 uses
  %.0127686 = phi i8 [ 0, %.preheader ], [ %.2129.ph, %.thread508 ] ; 4 uses
  %.0131685 = phi i1 [ false, %.preheader ], [ %.1132.ph, %.thread508 ] ; 6 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.0113688, i64 10
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
  %i.aou = getelementptr inbounds nuw i8, ptr %.0113688, i64 11
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %.thread
  %indvars.iv = phi i64 [ 0, %bb.nk ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.0106683 = phi i32 [ 1, %bb.nk ], [ %.4489, %.thread ] ; 8 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 %indvars.iv
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !35 ; 10 uses
  %i.aox = zext i8 %i.aow to i32                  ; 154 uses
  %i.aoy = zext i32 %.0106683 to i64              ; 5 uses
  %i.aoz = load i32, ptr %i.a, align 8, !tbaa !103
  %.not151 = icmp ugt i32 %i.aoz, %.0106683
  br i1 %.not151, label %bb.no, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  switch i8 %i.aow, label %bb.nn [
    i8 0, label %.thread491
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
  br i1 %.not.i161, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit, label %.thread491.thread

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
  br i1 %i.aps, label %.thread, label %.thread491.thread

.thread491.thread:                                ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit, %bb.nn
  store i64 %i.aoy, ptr %3, align 8, !tbaa !51
  br label %.thread508

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
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112X86AsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmRNS1_13FeatureBitsetEbj:bb.a
_ZNK4llvm10X86Operand9isVK2PairEv.exit:           ; preds = %bb.ph
  %i.aww = and i32 %.sroa.0.0.copyload.i.i366, 7
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awq, i64 4
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !34
  %i.awz = zext i32 %i.awy to i64
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awq, i64 %i.awz
  %i.axb = zext nneg i32 %i.aws to i64
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axa, i64 %i.axb
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !35
  %i.axe = zext i8 %i.axd to i32
  %i.axf = shl nuw nsw i32 1, %i.aww
  %i.axg = and i32 %i.axf, %i.axe
  %.not654 = icmp eq i32 %i.axg, 0
  br i1 %.not654, label %.sink.split, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.pi:                                            ; preds = %bb.oh
  %i.axh = icmp eq i32 %i.apz, 1
  br i1 %i.axh, label %bb.pj, label %.sink.split

bb.pj:                                            ; preds = %bb.pi
  %i.axi = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 13) #22 ; 3 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i.i363 = load i32, ptr %i.axj, align 8, !tbaa !61 ; 2 uses
  %i.axk = lshr i32 %.sroa.0.0.copyload.i.i363, 3 ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axi, i64 18
  %i.axm = load i16, ptr %i.axl, align 2, !tbaa !33
  %i.axn = zext i16 %i.axm to i32
  %.not.i.i364 = icmp samesign ult i32 %i.axk, %i.axn
  br i1 %.not.i.i364, label %_ZNK4llvm10X86Operand9isVK4PairEv.exit, label %.sink.split

_ZNK4llvm10X86Operand9isVK4PairEv.exit:           ; preds = %bb.pj
  %i.axo = and i32 %.sroa.0.0.copyload.i.i363, 7
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axi, i64 4
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !34
  %i.axr = zext i32 %i.axq to i64
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axi, i64 %i.axr
  %i.axt = zext nneg i32 %i.axk to i64
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axs, i64 %i.axt
  %i.axv = load i8, ptr %i.axu, align 1, !tbaa !35
  %i.axw = zext i8 %i.axv to i32
  %i.axx = shl nuw nsw i32 1, %i.axo
  %i.axy = and i32 %i.axx, %i.axw
  %.not653 = icmp eq i32 %i.axy, 0
  br i1 %.not653, label %.sink.split, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.pk:                                            ; preds = %bb.oh
  %i.axz = icmp eq i32 %i.apz, 1
  br i1 %i.axz, label %bb.pl, label %.sink.split

bb.pl:                                            ; preds = %bb.pk
  %i.aya = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 14) #22 ; 3 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i.i360 = load i32, ptr %i.ayb, align 8, !tbaa !61 ; 2 uses
  %i.ayc = lshr i32 %.sroa.0.0.copyload.i.i360, 3 ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.aya, i64 18
  %i.aye = load i16, ptr %i.ayd, align 2, !tbaa !33
  %i.ayf = zext i16 %i.aye to i32
  %.not.i.i361 = icmp samesign ult i32 %i.ayc, %i.ayf
  br i1 %.not.i.i361, label %_ZNK4llvm10X86Operand9isVK8PairEv.exit, label %.sink.split

_ZNK4llvm10X86Operand9isVK8PairEv.exit:           ; preds = %bb.pl
  %i.ayg = and i32 %.sroa.0.0.copyload.i.i360, 7
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.aya, i64 4
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !34
  %i.ayj = zext i32 %i.ayi to i64
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.ayj
  %i.ayl = zext nneg i32 %i.ayc to i64
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayk, i64 %i.ayl
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !35
  %i.ayo = zext i8 %i.ayn to i32
  %i.ayp = shl nuw nsw i32 1, %i.ayg
  %i.ayq = and i32 %i.ayp, %i.ayo
  %.not652 = icmp eq i32 %i.ayq, 0
  br i1 %.not652, label %.sink.split, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.pm:                                            ; preds = %bb.oh
  %i.ayr = tail call noundef zeroext i1 @_ZNK4llvm10X86Operand18isGR16orGR32orGR64Ev(ptr noundef nonnull align 8 dereferenceable(160) %i.apv)
  br i1 %i.ayr, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.pn:                                            ; preds = %bb.oh
  %i.ays = icmp eq i32 %i.apz, 1
  br i1 %i.ays, label %bb.po, label %.sink.split

bb.po:                                            ; preds = %bb.pn
  %i.ayt = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 35) #22 ; 3 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.apv, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i.i354 = load i32, ptr %i.ayu, align 8, !tbaa !61 ; 2 uses
  %i.ayv = lshr i32 %.sroa.0.0.copyload.i.i354, 3 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 18
  %i.ayx = load i16, ptr %i.ayw, align 2, !tbaa !33
  %i.ayy = zext i16 %i.ayx to i32
  %.not.i.i355 = icmp samesign ult i32 %i.ayv, %i.ayy
  br i1 %.not.i.i355, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i357, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i357: ; preds = %bb.po
  %i.ayz = and i32 %.sroa.0.0.copyload.i.i354, 7
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayt, i64 4
  %i.azb = load i32, ptr %i.aza, align 4, !tbaa !34
  %i.azc = zext i32 %i.azb to i64
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayt, i64 %i.azc
  %i.aze = zext nneg i32 %i.ayv to i64
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azd, i64 %i.aze
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !35
  %i.azh = zext i8 %i.azg to i32
  %i.azi = shl nuw nsw i32 1, %i.ayz
  %i.azj = and i32 %i.azi, %i.azh
  %.not.i358 = icmp eq i32 %i.azj, 0
  br i1 %.not.i358, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i357, %bb.po
  %i.azk = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 72) #22 ; 3 uses
  %.sroa.0.0.copyload.i2.i356 = load i32, ptr %i.ayu, align 8, !tbaa !61 ; 2 uses
  %i.azl = lshr i32 %.sroa.0.0.copyload.i2.i356, 3 ; 2 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azk, i64 18
  %i.azn = load i16, ptr %i.azm, align 2, !tbaa !33
  %i.azo = zext i16 %i.azn to i32
  %.not.i3.i = icmp samesign ult i32 %i.azl, %i.azo
  br i1 %.not.i3.i, label %_ZNK4llvm10X86Operand12isGR32orGR64Ev.exit, label %.sink.split

_ZNK4llvm10X86Operand12isGR32orGR64Ev.exit:       ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i
  %i.azp = and i32 %.sroa.0.0.copyload.i2.i356, 7
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azk, i64 4
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !34
  %i.azs = zext i32 %i.azr to i64
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azk, i64 %i.azs
  %i.azu = zext nneg i32 %i.azl to i64
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azt, i64 %i.azu
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !35
  %i.azx = zext i8 %i.azw to i32
  %i.azy = shl nuw nsw i32 1, %i.azp
  %i.azz = and i32 %i.azy, %i.azx
  %.not651 = icmp eq i32 %i.azz, 0
  br i1 %.not651, label %.sink.split, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.pp:                                            ; preds = %bb.oh
  %i.baa = icmp eq i32 %i.apz, 3
  %i.bab = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i.i.i342 = load i32, ptr %i.bab, align 8
  %.not.i.i343 = icmp eq i32 %.sroa.0.0.copyload.i.i.i342, 0
  %or.cond.i.i344 = select i1 %i.baa, i1 %.not.i.i343, i1 false
  %i.bac = getelementptr inbounds nuw i8, ptr %i.apv, i64 128
  %.sroa.0.0.copyload.i3.i.i345 = load i32, ptr %i.bac, align 8
  %.not1.i.i346 = icmp eq i32 %.sroa.0.0.copyload.i3.i.i345, 0
  %or.cond7.i.i347 = select i1 %or.cond.i.i344, i1 %.not1.i.i346, i1 false
  %i.bad = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i4.i.i348 = load i32, ptr %i.bad, align 8
  %.not2.i.i349 = icmp eq i32 %.sroa.0.0.copyload.i4.i.i348, 0
  %or.cond8.i.i350 = select i1 %or.cond7.i.i347, i1 %.not2.i.i349, i1 false
  %i.bae = getelementptr inbounds nuw i8, ptr %i.apv, i64 140
  %i.baf = load i32, ptr %i.bae, align 4
  %i.bag = icmp eq i32 %i.baf, 1
  %or.cond11.i.i351 = select i1 %or.cond8.i.i350, i1 %i.bag, i1 false
  %i.bah = getelementptr inbounds nuw i8, ptr %i.apv, i64 156
  %i.bai = load i8, ptr %i.bah, align 4, !range !25
  %i.baj = trunc nuw i8 %i.bai to i1
  %or.cond.i352 = select i1 %or.cond11.i.i351, i1 %i.baj, i1 false
  br i1 %or.cond.i352, label %bb.pq, label %.sink.split

bb.pq:                                            ; preds = %bb.pp
  %i.bak = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bal = load i32, ptr %i.bak, align 8
  %i.bam = and i32 %i.bal, -9
  %spec.select.i.i353 = icmp eq i32 %i.bam, 0
  br i1 %spec.select.i.i353, label %bb.pr, label %.sink.split

bb.pr:                                            ; preds = %bb.pq
  %i.ban = getelementptr inbounds nuw i8, ptr %i.apv, i64 120
  %i.bao = load ptr, ptr %i.ban, align 8, !tbaa !35 ; 2 uses
  %i.bap = load i8, ptr %i.bao, align 8, !tbaa !99
  %.not.i1.i = icmp eq i8 %i.bap, 1
  br i1 %.not.i1.i, label %_ZNK4llvm10X86Operand9isAbsMem8Ev.exit, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

_ZNK4llvm10X86Operand9isAbsMem8Ev.exit:           ; preds = %bb.pr
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bao, i64 16
  %i.bar = load i64, ptr %i.baq, align 8, !tbaa !164
  %i.bas = add i64 %i.bar, 128
  %i.bat = icmp ult i64 %i.bas, 256
  br i1 %i.bat, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.ps:                                            ; preds = %bb.oh
  %i.bau = icmp eq i32 %i.apz, 3
  %i.bav = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i.i.i335 = load i32, ptr %i.bav, align 8
  %.not.i.i336 = icmp eq i32 %.sroa.0.0.copyload.i.i.i335, 0
  %or.cond.i.i337 = select i1 %i.bau, i1 %.not.i.i336, i1 false
  %i.baw = getelementptr inbounds nuw i8, ptr %i.apv, i64 128
  %.sroa.0.0.copyload.i3.i.i = load i32, ptr %i.baw, align 8
  %.not1.i.i338 = icmp eq i32 %.sroa.0.0.copyload.i3.i.i, 0
  %or.cond7.i.i = select i1 %or.cond.i.i337, i1 %.not1.i.i338, i1 false
  %i.bax = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i4.i.i339 = load i32, ptr %i.bax, align 8
  %.not2.i.i340 = icmp eq i32 %.sroa.0.0.copyload.i4.i.i339, 0
  %or.cond8.i.i = select i1 %or.cond7.i.i, i1 %.not2.i.i340, i1 false
  %i.bay = getelementptr inbounds nuw i8, ptr %i.apv, i64 140
  %i.baz = load i32, ptr %i.bay, align 4
  %i.bba = icmp eq i32 %i.baz, 1
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.bba, i1 false
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.apv, i64 156
  %i.bbc = load i8, ptr %i.bbb, align 4, !range !25
  %i.bbd = trunc nuw i8 %i.bbc to i1
  %or.cond.i341 = select i1 %or.cond11.i.i, i1 %i.bbd, i1 false
  %8 = getelementptr inbounds nuw i8, ptr %i.apv, i64 148
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 16
  %i.bbe = select i1 %or.cond.i341, i1 %10, i1 false
  br i1 %i.bbe, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.pt:                                            ; preds = %bb.oh
  %i.bbf = icmp eq i32 %i.apz, 3
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bbh = load i32, ptr %i.bbg, align 8
  %i.bbi = and i32 %i.bbh, -17
  %spec.select.i.i329 = icmp eq i32 %i.bbi, 0
  %i.bbj = select i1 %i.bbf, i1 %spec.select.i.i329, i1 false
  br i1 %i.bbj, label %bb.pu, label %.sink.split

bb.pu:                                            ; preds = %bb.pt
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i.i.i330 = load i32, ptr %i.bbk, align 8, !tbaa !61
  %.not.i.i331 = icmp eq i32 %.sroa.0.0.copyload.i.i.i330, 0
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.apv, i64 140
  %i.bbm = load i32, ptr %i.bbl, align 4
  %i.bbn = icmp eq i32 %i.bbm, 1
  %or.cond.i.i332 = select i1 %.not.i.i331, i1 %i.bbn, i1 false
  br i1 %or.cond.i.i332, label %bb.pv, label %.sink.split

bb.pv:                                            ; preds = %bb.pu
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i2.i.i333 = load i32, ptr %i.bbo, align 8, !tbaa !61
  switch i32 %.sroa.0.0.copyload.i2.i.i333, label %.sink.split [
    i32 0, label %bb.pw
    i32 31, label %bb.pw
  ]

bb.pw:                                            ; preds = %bb.pv, %bb.pv
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.apv, i64 128
  %.sroa.0.0.copyload.i4.i.i334 = load i32, ptr %i.bbp, align 8, !tbaa !61
  switch i32 %.sroa.0.0.copyload.i4.i.i334, label %.sink.split [
    i32 55, label %bb.px
    i32 26, label %bb.px
    i32 16, label %bb.px
  ]

bb.px:                                            ; preds = %bb.pw, %bb.pw, %bb.pw
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.apv, i64 120
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !35 ; 2 uses
  %i.bbs = load i8, ptr %i.bbr, align 8, !tbaa !99
  %i.bbt = icmp eq i8 %i.bbs, 1
  br i1 %i.bbt, label %_ZNK4llvm10X86Operand10isDstIdx16Ev.exit, label %.sink.split

_ZNK4llvm10X86Operand10isDstIdx16Ev.exit:         ; preds = %bb.px
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !164
  %i.bbw = icmp eq i64 %i.bbv, 0
  br i1 %i.bbw, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.py:                                            ; preds = %bb.oh
  %i.bbx = icmp eq i32 %i.apz, 3
  %i.bby = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bbz = load i32, ptr %i.bby, align 8
  %i.bca = and i32 %i.bbz, -33
  %spec.select.i.i323 = icmp eq i32 %i.bca, 0
  %i.bcb = select i1 %i.bbx, i1 %spec.select.i.i323, i1 false
  br i1 %i.bcb, label %bb.pz, label %.sink.split

bb.pz:                                            ; preds = %bb.py
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i.i.i324 = load i32, ptr %i.bcc, align 8, !tbaa !61
  %.not.i.i325 = icmp eq i32 %.sroa.0.0.copyload.i.i.i324, 0
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.apv, i64 140
  %i.bce = load i32, ptr %i.bcd, align 4
  %i.bcf = icmp eq i32 %i.bce, 1
  %or.cond.i.i326 = select i1 %.not.i.i325, i1 %i.bcf, i1 false
  br i1 %or.cond.i.i326, label %bb.qa, label %.sink.split

bb.qa:                                            ; preds = %bb.pz
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i2.i.i327 = load i32, ptr %i.bcg, align 8, !tbaa !61
  switch i32 %.sroa.0.0.copyload.i2.i.i327, label %.sink.split [
    i32 0, label %bb.qb
    i32 31, label %bb.qb
  ]

bb.qb:                                            ; preds = %bb.qa, %bb.qa
  %i.bch = getelementptr inbounds nuw i8, ptr %i.apv, i64 128
  %.sroa.0.0.copyload.i4.i.i328 = load i32, ptr %i.bch, align 8, !tbaa !61
  switch i32 %.sroa.0.0.copyload.i4.i.i328, label %.sink.split [
    i32 55, label %bb.qc
    i32 26, label %bb.qc
    i32 16, label %bb.qc
  ]

bb.qc:                                            ; preds = %bb.qb, %bb.qb, %bb.qb
  %i.bci = getelementptr inbounds nuw i8, ptr %i.apv, i64 120
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !35 ; 2 uses
  %i.bck = load i8, ptr %i.bcj, align 8, !tbaa !99
  %i.bcl = icmp eq i8 %i.bck, 1
  br i1 %i.bcl, label %_ZNK4llvm10X86Operand10isDstIdx32Ev.exit, label %.sink.split

_ZNK4llvm10X86Operand10isDstIdx32Ev.exit:         ; preds = %bb.qc
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcj, i64 16
  %i.bcn = load i64, ptr %i.bcm, align 8, !tbaa !164
  %i.bco = icmp eq i64 %i.bcn, 0
  br i1 %i.bco, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.qd:                                            ; preds = %bb.oh
  %i.bcp = icmp eq i32 %i.apz, 3
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bcr = load i32, ptr %i.bcq, align 8
  %i.bcs = and i32 %i.bcr, -65
  %spec.select.i.i317 = icmp eq i32 %i.bcs, 0
  %i.bct = select i1 %i.bcp, i1 %spec.select.i.i317, i1 false
  br i1 %i.bct, label %bb.qe, label %.sink.split

bb.qe:                                            ; preds = %bb.qd
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i.i.i318 = load i32, ptr %i.bcu, align 8, !tbaa !61
  %.not.i.i319 = icmp eq i32 %.sroa.0.0.copyload.i.i.i318, 0
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.apv, i64 140
  %i.bcw = load i32, ptr %i.bcv, align 4
  %i.bcx = icmp eq i32 %i.bcw, 1
  %or.cond.i.i320 = select i1 %.not.i.i319, i1 %i.bcx, i1 false
  br i1 %or.cond.i.i320, label %bb.qf, label %.sink.split

bb.qf:                                            ; preds = %bb.qe
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i2.i.i321 = load i32, ptr %i.bcy, align 8, !tbaa !61
  switch i32 %.sroa.0.0.copyload.i2.i.i321, label %.sink.split [
    i32 0, label %bb.qg
    i32 31, label %bb.qg
  ]

bb.qg:                                            ; preds = %bb.qf, %bb.qf
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.apv, i64 128
  %.sroa.0.0.copyload.i4.i.i322 = load i32, ptr %i.bcz, align 8, !tbaa !61
  switch i32 %.sroa.0.0.copyload.i4.i.i322, label %.sink.split [
    i32 55, label %bb.qh
    i32 26, label %bb.qh
    i32 16, label %bb.qh
  ]

bb.qh:                                            ; preds = %bb.qg, %bb.qg, %bb.qg
  %i.bda = getelementptr inbounds nuw i8, ptr %i.apv, i64 120
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !35 ; 2 uses
  %i.bdc = load i8, ptr %i.bdb, align 8, !tbaa !99
  %i.bdd = icmp eq i8 %i.bdc, 1
  br i1 %i.bdd, label %_ZNK4llvm10X86Operand10isDstIdx64Ev.exit, label %.sink.split

_ZNK4llvm10X86Operand10isDstIdx64Ev.exit:         ; preds = %bb.qh
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdb, i64 16
  %i.bdf = load i64, ptr %i.bde, align 8, !tbaa !164
  %i.bdg = icmp eq i64 %i.bdf, 0
  br i1 %i.bdg, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.qi:                                            ; preds = %bb.oh
  %i.bdh = icmp eq i32 %i.apz, 3
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bdj = load i32, ptr %i.bdi, align 8
  %i.bdk = and i32 %i.bdj, -9
  %spec.select.i.i312 = icmp eq i32 %i.bdk, 0
  %i.bdl = select i1 %i.bdh, i1 %spec.select.i.i312, i1 false
  br i1 %i.bdl, label %bb.qj, label %.sink.split

bb.qj:                                            ; preds = %bb.qi
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i.i.i313 = load i32, ptr %i.bdm, align 8, !tbaa !61
  %.not.i.i314 = icmp eq i32 %.sroa.0.0.copyload.i.i.i313, 0
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.apv, i64 140
  %i.bdo = load i32, ptr %i.bdn, align 4
  %i.bdp = icmp eq i32 %i.bdo, 1
  %or.cond.i.i315 = select i1 %.not.i.i314, i1 %i.bdp, i1 false
  br i1 %or.cond.i.i315, label %bb.qk, label %.sink.split

bb.qk:                                            ; preds = %bb.qj
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i2.i.i316 = load i32, ptr %i.bdq, align 8, !tbaa !61
  switch i32 %.sroa.0.0.copyload.i2.i.i316, label %.sink.split [
    i32 0, label %bb.ql
    i32 31, label %bb.ql
  ]

bb.ql:                                            ; preds = %bb.qk, %bb.qk
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.apv, i64 128
  %.sroa.0.0.copyload.i4.i.i = load i32, ptr %i.bdr, align 8, !tbaa !61
  switch i32 %.sroa.0.0.copyload.i4.i.i, label %.sink.split [
    i32 55, label %bb.qm
    i32 26, label %bb.qm
    i32 16, label %bb.qm
  ]

bb.qm:                                            ; preds = %bb.ql, %bb.ql, %bb.ql
  %i.bds = getelementptr inbounds nuw i8, ptr %i.apv, i64 120
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !35 ; 2 uses
  %i.bdu = load i8, ptr %i.bdt, align 8, !tbaa !99
  %i.bdv = icmp eq i8 %i.bdu, 1
  br i1 %i.bdv, label %_ZNK4llvm10X86Operand9isDstIdx8Ev.exit, label %.sink.split

_ZNK4llvm10X86Operand9isDstIdx8Ev.exit:           ; preds = %bb.qm
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdt, i64 16
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !164
  %i.bdy = icmp eq i64 %i.bdx, 0
  br i1 %i.bdy, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.qn:                                            ; preds = %bb.oh
  %i.bdz = icmp eq i32 %i.apz, 3
  %i.bea = getelementptr inbounds nuw i8, ptr %i.apv, i64 128
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_112X86AsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmRNS1_13FeatureBitsetEbj:bb.a
  %i.bpi = select i1 %i.bpe, i1 %spec.select.i.i184, i1 false
  br i1 %i.bpi, label %bb.sg, label %.sink.split

bb.sg:                                            ; preds = %bb.sf
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.apv, i64 128 ; 2 uses
  %.sroa.0.0.copyload.i.i185 = load i32, ptr %i.bpj, align 8, !tbaa !61
  %.not.i186 = icmp eq i32 %.sroa.0.0.copyload.i.i185, 0
  br i1 %.not.i186, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.bpk = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 7) #22 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load i32, ptr %i.bpj, align 8, !tbaa !61 ; 2 uses
  %i.bpl = lshr i32 %.sroa.0.0.copyload.i2.i, 3   ; 2 uses
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpk, i64 18
  %i.bpn = load i16, ptr %i.bpm, align 2, !tbaa !33
  %i.bpo = zext i16 %i.bpn to i32
  %.not.i.i187 = icmp samesign ult i32 %i.bpl, %i.bpo
  br i1 %.not.i.i187, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, label %.sink.split

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i: ; preds = %bb.sh
  %i.bpp = and i32 %.sroa.0.0.copyload.i2.i, 7
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpk, i64 4
  %i.bpr = load i32, ptr %i.bpq, align 4, !tbaa !34
  %i.bps = zext i32 %i.bpr to i64
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpk, i64 %i.bps
  %i.bpu = zext nneg i32 %i.bpl to i64
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpt, i64 %i.bpu
  %i.bpw = load i8, ptr %i.bpv, align 1, !tbaa !35
  %i.bpx = zext i8 %i.bpw to i32
  %i.bpy = shl nuw nsw i32 1, %i.bpp
  %i.bpz = and i32 %i.bpy, %i.bpx
  %.not4.i = icmp eq i32 %i.bpz, 0
  br i1 %.not4.i, label %.sink.split, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i

bb.si:                                            ; preds = %bb.oh
  %i.bqa = tail call noundef zeroext i1 @_ZNK4llvm10X86Operand13isMem512_GR32Ev(ptr noundef nonnull align 8 dereferenceable(160) %i.apv)
  br i1 %i.bqa, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sj:                                            ; preds = %bb.oh
  %i.bqb = tail call noundef zeroext i1 @_ZNK4llvm10X86Operand13isMem512_GR64Ev(ptr noundef nonnull align 8 dereferenceable(160) %i.apv)
  br i1 %i.bqb, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sk:                                            ; preds = %bb.oh
  %i.bqc = icmp eq i32 %i.apz, 3
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bqe = load i32, ptr %i.bqd, align 8
  %i.bqf = and i32 %i.bqe, -65
  %spec.select.i355.i = icmp eq i32 %i.bqf, 0
  %i.bqg = select i1 %i.bqc, i1 %spec.select.i355.i, i1 false
  br i1 %i.bqg, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sl:                                            ; preds = %bb.oh
  %i.bqh = icmp eq i32 %i.apz, 3
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bqj = load i32, ptr %i.bqi, align 8
  %i.bqk = and i32 %i.bqj, -65
  %spec.select.i.i357.i = icmp eq i32 %i.bqk, 0
  %i.bql = select i1 %i.bqh, i1 %spec.select.i.i357.i, i1 false
  br i1 %i.bql, label %_ZNK4llvm10X86Operand13isMem64_RC128Ev.exit.i, label %.sink.split

_ZNK4llvm10X86Operand13isMem64_RC128Ev.exit.i:    ; preds = %bb.sl
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %i.bqn = load i32, ptr %i.bqm, align 8, !tbaa !60
  %i.bqo = add i32 %i.bqn, -135
  %spec.select.i1.i358.i = icmp ult i32 %i.bqo, 16
  br i1 %spec.select.i1.i358.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sm:                                            ; preds = %bb.oh
  %i.bqp = icmp eq i32 %i.apz, 3
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bqr = load i32, ptr %i.bqq, align 8
  %i.bqs = and i32 %i.bqr, -65
  %spec.select.i.i360.i = icmp eq i32 %i.bqs, 0
  %i.bqt = select i1 %i.bqp, i1 %spec.select.i.i360.i, i1 false
  br i1 %i.bqt, label %bb.sn, label %.sink.split

bb.sn:                                            ; preds = %bb.sm
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i361.i = load i32, ptr %i.bqu, align 8, !tbaa !61 ; 3 uses
  %i.bqv = icmp ugt i32 %.sroa.0.0.copyload.i361.i, 134
  br i1 %i.bqv, label %bb.so, label %.sink.split

bb.so:                                            ; preds = %bb.sn
  %i.bqw = icmp ult i32 %.sroa.0.0.copyload.i361.i, 151
  %i.bqx = add i32 %.sroa.0.0.copyload.i361.i, -215
  %spec.select.i1.i362.i = icmp ult i32 %i.bqx, 16
  %or.cond501.i = or i1 %i.bqw, %spec.select.i1.i362.i
  br i1 %or.cond501.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sp:                                            ; preds = %bb.oh
  %i.bqy = icmp eq i32 %i.apz, 3
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bra = load i32, ptr %i.bqz, align 8
  %i.brb = and i32 %i.bra, -65
  %spec.select.i.i364.i = icmp eq i32 %i.brb, 0
  %i.brc = select i1 %i.bqy, i1 %spec.select.i.i364.i, i1 false
  br i1 %i.brc, label %_ZNK4llvm10X86Operand13isMem64_RC256Ev.exit.i, label %.sink.split

_ZNK4llvm10X86Operand13isMem64_RC256Ev.exit.i:    ; preds = %bb.sp
  %i.brd = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %i.bre = load i32, ptr %i.brd, align 8, !tbaa !60
  %i.brf = add i32 %i.bre, -191
  %spec.select.i1.i365.i = icmp ult i32 %i.brf, 16
  br i1 %spec.select.i1.i365.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sq:                                            ; preds = %bb.oh
  %i.brg = icmp eq i32 %i.apz, 3
  %i.brh = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bri = load i32, ptr %i.brh, align 8
  %i.brj = and i32 %i.bri, -65
  %spec.select.i.i367.i = icmp eq i32 %i.brj, 0
  %i.brk = select i1 %i.brg, i1 %spec.select.i.i367.i, i1 false
  br i1 %i.brk, label %bb.sr, label %.sink.split

bb.sr:                                            ; preds = %bb.sq
  %i.brl = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i368.i = load i32, ptr %i.brl, align 8, !tbaa !61 ; 3 uses
  %i.brm = icmp ugt i32 %.sroa.0.0.copyload.i368.i, 190
  br i1 %i.brm, label %bb.ss, label %.sink.split

bb.ss:                                            ; preds = %bb.sr
  %i.brn = icmp ult i32 %.sroa.0.0.copyload.i368.i, 207
  %i.bro = add i32 %.sroa.0.0.copyload.i368.i, -231
  %spec.select.i1.i369.i = icmp ult i32 %i.bro, 16
  %or.cond502.i = or i1 %i.brn, %spec.select.i1.i369.i
  br i1 %or.cond502.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.st:                                            ; preds = %bb.oh
  %i.brp = icmp eq i32 %i.apz, 3
  %i.brq = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.brr = load i32, ptr %i.brq, align 8
  %i.brs = and i32 %i.brr, -65
  %spec.select.i.i371.i = icmp eq i32 %i.brs, 0
  %i.brt = select i1 %i.brp, i1 %spec.select.i.i371.i, i1 false
  br i1 %i.brt, label %_ZNK4llvm10X86Operand13isMem64_RC512Ev.exit.i, label %.sink.split

_ZNK4llvm10X86Operand13isMem64_RC512Ev.exit.i:    ; preds = %bb.st
  %i.bru = getelementptr inbounds nuw i8, ptr %i.apv, i64 136
  %.sroa.0.0.copyload.i372.i = load i32, ptr %i.bru, align 8, !tbaa !61
  %i.brv = add i32 %.sroa.0.0.copyload.i372.i, -247
  %spec.select.i1.i373.i = icmp ult i32 %i.brv, 32
  br i1 %spec.select.i1.i373.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.su:                                            ; preds = %bb.oh
  %i.brw = icmp eq i32 %i.apz, 3
  br i1 %i.brw, label %_ZNK4llvm10X86Operand7isMem80Ev.exit.i, label %.sink.split

_ZNK4llvm10X86Operand7isMem80Ev.exit.i:           ; preds = %bb.su
  %i.brx = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bry = load i32, ptr %i.brx, align 8, !tbaa !35
  switch i32 %i.bry, label %.sink.split [
    i32 80, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i
    i32 0, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i
  ]

bb.sv:                                            ; preds = %bb.oh
  %i.brz = icmp eq i32 %i.apz, 3
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.apv, i64 144
  %i.bsb = load i32, ptr %i.bsa, align 8
  %i.bsc = and i32 %i.bsb, -9
  %spec.select.i378.i = icmp eq i32 %i.bsc, 0
  %i.bsd = select i1 %i.brz, i1 %spec.select.i378.i, i1 false
  br i1 %i.bsd, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

bb.sw:                                            ; preds = %bb.oh
  %i.bse = icmp eq i32 %i.apz, 3
  br i1 %i.bse, label %_ZNK4llvm10X86Operand8isSibMemEv.exit.i, label %.sink.split

_ZNK4llvm10X86Operand8isSibMemEv.exit.i:          ; preds = %bb.sw
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.apv, i64 128
  %i.bsg = load i32, ptr %i.bsf, align 8, !tbaa !60
  switch i32 %i.bsg, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i [
    i32 58, label %.sink.split
    i32 29, label %.sink.split
  ]

bb.sx:                                            ; preds = %bb.oh
  %i.bsh = icmp eq i32 %i.apz, 3
  br i1 %i.bsh, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %.sink.split

_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i: ; preds = %bb.oh
  %i.bsi = icmp eq i32 %i.apz, 1
  %i.bsj = add i8 %i.aow, 124
  %i.bsk = icmp ult i8 %i.bsj, 5
  %or.cond66.i = select i1 %i.bsi, i1 %i.bsk, i1 false
  br i1 %or.cond66.i, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i
  %i.bsl = load ptr, ptr %i.apw, align 8, !tbaa !20
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 40
  %i.bsn = load ptr, ptr %i.bsm, align 8
  %i.bso = tail call noundef i32 %i.bsn(ptr noundef nonnull align 8 dereferenceable(320) %i.apw, i32 noundef 2) #22, !inline_history !1040
  %i.bsp = zext i32 %i.bso to i64
  %i.bsq = getelementptr inbounds nuw [20 x i8], ptr @_ZZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoEE26RegClassByHwModeMatchTable, i64 %i.bsp
  %i.bsr = zext i8 %i.aow to i64
  %i.bss = getelementptr [4 x i8], ptr %i.bsq, i64 %i.bsr
  %i.bst = getelementptr i8, ptr %i.bss, i64 -528
  %i.bsu = load i32, ptr %i.bst, align 4, !tbaa !35
  br label %.sink.split

.sink.split:                                      ; preds = %bb.sh, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, %bb.sf, %bb.rq, %bb.rn, %bb.ro, %bb.rp, %bb.rm, %bb.rj, %bb.rk, %bb.rl, %bb.ri, %bb.rf, %bb.rg, %bb.rh, %bb.re, %bb.rb, %bb.rc, %bb.rd, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qt, %bb.qs, %bb.qr, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.qj, %bb.qk, %bb.ql, %bb.qm, %bb.qi, %bb.qe, %bb.qf, %bb.qg, %bb.qh, %bb.qd, %bb.pz, %bb.qa, %bb.qb, %bb.qc, %bb.py, %bb.pu, %bb.pv, %bb.pw, %bb.px, %bb.pt, %bb.pp, %bb.pq, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i, %bb.pn, %bb.pl, %bb.pk, %bb.pj, %bb.pi, %bb.ph, %bb.pg, %bb.pf, %bb.pe, %bb.pd, %bb.pc, %bb.os, %bb.op, %bb.oo, %bb.ol, %bb.oi, %bb.oj, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.i, %_ZNK4llvm10X86Operand14isImmSExti16i8Ev.exit, %_ZNK4llvm10X86Operand14isImmSExti32i8Ev.exit, %bb.ot, %_ZNK4llvm10X86Operand15isImmSExti64i32Ev.exit.i, %bb.ov, %bb.pa, %_ZNK4llvm10X86Operand15isImmUnsignedi8Ev.exit.i, %_ZNK4llvm10X86Operand10isVK16PairEv.exit, %_ZNK4llvm10X86Operand9isVK1PairEv.exit, %_ZNK4llvm10X86Operand9isVK2PairEv.exit, %_ZNK4llvm10X86Operand9isVK4PairEv.exit, %_ZNK4llvm10X86Operand9isVK8PairEv.exit, %bb.pm, %_ZNK4llvm10X86Operand12isGR32orGR64Ev.exit, %_ZNK4llvm10X86Operand9isAbsMem8Ev.exit, %bb.ps, %_ZNK4llvm10X86Operand10isDstIdx16Ev.exit, %_ZNK4llvm10X86Operand10isDstIdx32Ev.exit, %_ZNK4llvm10X86Operand10isDstIdx64Ev.exit, %_ZNK4llvm10X86Operand9isDstIdx8Ev.exit, %_ZNK4llvm10X86Operand16isMemConstOffs64Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs16_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs16_32Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs16_8Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_32Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_64Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs32_8Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_32Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_64Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs64_8Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx16Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx32Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx64Ev.exit, %_ZNK4llvm10X86Operand9isSrcIdx8Ev.exit, %_ZNK4llvm10X86Operand8isAbsMemEv.exit, %bb.rr, %bb.rs, %bb.rt, %bb.ru, %bb.rv, %_ZNK4llvm10X86Operand13isMem32_RC128Ev.exit.i, %bb.rw, %bb.rx, %bb.ry, %bb.rz, %_ZNK4llvm10X86Operand13isMem32_RC256Ev.exit.i, %bb.sa, %bb.sb, %bb.sc, %bb.sd, %_ZNK4llvm10X86Operand13isMem32_RC512Ev.exit.i, %bb.se, %bb.si, %bb.sj, %bb.sk, %bb.sl, %_ZNK4llvm10X86Operand13isMem64_RC128Ev.exit.i, %bb.sm, %bb.sn, %bb.so, %bb.sp, %_ZNK4llvm10X86Operand13isMem64_RC256Ev.exit.i, %bb.sq, %bb.sr, %bb.ss, %bb.st, %_ZNK4llvm10X86Operand13isMem64_RC512Ev.exit.i, %bb.su, %_ZNK4llvm10X86Operand7isMem80Ev.exit.i, %bb.sv, %bb.sw, %_ZNK4llvm10X86Operand8isSibMemEv.exit.i, %_ZNK4llvm10X86Operand8isSibMemEv.exit.i, %bb.sx, %bb.sy
  %.0213.i.ph = phi i32 [ %i.bsu, %bb.sy ], [ %i.aox, %bb.sx ], [ %i.aox, %_ZNK4llvm10X86Operand8isSibMemEv.exit.i ], [ %i.aox, %_ZNK4llvm10X86Operand8isSibMemEv.exit.i ], [ %i.aox, %bb.sw ], [ %i.aox, %bb.sv ], [ %i.aox, %_ZNK4llvm10X86Operand7isMem80Ev.exit.i ], [ %i.aox, %bb.su ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem64_RC512Ev.exit.i ], [ %i.aox, %bb.st ], [ %i.aox, %bb.ss ], [ %i.aox, %bb.sr ], [ %i.aox, %bb.sq ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem64_RC256Ev.exit.i ], [ %i.aox, %bb.sp ], [ %i.aox, %bb.so ], [ %i.aox, %bb.sn ], [ %i.aox, %bb.sm ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem64_RC128Ev.exit.i ], [ %i.aox, %bb.sl ], [ %i.aox, %bb.sk ], [ %i.aox, %bb.sj ], [ %i.aox, %bb.si ], [ %i.aox, %bb.se ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem32_RC512Ev.exit.i ], [ %i.aox, %bb.sd ], [ %i.aox, %bb.sc ], [ %i.aox, %bb.sb ], [ %i.aox, %bb.sa ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem32_RC256Ev.exit.i ], [ %i.aox, %bb.rz ], [ %i.aox, %bb.ry ], [ %i.aox, %bb.rx ], [ %i.aox, %bb.rw ], [ %i.aox, %_ZNK4llvm10X86Operand13isMem32_RC128Ev.exit.i ], [ %i.aox, %bb.rv ], [ %i.aox, %bb.ru ], [ %i.aox, %bb.rt ], [ %i.aox, %bb.rs ], [ %i.aox, %bb.rr ], [ %i.aox, %_ZNK4llvm10X86Operand8isAbsMemEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand9isSrcIdx8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isSrcIdx64Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isSrcIdx32Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isSrcIdx16Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand13isMemOffs64_8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs64_64Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs64_32Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs64_16Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand13isMemOffs32_8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs32_64Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs32_32Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs32_16Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand13isMemOffs16_8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs16_32Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isMemOffs16_16Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand16isMemConstOffs64Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand9isDstIdx8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isDstIdx64Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isDstIdx32Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isDstIdx16Ev.exit ], [ %i.aox, %bb.ps ], [ %i.aox, %_ZNK4llvm10X86Operand9isAbsMem8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand12isGR32orGR64Ev.exit ], [ %i.aox, %bb.pm ], [ %i.aox, %_ZNK4llvm10X86Operand9isVK8PairEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand9isVK4PairEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand9isVK2PairEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand9isVK1PairEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand10isVK16PairEv.exit ], [ %i.aox, %_ZNK4llvm10X86Operand15isImmUnsignedi8Ev.exit.i ], [ %i.aox, %bb.pa ], [ %i.aox, %bb.ov ], [ %i.aox, %_ZNK4llvm10X86Operand15isImmSExti64i32Ev.exit.i ], [ %i.aox, %bb.ot ], [ %i.aox, %_ZNK4llvm10X86Operand14isImmSExti32i8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isImmSExti16i8Ev.exit ], [ %i.aox, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.i ], [ %i.aox, %bb.oj ], [ %i.aox, %bb.oi ], [ %i.aox, %bb.ol ], [ %i.aox, %bb.oo ], [ %i.aox, %bb.op ], [ %i.aox, %bb.os ], [ %i.aox, %bb.pc ], [ %i.aox, %bb.pd ], [ %i.aox, %bb.pe ], [ %i.aox, %bb.pf ], [ %i.aox, %bb.pg ], [ %i.aox, %bb.ph ], [ %i.aox, %bb.pi ], [ %i.aox, %bb.pj ], [ %i.aox, %bb.pk ], [ %i.aox, %bb.pl ], [ %i.aox, %bb.pn ], [ %i.aox, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i ], [ %i.aox, %bb.pq ], [ %i.aox, %bb.pp ], [ %i.aox, %bb.pt ], [ %i.aox, %bb.px ], [ %i.aox, %bb.pw ], [ %i.aox, %bb.pv ], [ %i.aox, %bb.pu ], [ %i.aox, %bb.py ], [ %i.aox, %bb.qc ], [ %i.aox, %bb.qb ], [ %i.aox, %bb.qa ], [ %i.aox, %bb.pz ], [ %i.aox, %bb.qd ], [ %i.aox, %bb.qh ], [ %i.aox, %bb.qg ], [ %i.aox, %bb.qf ], [ %i.aox, %bb.qe ], [ %i.aox, %bb.qi ], [ %i.aox, %bb.qm ], [ %i.aox, %bb.ql ], [ %i.aox, %bb.qk ], [ %i.aox, %bb.qj ], [ %i.aox, %bb.qn ], [ %i.aox, %bb.qo ], [ %i.aox, %bb.qp ], [ %i.aox, %bb.qq ], [ %i.aox, %bb.qr ], [ %i.aox, %bb.qs ], [ %i.aox, %bb.qt ], [ %i.aox, %bb.qu ], [ %i.aox, %bb.qv ], [ %i.aox, %bb.qw ], [ %i.aox, %bb.qx ], [ %i.aox, %bb.qy ], [ %i.aox, %bb.qz ], [ %i.aox, %bb.ra ], [ %i.aox, %bb.rd ], [ %i.aox, %bb.rc ], [ %i.aox, %bb.rb ], [ %i.aox, %bb.re ], [ %i.aox, %bb.rh ], [ %i.aox, %bb.rg ], [ %i.aox, %bb.rf ], [ %i.aox, %bb.ri ], [ %i.aox, %bb.rl ], [ %i.aox, %bb.rk ], [ %i.aox, %bb.rj ], [ %i.aox, %bb.rm ], [ %i.aox, %bb.rp ], [ %i.aox, %bb.ro ], [ %i.aox, %bb.rn ], [ %i.aox, %bb.rq ], [ %i.aox, %bb.sf ], [ %i.aox, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i ], [ %i.aox, %bb.sh ]
  %i.bsv = load i32, ptr %i.apy, align 8, !tbaa !138
  br label %bb.sz

bb.sz:                                            ; preds = %.sink.split, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i
  %i.bsw = phi i32 [ %i.apz, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i ], [ %i.bsv, %.sink.split ]
  %.0213.i = phi i32 [ %i.aox, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.thread459.i ], [ %.0213.i.ph, %.sink.split ] ; 2 uses
  %i.bsx = icmp eq i32 %i.bsw, 1
  br i1 %i.bsx, label %bb.ta, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

bb.ta:                                            ; preds = %bb.sz
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.apv, i64 112
  %.sroa.0.0.copyload.i383.i = load i32, ptr %i.bsy, align 8, !tbaa !61 ; 2 uses
  %i.bsz = add i32 %.sroa.0.0.copyload.i383.i, -1
  %i.bta = icmp ult i32 %i.bsz, 1073741823
  br i1 %i.bta, label %bb.tb, label %bb.tc

bb.tb:                                            ; preds = %bb.ta
  %i.btb = zext nneg i32 %.sroa.0.0.copyload.i383.i to i64
  %i.btc = getelementptr inbounds nuw [2 x i8], ptr @_ZZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoEE5Table, i64 %i.btb
  %i.btd = load i16, ptr %i.btc, align 2, !tbaa !419
  %i.bte = zext i16 %i.btd to i32
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %i.btf = phi i32 [ %i.bte, %bb.tb ], [ 0, %bb.ta ] ; 2 uses
  %i.btg = icmp eq i32 %i.btf, %.0213.i
  br i1 %i.btg, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.bth = zext nneg i32 %i.btf to i64
  %i.bti = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.bth ; 3 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bti, i64 4
  %i.btk = load i16, ptr %i.btj, align 4, !tbaa !1051
  %i.btl = zext i16 %i.btk to i32
  %i.btm = sub nsw i32 %.0213.i, %i.btl           ; 2 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.bti, i64 6
  %i.bto = load i16, ptr %i.btn, align 2, !tbaa !1052
  %i.btp = zext i16 %i.bto to i32
  %.not.i384.i = icmp ult i32 %i.btm, %i.btp
  br i1 %.not.i384.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit386.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit386.i: ; preds = %bb.td
  %i.btq = load i32, ptr %i.bti, align 8, !tbaa !1053
  %i.btr = add i32 %i.btq, %i.btm                 ; 2 uses
  %i.bts = lshr i32 %i.btr, 3
  %i.btt = zext nneg i32 %i.bts to i64
  %i.btu = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.btt
  %i.btv = load i8, ptr %i.btu, align 1, !tbaa !35
  %i.btw = zext i8 %i.btv to i32
  %i.btx = and i32 %i.btr, 7
  %i.bty = lshr i32 %i.btw, %i.btx
  %i.btz = trunc i32 %i.bty to i1
  br i1 %i.btz, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i: ; preds = %bb.pr, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i357, %bb.or, %bb.oq, %bb.on, %bb.om, %_ZL16matchTokenStringN4llvm9StringRefE.exit.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i, %bb.sx, %bb.tc, %bb.so, %bb.ss, %bb.oi, %_ZNK4llvm10X86Operand14isImmSExti64i8Ev.exit.i, %_ZNK4llvm10X86Operand14isImmSExti16i8Ev.exit, %_ZNK4llvm10X86Operand14isImmSExti32i8Ev.exit, %_ZNK4llvm10X86Operand15isImmSExti64i32Ev.exit.i, %bb.ov, %bb.ok, %_ZNK4llvm10X86Operand15isImmUnsignedi8Ev.exit.i, %_ZNK4llvm10X86Operand10isVK16PairEv.exit, %_ZNK4llvm10X86Operand9isVK1PairEv.exit, %_ZNK4llvm10X86Operand9isVK2PairEv.exit, %_ZNK4llvm10X86Operand9isVK4PairEv.exit, %_ZNK4llvm10X86Operand9isVK8PairEv.exit, %bb.pm, %_ZNK4llvm10X86Operand12isGR32orGR64Ev.exit, %_ZNK4llvm10X86Operand9isAbsMem8Ev.exit, %bb.ps, %_ZNK4llvm10X86Operand10isDstIdx16Ev.exit, %_ZNK4llvm10X86Operand10isDstIdx32Ev.exit, %_ZNK4llvm10X86Operand10isDstIdx64Ev.exit, %_ZNK4llvm10X86Operand9isDstIdx8Ev.exit, %_ZNK4llvm10X86Operand16isMemConstOffs64Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs16_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs16_32Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs16_8Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_32Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs32_64Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs32_8Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_16Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_32Ev.exit, %_ZNK4llvm10X86Operand14isMemOffs64_64Ev.exit, %_ZNK4llvm10X86Operand13isMemOffs64_8Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx16Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx32Ev.exit, %_ZNK4llvm10X86Operand10isSrcIdx64Ev.exit, %_ZNK4llvm10X86Operand9isSrcIdx8Ev.exit, %_ZNK4llvm10X86Operand8isAbsMemEv.exit, %bb.rr, %bb.rs, %bb.rt, %bb.ru, %_ZNK4llvm10X86Operand13isMem32_RC128Ev.exit.i, %_ZNK4llvm10X86Operand13isMem32_RC256Ev.exit.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit386.i, %_ZNK4llvm10X86Operand13isMem32_RC512Ev.exit.i, %bb.se, %bb.si, %bb.sj, %bb.sk, %_ZNK4llvm10X86Operand13isMem64_RC128Ev.exit.i, %_ZNK4llvm10X86Operand13isMem64_RC256Ev.exit.i, %bb.sc, %_ZNK4llvm10X86Operand13isMem64_RC512Ev.exit.i, %_ZNK4llvm10X86Operand7isMem80Ev.exit.i, %_ZNK4llvm10X86Operand7isMem80Ev.exit.i, %bb.sv, %_ZNK4llvm10X86Operand8isSibMemEv.exit.i, %_ZNK4llvm10X86Operand15isImmUnsignedi4Ev.exit.i, %_ZNK4llvm10X86Operand15isImmUnsignedi6Ev.exit.i, %bb.ou, %bb.pb, %bb.ry, %bb.sg, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i
  %i.bua = add nuw i32 %.0106683, 1
  br label %.thread

_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit: ; preds = %bb.td, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit386.i, %bb.oy, %bb.oz, %_ZNK4llvm10X86Operand15isImmUnsignedi6Ev.exit.i, %bb.ow, %bb.ox, %_ZNK4llvm10X86Operand15isImmUnsignedi4Ev.exit.i, %bb.sz, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i, %bb.og, %bb.no
  %.62.i = phi i32 [ 0, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i ], [ 0, %bb.sz ], [ 7, %bb.ow ], [ 8, %bb.oy ], [ 0, %bb.no ], [ 0, %bb.og ], [ 7, %_ZNK4llvm10X86Operand15isImmUnsignedi4Ev.exit.i ], [ 7, %bb.ox ], [ 8, %_ZNK4llvm10X86Operand15isImmUnsignedi6Ev.exit.i ], [ 8, %bb.oz ], [ 0, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit386.i ], [ 0, %bb.td ]
  %i.bub = load ptr, ptr %0, align 8, !tbaa !20
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bub, i64 104
  %i.bud = load ptr, ptr %i.buc, align 8
  %i.bue = tail call noundef i32 %i.bud(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.apv, i32 noundef %i.aox) #22 ; 3 uses
  %.not152 = icmp eq i32 %i.bue, 4
  %i.buf = add nuw i32 %.0106683, 1
  br i1 %.not152, label %.thread, label %bb.te

bb.te:                                            ; preds = %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit
  %i.bug = icmp ne i32 %i.bue, 0
  %or.cond = and i1 %.not9.i.i.i.i.i, %i.bug
  %spec.select = select i1 %or.cond, i32 %i.bue, i32 %.62.i ; 3 uses
  %i.buh = icmp eq i32 %spec.select, 0
  br i1 %i.buh, label %bb.tf, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165.thread481

bb.tf:                                            ; preds = %bb.te
  %i.bui = icmp eq i8 %i.aow, 1
  br i1 %i.bui, label %.thread, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.buj = zext i8 %i.aow to i64
  %i.buk = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.buj ; 3 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %i.buk, i64 4
  %i.bum = load i16, ptr %i.bul, align 4, !tbaa !1051
  %i.bun = zext i16 %i.bum to i32
  %i.buo = sub nsw i32 1, %i.bun                  ; 2 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %i.buk, i64 6
  %i.buq = load i16, ptr %i.bup, align 2, !tbaa !1052
  %i.bur = zext i16 %i.buq to i32
  %.not.i163 = icmp ult i32 %i.buo, %i.bur
  br i1 %.not.i163, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165.thread481

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165: ; preds = %bb.tg
  %i.bus = load i32, ptr %i.buk, align 8, !tbaa !1053
  %i.but = add i32 %i.bus, %i.buo                 ; 2 uses
  %i.buu = lshr i32 %i.but, 3
  %i.buv = zext nneg i32 %i.buu to i64
  %i.buw = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.buv
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !35
  %i.buy = zext i8 %i.bux to i32
  %i.buz = and i32 %i.but, 7
  %i.bva = lshr i32 %i.buy, %i.buz
  %i.bvb = trunc i32 %i.bva to i1
  br i1 %i.bvb, label %.thread, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165.thread481

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165.thread481: ; preds = %bb.tg, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165, %bb.te
  %i.bvc = trunc nuw i8 %.0127686 to i1
  br i1 %i.bvc, label %.thread508, label %bb.th

bb.th:                                            ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165.thread481
  %i.bvd = icmp eq ptr %.0113688, %.011.lcssa.i.i.i
  br i1 %i.bvd, label %bb.tj, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %i.bve = load i64, ptr %3, align 8, !tbaa !51
  %.not153 = icmp ugt i64 %i.bve, %i.aoy
  br i1 %.not153, label %.thread508, label %bb.tj

bb.tj:                                            ; preds = %bb.ti, %bb.th
  br i1 %.not9.i.i.i.i.i, label %bb.tk, label %bb.tl

bb.tk:                                            ; preds = %bb.tj
  %i.bvf = load i64, ptr %3, align 8, !tbaa !51
  %i.bvg = icmp ne i64 %i.bvf, %i.aoy
  %i.bvh = icmp ne i32 %spec.select, 0
  %or.cond6 = or i1 %i.bvh, %i.bvg
  %spec.select157 = select i1 %or.cond6, i32 %spec.select, i32 %.0121687
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tk, %bb.tj
  %.2123 = phi i32 [ %.0121687, %bb.tj ], [ %spec.select157, %bb.tk ]
  store i64 %i.aoy, ptr %3, align 8, !tbaa !51
  br label %.thread508

.thread:                                          ; preds = %bb.nm, %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit, %bb.tf, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit
  %.4489 = phi i32 [ %.0106683, %bb.nm ], [ %.0106683, %bb.tf ], [ %.0106683, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit ], [ %i.bua, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i ], [ %.0106683, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit165 ], [ %i.buf, %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not150 = icmp eq i64 %indvars.iv.next, 9
  br i1 %.not150, label %.thread491, label %bb.nl, !llvm.loop !1041

.thread491:                                       ; preds = %.thread, %bb.nm
  br i1 %.not9.i.i.i.i.i, label %bb.to, label %bb.tm

bb.tm:                                            ; preds = %.thread491
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8
  %i.bvi = xor i64 %.sroa.0.0.copyload, -1
  %i.bvj = and i64 %i.aor, %i.bvi                 ; 2 uses
  %i.bvk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bvj)
  %i.bvl = load <6 x i64>, ptr %4, align 8, !tbaa !51
  %i.bvm = tail call range(i64 0, 65) <6 x i64> @llvm.ctpop.v6i64(<6 x i64> %i.bvl)
  %i.bvn = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %i.bvm)
  %.not154 = icmp samesign ugt i64 %i.bvk, %i.bvn
  br i1 %.not154, label %.thread508, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  store i64 %i.bvj, ptr %4, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.ptr.1.i166, i8 0, i64 40, i1 false)
  br label %.thread508

bb.to:                                            ; preds = %.thread491
  store i32 0, ptr %i.aok, align 8, !tbaa !103
  %i.bvo = getelementptr inbounds nuw i8, ptr %.0113688, i64 4 ; 2 uses
  %i.bvp = load i32, ptr %i.bvo, align 4, !tbaa !1055
  store i32 %i.bvp, ptr %2, align 8, !tbaa !165
  %i.bvq = load ptr, ptr %0, align 8, !tbaa !20
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 112
  %i.bvs = load ptr, ptr %i.bvr, align 8
  %i.bvt = tail call noundef i32 %i.bvs(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(16) %1) #22 ; 2 uses
  %.not155 = icmp eq i32 %i.bvt, 4
  br i1 %.not155, label %bb.tq, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  store i32 0, ptr %i.aok, align 8, !tbaa !103
  br label %.thread508

bb.tq:                                            ; preds = %bb.to
  %i.bvu = getelementptr inbounds nuw i8, ptr %.0113688, i64 8
  %i.bvv = load i16, ptr %i.bvu, align 4, !tbaa !1056 ; 2 uses
  br i1 %5, label %bb.tr, label %bb.tu

bb.tr:                                            ; preds = %bb.tq
  %i.bvw = getelementptr inbounds nuw i8, ptr %.0113688, i64 8
  %i.bvx = zext i16 %i.bvv to i32
  %i.bvy = load ptr, ptr %0, align 8, !tbaa !20
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvy, i64 128
  %i.bwa = load ptr, ptr %i.bvz, align 8
  tail call void %i.bwa(ptr noundef nonnull align 8 dereferenceable(130) %0, i32 noundef %i.bvx, ptr noundef nonnull align 8 dereferenceable(16) %1) #22
  %i.bwb = load i16, ptr %i.bvw, align 4, !tbaa !1056
  %i.bwc = zext i16 %i.bwb to i64
  %i.bwd = getelementptr inbounds nuw [13 x i8], ptr @_ZL15ConversionTable, i64 %i.bwc ; 2 uses
  %i.bwe = load i8, ptr %i.bwd, align 1, !tbaa !35 ; 2 uses
  %.not39.i = icmp eq i8 %i.bwe, 0
  br i1 %.not39.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.tr, %.critedge34.i
  %i.bwf = phi i8 [ %i.bxa, %.critedge34.i ], [ %i.bwe, %bb.tr ]
  %.02540.i = phi ptr [ %i.bwz, %.critedge34.i ], [ %i.bwd, %bb.tr ] ; 2 uses
  %cond1.i = icmp eq i8 %i.bwf, 2
  br i1 %cond1.i, label %bb.ts, label %.critedge34.i

bb.ts:                                            ; preds = %.lr.ph.i
  %i.bwg = getelementptr inbounds nuw i8, ptr %.02540.i, i64 1
  %i.bwh = load i8, ptr %i.bwg, align 1, !tbaa !35
  %i.bwi = zext i8 %i.bwh to i64
  %i.bwj = getelementptr inbounds nuw [3 x i8], ptr @_ZL19TiedAsmOperandTable, i64 %i.bwi ; 2 uses
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwj, i64 1
  %i.bwl = load i8, ptr %i.bwk, align 1, !tbaa !35 ; 2 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwj, i64 2
  %i.bwn = load i8, ptr %i.bwm, align 1, !tbaa !35 ; 2 uses
  %.not32.i = icmp eq i8 %i.bwl, %i.bwn
  br i1 %.not32.i, label %.critedge34.i, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.bwo = zext i8 %i.bwl to i64
  %i.bwp = load ptr, ptr %1, align 8, !tbaa !28   ; 2 uses
  %i.bwq = getelementptr inbounds nuw [8 x i8], ptr %i.bwp, i64 %i.bwo
  %i.bwr = zext i8 %i.bwn to i64                  ; 2 uses
  %i.bws = getelementptr inbounds nuw [8 x i8], ptr %i.bwp, i64 %i.bwr
  %i.bwt = load ptr, ptr %i.bwq, align 8, !tbaa !143
  %i.bwu = load ptr, ptr %i.bws, align 8, !tbaa !143
  %i.bwv = load ptr, ptr %0, align 8, !tbaa !20
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 136
  %i.bwx = load ptr, ptr %i.bww, align 8
  %i.bwy = tail call noundef zeroext i1 %i.bwx(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.bwt, ptr noundef nonnull align 8 dereferenceable(48) %i.bwu) #22, !inline_history !1042
  br i1 %i.bwy, label %.critedge34.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.thread.sink.split

.critedge34.i:                                    ; preds = %bb.tt, %bb.ts, %.lr.ph.i
  %i.bwz = getelementptr inbounds nuw i8, ptr %.02540.i, i64 2 ; 2 uses
  %i.bxa = load i8, ptr %i.bwz, align 1, !tbaa !35 ; 2 uses
  %.not.i171 = icmp eq i8 %i.bxa, 0
  br i1 %.not.i171, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.thread, label %.lr.ph.i, !llvm.loop !1043

bb.tu:                                            ; preds = %bb.tq
  %i.bxb = load i32, ptr %i.bvo, align 4, !tbaa !1055
  %i.bxc = zext i16 %i.bvv to i64
  %i.bxd = getelementptr inbounds nuw [13 x i8], ptr @_ZL15ConversionTable, i64 %i.bxc ; 2 uses
  store i32 %i.bxb, ptr %2, align 8, !tbaa !165
  %i.bxe = load i8, ptr %i.bxd, align 1, !tbaa !35 ; 2 uses
  %.not5.i = icmp eq i8 %i.bxe, 0
  br i1 %.not5.i, label %_ZN12_GLOBAL__N_112X86AsmParser15convertToMCInstEjRN4llvm6MCInstEjRKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit, label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %bb.tu, %_ZNK4llvm10X86Operand14addRegOperandsERNS_6MCInstEj.exit.i
  %i.bxf = phi i8 [ %i.cky, %_ZNK4llvm10X86Operand14addRegOperandsERNS_6MCInstEj.exit.i ], [ %i.bxe, %bb.tu ]
  %.06.i = phi ptr [ %i.ckx, %_ZNK4llvm10X86Operand14addRegOperandsERNS_6MCInstEj.exit.i ], [ %i.bxd, %bb.tu ] ; 2 uses
  %i.bxg = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.bxh = load i8, ptr %i.bxg, align 1, !tbaa !35 ; 13 uses
  switch i8 %i.bxf, label %bb.tv [
    i8 1, label %bb.tw
    i8 2, label %bb.tz
    i8 3, label %bb.uc
    i8 4, label %bb.uf
    i8 5, label %bb.um
    i8 6, label %bb.un
    i8 7, label %bb.uq
    i8 8, label %bb.ut
end_hunk_2
