Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCAsmParser?download=true
inline.NumInlined: 3773
inline.NumDeleted: 668
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_112PPCAsmParser23matchAndEmitInstructionEN4llvm5SMLocERjRNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERNS1_10MCStreamerERmb:bb.a
  %i.ba = icmp ult i64 %.sroa.7202.0.i.i, %i.ap
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.thread15.i.i.i.i, label %.critedge.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i28.i.i.i.i
  %i.bb = icmp slt i32 %.fr.i.i.i.i29.i.i.i.i, 0
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.thread15.i.i.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i, %.thread.i.i.i.i34.i.i.i.i
  %.not241 = icmp eq i64 %i.ak, 0
  br i1 %.not241, label %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i.i
  %.04.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i.i ], [ %i.ak, %.critedge.i.i.i.i ] ; 2 uses
  %.0113.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i.i ], [ %.021.i.i.i.i, %.critedge.i.i.i.i ] ; 2 uses
  %i.bc = lshr i64 %.04.i.i.i.i.i, 1              ; 3 uses
  %i.bd = getelementptr inbounds nuw [20 x i8], ptr %.0113.i.i.i.i.i, i64 %i.bc ; 2 uses
  %.val.i.i.i.i.i = load i16, ptr %i.bd, align 4, !tbaa !225
  %i.be = zext i16 %.val.i.i.i.i.i to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZL13MnemonicTable, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34
  %i.bh = sext i8 %i.bg to i64                    ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.7202.0.i.i, i64 %i.bh) ; 2 uses
  %i.bi = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %.thread.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bk = call i32 @memcmp(ptr noundef nonnull %i.bj, ptr noundef readonly %.sroa.0200.0.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #26
  %.fr.i.i.i.i.i.i.i.i.i = freeze i32 %i.bk       ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bl = icmp eq i64 %.sroa.7202.0.i.i, %i.bh
  br i1 %i.bl, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %i.bm = icmp ugt i64 %.sroa.7202.0.i.i, %i.bh
  %i.bn = select i1 %i.bm, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i.i: ; preds = %bb.f, %.thread.i.i.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %i.bn, %bb.f ], [ 0, %.thread.i.i.i.i.i.i.i.i.i ]
  %i.bo = icmp slt i32 %.1.i.i.i.i.i.i.i.i.i, 0   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bq = xor i64 %i.bc, -1
  %i.br = add nsw i64 %.04.i.i.i.i.i, %i.bq
  %.112.i.i.i.i.i = select i1 %i.bo, ptr %i.bp, ptr %.0113.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.bo, i64 %i.br, i64 %i.bc ; 2 uses
  %i.bs = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i, label %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i.i.i, !llvm.loop !189

_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i.i, %.critedge.i.i.i.i
  %.011.lcssa.i.i.i.i.i = phi ptr [ %.021.i.i.i.i, %.critedge.i.i.i.i ], [ %.112.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.i.i.i.i.i ] ; 3 uses
  %.idx = mul nuw nsw i64 %.01322.i.i.i.i, 20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 20 ; 2 uses
  %i.bu = add nuw nsw i64 %.idx242, 20
  %gepdiff = sub nsw i64 %.idx, %i.bu             ; 2 uses
  %i.bv = icmp sgt i64 %gepdiff, 0
  br i1 %i.bv, label %.lr.ph.preheader.i38.i.i.i.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.i.i

.lr.ph.preheader.i38.i.i.i.i:                     ; preds = %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i.i.i
  %i.bw = udiv exact i64 %gepdiff, 20
  br label %.lr.ph.i39.i.i.i.i

.lr.ph.i39.i.i.i.i:                               ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i.i, %.lr.ph.preheader.i38.i.i.i.i
  %.04.i40.i.i.i.i = phi i64 [ %.1.i52.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i.i ], [ %i.bw, %.lr.ph.preheader.i38.i.i.i.i ] ; 2 uses
  %.0113.i41.i.i.i.i = phi ptr [ %.112.i51.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i.i ], [ %i.bt, %.lr.ph.preheader.i38.i.i.i.i ] ; 2 uses
  %i.bx = lshr i64 %.04.i40.i.i.i.i, 1            ; 3 uses
  %i.by = getelementptr inbounds nuw [20 x i8], ptr %.0113.i41.i.i.i.i, i64 %i.bx ; 2 uses
  %.val14.i.i.i.i.i = load i16, ptr %i.by, align 4, !tbaa !225
  %i.bz = zext i16 %.val14.i.i.i.i.i to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZL13MnemonicTable, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !34
  %i.cc = sext i8 %i.cb to i64                    ; 3 uses
  %.sroa.speculated.i.i.i.i.i44.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cc, i64 %.sroa.7202.0.i.i) ; 2 uses
  %i.cd = icmp eq i64 %.sroa.speculated.i.i.i.i.i44.i.i.i.i, 0
  br i1 %i.cd, label %.thread.i.i.i.i.i53.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i.i.i: ; preds = %.lr.ph.i39.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cf = call i32 @memcmp(ptr noundef readonly %.sroa.0200.0.i.i, ptr noundef nonnull %i.ce, i64 noundef %.sroa.speculated.i.i.i.i.i44.i.i.i.i) #26
  %.fr.i.i.i.i.i46.i.i.i.i = freeze i32 %i.cf     ; 2 uses
  %.not.not.i.i.i.i.i47.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i46.i.i.i.i, 0
  %.inv.i.i.i.i.i48.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i46.i.i.i.i, -1
  %spec.select.i.i.i.i.i49.i.i.i.i = select i1 %.inv.i.i.i.i.i48.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i47.i.i.i.i, label %.thread.i.i.i.i.i53.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i.i

.thread.i.i.i.i.i53.i.i.i.i:                      ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i.i.i, %.lr.ph.i39.i.i.i.i
  %i.cg = icmp eq i64 %.sroa.7202.0.i.i, %i.cc
  br i1 %i.cg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.thread.i.i.i.i.i53.i.i.i.i
  %i.ch = icmp ult i64 %.sroa.7202.0.i.i, %i.cc
  %i.ci = select i1 %i.ch, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i.i: ; preds = %bb.g, %.thread.i.i.i.i.i53.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i.i.i
  %.1.i.i.i.i.i50.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i49.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i45.i.i.i.i ], [ %i.ci, %bb.g ], [ 0, %.thread.i.i.i.i.i53.i.i.i.i ]
  %i.cj = icmp slt i32 %.1.i.i.i.i.i50.i.i.i.i, 0 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  %i.cl = xor i64 %i.bx, -1
  %i.cm = add nsw i64 %.04.i40.i.i.i.i, %i.cl
  %.112.i51.i.i.i.i = select i1 %i.cj, ptr %.0113.i41.i.i.i.i, ptr %i.ck ; 2 uses
  %.1.i52.i.i.i.i = select i1 %i.cj, i64 %i.bx, i64 %i.cm ; 2 uses
  %i.cn = icmp sgt i64 %.1.i52.i.i.i.i, 0
  br i1 %i.cn, label %.lr.ph.i39.i.i.i.i, label %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.i.i, !llvm.loop !190

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.thread15.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i, %.thread.i.i.i.i34.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.aw, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i.i.i ], [ %.021.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i ], [ %.021.i.i.i.i, %.thread.i.i.i.i34.i.i.i.i ]
  %.2.i.i.i.i = phi i64 [ %i.ay, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_110LessOpcodeEEclIPKNS2_10MatchEntryEKN4llvm9StringRefEEEbT_RT0_.exit.thread11.i.i.i.i ], [ %i.ak, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i ], [ %i.ak, %.thread.i.i.i.i34.i.i.i.i ] ; 2 uses
  %i.co = icmp sgt i64 %.2.i.i.i.i, 0
  br i1 %i.co, label %bb.e, label %_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread53, !llvm.loop !191

