Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCAsmParser?download=true
inline.NumInlined: 3773
inline.NumDeleted: 668
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_112PPCAsmParser23matchAndEmitInstructionEN4llvm5SMLocERjRNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERNS1_10MCStreamerERmb:bb.a
  %i.wl = load ptr, ptr %48, align 8, !tbaa !40   ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.vi
  br i1 %i.wm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.dh
  %i.wn = load i64, ptr %i.vi, align 8, !tbaa !34
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread

.thread241.i.i:                                   ; preds = %bb.dd, %bb.cz, %bb.cx, %bb.cw, %bb.cv, %bb.cs, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.thread214.i.i, %.thread224.thread.i.i
  %.1141.ph.i.i = phi i1 [ %.0140283.i.i, %bb.dd ], [ %.0140283.i.i, %bb.cz ], [ true, %bb.cw ], [ true, %bb.cx ], [ %.0140283.i.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.thread214.i.i ], [ %.0140283.i.i, %bb.cv ], [ %.0140283.i.i, %bb.cs ], [ %.0140283.i.i, %.thread224.thread.i.i ] ; 2 uses
  %.2138.ph.i.i = phi i8 [ 1, %bb.dd ], [ 1, %bb.cz ], [ %.0136284.i.i, %bb.cw ], [ %.0136284.i.i, %bb.cx ], [ 1, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.thread214.i.i ], [ 0, %bb.cv ], [ 0, %bb.cs ], [ %.0136284.i.i, %.thread224.thread.i.i ] ; 2 uses
  %.8.ph.i.i = phi i32 [ %i.vh, %bb.dd ], [ %i.uw, %bb.cz ], [ %.0129285.i.i, %bb.cw ], [ %.0129285.i.i, %bb.cx ], [ %.0129285.i.i, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.thread214.i.i ], [ %.2131.i.i, %bb.cv ], [ %.0129285.i.i, %bb.cs ], [ %.0129285.i.i, %.thread224.thread.i.i ] ; 2 uses
  %i.wp = phi <6 x i64> [ %i.cs, %bb.dd ], [ %i.cs, %bb.cz ], [ %i.cs, %bb.cw ], [ %i.uq, %bb.cx ], [ %i.cs, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit169.thread214.i.i ], [ %i.cs, %bb.cv ], [ %i.cs, %bb.cs ], [ %i.cs, %.thread224.thread.i.i ]
  %i.wq = getelementptr inbounds nuw i8, ptr %.0121286.i.i, i64 20 ; 2 uses
  %.not152.i.i = icmp eq ptr %i.wq, %.sroa.3.0.i.i.i.i
  br i1 %.not152.i.i, label %.thread255.i.i, label %bb.h, !llvm.loop !197

.thread255.i.i:                                   ; preds = %.thread241.i.i
  %i.wr = trunc nuw i8 %.2138.ph.i.i to i1
  %.not.i.i = xor i1 %i.wr, true
  %or.cond8.i.i = select i1 %.not.i.i, i1 %.1141.ph.i.i, i1 false
  br i1 %or.cond8.i.i, label %_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread55, label %_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit

_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread55: ; preds = %.thread255.i.i
  store i64 0, ptr %5, align 8, !tbaa !27
  br label %bb.lt

_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit: ; preds = %.thread255.i.i
  switch i32 %.8.ph.i.i, label %bb.na [
    i32 0, label %bb.mv
    i32 2, label %bb.lt
    i32 3, label %_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread53
  ]

_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread: ; preds = %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ws = load i32, ptr %50, align 8, !tbaa !103  ; 26 uses
  %i.wt = load ptr, ptr %i.i, align 8, !tbaa !240
  %i.wu = zext i32 %i.ws to i64
  %i.wv = sub nsw i64 0, %i.wu
  %i.ww = getelementptr inbounds [32 x i8], ptr %i.wt, i64 %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !242
  %i.wz = and i64 %i.wy, 1024
  %i.xa = icmp ne i64 %i.wz, 0
  %.val31 = load ptr, ptr %3, align 8
  %.val32 = load i32, ptr %i.j, align 8           ; 2 uses
  %i.xb = zext i32 %.val32 to i64
  %i.xc = icmp eq i32 %.val32, 0
  br i1 %i.xc, label %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread, %.lr.ph.i
  %.0101.i = phi i64 [ %i.xn, %.lr.ph.i ], [ 0, %_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread ] ; 3 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %.val31, i64 %.0101.i
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !78 ; 2 uses
  %i.xf = getelementptr i8, ptr %i.xe, i64 48
  %.val.i = load i32, ptr %i.xf, align 8, !tbaa !67
  %i.xg = getelementptr i8, ptr %i.xe, i64 96
  %.val13.i = load i8, ptr %i.xg, align 8
  %i.xh = icmp eq i32 %.val.i, 1
  %i.xi = trunc nuw i8 %.val13.i to i1
  %i.xj = select i1 %i.xh, i1 %i.xi, i1 false
  %i.xk = icmp eq i64 %.0101.i, 3
  %i.xl = and i1 %i.xa, %i.xk
  %i.xm = xor i1 %i.xl, %i.xj                     ; 2 uses
  %i.xn = add nuw nsw i64 %.0101.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.xn, %i.xb
  %or.cond.i = select i1 %i.xm, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit, label %.lr.ph.i, !llvm.loop !198

_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit: ; preds = %.lr.ph.i
  br i1 %i.xm, label %bb.di, label %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread

bb.di:                                            ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  %i.xo = getelementptr inbounds nuw i8, ptr %51, i64 32
  %i.xp = getelementptr inbounds nuw i8, ptr %51, i64 33
  store i8 1, ptr %i.xp, align 1, !tbaa !33
  store ptr @.str.70, ptr %51, align 8, !tbaa !34
  store i8 3, ptr %i.xo, align 8, !tbaa !35
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !28
  %i.xs = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.xr, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %51, ptr null, ptr null) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  br label %bb.nb

