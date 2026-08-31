Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsMCCodeEmitter?download=true
inline.NumInlined: 1063
inline.NumDeleted: 123
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm17MipsMCCodeEmitter18LowerCompactBranchERNS_6MCInstE:bb.a
  %.not = icmp ult i16 %i.r, %i.o
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  store i32 %i.f, ptr %i.c, align 8, !tbaa !27
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %i.d, ptr %i.v, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17MipsMCCodeEmitter11isMicroMipsERKNS_15MCSubtargetInfoE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load i64, ptr %i.a, align 8, !tbaa !213
  %i.c = and i64 %i.b, 65536
  %i.d = icmp ne i64 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17MipsMCCodeEmitter10isMips32r6ERKNS_15MCSubtargetInfoE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load i64, ptr %i.a, align 8, !tbaa !213
  %i.c = and i64 %i.b, 8589934592
  %i.d = icmp ne i64 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm17MipsMCCodeEmitter8EmitByteEhRNS_11raw_ostreamE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(25) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218
  %.not.i = icmp ult ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext %1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !214
  store i8 %1, ptr %i.b, align 1, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm17MipsMCCodeEmitter17encodeInstructionERKNS_6MCInstERNS_15SmallVectorImplIcEERNS4_INS_7MCFixupEEERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(320) %4) unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MCInst", align 8      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !219
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 6, ptr %i.e, align 4, !tbaa !220
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !219  ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN4llvm6MCInstC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %i.g, 6
  br i1 %i.h, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i: ; preds = %bb.b
  %i.i = zext i32 %i.g to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull %i.c, i64 noundef %i.i, i64 noundef 16) #16
  %.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !219 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i, %bb.b
  %i.j = phi ptr [ %.pre.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.c, %bb.b ]
  %i.k = phi i32 [ %.pre.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.g, %bb.b ]
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !25
  %gepdiff.i.i.i = shl nuw nsw i64 %i.l, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 8 %i.m, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i
  store i32 %i.g, ptr %i.d, align 8, !tbaa !219
  br label %_ZN4llvm6MCInstC2ERKS0_.exit