_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i.i, %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.bt, %_ZSt13__lower_boundIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefEN9__gnu_cxx5__ops14_Iter_comp_valINS0_10LessOpcodeEEEET_SB_SB_RKT0_T1_.exit.i.i.i.i ], [ %.112.i51.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_110LessOpcodeEEclIKN4llvm9StringRefEPKNS2_10MatchEntryEEEbRT_T0_.exit.i.i.i.i.i ] ; 2 uses
  %i.cp = icmp eq ptr %.011.lcssa.i.i.i.i.i, %.sroa.3.0.i.i.i.i
  br i1 %i.cp, label %_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread53, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZSt11equal_rangeIPKN12_GLOBAL__N_110MatchEntryEN4llvm9StringRefENS0_10LessOpcodeEESt4pairIT_S8_ES8_S8_RKT0_T1_.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.h

bb.h:                                             ; preds = %.thread241.i.i, %.preheader.i.i
  %.0121286.i.i = phi ptr [ %.011.lcssa.i.i.i.i.i, %.preheader.i.i ], [ %i.wc, %.thread241.i.i ] ; 6 uses
  %.0129285.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.8.ph.i.i, %.thread241.i.i ] ; 7 uses
  %.0136284.i.i = phi i8 [ 0, %.preheader.i.i ], [ %.2138.ph.i.i, %.thread241.i.i ] ; 4 uses
  %.0140283.i.i = phi i1 [ false, %.preheader.i.i ], [ %.1141.ph.i.i, %.thread241.i.i ] ; 6 uses
  %i.cs = phi <6 x i64> [ splat (i64 -1), %.preheader.i.i ], [ %i.wb, %.thread241.i.i ] ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0121286.i.i, i64 10
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !226
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr @_ZL14FeatureBitsets, i64 %i.cv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !228
  %i.cx = load i64, ptr %i.cw, align 16, !tbaa !27, !noalias !227 ; 2 uses
  %i.cy = load i64, ptr %47, align 8, !tbaa !27, !alias.scope !227
  %i.cz = and i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %47, align 8, !tbaa !27, !alias.scope !227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, i8 0, i64 40, i1 false)
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull align 8 dereferenceable(48) %i.cw, i64 48)
  %.not9.i.i.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i.i.i, 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  %i.da = getelementptr inbounds nuw i8, ptr %.0121286.i.i, i64 11
  br label %bb.i

bb.i:                                             ; preds = %.thread.i.i, %bb.h
  %indvars.iv.i.i = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i.i, %.thread.i.i ] ; 2 uses
  %.0112281.i.i = phi i32 [ 1, %bb.h ], [ %.4116222.i.i, %.thread.i.i ] ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.i.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !34  ; 10 uses
  %i.dd = zext i8 %i.dc to i32                    ; 4 uses
  %i.de = zext i32 %.0112281.i.i to i64           ; 5 uses
  %i.df = load i32, ptr %i.j, align 8, !tbaa !73
  %.not154.i.i = icmp ugt i32 %i.df, %.0112281.i.i
  br i1 %.not154.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %i.dc, label %bb.k [
    i8 0, label %.thread224.i.i
    i8 1, label %.thread.i.i
  ]

bb.k:                                             ; preds = %bb.j
  %i.dg = zext i8 %i.dc to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.dg ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i16, ptr %i.di, align 4, !tbaa !230
  %i.dk = zext i16 %i.dj to i32
  %i.dl = sub nsw i32 1, %i.dk                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 6
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !231
  %i.do = zext i16 %i.dn to i32
  %.not.i166.i.i = icmp ult i32 %i.dl, %i.do
  br i1 %.not.i166.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i.i, label %.thread224.thread.i.i

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i.i: ; preds = %bb.k
  %i.dp = load i32, ptr %i.dh, align 8, !tbaa !232
  %i.dq = add i32 %i.dp, %i.dl                    ; 2 uses
  %i.dr = lshr i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !34
  %i.dv = zext i8 %i.du to i32
  %i.dw = and i32 %i.dq, 7
  %i.dx = lshr i32 %i.dv, %i.dw
  %i.dy = trunc i32 %i.dx to i1
  br i1 %i.dy, label %.thread.i.i, label %.thread224.thread.i.i

.thread224.thread.i.i:                            ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i.i, %bb.k
  store i64 %i.de, ptr %5, align 8, !tbaa !27
  br label %.thread241.i.i

bb.l:                                             ; preds = %bb.i
  %i.dz = load ptr, ptr %3, align 8, !tbaa !75
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.de
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !78 ; 126 uses
  %i.ec = load ptr, ptr %i.cr, align 8, !tbaa !233 ; 2 uses
  %i.ed = icmp eq i8 %i.dc, 0
  br i1 %i.ed, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(104) %i.eb) #21, !inline_history !194
  %i.ei = icmp ult i8 %i.dc, 12
  %or.cond.i.i.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ej = getelementptr i8, ptr %i.eb, i64 88
  %.val265.i.i.i = load ptr, ptr %i.ej, align 8, !tbaa !34 ; 3 uses
  %i.ek = getelementptr i8, ptr %i.eb, i64 96
  %.val266.i.i.i = load i32, ptr %i.ek, align 8, !tbaa !34
  switch i32 %.val266.i.i.i, label %bb.q [
    i32 1, label %bb.o
    i32 3, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.el = load i8, ptr %.val265.i.i.i, align 1, !tbaa !34
  %switch.tableidx = add i8 %i.el, -46            ; 2 uses
  %i.em = icmp ult i8 %switch.tableidx, 10
  br i1 %i.em, label %switch.lookup, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.en = load i16, ptr %.val265.i.i.i, align 1
  %i.eo = xor i16 %i.en, 29283
  %i.ep = getelementptr i8, ptr %.val265.i.i.i, i64 2
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = zext i8 %i.eq to i16
  %i.es = xor i16 %i.er, 68
  %i.et = or i16 %i.eo, %i.es
  %i.eu = icmp ne i16 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %.not.i.i.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i.i.i

switch.lookup:                                    ; preds = %bb.o
  %i.ew = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_112PPCAsmParser23matchAndEmitInstructionEN4llvm5SMLocERjRNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERNS1_10MCStreamerERmb, i64 %i.ew
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit.i.i.i

_ZL16matchTokenStringN4llvm9StringRefE.exit.i.i.i: ; preds = %switch.lookup, %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ 0, %bb.q ], [ %switch.ext, %switch.lookup ], [ 11, %bb.p ] ; 2 uses
  %i.ex = icmp eq i32 %.0.i.i.i.i, %i.dd
  br i1 %i.ex, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZL16matchTokenStringN4llvm9StringRefE.exit.i.i.i
  %i.ey = zext nneg i32 %.0.i.i.i.i to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.ey ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i16, ptr %i.fa, align 4, !tbaa !230
  %i.fc = zext i16 %i.fb to i32
  %i.fd = sub nsw i32 %i.dd, %i.fc                ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 6
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !231
  %i.fg = zext i16 %i.ff to i32
  %.not.i372.i.i.i = icmp ult i32 %i.fd, %i.fg
  br i1 %.not.i372.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i.i.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.i.i

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i.i.i: ; preds = %bb.r
  %i.fh = load i32, ptr %i.ez, align 8, !tbaa !232
  %i.fi = add i32 %i.fh, %i.fd                    ; 2 uses
  %i.fj = lshr i32 %i.fi, 3
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !34
  %i.fn = zext i8 %i.fm to i32
  %i.fo = and i32 %i.fi, 7
  %i.fp = lshr i32 %i.fn, %i.fo
  %.fr.i.i.i = freeze i32 %i.fp
  %i.fq = trunc i32 %.fr.i.i.i to i1
  br i1 %i.fq, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.i.i