_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread: ; preds = %_ZN12_GLOBAL__N_112PPCAsmParser20MatchInstructionImplERKN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEERNS1_6MCInstERmbj.exit.thread, %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit
  switch i32 %i.ws, label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit [
    i32 363, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit561.i
    i32 362, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit561.i
    i32 361, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit561.i
    i32 360, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit561.i
    i32 356, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit570.i
    i32 357, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit570.i
    i32 358, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit593.i
    i32 359, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit593.i
    i32 1526, label %bb.lr
    i32 395, label %bb.lm
    i32 394, label %bb.lm
    i32 391, label %bb.lh
    i32 390, label %bb.lh
    i32 383, label %bb.es
    i32 1656, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit641.i
    i32 1655, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit641.i
    i32 1657, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit664.i
    i32 1658, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit664.i
    i32 413, label %bb.fk
    i32 389, label %bb.fm
    i32 416, label %bb.fo
    i32 414, label %bb.fq
    i32 415, label %bb.fs
    i32 370, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit696.i
    i32 371, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit696.i
    i32 374, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit728.i
    i32 375, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit728.i
    i32 376, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit766.i
    i32 377, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit766.i
    i32 380, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit801.i
    i32 381, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit801.i
    i32 398, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit828.i
    i32 399, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit828.i
    i32 402, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit858.i
    i32 403, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit858.i
    i32 410, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit890.i
    i32 411, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit890.i
    i32 349, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit919.i
    i32 350, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit919.i
    i32 345, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit951.i
    i32 346, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit951.i
    i32 368, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit983.i
    i32 369, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit983.i
    i32 372, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1011.i
    i32 373, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1011.i
    i32 378, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1042.i
    i32 379, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1042.i
    i32 396, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1066.i
    i32 397, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1066.i
    i32 400, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1093.i
    i32 401, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1093.i
    i32 417, label %bb.kc
    i32 408, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1123.i
    i32 409, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1123.i
    i32 347, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1150.i
    i32 348, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1150.i
    i32 343, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1178.i
    i32 344, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit1178.i
    i32 392, label %bb.lc
    i32 393, label %bb.lc
    i32 351, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit617.i
    i32 352, label %bb.eh
    i32 353, label %bb.ei
    i32 355, label %bb.ej
    i32 354, label %.fold.split.i
  ]

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit561.i: ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread, %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread, %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread, %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.xt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %14, i8 0, i64 16, i1 false)
  store ptr %i.xu, ptr %i.xt, align 8, !tbaa !75
  %i.xv = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 6, ptr %i.xw, align 4, !tbaa !74
  %i.xx = and i32 %i.ws, -2
  %i.xy = icmp eq i32 %i.xx, 362
  %i.xz = select i1 %i.xy, i32 746, i32 748
  store i32 %i.xz, ptr %14, align 8, !tbaa !103
  %i.ya = and i32 %i.ws, -3
  %i.yb = icmp eq i32 %i.ya, 361
  %i.yc = select i1 %i.yb, i64 0, i64 16
  store i8 2, ptr %i.xu, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %i.yc, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.xv, align 8, !tbaa !73
  %i.yd = load ptr, ptr %i.d, align 8, !tbaa !75  ; 7 uses
  %.sroa.2375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %.sroa.2375.0.copyload.i = load i64, ptr %.sroa.2375.0..sroa_idx.i, align 8, !tbaa !34
  %.sroa.0373.0.copyload.i = load i8, ptr %i.yd, align 8, !tbaa !105
  %i.ye = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i8 %.sroa.0373.0.copyload.i, ptr %i.ye, align 8
  %.sroa.4.0..sroa_idx.i.i557.i = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i64 %.sroa.2375.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i557.i, align 8
  store i32 2, ptr %i.xv, align 8, !tbaa !73
  %.phi.trans.insert133.i = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %.sroa.0370.0.copyload.pre.i = load i8, ptr %.phi.trans.insert133.i, align 8, !tbaa !105
  %.sroa.2372.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  %.sroa.2372.0.copyload.pre.i = load i64, ptr %.sroa.2372.0..sroa_idx.phi.trans.insert.i, align 8, !tbaa !34
  %i.yf = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i8 %.sroa.0370.0.copyload.pre.i, ptr %i.yf, align 8
  %.sroa.4.0..sroa_idx.i.i560.i = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i64 %.sroa.2372.0.copyload.pre.i, ptr %.sroa.4.0..sroa_idx.i.i560.i, align 8
  store i32 3, ptr %i.xv, align 8, !tbaa !73
  %.pre166.i = load i32, ptr %i.f, align 8, !tbaa !73 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %14, i64 16, i1 false)
  %i.yg = zext i32 %.pre166.i to i64
  %.not.i.i.i.i36 = icmp ult i32 %.pre166.i, 3
  br i1 %.not.i.i.i.i36, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit561.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yd, ptr noundef nonnull align 8 dereferenceable(48) %i.xu, i64 48, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit.i

bb.dk:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit561.i
  %i.yh = load i32, ptr %i.g, align 4, !tbaa !74
  %i.yi = icmp ult i32 %i.yh, 3
  br i1 %i.yi, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 0, ptr %i.f, align 8, !tbaa !73
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull %i.e, i64 noundef 3, i64 noundef 16) #21
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  switch i32 %.pre166.i, label %bb.dn [
    i32 0, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i
    i32 1, label %bb.do
  ], !prof !243

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yd, ptr nonnull align 8 %i.xu, i64 32, i1 false)
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i

bb.do:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yd, ptr noundef nonnull align 8 dereferenceable(16) %i.xu, i64 16, i1 false), !tbaa.struct !106
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i: ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dl
  %.022.i.i.i.i = phi i64 [ 0, %bb.dl ], [ 0, %bb.dm ], [ %i.yg, %bb.dn ], [ 1, %bb.do ] ; 4 uses
  %i.yj = load i32, ptr %i.xv, align 8, !tbaa !73
  %i.yk = zext i32 %i.yj to i64                   ; 2 uses
  %.not.i.i.i.i.i = icmp samesign eq i64 %.022.i.i.i.i, %i.yk
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm6MCInstaSERKS0_.exit.i, label %bb.dp

bb.dp:                                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i
  %i.yl = load ptr, ptr %i.xt, align 8, !tbaa !75
  %.idx35.i.i.i.i = shl nuw nsw i64 %.022.i.i.i.i, 4
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 %.idx35.i.i.i.i
  %i.yn = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.yn, i64 %.022.i.i.i.i
  %i.yp = sub nsw i64 %i.yk, %.022.i.i.i.i
  %gepdiff.i.i.i.i = shl nsw i64 %i.yp, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yo, ptr align 8 %i.ym, i64 %gepdiff.i.i.i.i, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit.i

_ZN4llvm6MCInstaSERKS0_.exit.i:                   ; preds = %bb.dp, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i, %bb.dj
  store i32 3, ptr %i.f, align 8, !tbaa !73
  %i.yq = load ptr, ptr %i.xt, align 8, !tbaa !75 ; 2 uses
  %i.yr = icmp eq ptr %i.yq, %i.xu
  br i1 %i.yr, label %_ZN4llvm6MCInstD2Ev.exit.i, label %bb.dq

bb.dq:                                            ; preds = %_ZN4llvm6MCInstaSERKS0_.exit.i
  call void @free(ptr noundef %i.yq) #21
  br label %_ZN4llvm6MCInstD2Ev.exit.i