_ZN4llvm6MCInstC2ERKS0_.exit:                     ; preds = %bb.a, %.sink.split.i.i.i
  %i.n = load i32, ptr %1, align 8, !tbaa !205
  switch i32 %i.n, label %_ZL15LowerLargeShiftRN4llvm6MCInstE.exit [
    i32 1557, label %bb.c
    i32 1564, label %bb.c
    i32 1561, label %bb.c
    i32 1551, label %bb.c
    i32 959, label %bb.d
    i32 1054, label %bb.d
    i32 960, label %bb.d
    i32 1055, label %bb.d
    i32 1082, label %bb.d
    i32 1083, label %bb.d
    i32 1075, label %bb.d
    i32 1076, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN4llvm6MCInstC2ERKS0_.exit, %_ZN4llvm6MCInstC2ERKS0_.exit, %_ZN4llvm6MCInstC2ERKS0_.exit, %_ZN4llvm6MCInstC2ERKS0_.exit
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = icmp slt i64 %i.q, 32
  br i1 %i.r, label %_ZL15LowerLargeShiftRN4llvm6MCInstE.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.s = add nsw i64 %i.q, -32
  store i64 %i.s, ptr %i.p, align 8, !tbaa !27
  %i.t = load i32, ptr %5, align 8, !tbaa !205
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [2 x i8], ptr @switch.table._ZNK4llvm17MipsMCCodeEmitter17encodeInstructionERKNS_6MCInstERNS_15SmallVectorImplIcEERNS4_INS_7MCFixupEEERKNS_15MCSubtargetInfoE, i64 %i.u
  %switch.gep = getelementptr i8, ptr %i.v, i64 -3102
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  store i32 %switch.ext, ptr %5, align 8, !tbaa !205
  br label %_ZL15LowerLargeShiftRN4llvm6MCInstE.exit

bb.d:                                             ; preds = %_ZN4llvm6MCInstC2ERKS0_.exit, %_ZN4llvm6MCInstC2ERKS0_.exit, %_ZN4llvm6MCInstC2ERKS0_.exit, %_ZN4llvm6MCInstC2ERKS0_.exit, %_ZN4llvm6MCInstC2ERKS0_.exit, %_ZN4llvm6MCInstC2ERKS0_.exit, %_ZN4llvm6MCInstC2ERKS0_.exit, %_ZN4llvm6MCInstC2ERKS0_.exit
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !27   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28, !nonnull !29, !align !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !189 ; 2 uses
  %i.ah = zext i32 %i.y to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !204 ; 3 uses
  %i.ak = zext i32 %i.aa to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !204 ; 3 uses
  %i.an = load i32, ptr %5, align 8, !tbaa !205
  switch i32 %i.an, label %.unreachabledefault.i [
    i32 1054, label %bb.e
    i32 959, label %bb.e
    i32 1055, label %bb.e
    i32 960, label %bb.e
    i32 1075, label %bb.f
    i32 1082, label %bb.f
    i32 1076, label %bb.g
    i32 1083, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ao = icmp ult i16 %i.aj, %i.am
  br i1 %i.ao, label %_ZL15LowerLargeShiftRN4llvm6MCInstE.exit, label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.d
  %.not25.i = icmp ult i16 %i.aj, %i.am
  br i1 %.not25.i, label %bb.h, label %_ZL15LowerLargeShiftRN4llvm6MCInstE.exit

.unreachabledefault.i:                            ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.d
  %.not.i = icmp ult i16 %i.am, %i.aj
  br i1 %.not.i, label %bb.h, label %_ZL15LowerLargeShiftRN4llvm6MCInstE.exit

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !27
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 %i.y, ptr %i.aq, align 8, !tbaa !27
  br label %_ZL15LowerLargeShiftRN4llvm6MCInstE.exit

_ZL15LowerLargeShiftRN4llvm6MCInstE.exit:         ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %switch.lookup, %bb.c, %_ZN4llvm6MCInstC2ERKS0_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !219
  %i.at = call noundef i64 @_ZNK4llvm17MipsMCCodeEmitter21getBinaryCodeForInstrERKNS_6MCInstERNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(320) %4)
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = load i32, ptr %5, align 8, !tbaa !205   ; 11 uses
  %6 = icmp eq i32 %i.av, 600
  %7 = icmp eq i32 %i.av, 2620
  %or.cond.not61 = or i1 %6, %7
  %8 = and i32 %i.av, -2
  %9 = icmp eq i32 %8, 2634
  %or.cond5.not58 = or i1 %or.cond.not61, %9
  %10 = icmp ne i32 %i.au, 0
  %or.cond7 = or i1 %10, %or.cond5.not58
  call void @llvm.assume(i1 %or.cond7)
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !213 ; 2 uses
  %i.ay = and i64 %i.ax, 65536
  %.not115 = icmp eq i64 %i.ay, 0
  br i1 %.not115, label %bb.x, label %bb.i

bb.i:                                             ; preds = %_ZL15LowerLargeShiftRN4llvm6MCInstE.exit
  %i.az = and i64 %i.ax, 8589934592
  %.not116 = icmp eq i64 %i.az, 0
  br i1 %.not116, label %.preheader, label %.preheader117

.preheader117:                                    ; preds = %bb.i, %bb.j
  %.027.i = phi i32 [ %.1.i, %bb.j ], [ 96, %bb.i ] ; 3 uses
  %.01826.i = phi i32 [ %.119.i, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %i.ba = sub nuw i32 %.027.i, %.01826.i
  %i.bb = lshr i32 %i.ba, 1
  %i.bc = add i32 %i.bb, %.01826.i                ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [12 x i8], ptr @_ZZN4llvm4Mips18MipsR62MicroMipsR6EjNS0_4ArchEE5Table, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8  ; 2 uses
  %i.bg = icmp eq i32 %i.av, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader117
  %i.bh = icmp ult i32 %i.av, %i.bf               ; 2 uses
  %i.bi = add i32 %i.bc, 1
  %.119.i = select i1 %i.bh, i32 %.01826.i, i32 %i.bi ; 3 uses
  %.1.i = select i1 %i.bh, i32 %i.bc, i32 %.027.i ; 3 uses
  %i.bj = icmp ult i32 %.119.i, %.1.i
  br i1 %i.bj, label %.preheader117, label %bb.k, !llvm.loop !11

bb.k:                                             ; preds = %bb.j, %.preheader117
  %.018.lcssa.i = phi i32 [ %.01826.i, %.preheader117 ], [ %.119.i, %bb.j ]
  %.0.lcssa.i = phi i32 [ %.027.i, %.preheader117 ], [ %.1.i, %bb.j ]
  %i.bk = icmp eq i32 %.018.lcssa.i, %.0.lcssa.i
  br i1 %i.bk, label %_ZN4llvm4Mips18MipsR62MicroMipsR6EjNS0_4ArchE.exit.thread, label %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread.sink.split

_ZN4llvm4Mips18MipsR62MicroMipsR6EjNS0_4ArchE.exit.thread: ; preds = %bb.k, %bb.l
  %.027.i63 = phi i32 [ %.1.i66, %bb.l ], [ 51, %bb.k ] ; 3 uses
  %.01826.i64 = phi i32 [ %.119.i65, %bb.l ], [ 0, %bb.k ] ; 4 uses
  %i.bl = sub nuw i32 %.027.i63, %.01826.i64
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = add i32 %i.bm, %.01826.i64              ; 3 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr @_ZZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchEE5Table, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8  ; 2 uses
  %i.br = icmp eq i32 %i.av, %i.bq
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm4Mips18MipsR62MicroMipsR6EjNS0_4ArchE.exit.thread
  %i.bs = icmp ult i32 %i.av, %i.bq               ; 2 uses
  %i.bt = add i32 %i.bn, 1
  %.119.i65 = select i1 %i.bs, i32 %.01826.i64, i32 %i.bt ; 3 uses
  %.1.i66 = select i1 %i.bs, i32 %i.bn, i32 %.027.i63 ; 3 uses
  %i.bu = icmp ult i32 %.119.i65, %.1.i66
  br i1 %i.bu, label %_ZN4llvm4Mips18MipsR62MicroMipsR6EjNS0_4ArchE.exit.thread, label %bb.m, !llvm.loop !13

bb.m:                                             ; preds = %bb.l, %_ZN4llvm4Mips18MipsR62MicroMipsR6EjNS0_4ArchE.exit.thread
  %.018.lcssa.i67 = phi i32 [ %.01826.i64, %_ZN4llvm4Mips18MipsR62MicroMipsR6EjNS0_4ArchE.exit.thread ], [ %.119.i65, %bb.l ]
  %.0.lcssa.i68 = phi i32 [ %.027.i63, %_ZN4llvm4Mips18MipsR62MicroMipsR6EjNS0_4ArchE.exit.thread ], [ %.1.i66, %bb.l ]
  %i.bv = icmp eq i32 %.018.lcssa.i67, %.0.lcssa.i68
  br i1 %i.bv, label %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread.preheader, label %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit

.preheader:                                       ; preds = %bb.i, %bb.n
  %.027.i71 = phi i32 [ %.1.i74, %bb.n ], [ 266, %bb.i ] ; 3 uses
  %.01826.i72 = phi i32 [ %.119.i73, %bb.n ], [ 0, %bb.i ] ; 4 uses
  %i.bw = sub nuw i32 %.027.i71, %.01826.i72
  %i.bx = lshr i32 %i.bw, 1
  %i.by = add i32 %i.bx, %.01826.i72              ; 3 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr @_ZZN4llvm4Mips13Std2MicroMipsEjNS0_4ArchEE5Table, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8  ; 2 uses
  %i.cc = icmp eq i32 %i.av, %i.cb
  br i1 %i.cc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader
  %i.cd = icmp ult i32 %i.av, %i.cb               ; 2 uses
  %i.ce = add i32 %i.by, 1
  %.119.i73 = select i1 %i.cd, i32 %.01826.i72, i32 %i.ce ; 3 uses
  %.1.i74 = select i1 %i.cd, i32 %i.by, i32 %.027.i71 ; 3 uses
  %i.cf = icmp ult i32 %.119.i73, %.1.i74
  br i1 %i.cf, label %.preheader, label %bb.o, !llvm.loop !12

bb.o:                                             ; preds = %bb.n, %.preheader
  %.018.lcssa.i75 = phi i32 [ %.01826.i72, %.preheader ], [ %.119.i73, %bb.n ]
  %.0.lcssa.i76 = phi i32 [ %.027.i71, %.preheader ], [ %.1.i74, %bb.n ]
  %i.cg = icmp eq i32 %.018.lcssa.i75, %.0.lcssa.i76
  br i1 %i.cg, label %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread.preheader, label %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit

_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit:  ; preds = %bb.o, %bb.m
  %.pn = phi ptr [ %i.bp, %bb.m ], [ %i.ca, %bb.o ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !8   ; 2 uses
  %i.ch = icmp eq i32 %.0, -1
  br i1 %i.ch, label %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread.preheader, label %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread

_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread.preheader: ; preds = %bb.o, %bb.m, %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit
  br label %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread

_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread: ; preds = %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread.preheader, %bb.p
  %.027.i79 = phi i32 [ %.1.i82, %bb.p ], [ 160, %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread.preheader ] ; 3 uses
  %.01826.i80 = phi i32 [ %.119.i81, %bb.p ], [ 0, %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread.preheader ] ; 4 uses
  %i.ci = sub nuw i32 %.027.i79, %.01826.i80
  %i.cj = lshr i32 %i.ci, 1
  %i.ck = add i32 %i.cj, %.01826.i80              ; 3 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr @_ZZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchEE5Table, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8  ; 2 uses
  %i.co = icmp eq i32 %i.av, %i.cn
  br i1 %i.co, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread
  %i.cp = icmp ult i32 %i.av, %i.cn               ; 2 uses
  %i.cq = add i32 %i.ck, 1
  %.119.i81 = select i1 %i.cp, i32 %.01826.i80, i32 %i.cq ; 3 uses
  %.1.i82 = select i1 %i.cp, i32 %i.ck, i32 %.027.i79 ; 3 uses
  %i.cr = icmp ult i32 %.119.i81, %.1.i82
  br i1 %i.cr, label %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread, label %bb.q, !llvm.loop !9

bb.q:                                             ; preds = %bb.p, %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread
  %.018.lcssa.i83 = phi i32 [ %.01826.i80, %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread ], [ %.119.i81, %bb.p ]
  %.0.lcssa.i84 = phi i32 [ %.027.i79, %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit.thread ], [ %.1.i82, %bb.p ]
  %i.cs = icmp eq i32 %.018.lcssa.i83, %.0.lcssa.i84
  br i1 %i.cs, label %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread112, label %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread.sink.split

_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread.sink.split: ; preds = %bb.q, %bb.k
  %.lcssa.sink = phi ptr [ %i.be, %bb.k ], [ %i.cm, %bb.q ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.lcssa.sink, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  br label %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread

_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread: ; preds = %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread.sink.split, %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit
  %.1111 = phi i32 [ %.0, %_ZN4llvm4Mips15Std2MicroMipsR6EjNS0_4ArchE.exit ], [ %i.cu, %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread.sink.split ]
  %i.cv = load i32, ptr %i.ar, align 8, !tbaa !219 ; 2 uses
  %i.cw = icmp ugt i32 %i.cv, %i.as
  br i1 %i.cw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread
  %i.cx = add i32 %i.cv, -1
  store i32 %i.cx, ptr %i.ar, align 8, !tbaa !219
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread
  store i32 %.1111, ptr %5, align 8, !tbaa !205
  %i.cy = call noundef i64 @_ZNK4llvm17MipsMCCodeEmitter21getBinaryCodeForInstrERKNS_6MCInstERNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(320) %4)
  %i.cz = trunc i64 %i.cy to i32
  br label %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread112

_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread112: ; preds = %bb.q, %bb.s
  %.055 = phi i32 [ %i.cz, %bb.s ], [ %i.au, %bb.q ] ; 2 uses
  %i.da = load i32, ptr %1, align 8, !tbaa !205
  %.off = add i32 %i.da, -2153
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_ZN4llvm4Mips13Dsp2MicroMipsEjNS0_4ArchE.exit.thread112
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !25  ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !27
  switch i32 %i.dd, label %.critedge12.i [
    i32 23, label %bb.u
    i32 24, label %bb.v
    i32 22, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !27
  %switch.selectcmp.i = icmp eq i32 %i.df, 25
  %i.dg = select i1 %switch.selectcmp.i, i32 128, i32 0
  br label %_ZNK4llvm17MipsMCCodeEmitter22getMovePRegPairOpValueERKNS_6MCInstEjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit

bb.v:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !27
  %i.dj = icmp eq i32 %i.di, 25
  br i1 %i.dj, label %_ZNK4llvm17MipsMCCodeEmitter22getMovePRegPairOpValueERKNS_6MCInstEjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit, label %.critedge12.i

bb.w:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !27
  switch i32 %i.dl, label %.critedge12.i [
    i32 331, label %_ZNK4llvm17MipsMCCodeEmitter22getMovePRegPairOpValueERKNS_6MCInstEjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit
    i32 332, label %.fold.split48.i
    i32 23, label %.fold.split49.i
    i32 24, label %.fold.split50.i
    i32 25, label %switch.edge.i
  ]

switch.edge.i:                                    ; preds = %bb.w
  br label %_ZNK4llvm17MipsMCCodeEmitter22getMovePRegPairOpValueERKNS_6MCInstEjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit

.critedge12.i:                                    ; preds = %bb.w, %bb.v, %bb.t
  br label %_ZNK4llvm17MipsMCCodeEmitter22getMovePRegPairOpValueERKNS_6MCInstEjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit

.fold.split48.i:                                  ; preds = %bb.w
  br label %_ZNK4llvm17MipsMCCodeEmitter22getMovePRegPairOpValueERKNS_6MCInstEjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit

.fold.split49.i:                                  ; preds = %bb.w
  br label %_ZNK4llvm17MipsMCCodeEmitter22getMovePRegPairOpValueERKNS_6MCInstEjRNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE.exit
end_hunk_0