bb.s:                                             ; preds = %bb.m
  switch i8 %i.dc, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i8 127, label %bb.ce
    i8 70, label %bb.t
    i8 71, label %bb.u
    i8 72, label %bb.v
    i8 73, label %bb.w
    i8 74, label %bb.x
    i8 75, label %bb.z
    i8 76, label %bb.ab
    i8 77, label %bb.ac
    i8 78, label %bb.ad
    i8 79, label %bb.ae
    i8 80, label %bb.ag
    i8 81, label %bb.ai
    i8 82, label %bb.aj
    i8 83, label %bb.ak
    i8 84, label %bb.al
    i8 85, label %bb.am
    i8 86, label %bb.ao
    i8 87, label %bb.aq
    i8 88, label %bb.ar
    i8 89, label %bb.as
    i8 90, label %bb.at
    i8 91, label %bb.au
    i8 92, label %bb.av
    i8 93, label %bb.aw
    i8 94, label %bb.ax
    i8 95, label %bb.ay
    i8 96, label %bb.az
    i8 97, label %bb.ba
    i8 98, label %bb.bb
    i8 99, label %bb.bc
    i8 100, label %bb.bd
    i8 101, label %bb.be
    i8 102, label %bb.bf
    i8 103, label %bb.bg
    i8 104, label %bb.bh
    i8 105, label %bb.bi
    i8 106, label %bb.bj
    i8 107, label %bb.bk
    i8 108, label %bb.bl
    i8 109, label %bb.bm
    i8 110, label %bb.bn
    i8 111, label %bb.bo
    i8 112, label %bb.bp
    i8 113, label %bb.bq
    i8 114, label %bb.br
    i8 115, label %bb.bs
    i8 116, label %bb.bt
    i8 117, label %bb.bu
    i8 118, label %bb.bv
    i8 119, label %bb.bw
    i8 120, label %bb.bx
    i8 121, label %bb.by
    i8 122, label %bb.bz
    i8 123, label %bb.ca
    i8 124, label %bb.cb
    i8 125, label %bb.cc
    i8 126, label %bb.cd
  ]

bb.t:                                             ; preds = %bb.s
  %i.fr = load ptr, ptr %i.eb, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = call noundef zeroext i1 %i.ft(ptr noundef nonnull align 8 dereferenceable(104) %i.eb) #21, !inline_history !194
  br i1 %i.fu, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val267.i.i.i = load i32, ptr %i.fv, align 8, !tbaa !67
  %i.fw = getelementptr i8, ptr %i.eb, i64 88
  %.val268.i.i.i = load i64, ptr %i.fw, align 8
  %i.fx = icmp eq i32 %.val267.i.i.i, 1
  %i.fy = icmp eq i64 %.val268.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %spec.select.i.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.v:                                             ; preds = %bb.s
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val271.i.i.i = load i32, ptr %i.fz, align 8, !tbaa !67 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.eb, i64 88
  %.val272.i.i.i = load i64, ptr %i.ga, align 8
  %i.gb = icmp eq i32 %.val271.i.i.i, 3
  %i.gc = icmp eq i32 %.val271.i.i.i, 1
  %i.gd = add i64 %.val272.i.i.i, 2147483648
  %i.ge = icmp ult i64 %i.gd, 4294967296
  %i.gf = select i1 %i.gc, i1 %i.ge, i1 false
  %i.gg = select i1 %i.gb, i1 true, i1 %i.gf
  br i1 %i.gg, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.w:                                             ; preds = %bb.s
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val273.i.i.i = load i32, ptr %i.gh, align 8, !tbaa !67
  %i.gi = getelementptr i8, ptr %i.eb, i64 88
  %.val274.i.i.i = load i64, ptr %i.gi, align 8   ; 2 uses
  %i.gj = icmp eq i32 %.val273.i.i.i, 1
  %i.gk = add i64 %.val274.i.i.i, -1
  %i.gl = icmp ult i64 %i.gk, 255
  %or.cond1.i.not595.i.i.i = select i1 %i.gj, i1 %i.gl, i1 false
  %i.gm = trunc nuw nsw i64 %.val274.i.i.i to i32
  %i.gn = call range(i32 1, 9) i32 @llvm.ctpop.i32(i32 %i.gm)
  %i.go = icmp samesign ult i32 %i.gn, 2
  %or.cond587.i.i.i = select i1 %or.cond1.i.not595.i.i.i, i1 %i.go, i1 false
  br i1 %or.cond587.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.x:                                             ; preds = %bb.s
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val275.i.i.i = load i32, ptr %i.gp, align 8, !tbaa !67
  switch i32 %.val275.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i32 3, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i
    i32 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.gq = getelementptr i8, ptr %i.eb, i64 88
  %.val276.i.i.i = load i64, ptr %i.gq, align 8   ; 2 uses
  %i.gr = add i64 %.val276.i.i.i, 32768
  %i.gs = icmp ult i64 %i.gr, 65536
  %i.gt = and i64 %.val276.i.i.i, 3
  %i.gu = icmp eq i64 %i.gt, 0
  %or.cond589.i.i.i = and i1 %i.gs, %i.gu
  br i1 %or.cond589.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.z:                                             ; preds = %bb.s
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !67
  switch i32 %i.gw, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i32 3, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i
    i32 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eb, i64 88
  %.val6.i.i.i = load i64, ptr %i.gx, align 8, !tbaa !34 ; 2 uses
  %i.gy = and i64 %.val6.i.i.i, 3
  %.not3.i.i.i = icmp eq i64 %i.gy, 0
  %58 = add i64 %.val6.i.i.i, 33554432
  %59 = icmp ult i64 %58, 67108864
  %or.cond597.i.i.i = and i1 %.not3.i.i.i, %59
  br i1 %or.cond597.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ab:                                            ; preds = %bb.s
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val279.i.i.i = load i32, ptr %i.gz, align 8, !tbaa !67 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.eb, i64 88
  %.val280.i.i.i = load i64, ptr %i.ha, align 8
  %i.hb = icmp eq i32 %.val279.i.i.i, 3
  %i.hc = icmp eq i32 %.val279.i.i.i, 1
  %i.hd = add i64 %.val280.i.i.i, 8589934592
  %i.he = icmp ult i64 %i.hd, 17179869184
  %i.hf = select i1 %i.hc, i1 %i.he, i1 false
  %i.hg = select i1 %i.hb, i1 true, i1 %i.hf
  br i1 %i.hg, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ac:                                            ; preds = %bb.s
  %i.hh = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val281.i.i.i = load i32, ptr %i.hh, align 8, !tbaa !67
  %i.hi = getelementptr i8, ptr %i.eb, i64 88
  %.val282.i.i.i = load i64, ptr %i.hi, align 8   ; 2 uses
  %i.hj = icmp eq i32 %.val281.i.i.i, 1
  %i.hk = icmp slt i64 %.val282.i.i.i, -7
  %i.hl = and i64 %.val282.i.i.i, -505
  %i.hm = icmp eq i64 %i.hl, -512
  %i.hn = and i1 %i.hk, %i.hm
  %i.ho = select i1 %i.hj, i1 %i.hn, i1 false
  br i1 %i.ho, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ad:                                            ; preds = %bb.s
  %i.hp = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val285.i.i.i = load i32, ptr %i.hp, align 8, !tbaa !67 ; 2 uses
  switch i32 %.val285.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i32 3, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i
    i32 1, label %_ZNK12_GLOBAL__N_110PPCOperand8isS16ImmEv.exit.i.i.i
    i32 2, label %_ZNK12_GLOBAL__N_110PPCOperand8isS16ImmEv.exit.i.i.i
  ]