_ZN4llvm6MCInstD2Ev.exit.i:                       ; preds = %bb.dq, %_ZN4llvm6MCInstaSERKS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit570.i: ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread, %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.ys = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %15, i8 0, i64 16, i1 false)
  store ptr %i.yt, ptr %i.ys, align 8, !tbaa !75
  %i.yu = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 6, ptr %i.yv, align 4, !tbaa !74
  store i32 746, ptr %15, align 8, !tbaa !103
  %i.yw = load ptr, ptr %i.d, align 8, !tbaa !75  ; 9 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 32
  %.sroa.0367.0.copyload.i = load i8, ptr %i.yx, align 8, !tbaa !105
  %.sroa.2369.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 40
  %.sroa.2369.0.copyload.i = load i64, ptr %.sroa.2369.0..sroa_idx.i, align 8, !tbaa !34
  store i8 %.sroa.0367.0.copyload.i, ptr %i.yt, align 8
  %.sroa.4.0..sroa_idx.i.i563.i = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 %.sroa.2369.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i563.i, align 8
  store i32 1, ptr %i.yu, align 8, !tbaa !73
  %.sroa.2366.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %.sroa.2366.0.copyload.i = load i64, ptr %.sroa.2366.0..sroa_idx.i, align 8, !tbaa !34
  %.sroa.0364.0.copyload.i = load i8, ptr %i.yw, align 8, !tbaa !105
  %i.yy = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i8 %.sroa.0364.0.copyload.i, ptr %i.yy, align 8
  %.sroa.4.0..sroa_idx.i.i566.i = getelementptr inbounds nuw i8, ptr %15, i64 56
  store i64 %.sroa.2366.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i566.i, align 8
  store i32 2, ptr %i.yu, align 8, !tbaa !73
  %.phi.trans.insert130.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %.sroa.0361.0.copyload.pre.i = load i8, ptr %.phi.trans.insert130.i, align 8, !tbaa !105
  %.sroa.2363.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %.sroa.2363.0.copyload.pre.i = load i64, ptr %.sroa.2363.0..sroa_idx.phi.trans.insert.i, align 8, !tbaa !34
  %i.yz = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i8 %.sroa.0361.0.copyload.pre.i, ptr %i.yz, align 8
  %.sroa.4.0..sroa_idx.i.i569.i = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i64 %.sroa.2363.0.copyload.pre.i, ptr %.sroa.4.0..sroa_idx.i.i569.i, align 8
  store i32 3, ptr %i.yu, align 8, !tbaa !73
  %.pre164.i = load i32, ptr %i.f, align 8, !tbaa !73 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %15, i64 16, i1 false)
  %i.za = zext i32 %.pre164.i to i64
  %.not.i.i.i571.i = icmp ult i32 %.pre164.i, 3
  br i1 %.not.i.i.i571.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit570.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yw, ptr noundef nonnull align 8 dereferenceable(48) %i.yt, i64 48, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit583.i

bb.ds:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit570.i
  %i.zb = load i32, ptr %i.g, align 4, !tbaa !74
  %i.zc = icmp ult i32 %i.zb, 3
  br i1 %i.zc, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 0, ptr %i.f, align 8, !tbaa !73
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull %i.e, i64 noundef 3, i64 noundef 16) #21
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i578.i

bb.du:                                            ; preds = %bb.ds
  switch i32 %.pre164.i, label %bb.dv [
    i32 0, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i578.i
    i32 1, label %bb.dw
  ], !prof !243

bb.dv:                                            ; preds = %bb.du
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yw, ptr nonnull align 8 %i.yt, i64 32, i1 false)
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i578.i

bb.dw:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yw, ptr noundef nonnull align 8 dereferenceable(16) %i.yt, i64 16, i1 false), !tbaa.struct !106
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i578.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i578.i: ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dt
  %.022.i.i.i579.i = phi i64 [ 0, %bb.dt ], [ 0, %bb.du ], [ %i.za, %bb.dv ], [ 1, %bb.dw ] ; 4 uses
  %i.zd = load i32, ptr %i.yu, align 8, !tbaa !73
  %i.ze = zext i32 %i.zd to i64                   ; 2 uses
  %.not.i.i.i.i580.i = icmp samesign eq i64 %.022.i.i.i579.i, %i.ze
  br i1 %.not.i.i.i.i580.i, label %_ZN4llvm6MCInstaSERKS0_.exit583.i, label %bb.dx

bb.dx:                                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i578.i
  %i.zf = load ptr, ptr %i.ys, align 8, !tbaa !75
  %.idx35.i.i.i581.i = shl nuw nsw i64 %.022.i.i.i579.i, 4
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 %.idx35.i.i.i581.i
  %i.zh = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.zi = getelementptr inbounds nuw [16 x i8], ptr %i.zh, i64 %.022.i.i.i579.i
  %i.zj = sub nsw i64 %i.ze, %.022.i.i.i579.i
  %gepdiff.i.i.i582.i = shl nsw i64 %i.zj, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zi, ptr align 8 %i.zg, i64 %gepdiff.i.i.i582.i, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit583.i

_ZN4llvm6MCInstaSERKS0_.exit583.i:                ; preds = %bb.dx, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i578.i, %bb.dr
  store i32 3, ptr %i.f, align 8, !tbaa !73
  %i.zk = load ptr, ptr %i.ys, align 8, !tbaa !75 ; 2 uses
  %i.zl = icmp eq ptr %i.zk, %i.yt
  br i1 %i.zl, label %_ZN4llvm6MCInstD2Ev.exit584.i, label %bb.dy

bb.dy:                                            ; preds = %_ZN4llvm6MCInstaSERKS0_.exit583.i
  call void @free(ptr noundef %i.zk) #21
  br label %_ZN4llvm6MCInstD2Ev.exit584.i