_ZNK12_GLOBAL__N_110PPCOperand8isS16ImmEv.exit.i.i.i: ; preds = %bb.ad, %bb.ad
  %i.hq = getelementptr i8, ptr %i.eb, i64 88
  %.val286.i.i.i = load i64, ptr %i.hq, align 8   ; 2 uses
  %i.hr = icmp eq i32 %.val285.i.i.i, 1
  %sext.i.i.i.i.i.i = shl i64 %.val286.i.i.i, 48
  %i.hs = ashr exact i64 %sext.i.i.i.i.i.i, 48
  %.0.i.i.i.i.i.i = select i1 %i.hr, i64 %.val286.i.i.i, i64 %i.hs
  %i.ht = add i64 %.0.i.i.i.i.i.i, 32768
  %i.hu = icmp ult i64 %i.ht, 65536
  br i1 %i.hu, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ae:                                            ; preds = %bb.s
  %i.hv = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val287.i.i.i = load i32, ptr %i.hv, align 8, !tbaa !67 ; 2 uses
  switch i32 %.val287.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i32 3, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i
    i32 1, label %bb.af
    i32 2, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.hw = getelementptr i8, ptr %i.eb, i64 88
  %.val288.i.i.i = load i64, ptr %i.hw, align 8   ; 2 uses
  %i.hx = icmp eq i32 %.val287.i.i.i, 1
  %sext.i.i.i381.i.i.i = shl i64 %.val288.i.i.i, 48
  %i.hy = ashr exact i64 %sext.i.i.i381.i.i.i, 48
  %.0.i.i.i382.i.i.i = select i1 %i.hx, i64 %.val288.i.i.i, i64 %i.hy ; 2 uses
  %i.hz = add i64 %.0.i.i.i382.i.i.i, 32768
  %i.ia = icmp ult i64 %i.hz, 65536
  %i.ib = and i64 %.0.i.i.i382.i.i.i, 15
  %i.ic = icmp eq i64 %i.ib, 0
  %or.cond591.i.i.i = and i1 %i.ia, %i.ic
  br i1 %or.cond591.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ag:                                            ; preds = %bb.s
  %i.id = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val289.i.i.i = load i32, ptr %i.id, align 8, !tbaa !67 ; 2 uses
  switch i32 %.val289.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i32 3, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i
    i32 1, label %bb.ah
    i32 2, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  %i.ie = getelementptr i8, ptr %i.eb, i64 88
  %.val290.i.i.i = load i64, ptr %i.ie, align 8   ; 2 uses
  %i.if = icmp eq i32 %.val289.i.i.i, 1
  %sext.i.i.i385.i.i.i = shl i64 %.val290.i.i.i, 48
  %i.ig = ashr exact i64 %sext.i.i.i385.i.i.i, 48
  %.0.i.i.i386.i.i.i = select i1 %i.if, i64 %.val290.i.i.i, i64 %i.ig ; 2 uses
  %i.ih = add i64 %.0.i.i.i386.i.i.i, 32768
  %i.ii = icmp ult i64 %i.ih, 65536
  %i.ij = and i64 %.0.i.i.i386.i.i.i, 3
  %i.ik = icmp eq i64 %i.ij, 0
  %or.cond593.i.i.i = and i1 %i.ii, %i.ik
  br i1 %or.cond593.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ai:                                            ; preds = %bb.s
  %i.il = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val293.i.i.i = load i32, ptr %i.il, align 8, !tbaa !67
  %i.im = getelementptr i8, ptr %i.eb, i64 88
  %.val294.i.i.i = load i64, ptr %i.im, align 8
  %i.in = icmp eq i32 %.val293.i.i.i, 1
  %i.io = and i64 %.val294.i.i.i, -63
  %i.ip = icmp eq i64 %i.io, 0
  %i.iq = select i1 %i.in, i1 %i.ip, i1 false
  br i1 %i.iq, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.aj:                                            ; preds = %bb.s
  %i.ir = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val297.i.i.i = load i32, ptr %i.ir, align 8, !tbaa !67
  %i.is = getelementptr i8, ptr %i.eb, i64 88
  %.val298.i.i.i = load i64, ptr %i.is, align 8
  %i.it = icmp eq i32 %.val297.i.i.i, 1
  %i.iu = and i64 %.val298.i.i.i, -125
  %i.iv = icmp eq i64 %i.iu, 0
  %i.iw = select i1 %i.it, i1 %i.iv, i1 false
  br i1 %i.iw, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ak:                                            ; preds = %bb.s
  %i.ix = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val301.i.i.i = load i32, ptr %i.ix, align 8, !tbaa !67
  %i.iy = getelementptr i8, ptr %i.eb, i64 88
  %.val302.i.i.i = load i64, ptr %i.iy, align 8
  %i.iz = icmp eq i32 %.val301.i.i.i, 1
  %i.ja = and i64 %.val302.i.i.i, -249
  %i.jb = icmp eq i64 %i.ja, 0
  %i.jc = select i1 %i.iz, i1 %i.jb, i1 false
  br i1 %i.jc, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.al:                                            ; preds = %bb.s
  %i.jd = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val303.i.i.i = load i32, ptr %i.jd, align 8, !tbaa !67
  %i.je = getelementptr i8, ptr %i.eb, i64 88
  %.val304.i.i.i = load i64, ptr %i.je, align 8
  %i.jf = icmp eq i32 %.val303.i.i.i, 1
  %i.jg = icmp ult i64 %.val304.i.i.i, 8
  %spec.select.i392.i.i.i = select i1 %i.jf, i1 %i.jg, i1 false
  br i1 %spec.select.i392.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.am:                                            ; preds = %bb.s
  %i.jh = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !67
  switch i32 %i.ji, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i32 3, label %_ZNK12_GLOBAL__N_110PPCOperand13isCRBitNumberEv.exit.i.i.i
    i32 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  br label %_ZNK12_GLOBAL__N_110PPCOperand13isCRBitNumberEv.exit.i.i.i