_ZN4llvm6MCInstD2Ev.exit584.i:                    ; preds = %bb.dy, %_ZN4llvm6MCInstaSERKS0_.exit583.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit593.i: ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread, %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.zm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %16, i8 0, i64 16, i1 false)
  store ptr %i.zn, ptr %i.zm, align 8, !tbaa !75
  %i.zo = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 6, ptr %i.zp, align 4, !tbaa !74
  store i32 748, ptr %16, align 8, !tbaa !103
  %i.zq = load ptr, ptr %i.d, align 8, !tbaa !75  ; 9 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 32
  %.sroa.0358.0.copyload.i = load i8, ptr %i.zr, align 8, !tbaa !105
  %.sroa.2360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zq, i64 40
  %.sroa.2360.0.copyload.i = load i64, ptr %.sroa.2360.0..sroa_idx.i, align 8, !tbaa !34
  store i8 %.sroa.0358.0.copyload.i, ptr %i.zn, align 8
  %.sroa.4.0..sroa_idx.i.i586.i = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 %.sroa.2360.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i586.i, align 8
  store i32 1, ptr %i.zo, align 8, !tbaa !73
  %.sroa.2357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %.sroa.2357.0.copyload.i = load i64, ptr %.sroa.2357.0..sroa_idx.i, align 8, !tbaa !34
  %.sroa.0355.0.copyload.i = load i8, ptr %i.zq, align 8, !tbaa !105
  %i.zs = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i8 %.sroa.0355.0.copyload.i, ptr %i.zs, align 8
  %.sroa.4.0..sroa_idx.i.i589.i = getelementptr inbounds nuw i8, ptr %16, i64 56
  store i64 %.sroa.2357.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i589.i, align 8
  store i32 2, ptr %i.zo, align 8, !tbaa !73
  %.phi.trans.insert127.i = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %.sroa.0352.0.copyload.pre.i = load i8, ptr %.phi.trans.insert127.i, align 8, !tbaa !105
  %.sroa.2354.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  %.sroa.2354.0.copyload.pre.i = load i64, ptr %.sroa.2354.0..sroa_idx.phi.trans.insert.i, align 8, !tbaa !34
  %i.zt = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i8 %.sroa.0352.0.copyload.pre.i, ptr %i.zt, align 8
  %.sroa.4.0..sroa_idx.i.i592.i = getelementptr inbounds nuw i8, ptr %16, i64 72
  store i64 %.sroa.2354.0.copyload.pre.i, ptr %.sroa.4.0..sroa_idx.i.i592.i, align 8
  store i32 3, ptr %i.zo, align 8, !tbaa !73
  %.pre162.i = load i32, ptr %i.f, align 8, !tbaa !73 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %16, i64 16, i1 false)
  %i.zu = zext i32 %.pre162.i to i64
  %.not.i.i.i594.i = icmp ult i32 %.pre162.i, 3
  br i1 %.not.i.i.i594.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit593.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zq, ptr noundef nonnull align 8 dereferenceable(48) %i.zn, i64 48, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit606.i

bb.ea:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit593.i
  %i.zv = load i32, ptr %i.g, align 4, !tbaa !74
  %i.zw = icmp ult i32 %i.zv, 3
  br i1 %i.zw, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.f, align 8, !tbaa !73
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull %i.e, i64 noundef 3, i64 noundef 16) #21
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i601.i

bb.ec:                                            ; preds = %bb.ea
  switch i32 %.pre162.i, label %bb.ed [
    i32 0, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i601.i
    i32 1, label %bb.ee
  ], !prof !243

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zq, ptr nonnull align 8 %i.zn, i64 32, i1 false)
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i601.i

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zq, ptr noundef nonnull align 8 dereferenceable(16) %i.zn, i64 16, i1 false), !tbaa.struct !106
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i601.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i601.i: ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.eb
  %.022.i.i.i602.i = phi i64 [ 0, %bb.eb ], [ 0, %bb.ec ], [ %i.zu, %bb.ed ], [ 1, %bb.ee ] ; 4 uses
  %i.zx = load i32, ptr %i.zo, align 8, !tbaa !73
  %i.zy = zext i32 %i.zx to i64                   ; 2 uses
  %.not.i.i.i.i603.i = icmp samesign eq i64 %.022.i.i.i602.i, %i.zy
  br i1 %.not.i.i.i.i603.i, label %_ZN4llvm6MCInstaSERKS0_.exit606.i, label %bb.ef

bb.ef:                                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i601.i
  %i.zz = load ptr, ptr %i.zm, align 8, !tbaa !75
  %.idx35.i.i.i604.i = shl nuw nsw i64 %.022.i.i.i602.i, 4
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 %.idx35.i.i.i604.i
  %i.aab = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.aac = getelementptr inbounds nuw [16 x i8], ptr %i.aab, i64 %.022.i.i.i602.i
  %i.aad = sub nsw i64 %i.zy, %.022.i.i.i602.i
  %gepdiff.i.i.i605.i = shl nsw i64 %i.aad, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aac, ptr align 8 %i.aaa, i64 %gepdiff.i.i.i605.i, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit606.i

_ZN4llvm6MCInstaSERKS0_.exit606.i:                ; preds = %bb.ef, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i601.i, %bb.dz
  store i32 3, ptr %i.f, align 8, !tbaa !73
  %i.aae = load ptr, ptr %i.zm, align 8, !tbaa !75 ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.zn
  br i1 %i.aaf, label %_ZN4llvm6MCInstD2Ev.exit607.i, label %bb.eg

bb.eg:                                            ; preds = %_ZN4llvm6MCInstaSERKS0_.exit606.i
  call void @free(ptr noundef %i.aae) #21
  br label %_ZN4llvm6MCInstD2Ev.exit607.i

_ZN4llvm6MCInstD2Ev.exit607.i:                    ; preds = %bb.eg, %_ZN4llvm6MCInstaSERKS0_.exit606.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit

bb.eh:                                            ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit617.i

bb.ei:                                            ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit617.i

bb.ej:                                            ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit617.i

.fold.split.i:                                    ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit617.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit617.i: ; preds = %.fold.split.i, %bb.ej, %bb.ei, %bb.eh, %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  %.0.i = phi i64 [ 1, %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread ], [ 3, %bb.eh ], [ 4, %bb.ei ], [ 6, %bb.ej ], [ 0, %.fold.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.aag = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %17, i8 0, i64 16, i1 false)
  store ptr %i.aah, ptr %i.aag, align 8, !tbaa !75
  %i.aai = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 4 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %17, i64 28
  store i32 6, ptr %i.aaj, align 4, !tbaa !74
  store i32 741, ptr %17, align 8, !tbaa !103
  store i8 2, ptr %i.aah, align 8
  %.sroa.4.0..sroa_idx.i.i610.i = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 %.0.i, ptr %.sroa.4.0..sroa_idx.i.i610.i, align 8
  store i32 1, ptr %i.aai, align 8, !tbaa !73
  %i.aak = load ptr, ptr %i.d, align 8, !tbaa !75 ; 7 uses
  %.sroa.2348.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %.sroa.2348.0.copyload.i = load i64, ptr %.sroa.2348.0..sroa_idx.i, align 8, !tbaa !34
  %.sroa.0346.0.copyload.i = load i8, ptr %i.aak, align 8, !tbaa !105
  %i.aal = getelementptr inbounds nuw i8, ptr %17, i64 48
  store i8 %.sroa.0346.0.copyload.i, ptr %i.aal, align 8
  %.sroa.4.0..sroa_idx.i.i613.i = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i64 %.sroa.2348.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i613.i, align 8
  store i32 2, ptr %i.aai, align 8, !tbaa !73
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %.sroa.0343.0.copyload.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !105
  %.sroa.2345.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aak, i64 24
  %.sroa.2345.0.copyload.pre.i = load i64, ptr %.sroa.2345.0..sroa_idx.phi.trans.insert.i, align 8, !tbaa !34
  %i.aam = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i8 %.sroa.0343.0.copyload.pre.i, ptr %i.aam, align 8
  %.sroa.4.0..sroa_idx.i.i616.i = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i64 %.sroa.2345.0.copyload.pre.i, ptr %.sroa.4.0..sroa_idx.i.i616.i, align 8
  store i32 3, ptr %i.aai, align 8, !tbaa !73
  %.pre137.i = load i32, ptr %i.f, align 8, !tbaa !73 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %17, i64 16, i1 false)
  %i.aan = zext i32 %.pre137.i to i64
  %.not.i.i.i618.i = icmp ult i32 %.pre137.i, 3
  br i1 %.not.i.i.i618.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit617.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aak, ptr noundef nonnull align 8 dereferenceable(48) %i.aah, i64 48, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit630.i