_ZNK12_GLOBAL__N_110PPCOperand13isCRBitNumberEv.exit.i.i.i: ; preds = %bb.an, %bb.am
  %.sink2.i.i.i.i = phi i64 [ 88, %bb.an ], [ 96, %bb.am ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sink2.i.i.i.i
  %.val1.i.i.i.i = load i64, ptr %i.jj, align 8, !tbaa !34
  %i.jk = icmp ult i64 %.val1.i.i.i.i, 32
  br i1 %i.jk, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ao:                                            ; preds = %bb.s
  %i.jl = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !67
  switch i32 %i.jm, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i32 3, label %_ZNK12_GLOBAL__N_110PPCOperand13isCCRegNumberEv.exit.i.i.i
    i32 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %_ZNK12_GLOBAL__N_110PPCOperand13isCCRegNumberEv.exit.i.i.i

_ZNK12_GLOBAL__N_110PPCOperand13isCCRegNumberEv.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.sink2.i396.i.i.i = phi i64 [ 88, %bb.ap ], [ 96, %bb.ao ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sink2.i396.i.i.i
  %.val1.i397.i.i.i = load i64, ptr %i.jn, align 8, !tbaa !34
  %i.jo = icmp ult i64 %.val1.i397.i.i.i, 8
  br i1 %i.jo, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.aq:                                            ; preds = %bb.s
  %i.jp = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val305.i.i.i = load i32, ptr %i.jp, align 8, !tbaa !67
  %i.jq = getelementptr i8, ptr %i.eb, i64 88
  %.val306.i.i.i = load i64, ptr %i.jq, align 8
  %i.jr = icmp eq i32 %.val305.i.i.i, 1
  %i.js = icmp ult i64 %.val306.i.i.i, 8
  %spec.select.i399.i.i.i = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %spec.select.i399.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ar:                                            ; preds = %bb.s
  %i.jt = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val307.i.i.i = load i32, ptr %i.jt, align 8, !tbaa !67
  %i.ju = getelementptr i8, ptr %i.eb, i64 88
  %.val308.i.i.i = load i64, ptr %i.ju, align 8
  %i.jv = icmp eq i32 %.val307.i.i.i, 1
  %i.jw = icmp ult i64 %.val308.i.i.i, 64
  %spec.select.i401.i.i.i = select i1 %i.jv, i1 %i.jw, i1 false
  br i1 %spec.select.i401.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.as:                                            ; preds = %bb.s
  %i.jx = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val309.i.i.i = load i32, ptr %i.jx, align 8, !tbaa !67
  %i.jy = getelementptr i8, ptr %i.eb, i64 88
  %.val310.i.i.i = load i64, ptr %i.jy, align 8
  %i.jz = icmp eq i32 %.val309.i.i.i, 1
  %i.ka = icmp ult i64 %.val310.i.i.i, 32
  %spec.select.i403.i.i.i = select i1 %i.jz, i1 %i.ka, i1 false
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112PPCAsmParser23matchAndEmitInstructionEN4llvm5SMLocERjRNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERNS1_10MCStreamerERmb:bb.a
  %.val283.i.i.i = load i32, ptr %i.nn, align 8, !tbaa !67 ; 2 uses
  switch i32 %.val283.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i32 3, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i
    i32 1, label %_ZNK12_GLOBAL__N_110PPCOperand8isS16ImmEv.exit445.i.i.i
    i32 2, label %_ZNK12_GLOBAL__N_110PPCOperand8isS16ImmEv.exit445.i.i.i
  ]

_ZNK12_GLOBAL__N_110PPCOperand8isS16ImmEv.exit445.i.i.i: ; preds = %bb.bo, %bb.bo
  %i.no = getelementptr i8, ptr %i.eb, i64 88
  %.val284.i.i.i = load i64, ptr %i.no, align 8   ; 2 uses
  %i.np = icmp eq i32 %.val283.i.i.i, 1
  %sext.i.i.i442.i.i.i = shl i64 %.val284.i.i.i, 48
  %i.nq = ashr exact i64 %sext.i.i.i442.i.i.i, 48
  %.0.i.i.i443.i.i.i = select i1 %i.np, i64 %.val284.i.i.i, i64 %i.nq
  %i.nr = add i64 %.0.i.i.i443.i.i.i, 32768
  %i.ns = icmp ult i64 %i.nr, 65536
  br i1 %i.ns, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.bp:                                            ; preds = %bb.s
  %i.nt = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val352.i.i.i = load i32, ptr %i.nt, align 8, !tbaa !67 ; 2 uses
  switch i32 %.val352.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i32 3, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i
    i32 1, label %_ZNK12_GLOBAL__N_110PPCOperand8isS17ImmEv.exit.i.i.i
    i32 2, label %_ZNK12_GLOBAL__N_110PPCOperand8isS17ImmEv.exit.i.i.i
  ]

_ZNK12_GLOBAL__N_110PPCOperand8isS17ImmEv.exit.i.i.i: ; preds = %bb.bp, %bb.bp
  %i.nu = getelementptr i8, ptr %i.eb, i64 88
  %.val353.i.i.i = load i64, ptr %i.nu, align 8   ; 2 uses
  %i.nv = icmp eq i32 %.val352.i.i.i, 1
  %sext.i.i.i447.i.i.i = shl i64 %.val353.i.i.i, 48
  %i.nw = ashr exact i64 %sext.i.i.i447.i.i.i, 48
  %.0.i.i.i448.i.i.i = select i1 %i.nv, i64 %.val353.i.i.i, i64 %i.nw
  %i.nx = add i64 %.0.i.i.i448.i.i.i, 65536
  %i.ny = icmp ult i64 %i.nx, 131072
  br i1 %i.ny, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.bq:                                            ; preds = %bb.s
  %i.nz = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val269.i.i.i = load i32, ptr %i.nz, align 8, !tbaa !67 ; 2 uses
  %i.oa = getelementptr i8, ptr %i.eb, i64 88
  %.val270.i.i.i = load i64, ptr %i.oa, align 8
  %i.ob = icmp eq i32 %.val269.i.i.i, 3
  %i.oc = icmp eq i32 %.val269.i.i.i, 1
  %i.od = add i64 %.val270.i.i.i, 2147483648
  %i.oe = icmp ult i64 %i.od, 4294967296
  %i.of = select i1 %i.oc, i1 %i.oe, i1 false
  %i.og = select i1 %i.ob, i1 true, i1 %i.of
  br i1 %i.og, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.br:                                            ; preds = %bb.s
  %i.oh = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val277.i.i.i = load i32, ptr %i.oh, align 8, !tbaa !67 ; 2 uses
  %i.oi = getelementptr i8, ptr %i.eb, i64 88
  %.val278.i.i.i = load i64, ptr %i.oi, align 8
  %i.oj = icmp eq i32 %.val277.i.i.i, 3
  %i.ok = icmp eq i32 %.val277.i.i.i, 1
  %i.ol = add i64 %.val278.i.i.i, 8589934592
  %i.om = icmp ult i64 %i.ol, 17179869184
  %i.on = select i1 %i.ok, i1 %i.om, i1 false
  %i.oo = select i1 %i.oj, i1 true, i1 %i.on
  br i1 %i.oo, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.bs:                                            ; preds = %bb.s
  %i.op = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val354.i.i.i = load i32, ptr %i.op, align 8, !tbaa !67
  %i.oq = getelementptr i8, ptr %i.eb, i64 88
  %.val355.i.i.i = load i64, ptr %i.oq, align 8
  %i.or = icmp eq i32 %.val354.i.i.i, 1
  %i.os = add i64 %.val355.i.i.i, 16
  %i.ot = icmp ult i64 %i.os, 32
  %i.ou = select i1 %i.or, i1 %i.ot, i1 false
  br i1 %i.ou, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.bt:                                            ; preds = %bb.s
  %i.ov = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val356.i.i.i = load i32, ptr %i.ov, align 8, !tbaa !67
  %i.ow = getelementptr i8, ptr %i.eb, i64 88
  %.val357.i.i.i = load i64, ptr %i.ow, align 8
  %i.ox = icmp eq i32 %.val356.i.i.i, 1
  %i.oy = icmp ult i64 %.val357.i.i.i, 1024
  %spec.select.i454.i.i.i = select i1 %i.ox, i1 %i.oy, i1 false
  br i1 %spec.select.i454.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.bu:                                            ; preds = %bb.s
  %i.oz = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val358.i.i.i = load i32, ptr %i.oz, align 8, !tbaa !67
  %i.pa = getelementptr i8, ptr %i.eb, i64 88
  %.val359.i.i.i = load i64, ptr %i.pa, align 8
  %i.pb = icmp eq i32 %.val358.i.i.i, 1
  %i.pc = icmp ult i64 %.val359.i.i.i, 4096
  %spec.select.i456.i.i.i = select i1 %i.pb, i1 %i.pc, i1 false
  br i1 %spec.select.i456.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.bv:                                            ; preds = %bb.s
  %i.pd = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val360.i.i.i = load i32, ptr %i.pd, align 8, !tbaa !67
  switch i32 %.val360.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i [
    i32 3, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i
    i32 1, label %_ZNK12_GLOBAL__N_110PPCOperand8isU16ImmEv.exit.i.i.i
    i32 2, label %_ZNK12_GLOBAL__N_110PPCOperand8isU16ImmEv.exit.i.i.i
  ]