bb.el:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit617.i
  %i.aao = load i32, ptr %i.g, align 4, !tbaa !74
  %i.aap = icmp ult i32 %i.aao, 3
  br i1 %i.aap, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 0, ptr %i.f, align 8, !tbaa !73
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull %i.e, i64 noundef 3, i64 noundef 16) #21
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i625.i

bb.en:                                            ; preds = %bb.el
  switch i32 %.pre137.i, label %bb.eo [
    i32 0, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i625.i
    i32 1, label %bb.ep
  ], !prof !243

bb.eo:                                            ; preds = %bb.en
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aak, ptr nonnull align 8 %i.aah, i64 32, i1 false)
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i625.i

bb.ep:                                            ; preds = %bb.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aak, ptr noundef nonnull align 8 dereferenceable(16) %i.aah, i64 16, i1 false), !tbaa.struct !106
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i625.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i625.i: ; preds = %bb.ep, %bb.eo, %bb.en, %bb.em
  %.022.i.i.i626.i = phi i64 [ 0, %bb.em ], [ 0, %bb.en ], [ %i.aan, %bb.eo ], [ 1, %bb.ep ] ; 4 uses
  %i.aaq = load i32, ptr %i.aai, align 8, !tbaa !73
  %i.aar = zext i32 %i.aaq to i64                 ; 2 uses
  %.not.i.i.i.i627.i = icmp samesign eq i64 %.022.i.i.i626.i, %i.aar
  br i1 %.not.i.i.i.i627.i, label %_ZN4llvm6MCInstaSERKS0_.exit630.i, label %bb.eq

bb.eq:                                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i625.i
  %i.aas = load ptr, ptr %i.aag, align 8, !tbaa !75
  %.idx35.i.i.i628.i = shl nuw nsw i64 %.022.i.i.i626.i, 4
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %.idx35.i.i.i628.i
  %i.aau = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.aav = getelementptr inbounds nuw [16 x i8], ptr %i.aau, i64 %.022.i.i.i626.i
  %i.aaw = sub nsw i64 %i.aar, %.022.i.i.i626.i
  %gepdiff.i.i.i629.i = shl nsw i64 %i.aaw, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aav, ptr align 8 %i.aat, i64 %gepdiff.i.i.i629.i, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit630.i

_ZN4llvm6MCInstaSERKS0_.exit630.i:                ; preds = %bb.eq, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i625.i, %bb.ek
  store i32 3, ptr %i.f, align 8, !tbaa !73
  %i.aax = load ptr, ptr %i.aag, align 8, !tbaa !75 ; 2 uses
  %i.aay = icmp eq ptr %i.aax, %i.aah
  br i1 %i.aay, label %_ZN4llvm6MCInstD2Ev.exit631.i, label %bb.er

bb.er:                                            ; preds = %_ZN4llvm6MCInstaSERKS0_.exit630.i
  call void @free(ptr noundef %i.aax) #21
  br label %_ZN4llvm6MCInstD2Ev.exit631.i

_ZN4llvm6MCInstD2Ev.exit631.i:                    ; preds = %bb.er, %_ZN4llvm6MCInstaSERKS0_.exit630.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit

bb.es:                                            ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.aaz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %18, i8 0, i64 16, i1 false)
  store ptr %i.aba, ptr %i.aaz, align 8, !tbaa !75
  %i.abb = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 0, ptr %i.abb, align 8, !tbaa !73
  %i.abc = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 6, ptr %i.abc, align 4, !tbaa !74
  store i32 1339, ptr %18, align 8, !tbaa !103
  %i.abd = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %.sroa.0340.0.copyload.i = load i8, ptr %i.abd, align 8, !tbaa !105
  %.sroa.2342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %.sroa.2342.0.copyload.i = load i64, ptr %.sroa.2342.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %18, i8 %.sroa.0340.0.copyload.i, i64 %.sroa.2342.0.copyload.i)
  %i.abe = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 32
  %.sroa.0337.0.copyload.i = load i8, ptr %i.abf, align 8, !tbaa !105
  %.sroa.2339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abe, i64 40
  %.sroa.2339.0.copyload.i = load i64, ptr %.sroa.2339.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %18, i8 %.sroa.0337.0.copyload.i, i64 %.sroa.2339.0.copyload.i)
  %i.abg = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %.sroa.0334.0.copyload.i = load i8, ptr %i.abh, align 8, !tbaa !105
  %.sroa.2336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %.sroa.2336.0.copyload.i = load i64, ptr %.sroa.2336.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %18, i8 %.sroa.0334.0.copyload.i, i64 %.sroa.2336.0.copyload.i)
  %i.abi = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4llvm6MCInstaSERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %18) ; 0 uses
  %i.abj = load ptr, ptr %i.aaz, align 8, !tbaa !75 ; 2 uses
  %i.abk = icmp eq ptr %i.abj, %i.aba
  br i1 %i.abk, label %_ZN4llvm6MCInstD2Ev.exit632.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @free(ptr noundef %i.abj) #21
  br label %_ZN4llvm6MCInstD2Ev.exit632.i