_ZNK12_GLOBAL__N_110PPCOperand8isU16ImmEv.exit.i.i.i: ; preds = %bb.bv, %bb.bv
  %i.pe = getelementptr i8, ptr %i.eb, i64 88
  %.val361.i.i.i = load i64, ptr %i.pe, align 8
  %i.pf = icmp ult i64 %.val361.i.i.i, 65536
  br i1 %i.pf, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.bw:                                            ; preds = %bb.s
  %i.pg = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val362.i.i.i = load i32, ptr %i.pg, align 8, !tbaa !67
  %i.ph = getelementptr i8, ptr %i.eb, i64 88
  %.val363.i.i.i = load i64, ptr %i.ph, align 8
  %i.pi = icmp eq i32 %.val362.i.i.i, 1
  %i.pj = icmp ult i64 %.val363.i.i.i, 2
  %spec.select.i460.i.i.i = select i1 %i.pi, i1 %i.pj, i1 false
  br i1 %spec.select.i460.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.bx:                                            ; preds = %bb.s
  %i.pk = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val364.i.i.i = load i32, ptr %i.pk, align 8, !tbaa !67
  %i.pl = getelementptr i8, ptr %i.eb, i64 88
  %.val365.i.i.i = load i64, ptr %i.pl, align 8
  %i.pm = icmp eq i32 %.val364.i.i.i, 1
  %i.pn = icmp ult i64 %.val365.i.i.i, 4
  %spec.select.i462.i.i.i = select i1 %i.pm, i1 %i.pn, i1 false
  br i1 %spec.select.i462.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.by:                                            ; preds = %bb.s
  %i.po = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val366.i.i.i = load i32, ptr %i.po, align 8, !tbaa !67
  %i.pp = getelementptr i8, ptr %i.eb, i64 88
  %.val367.i.i.i = load i64, ptr %i.pp, align 8
  %i.pq = icmp eq i32 %.val366.i.i.i, 1
  %i.pr = icmp ult i64 %.val367.i.i.i, 4294967296
  %spec.select.i464.i.i.i = select i1 %i.pq, i1 %i.pr, i1 false
  br i1 %spec.select.i464.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.bz:                                            ; preds = %bb.s
  %i.ps = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val.i.i.i = load i32, ptr %i.ps, align 8, !tbaa !67
  %i.pt = getelementptr i8, ptr %i.eb, i64 88
  %.val264.i.i.i = load i64, ptr %i.pt, align 8
  %i.pu = icmp eq i32 %.val.i.i.i, 1
  %i.pv = icmp ult i64 %.val264.i.i.i, 8
  %spec.select.i466.i.i.i = select i1 %i.pu, i1 %i.pv, i1 false
  br i1 %spec.select.i466.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ca:                                            ; preds = %bb.s
  %i.pw = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val368.i.i.i = load i32, ptr %i.pw, align 8, !tbaa !67
  %i.px = getelementptr i8, ptr %i.eb, i64 88
  %.val369.i.i.i = load i64, ptr %i.px, align 8
  %i.py = icmp eq i32 %.val368.i.i.i, 1
  %i.pz = icmp ult i64 %.val369.i.i.i, 16
  %spec.select.i468.i.i.i = select i1 %i.py, i1 %i.pz, i1 false
  br i1 %spec.select.i468.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.cb:                                            ; preds = %bb.s
  %i.qa = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val370.i.i.i = load i32, ptr %i.qa, align 8, !tbaa !67
  %i.qb = getelementptr i8, ptr %i.eb, i64 88
  %.val371.i.i.i = load i64, ptr %i.qb, align 8
  %i.qc = icmp eq i32 %.val370.i.i.i, 1
  %i.qd = icmp ult i64 %.val371.i.i.i, 32
  %spec.select.i470.i.i.i = select i1 %i.qc, i1 %i.qd, i1 false
  br i1 %spec.select.i470.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.cc:                                            ; preds = %bb.s
  %i.qe = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val291.i.i.i = load i32, ptr %i.qe, align 8, !tbaa !67
  %i.qf = getelementptr i8, ptr %i.eb, i64 88
  %.val292.i.i.i = load i64, ptr %i.qf, align 8
  %i.qg = icmp eq i32 %.val291.i.i.i, 1
  %i.qh = icmp ult i64 %.val292.i.i.i, 64
  %spec.select.i472.i.i.i = select i1 %i.qg, i1 %i.qh, i1 false
  br i1 %spec.select.i472.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.cd:                                            ; preds = %bb.s
  %i.qi = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val295.i.i.i = load i32, ptr %i.qi, align 8, !tbaa !67
  %i.qj = getelementptr i8, ptr %i.eb, i64 88
  %.val296.i.i.i = load i64, ptr %i.qj, align 8
  %i.qk = icmp eq i32 %.val295.i.i.i, 1
  %i.ql = icmp ult i64 %.val296.i.i.i, 128
  %spec.select.i474.i.i.i = select i1 %i.qk, i1 %i.ql, i1 false
  br i1 %spec.select.i474.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

bb.ce:                                            ; preds = %bb.s
  %i.qm = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.val299.i.i.i = load i32, ptr %i.qm, align 8, !tbaa !67
  %i.qn = getelementptr i8, ptr %i.eb, i64 88
  %.val300.i.i.i = load i64, ptr %i.qn, align 8
  %i.qo = icmp eq i32 %.val299.i.i.i, 1
  %i.qp = icmp ult i64 %.val300.i.i.i, 256
  %spec.select.i476.i.i.i = select i1 %i.qo, i1 %i.qp, i1 false
  br i1 %spec.select.i476.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i