_ZN4llvm6MCInstD2Ev.exit632.i:                    ; preds = %bb.et, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit641.i: ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread, %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.abl = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %19, i8 0, i64 16, i1 false)
  store ptr %i.abm, ptr %i.abl, align 8, !tbaa !75
  %i.abn = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 4 uses
  store i32 0, ptr %i.abn, align 8, !tbaa !73
  %i.abo = getelementptr inbounds nuw i8, ptr %19, i64 28
  store i32 6, ptr %i.abo, align 4, !tbaa !74
  %i.abp = icmp eq i32 %i.ws, 1655
  %i.abq = select i1 %i.abp, i32 1644, i32 1645
  store i32 %i.abq, ptr %19, align 8, !tbaa !103
  %i.abr = load ptr, ptr %i.d, align 8, !tbaa !75 ; 9 uses
  %.sroa.0331.0.copyload.i = load i8, ptr %i.abr, align 8, !tbaa !105
  %.sroa.2333.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %.sroa.2333.0.copyload.i = load i64, ptr %.sroa.2333.0..sroa_idx.i, align 8, !tbaa !34
  store i8 %.sroa.0331.0.copyload.i, ptr %i.abm, align 8
  %.sroa.4.0..sroa_idx.i.i634.i = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i64 %.sroa.2333.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i634.i, align 8
  store i32 1, ptr %i.abn, align 8, !tbaa !73
  %.sroa.2330.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abr, i64 24
  %.sroa.2330.0.copyload.i = load i64, ptr %.sroa.2330.0..sroa_idx.i, align 8, !tbaa !34
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %.sroa.0328.0.copyload.i = load i8, ptr %i.abs, align 8, !tbaa !105
  %i.abt = getelementptr inbounds nuw i8, ptr %19, i64 48
  store i8 %.sroa.0328.0.copyload.i, ptr %i.abt, align 8
  %.sroa.4.0..sroa_idx.i.i637.i = getelementptr inbounds nuw i8, ptr %19, i64 56
  store i64 %.sroa.2330.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i637.i, align 8
  %.phi.trans.insert124.i = getelementptr inbounds nuw i8, ptr %i.abr, i64 32
  %.sroa.0325.0.copyload.pre.i = load i8, ptr %.phi.trans.insert124.i, align 8, !tbaa !105
  %.sroa.2327.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.abr, i64 40
  %.sroa.2327.0.copyload.pre.i = load i64, ptr %.sroa.2327.0..sroa_idx.phi.trans.insert.i, align 8, !tbaa !34
  %i.abu = getelementptr inbounds nuw i8, ptr %19, i64 64
  store i8 %.sroa.0325.0.copyload.pre.i, ptr %i.abu, align 8
  %.sroa.4.0..sroa_idx.i.i640.i = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 %.sroa.2327.0.copyload.pre.i, ptr %.sroa.4.0..sroa_idx.i.i640.i, align 8
  store i32 3, ptr %i.abn, align 8, !tbaa !73
  %.pre160.i = load i32, ptr %i.f, align 8, !tbaa !73 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %19, i64 16, i1 false)
  %i.abv = zext i32 %.pre160.i to i64
  %.not.i.i.i642.i = icmp ult i32 %.pre160.i, 3
  br i1 %.not.i.i.i642.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit641.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.abr, ptr noundef nonnull align 8 dereferenceable(48) %i.abm, i64 48, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit654.i

bb.ev:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit641.i
  %i.abw = load i32, ptr %i.g, align 4, !tbaa !74
  %i.abx = icmp ult i32 %i.abw, 3
  br i1 %i.abx, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.f, align 8, !tbaa !73
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull %i.e, i64 noundef 3, i64 noundef 16) #21
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i649.i

bb.ex:                                            ; preds = %bb.ev
  switch i32 %.pre160.i, label %bb.ey [
    i32 0, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i649.i
    i32 1, label %bb.ez
  ], !prof !243

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.abr, ptr nonnull align 8 %i.abm, i64 32, i1 false)
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i649.i

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abr, ptr noundef nonnull align 8 dereferenceable(16) %i.abm, i64 16, i1 false), !tbaa.struct !106
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i649.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i649.i: ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ew
  %.022.i.i.i650.i = phi i64 [ 0, %bb.ew ], [ 0, %bb.ex ], [ %i.abv, %bb.ey ], [ 1, %bb.ez ] ; 4 uses
  %i.aby = load i32, ptr %i.abn, align 8, !tbaa !73
  %i.abz = zext i32 %i.aby to i64                 ; 2 uses
  %.not.i.i.i.i651.i = icmp samesign eq i64 %.022.i.i.i650.i, %i.abz
  br i1 %.not.i.i.i.i651.i, label %_ZN4llvm6MCInstaSERKS0_.exit654.i, label %bb.fa

bb.fa:                                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i649.i
  %i.aca = load ptr, ptr %i.abl, align 8, !tbaa !75
  %.idx35.i.i.i652.i = shl nuw nsw i64 %.022.i.i.i650.i, 4
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 %.idx35.i.i.i652.i
  %i.acc = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.acd = getelementptr inbounds nuw [16 x i8], ptr %i.acc, i64 %.022.i.i.i650.i
  %i.ace = sub nsw i64 %i.abz, %.022.i.i.i650.i
  %gepdiff.i.i.i653.i = shl nsw i64 %i.ace, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acd, ptr align 8 %i.acb, i64 %gepdiff.i.i.i653.i, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit654.i

_ZN4llvm6MCInstaSERKS0_.exit654.i:                ; preds = %bb.fa, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i649.i, %bb.eu
  store i32 3, ptr %i.f, align 8, !tbaa !73
  %i.acf = load ptr, ptr %i.abl, align 8, !tbaa !75 ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.abm
  br i1 %i.acg, label %_ZN4llvm6MCInstD2Ev.exit655.i, label %bb.fb

bb.fb:                                            ; preds = %_ZN4llvm6MCInstaSERKS0_.exit654.i
  call void @free(ptr noundef %i.acf) #21
  br label %_ZN4llvm6MCInstD2Ev.exit655.i

_ZN4llvm6MCInstD2Ev.exit655.i:                    ; preds = %bb.fb, %_ZN4llvm6MCInstaSERKS0_.exit654.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit664.i: ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread, %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.ach = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %20, i8 0, i64 16, i1 false)
  store ptr %i.aci, ptr %i.ach, align 8, !tbaa !75
  %i.acj = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 4 uses
  store i32 0, ptr %i.acj, align 8, !tbaa !73
  %i.ack = getelementptr inbounds nuw i8, ptr %20, i64 28
  store i32 6, ptr %i.ack, align 4, !tbaa !74
  %i.acl = icmp eq i32 %i.ws, 1658
  %i.acm = select i1 %i.acl, i32 1652, i32 1646
  store i32 %i.acm, ptr %20, align 8, !tbaa !103
  %i.acn = load ptr, ptr %i.d, align 8, !tbaa !75 ; 7 uses
  %.sroa.0322.0.copyload.i = load i8, ptr %i.acn, align 8, !tbaa !105
  %.sroa.2324.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %.sroa.2324.0.copyload.i = load i64, ptr %.sroa.2324.0..sroa_idx.i, align 8, !tbaa !34
  store i8 %.sroa.0322.0.copyload.i, ptr %i.aci, align 8
  %.sroa.4.0..sroa_idx.i.i657.i = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i64 %.sroa.2324.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i657.i, align 8
  %i.aco = getelementptr inbounds nuw i8, ptr %20, i64 48
  store i8 2, ptr %i.aco, align 8
  %.sroa.4.0..sroa_idx.i.i660.i = getelementptr inbounds nuw i8, ptr %20, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i660.i, align 8
  store i32 2, ptr %i.acj, align 8, !tbaa !73
  %.phi.trans.insert121.i = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %.sroa.0317.0.copyload.pre.i = load i8, ptr %.phi.trans.insert121.i, align 8, !tbaa !105
  %.sroa.2319.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.acn, i64 24
  %.sroa.2319.0.copyload.pre.i = load i64, ptr %.sroa.2319.0..sroa_idx.phi.trans.insert.i, align 8, !tbaa !34
  %i.acp = getelementptr inbounds nuw i8, ptr %20, i64 64
  store i8 %.sroa.0317.0.copyload.pre.i, ptr %i.acp, align 8
  %.sroa.4.0..sroa_idx.i.i663.i = getelementptr inbounds nuw i8, ptr %20, i64 72
  store i64 %.sroa.2319.0.copyload.pre.i, ptr %.sroa.4.0..sroa_idx.i.i663.i, align 8
  store i32 3, ptr %i.acj, align 8, !tbaa !73
  %.pre158.i = load i32, ptr %i.f, align 8, !tbaa !73 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %20, i64 16, i1 false)
  %i.acq = zext i32 %.pre158.i to i64
  %.not.i.i.i665.i = icmp ult i32 %.pre158.i, 3
  br i1 %.not.i.i.i665.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit664.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.acn, ptr noundef nonnull align 8 dereferenceable(48) %i.aci, i64 48, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit677.i

bb.fd:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit664.i
  %i.acr = load i32, ptr %i.g, align 4, !tbaa !74
  %i.acs = icmp ult i32 %i.acr, 3
  br i1 %i.acs, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 0, ptr %i.f, align 8, !tbaa !73
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull %i.e, i64 noundef 3, i64 noundef 16) #21
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i672.i

bb.ff:                                            ; preds = %bb.fd
  switch i32 %.pre158.i, label %bb.fg [
    i32 0, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i672.i
    i32 1, label %bb.fh
  ], !prof !243

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.acn, ptr nonnull align 8 %i.aci, i64 32, i1 false)
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i672.i

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acn, ptr noundef nonnull align 8 dereferenceable(16) %i.aci, i64 16, i1 false), !tbaa.struct !106
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i672.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i672.i: ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fe
  %.022.i.i.i673.i = phi i64 [ 0, %bb.fe ], [ 0, %bb.ff ], [ %i.acq, %bb.fg ], [ 1, %bb.fh ] ; 4 uses
  %i.act = load i32, ptr %i.acj, align 8, !tbaa !73
  %i.acu = zext i32 %i.act to i64                 ; 2 uses
  %.not.i.i.i.i674.i = icmp samesign eq i64 %.022.i.i.i673.i, %i.acu
  br i1 %.not.i.i.i.i674.i, label %_ZN4llvm6MCInstaSERKS0_.exit677.i, label %bb.fi

bb.fi:                                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i672.i
  %i.acv = load ptr, ptr %i.ach, align 8, !tbaa !75
  %.idx35.i.i.i675.i = shl nuw nsw i64 %.022.i.i.i673.i, 4
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 %.idx35.i.i.i675.i
  %i.acx = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.acy = getelementptr inbounds nuw [16 x i8], ptr %i.acx, i64 %.022.i.i.i673.i
  %i.acz = sub nsw i64 %i.acu, %.022.i.i.i673.i
  %gepdiff.i.i.i676.i = shl nsw i64 %i.acz, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acy, ptr align 8 %i.acw, i64 %gepdiff.i.i.i676.i, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit677.i

_ZN4llvm6MCInstaSERKS0_.exit677.i:                ; preds = %bb.fi, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i672.i, %bb.fc
  store i32 3, ptr %i.f, align 8, !tbaa !73
  %i.ada = load ptr, ptr %i.ach, align 8, !tbaa !75 ; 2 uses
  %i.adb = icmp eq ptr %i.ada, %i.aci
  br i1 %i.adb, label %_ZN4llvm6MCInstD2Ev.exit678.i, label %bb.fj

bb.fj:                                            ; preds = %_ZN4llvm6MCInstaSERKS0_.exit677.i
  call void @free(ptr noundef %i.ada) #21
  br label %_ZN4llvm6MCInstD2Ev.exit678.i

_ZN4llvm6MCInstD2Ev.exit678.i:                    ; preds = %bb.fj, %_ZN4llvm6MCInstaSERKS0_.exit677.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit

bb.fk:                                            ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.adc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %21, i8 0, i64 16, i1 false)
  store ptr %i.add, ptr %i.adc, align 8, !tbaa !75
  %i.ade = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i32 0, ptr %i.ade, align 8, !tbaa !73
  %i.adf = getelementptr inbounds nuw i8, ptr %21, i64 28
  store i32 6, ptr %i.adf, align 4, !tbaa !74
  store i32 453, ptr %21, align 8, !tbaa !103
  %i.adg = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %.sroa.0314.0.copyload.i = load i8, ptr %i.adg, align 8, !tbaa !105
  %.sroa.2316.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %.sroa.2316.0.copyload.i = load i64, ptr %.sroa.2316.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %21, i8 %.sroa.0314.0.copyload.i, i64 %.sroa.2316.0.copyload.i)
  %i.adh = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %.sroa.0311.0.copyload.i = load i8, ptr %i.adi, align 8, !tbaa !105
  %.sroa.2313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adh, i64 24
  %.sroa.2313.0.copyload.i = load i64, ptr %.sroa.2313.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %21, i8 %.sroa.0311.0.copyload.i, i64 %.sroa.2313.0.copyload.i)
  %i.adj = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 32
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !28
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !62, !nonnull !42, !align !63
  call fastcc void @_ZL13addNegOperandRN4llvm6MCInstERNS_9MCOperandERNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(128) %21, ptr noundef nonnull align 8 dereferenceable(16) %i.adk, ptr noundef nonnull align 8 dereferenceable(2208) %i.ado)
  %i.adp = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4llvm6MCInstaSERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %21) ; 0 uses
  %i.adq = load ptr, ptr %i.adc, align 8, !tbaa !75 ; 2 uses
  %i.adr = icmp eq ptr %i.adq, %i.add
  br i1 %i.adr, label %_ZN4llvm6MCInstD2Ev.exit679.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @free(ptr noundef %i.adq) #21
  br label %_ZN4llvm6MCInstD2Ev.exit679.i