_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i: ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %_ZNK12_GLOBAL__N_110PPCOperand8isU16ImmEv.exit.i.i.i, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %_ZNK12_GLOBAL__N_110PPCOperand8isS17ImmEv.exit.i.i.i, %bb.bp, %_ZNK12_GLOBAL__N_110PPCOperand8isS16ImmEv.exit445.i.i.i, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %_ZNK12_GLOBAL__N_110PPCOperand13isCCRegNumberEv.exit.i.i.i, %bb.ao, %_ZNK12_GLOBAL__N_110PPCOperand13isCRBitNumberEv.exit.i.i.i, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %_ZNK12_GLOBAL__N_110PPCOperand8isS16ImmEv.exit.i.i.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.qq = load ptr, ptr %i.eb, align 8, !tbaa !13
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 48
  %i.qs = load ptr, ptr %i.qr, align 8
  %i.qt = call noundef zeroext i1 %i.qs(ptr noundef nonnull align 8 dereferenceable(104) %i.eb) #21, !inline_history !194
  %i.qu = add i8 %i.dc, -66
  %i.qv = icmp ult i8 %i.qu, 3
  %or.cond63.i.i.i = select i1 %i.qt, i1 %i.qv, i1 false
  br i1 %or.cond63.i.i.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i
  %i.qw = load ptr, ptr %i.ec, align 8, !tbaa !13
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 40
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = call noundef i32 %i.qy(ptr noundef nonnull align 8 dereferenceable(320) %i.ec, i32 noundef 2) #21, !inline_history !194
  %i.ra = zext i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [12 x i8], ptr @_ZZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoEE26RegClassByHwModeMatchTable, i64 %i.ra
  %i.rc = zext nneg i8 %i.dc to i64
  %i.rd = getelementptr [4 x i8], ptr %i.rb, i64 %i.rc
  %i.re = getelementptr i8, ptr %i.rd, i64 -264
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !34
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i
  %.0204.i.i.i = phi i32 [ %i.rf, %bb.cf ], [ %i.dd, %_ZNK12_GLOBAL__N_110PPCOperand11isCRBitMaskEv.exit.thread.i.i.i ] ; 2 uses
  %i.rg = load ptr, ptr %i.eb, align 8, !tbaa !13
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 48
  %i.ri = load ptr, ptr %i.rh, align 8
  %i.rj = call noundef zeroext i1 %i.ri(ptr noundef nonnull align 8 dereferenceable(104) %i.eb) #21, !inline_history !194
  br i1 %i.rj, label %bb.ch, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.rk = load ptr, ptr %i.eb, align 8, !tbaa !13
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 56
  %i.rm = load ptr, ptr %i.rl, align 8
  %i.rn = call i32 %i.rm(ptr noundef nonnull align 8 dereferenceable(104) %i.eb) #21, !inline_history !194 ; 2 uses
  %i.ro = add i32 %i.rn, -1
  %i.rp = icmp ult i32 %i.ro, 1073741823
  br i1 %i.rp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.rq = zext nneg i32 %i.rn to i64
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr @_ZZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoEE5Table, i64 %i.rq
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !96
  %i.rt = zext i16 %i.rs to i32
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ru = phi i32 [ %i.rt, %bb.ci ], [ 0, %bb.ch ] ; 2 uses
  %i.rv = icmp eq i32 %i.ru, %.0204.i.i.i
  br i1 %i.rv, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rw = zext nneg i32 %i.ru to i64
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.rw ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.rz = load i16, ptr %i.ry, align 4, !tbaa !230
  %i.sa = zext i16 %i.rz to i32
  %i.sb = sub nsw i32 %.0204.i.i.i, %i.sa         ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rx, i64 6
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !231
  %i.se = zext i16 %i.sd to i32
  %.not.i478.i.i.i = icmp ult i32 %i.sb, %i.se
  br i1 %.not.i478.i.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit480.i.i.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.i.i

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit480.i.i.i: ; preds = %bb.ck
  %i.sf = load i32, ptr %i.rx, align 8, !tbaa !232
  %i.sg = add i32 %i.sf, %i.sb                    ; 2 uses
  %i.sh = lshr i32 %i.sg, 3
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.si
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !34
  %i.sl = zext i8 %i.sk to i32
  %i.sm = and i32 %i.sg, 7
  %i.sn = lshr i32 %i.sl, %i.sm
  %i.so = trunc i32 %i.sn to i1
  br i1 %i.so, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, label %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.i.i

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i: ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit480.i.i.i, %bb.cj, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %_ZNK12_GLOBAL__N_110PPCOperand8isU16ImmEv.exit.i.i.i, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %_ZNK12_GLOBAL__N_110PPCOperand8isS17ImmEv.exit.i.i.i, %bb.bp, %_ZNK12_GLOBAL__N_110PPCOperand8isS16ImmEv.exit445.i.i.i, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %_ZNK12_GLOBAL__N_110PPCOperand13isCCRegNumberEv.exit.i.i.i, %_ZNK12_GLOBAL__N_110PPCOperand13isCRBitNumberEv.exit.i.i.i, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %_ZNK12_GLOBAL__N_110PPCOperand8isS16ImmEv.exit.i.i.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i.i.i, %_ZL16matchTokenStringN4llvm9StringRefE.exit.i.i.i
  %i.sp = add nuw i32 %.0112281.i.i, 1
  br label %.thread.i.i

_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.i.i: ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit480.i.i.i, %bb.ck, %bb.cg, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i.i.i, %bb.r, %bb.l
  %i.sq = load ptr, ptr %0, align 8, !tbaa !13
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 104
  %i.ss = load ptr, ptr %i.sr, align 8
  %i.st = call noundef i32 %i.ss(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.eb, i32 noundef %i.dd) #21, !inline_history !195 ; 4 uses
  %.not155.i.i = icmp eq i32 %i.st, 4
  %i.su = add nuw i32 %.0112281.i.i, 1
  br i1 %.not155.i.i, label %.thread.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.i.i
  %i.sv = icmp eq i32 %i.st, 0
  %i.sw = or i1 %.not9.i.i.i.i.i.i.i, %i.sv
  br i1 %i.sw, label %bb.cm, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.thread214.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.sx = icmp eq i8 %i.dc, 1
  br i1 %i.sx, label %.thread.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sy = zext i8 %i.dc to i64
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.sy ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %i.tb = load i16, ptr %i.ta, align 4, !tbaa !230
  %i.tc = zext i16 %i.tb to i32
  %i.td = sub nsw i32 1, %i.tc                    ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sz, i64 6
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !231
  %i.tg = zext i16 %i.tf to i32
  %.not.i167.i.i = icmp ult i32 %i.td, %i.tg
  br i1 %.not.i167.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.thread214.i.i

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.i.i: ; preds = %bb.cn
  %i.th = load i32, ptr %i.sz, align 8, !tbaa !232
  %i.ti = add i32 %i.th, %i.td                    ; 2 uses
  %i.tj = lshr i32 %i.ti, 3
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !34
  %i.tn = zext i8 %i.tm to i32
  %i.to = and i32 %i.ti, 7
  %i.tp = lshr i32 %i.tn, %i.to
  %i.tq = trunc i32 %i.tp to i1
  br i1 %i.tq, label %.thread.i.i, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.thread214.i.i

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.thread214.i.i: ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.i.i, %bb.cn, %bb.cl
  %i.tr = trunc nuw i8 %.0136284.i.i to i1
  br i1 %i.tr, label %.thread241.i.i, label %bb.co

bb.co:                                            ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.thread214.i.i
  %i.ts = icmp eq ptr %.0121286.i.i, %.011.lcssa.i.i.i.i.i
  br i1 %i.ts, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.tt = load i64, ptr %5, align 8, !tbaa !27
  %.not156.i.i = icmp ugt i64 %i.tt, %i.de
  br i1 %.not156.i.i, label %.thread241.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %.not9.i.i.i.i.i.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tu = load i64, ptr %5, align 8, !tbaa !27
  %i.tv = icmp ne i64 %i.tu, %i.de
  %i.tw = icmp ne i32 %i.st, 0
  %or.cond6.i.i = or i1 %i.tw, %i.tv
  %spec.select161.i.i = select i1 %or.cond6.i.i, i32 %i.st, i32 %.0129285.i.i
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.2131.i.i = phi i32 [ %.0129285.i.i, %bb.cq ], [ %spec.select161.i.i, %bb.cr ]
  store i64 %i.de, ptr %5, align 8, !tbaa !27
  br label %.thread241.i.i

.thread.i.i:                                      ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.i.i, %bb.cm, %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.i.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i.i, %bb.j
  %.4116222.i.i = phi i32 [ %.0112281.i.i, %bb.j ], [ %.0112281.i.i, %bb.cm ], [ %.0112281.i.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.i.i ], [ %i.sp, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit.thread.i.i.i ], [ %.0112281.i.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.i.i ], [ %i.su, %_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.exit.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not153.i.i = icmp eq i64 %indvars.iv.next.i.i, 6
  br i1 %.not153.i.i, label %.thread224.i.i, label %bb.i, !llvm.loop !196

.thread224.i.i:                                   ; preds = %.thread.i.i, %bb.j
  br i1 %.not9.i.i.i.i.i.i.i, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %.thread224.i.i
  %.sroa.0175.0.copyload.i.i = load i64, ptr %i.m, align 8
  %i.tx = xor i64 %.sroa.0175.0.copyload.i.i, -1
  %i.ty = and i64 %i.cx, %i.tx                    ; 2 uses
  %i.tz = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ty)
  %i.ua = call range(i64 0, 65) <6 x i64> @llvm.ctpop.v6i64(<6 x i64> %i.cs)
  %i.ub = call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %i.ua)
  %.not157.i.i = icmp samesign ugt i64 %i.tz, %i.ub
  br i1 %.not157.i.i, label %.thread241.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uc = insertelement <6 x i64> <i64 0, i64 poison, i64 0, i64 0, i64 0, i64 0>, i64 %i.ty, i64 1
  br label %.thread241.i.i

bb.cv:                                            ; preds = %.thread224.i.i
  store i32 0, ptr %i.f, align 8, !tbaa !73
  %i.ud = getelementptr inbounds nuw i8, ptr %.0121286.i.i, i64 4 ; 2 uses
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !234
  store i32 %i.ue, ptr %50, align 8, !tbaa !103
  %i.uf = load ptr, ptr %0, align 8, !tbaa !13
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 112
  %i.uh = load ptr, ptr %i.ug, align 8
  %i.ui = call noundef i32 %i.uh(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(16) %3) #21, !inline_history !195 ; 2 uses
  %.not158.i.i = icmp eq i32 %i.ui, 4
  br i1 %.not158.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.f, align 8, !tbaa !73
  br label %.thread241.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.uj = getelementptr inbounds nuw i8, ptr %.0121286.i.i, i64 8
  %i.uk = load i16, ptr %i.uj, align 4, !tbaa !235
  %i.ul = zext i16 %i.uk to i32                   ; 2 uses
  br i1 %6, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.um = load ptr, ptr %0, align 8, !tbaa !13
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 128
  %i.uo = load ptr, ptr %i.un, align 8
  call void %i.uo(ptr noundef nonnull align 8 dereferenceable(105) %0, i32 noundef %i.ul, ptr noundef nonnull align 8 dereferenceable(16) %3) #21, !inline_history !195
  br label %_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread

bb.cz:                                            ; preds = %bb.cx
  %i.up = load i32, ptr %i.ud, align 4, !tbaa !234
  call fastcc void @_ZN12_GLOBAL__N_112PPCAsmParser15convertToMCInstEjRN4llvm6MCInstEjRKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE(i32 noundef %i.ul, ptr noundef nonnull align 8 dereferenceable(128) %50, i32 noundef %i.up, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.uq = load ptr, ptr %0, align 8, !tbaa !13
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 120
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = call noundef i32 %i.us(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(128) %50) #21, !inline_history !195 ; 2 uses
  %.not159.i.i = icmp eq i32 %i.ut, 4
  br i1 %.not159.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 0, ptr %i.f, align 8, !tbaa !73
  br label %.thread241.i.i

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  %i.uu = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  store ptr %i.uu, ptr %48, align 8, !tbaa !38
  %i.uv = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 0, ptr %i.uv, align 8, !tbaa !39
  store i8 0, ptr %i.uu, align 8, !tbaa !34
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !28
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !236
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !28
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !62, !nonnull !42, !align !63
  %i.ve = call noundef nonnull align 8 dereferenceable(282) ptr @_ZNK4llvm9MCContext16getTargetOptionsEv(ptr noundef nonnull align 8 dereferenceable(2208) %i.vd) #21
  %i.vf = load i16, ptr %i.ve, align 8
  %i.vg = and i16 %i.vf, 16
  %.not160.i.i = icmp eq i16 %i.vg, 0
  br i1 %.not160.i.i, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.vh = load ptr, ptr %i.h, align 8, !tbaa !223, !nonnull !42, !align !63
  %i.vi = call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(105) %0) #21
  %i.vj = call noundef zeroext i1 @_ZNK4llvm11MCInstrInfo17getDeprecatedInfoERNS_6MCInstERKNS_15MCSubtargetInfoERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(58) %i.vh, ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(320) %i.vi, ptr noundef nonnull align 8 dereferenceable(32) %48) #21
  br i1 %i.vj, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.vk = load ptr, ptr %3, align 8, !tbaa !75
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !78 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !13
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 80
  %i.vo = load ptr, ptr %i.vn, align 8
  %i.vp = call ptr %i.vo(ptr noundef nonnull align 8 dereferenceable(104) %i.vl) #21, !inline_history !195
  %i.vq = load ptr, ptr %i.uw, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  %i.vr = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i8 4, ptr %i.vr, align 8, !tbaa !35
  %i.vs = getelementptr inbounds nuw i8, ptr %49, i64 33
  store i8 1, ptr %i.vs, align 1, !tbaa !33
  store ptr %48, ptr %49, align 8, !tbaa !34
  %i.vt = load ptr, ptr %i.vq, align 8, !tbaa !13
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 136
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = call noundef zeroext i1 %i.vv(ptr noundef nonnull align 8 dereferenceable(243) %i.vq, ptr %i.vp, ptr noundef nonnull align 8 dereferenceable(34) %49, ptr null, ptr null) #21, !inline_history !195 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %i.vx = load ptr, ptr %48, align 8, !tbaa !40   ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.uu
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.de
  %i.vz = load i64, ptr %i.uu, align 8, !tbaa !34
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
end_hunk_1