_ZN4llvm6MCInstD2Ev.exit679.i:                    ; preds = %bb.fl, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit

bb.fm:                                            ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.ads = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %22, i8 0, i64 16, i1 false)
  store ptr %i.adt, ptr %i.ads, align 8, !tbaa !75
  %i.adu = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i32 0, ptr %i.adu, align 8, !tbaa !73
  %i.adv = getelementptr inbounds nuw i8, ptr %22, i64 28
  store i32 6, ptr %i.adv, align 4, !tbaa !74
  store i32 1644, ptr %22, align 8, !tbaa !103
  %i.adw = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %.sroa.0308.0.copyload.i = load i8, ptr %i.adw, align 8, !tbaa !105
  %.sroa.2310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adw, i64 8
  %.sroa.2310.0.copyload.i = load i64, ptr %.sroa.2310.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %22, i8 %.sroa.0308.0.copyload.i, i64 %.sroa.2310.0.copyload.i)
  %i.adx = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %.sroa.0305.0.copyload.i = load i8, ptr %i.ady, align 8, !tbaa !105
  %.sroa.2307.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adx, i64 24
  %.sroa.2307.0.copyload.i = load i64, ptr %.sroa.2307.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %22, i8 %.sroa.0305.0.copyload.i, i64 %.sroa.2307.0.copyload.i)
  %i.adz = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 32
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !28
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 16
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !62, !nonnull !42, !align !63
  call fastcc void @_ZL13addNegOperandRN4llvm6MCInstERNS_9MCOperandERNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(128) %22, ptr noundef nonnull align 8 dereferenceable(16) %i.aea, ptr noundef nonnull align 8 dereferenceable(2208) %i.aee)
  %i.aef = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4llvm6MCInstaSERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %22) ; 0 uses
  %i.aeg = load ptr, ptr %i.ads, align 8, !tbaa !75 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.adt
  br i1 %i.aeh, label %_ZN4llvm6MCInstD2Ev.exit680.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @free(ptr noundef %i.aeg) #21
  br label %_ZN4llvm6MCInstD2Ev.exit680.i

_ZN4llvm6MCInstD2Ev.exit680.i:                    ; preds = %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit

bb.fo:                                            ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.aei = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %23, i8 0, i64 16, i1 false)
  store ptr %i.aej, ptr %i.aei, align 8, !tbaa !75
  %i.aek = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i32 0, ptr %i.aek, align 8, !tbaa !73
  %i.ael = getelementptr inbounds nuw i8, ptr %23, i64 28
  store i32 6, ptr %i.ael, align 4, !tbaa !74
  store i32 458, ptr %23, align 8, !tbaa !103
  %i.aem = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %.sroa.0302.0.copyload.i = load i8, ptr %i.aem, align 8, !tbaa !105
  %.sroa.2304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %.sroa.2304.0.copyload.i = load i64, ptr %.sroa.2304.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %23, i8 %.sroa.0302.0.copyload.i, i64 %.sroa.2304.0.copyload.i)
  %i.aen = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %.sroa.0299.0.copyload.i = load i8, ptr %i.aeo, align 8, !tbaa !105
  %.sroa.2301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aen, i64 24
  %.sroa.2301.0.copyload.i = load i64, ptr %.sroa.2301.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %23, i8 %.sroa.0299.0.copyload.i, i64 %.sroa.2301.0.copyload.i)
  %i.aep = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 32
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !28
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 16
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !62, !nonnull !42, !align !63
  call fastcc void @_ZL13addNegOperandRN4llvm6MCInstERNS_9MCOperandERNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(128) %23, ptr noundef nonnull align 8 dereferenceable(16) %i.aeq, ptr noundef nonnull align 8 dereferenceable(2208) %i.aeu)
  %i.aev = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4llvm6MCInstaSERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %23) ; 0 uses
  %i.aew = load ptr, ptr %i.aei, align 8, !tbaa !75 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.aej
  br i1 %i.aex, label %_ZN4llvm6MCInstD2Ev.exit681.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @free(ptr noundef %i.aew) #21
  br label %_ZN4llvm6MCInstD2Ev.exit681.i

_ZN4llvm6MCInstD2Ev.exit681.i:                    ; preds = %bb.fp, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %_ZN12_GLOBAL__N_112PPCAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEE.exit

bb.fq:                                            ; preds = %_ZL13validateMemOpRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.aey = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %24, i8 0, i64 16, i1 false)
  store ptr %i.aez, ptr %i.aey, align 8, !tbaa !75
  %i.afa = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 0, ptr %i.afa, align 8, !tbaa !73
  %i.afb = getelementptr inbounds nuw i8, ptr %24, i64 28
  store i32 6, ptr %i.afb, align 4, !tbaa !74
  store i32 455, ptr %24, align 8, !tbaa !103
  %i.afc = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %.sroa.0296.0.copyload.i = load i8, ptr %i.afc, align 8, !tbaa !105
  %.sroa.2298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.afc, i64 8
  %.sroa.2298.0.copyload.i = load i64, ptr %.sroa.2298.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %24, i8 %.sroa.0296.0.copyload.i, i64 %.sroa.2298.0.copyload.i)
  %i.afd = load ptr, ptr %i.d, align 8, !tbaa !75 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  %.sroa.0293.0.copyload.i = load i8, ptr %i.afe, align 8, !tbaa !105
  %.sroa.2295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.afd, i64 24
  %.sroa.2295.0.copyload.i = load i64, ptr %.sroa.2295.0..sroa_idx.i, align 8, !tbaa !34
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %24, i8 %.sroa.0293.0.copyload.i, i64 %.sroa.2295.0.copyload.i)
  %i.aff = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !28
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !62, !nonnull !42, !align !63
  call fastcc void @_ZL13addNegOperandRN4llvm6MCInstERNS_9MCOperandERNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(128) %24, ptr noundef nonnull align 8 dereferenceable(16) %i.afg, ptr noundef nonnull align 8 dereferenceable(2208) %i.afk)
  %i.afl = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4llvm6MCInstaSERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %50, ptr noundef nonnull align 8 dereferenceable(128) %24) ; 0 uses
  %i.afm = load ptr, ptr %i.aey, align 8, !tbaa !75 ; 2 uses
  %i.afn = icmp eq ptr %i.afm, %i.aez
  br i1 %i.afn, label %_ZN4llvm6MCInstD2Ev.exit682.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @free(ptr noundef %i.afm) #21
end_hunk_0
