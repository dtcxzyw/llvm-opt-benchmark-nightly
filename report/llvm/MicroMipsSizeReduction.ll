Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MicroMipsSizeReduction?download=true
inline.NumInlined: 536
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_119MicroMipsSizeReduce13ReduceXWtoXWPEPNS_18ReduceEntryFunArgsE:bb.a
bb.i:                                             ; preds = %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit.i38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40 ; 2 uses
  %i.bp = icmp eq i32 %i.ba, %i.bo
  %or.cond58 = select i1 %i.m, i1 %i.bp, i1 false
  br i1 %or.cond58, label %_ZL13CheckXWPInstrPN4llvm12MachineInstrEbRKN12_GLOBAL__N_111ReduceEntryE.exit.thread, label %_ZL13CheckXWPInstrPN4llvm12MachineInstrEbRKN12_GLOBAL__N_111ReduceEntryE.exit45

_ZL13CheckXWPInstrPN4llvm12MachineInstrEbRKN12_GLOBAL__N_111ReduceEntryE.exit45: ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !40
  %.not = icmp eq i32 %i.br, %i.bo
  br i1 %.not, label %bb.j, label %_ZL13CheckXWPInstrPN4llvm12MachineInstrEbRKN12_GLOBAL__N_111ReduceEntryE.exit.thread

bb.j:                                             ; preds = %_ZL13CheckXWPInstrPN4llvm12MachineInstrEbRKN12_GLOBAL__N_111ReduceEntryE.exit45
  %i.bs = tail call fastcc noundef zeroext i1 @_ZL16ConsecutiveInstrPN4llvm12MachineInstrES1_(ptr nonnull %i.o, ptr noundef nonnull %i.i) ; 2 uses
  %i.bt = tail call fastcc noundef zeroext i1 @_ZL16ConsecutiveInstrPN4llvm12MachineInstrES1_(ptr nonnull %i.ay, ptr noundef nonnull %i.e)
  %or.cond = or i1 %i.bs, %i.bt
  br i1 %or.cond, label %.preheader.preheader, label %_ZL13CheckXWPInstrPN4llvm12MachineInstrEbRKN12_GLOBAL__N_111ReduceEntryE.exit.thread

.preheader.preheader:                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57
  store ptr %i.bv, ptr %i.d, align 8
  %i.bw = getelementptr i8, ptr %i.b, i64 20
  %.val = load i32, ptr %i.bw, align 4
  %i.bx = getelementptr i8, ptr %i.b, i64 24
  %.val32 = load i32, ptr %i.bx, align 8, !tbaa !50
  tail call fastcc void @_ZN12_GLOBAL__N_119MicroMipsSizeReduce18ReplaceInstructionEPN4llvm12MachineInstrERKNS_11ReduceEntryES3_b(ptr noundef nonnull %i.e, i32 %.val, i32 %.val32, ptr noundef nonnull %i.i, i1 noundef zeroext %i.bs)
  br label %_ZL13CheckXWPInstrPN4llvm12MachineInstrEbRKN12_GLOBAL__N_111ReduceEntryE.exit.thread

_ZL13CheckXWPInstrPN4llvm12MachineInstrEbRKN12_GLOBAL__N_111ReduceEntryE.exit.thread: ; preds = %bb.i, %bb.b, %bb.h, %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit.i38, %bb.g, %bb.f, %.critedge15.i35, %bb.e, %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit.i, %.thread49, %bb.c, %_ZL13CheckXWPInstrPN4llvm12MachineInstrEbRKN12_GLOBAL__N_111ReduceEntryE.exit45, %bb.j, %.preheader.preheader, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %.preheader.preheader ], [ false, %_ZL13CheckXWPInstrPN4llvm12MachineInstrEbRKN12_GLOBAL__N_111ReduceEntryE.exit45 ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.thread49 ], [ false, %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit.i ], [ false, %.critedge15.i35 ], [ false, %bb.f ], [ false, %bb.g ], [ false, %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit.i38 ], [ false, %bb.i ], [ false, %bb.h ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119MicroMipsSizeReduce14ReduceXWtoXWSPEPNS_18ReduceEntryFunArgsE(ptr nofree noundef readonly captures(none) %0) #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14, !nonnull !15, !align !16 ; 6 uses
  %i.d = getelementptr i8, ptr %i.a, i64 32
  %.val9 = load ptr, ptr %i.d, align 8, !tbaa !33 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.val.i = load i8, ptr %i.e, align 4, !tbaa !39
  %i.f = sext i8 %.val.i to i64
  %i.g = and i64 %i.f, 4294967295
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.val9, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 255
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit, label %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit.thread

_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  %.val7.i = load i8, ptr %i.n, align 1, !tbaa !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  %.val8.i = load i16, ptr %i.o, align 2, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val9.i = load i16, ptr %i.p, align 8, !tbaa !43
  %i.q = zext i8 %.val7.i to i64                  ; 2 uses
  %i.r = ashr i64 %i.m, %i.q                      ; 2 uses
  %i.s = sub nsw i64 64, %i.q
  %i.t = icmp eq i8 %.val7.i, 0
  %i.u = lshr i64 -1, %i.s
  %i.v = select i1 %i.t, i64 0, i64 %i.u
  %i.w = and i64 %i.v, %i.m
  %i.x = icmp eq i64 %i.w, 0
  %i.y = sext i16 %.val8.i to i64
  %.not.i.i = icmp sge i64 %i.r, %i.y
  %i.z = sext i16 %.val9.i to i64
  %i.aa = icmp slt i64 %i.r, %i.z
  %i.ab = and i1 %.not.i.i, %i.aa
  %or.cond11.i.i = select i1 %i.x, i1 %i.ab, i1 false
  br i1 %or.cond11.i.i, label %bb.b, label %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit.thread

bb.b:                                             ; preds = %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.val9, i64 32
  %.val10 = load i32, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %.val9, i64 36
  %.val11 = load i32, ptr %i.ad, align 4
  %i.ae = and i32 %.val10, 255
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = icmp eq i32 %.val11, 20
  %or.cond.i = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr i8, ptr %i.c, i64 20
  %.val = load i32, ptr %i.ah, align 4
  %i.ai = getelementptr i8, ptr %i.c, i64 24
  %.val8 = load i32, ptr %i.ai, align 8, !tbaa !50
  tail call fastcc void @_ZN12_GLOBAL__N_119MicroMipsSizeReduce18ReplaceInstructionEPN4llvm12MachineInstrERKNS_11ReduceEntryES3_b(ptr noundef nonnull %i.a, i32 %.val, i32 %.val8, ptr noundef null, i1 noundef zeroext true)
  br label %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit.thread

_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit.thread: ; preds = %bb.a, %bb.b, %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119MicroMipsSizeReduce17ReduceMoveToMovepEPNS_18ReduceEntryFunArgsE(ptr nofree noundef readonly captures(none) %0) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14, !nonnull !15, !align !16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51, !nonnull !15, !align !16 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !55   ; 5 uses
  %i.j = icmp eq ptr %i.i, %i.h
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  switch i32 %i.p, label %bb.i [
    i32 346, label %bb.c
    i32 345, label %bb.c
    i32 330, label %bb.c
    i32 329, label %bb.c
    i32 328, label %bb.c
    i32 327, label %bb.c
    i32 326, label %bb.c
    i32 21, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  switch i32 %i.n, label %bb.i [
    i32 332, label %bb.d
    i32 331, label %bb.d
    i32 25, label %bb.d
    i32 24, label %bb.d
    i32 23, label %bb.d
    i32 22, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56
  %i.s = getelementptr i8, ptr %i.b, i64 16
  %.val = load i32, ptr %i.s, align 8, !tbaa !58
  %.not = icmp eq i32 %i.r, %.val
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40
  switch i32 %i.y, label %bb.i [
    i32 346, label %bb.f
    i32 345, label %bb.f
    i32 330, label %bb.f
    i32 329, label %bb.f
    i32 328, label %bb.f
    i32 327, label %bb.f
    i32 326, label %bb.f
    i32 21, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.z = icmp eq i32 %i.n, 22                     ; 2 uses
  %i.aa = add i32 %i.w, -331
  %or.cond335.i = icmp ult i32 %i.aa, 2
  %i.ab = add i32 %i.w, -23
  %i.ac = icmp ult i32 %i.ab, 2
  %or.cond3238.i = or i1 %i.ac, %or.cond335.i
  %or.cond.i = and i1 %i.z, %or.cond3238.i
  br i1 %or.cond.i, label %_ZL25IsMovepDestinationRegPairjj.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp eq i32 %i.w, 25                    ; 2 uses
  %or.cond9.i25 = and i1 %i.z, %i.ad
  br i1 %or.cond9.i25, label %_ZL25IsMovepDestinationRegPairjj.exit.thread, label %_ZL25IsMovepDestinationRegPairjj.exit

_ZL25IsMovepDestinationRegPairjj.exit:            ; preds = %bb.g
  %i.ae = icmp eq i32 %i.n, 23
  %i.af = and i32 %i.w, -2
  %or.cond1337.i = icmp eq i32 %i.af, 24
  %or.cond33.i = and i1 %i.ae, %or.cond1337.i
  %i.ag = icmp eq i32 %i.n, 24
  %or.cond15.i = and i1 %i.ag, %i.ad
  %or.cond34.i = or i1 %or.cond15.i, %or.cond33.i
  br i1 %or.cond34.i, label %_ZL25IsMovepDestinationRegPairjj.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZL25IsMovepDestinationRegPairjj.exit
  %i.ah = tail call fastcc noundef zeroext i1 @_ZL25IsMovepDestinationRegPairjj(i32 noundef %i.w, i32 noundef %i.n)
  br i1 %i.ah, label %_ZL25IsMovepDestinationRegPairjj.exit.thread, label %bb.i

_ZL25IsMovepDestinationRegPairjj.exit.thread:     ; preds = %_ZL25IsMovepDestinationRegPairjj.exit, %bb.h, %bb.f, %bb.g
  %.0.i35 = phi i1 [ true, %_ZL25IsMovepDestinationRegPairjj.exit ], [ false, %bb.h ], [ true, %bb.f ], [ true, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !57
  store ptr %i.aj, ptr %i.d, align 8
  %i.ak = getelementptr i8, ptr %i.b, i64 20
  %.val21 = load i32, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %i.b, i64 24
  %.val22 = load i32, ptr %i.al, align 8, !tbaa !50
  tail call fastcc void @_ZN12_GLOBAL__N_119MicroMipsSizeReduce18ReplaceInstructionEPN4llvm12MachineInstrERKNS_11ReduceEntryES3_b(ptr noundef nonnull %i.e, i32 %.val21, i32 %.val22, ptr noundef nonnull %i.i, i1 noundef zeroext %.0.i35)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.d, %_ZL25IsMovepDestinationRegPairjj.exit.thread, %bb.h, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.e ], [ true, %_ZL25IsMovepDestinationRegPairjj.exit.thread ], [ false, %bb.h ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119MicroMipsSizeReduce14ReduceSXtoSX16EPNS_18ReduceEntryFunArgsE(ptr nofree noundef readonly captures(none) %0) #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14, !nonnull !15, !align !16 ; 6 uses
  %i.d = getelementptr i8, ptr %i.a, i64 32
  %.val12 = load ptr, ptr %i.d, align 8, !tbaa !33 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.val.i = load i8, ptr %i.e, align 4, !tbaa !39
  %i.f = sext i8 %.val.i to i64
  %i.g = and i64 %i.f, 4294967295
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.val12, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 255
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit, label %_ZL18isMMSourceRegisterRKN4llvm14MachineOperandE.exit

_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  %.val7.i = load i8, ptr %i.n, align 1, !tbaa !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  %.val8.i = load i16, ptr %i.o, align 2, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val9.i = load i16, ptr %i.p, align 8, !tbaa !43
  %i.q = zext i8 %.val7.i to i64                  ; 2 uses
  %i.r = ashr i64 %i.m, %i.q                      ; 2 uses
  %i.s = sub nsw i64 64, %i.q
  %i.t = icmp eq i8 %.val7.i, 0
  %i.u = lshr i64 -1, %i.s
  %i.v = select i1 %i.t, i64 0, i64 %i.u
  %i.w = and i64 %i.v, %i.m
  %i.x = icmp eq i64 %i.w, 0
  %i.y = sext i16 %.val8.i to i64
  %.not.i.i = icmp sge i64 %i.r, %i.y
  %i.z = sext i16 %.val9.i to i64
  %i.aa = icmp slt i64 %i.r, %i.z
  %i.ab = and i1 %.not.i.i, %i.aa
  %or.cond11.i.i = select i1 %i.x, i1 %i.ab, i1 false
  br i1 %or.cond11.i.i, label %bb.b, label %_ZL18isMMSourceRegisterRKN4llvm14MachineOperandE.exit

bb.b:                                             ; preds = %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit
  %.val13 = load i32, ptr %.val12, align 8
  %i.ac = getelementptr i8, ptr %.val12, i64 4
  %.val14 = load i32, ptr %i.ac, align 4          ; 2 uses
  %i.ad = and i32 %.val13, 255
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %_ZL18isMMSourceRegisterRKN4llvm14MachineOperandE.exit

bb.c:                                             ; preds = %bb.b
  %i.af = lshr i32 %.val14, 3                     ; 2 uses
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 1042), align 2, !tbaa !48
  %i.ah = zext i16 %i.ag to i32
  %.not.i.i16 = icmp samesign ult i32 %i.af, %i.ah
  br i1 %.not.i.i16, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, label %_ZL18isMMSourceRegisterRKN4llvm14MachineOperandE.exit

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i: ; preds = %bb.c
  %i.ai = and i32 %.val14, 7
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 1028), align 4, !tbaa !49
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 1024), i64 %i.ak
  %i.am = zext nneg i32 %i.af to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !40
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 1, %i.ai
  %i.ar = and i32 %i.aq, %i.ap
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %_ZL18isMMSourceRegisterRKN4llvm14MachineOperandE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val12, i64 32
  %.val = load i32, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %.val12, i64 36
  %.val9 = load i32, ptr %i.at, align 4           ; 2 uses
  %i.au = and i32 %.val, 255
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.e, label %_ZL18isMMSourceRegisterRKN4llvm14MachineOperandE.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = lshr i32 %.val9, 3                      ; 2 uses
  %i.ax = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 914), align 2, !tbaa !48
  %i.ay = zext i16 %i.ax to i32
  %.not.i.i19 = icmp samesign ult i32 %i.aw, %i.ay
  br i1 %.not.i.i19, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i20, label %_ZL18isMMSourceRegisterRKN4llvm14MachineOperandE.exit

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i20: ; preds = %bb.e
  %i.az = and i32 %.val9, 7
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 900), align 4, !tbaa !49
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 896), i64 %i.bb
  %i.bd = zext nneg i32 %i.aw to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !40
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 1, %i.az
  %i.bi = and i32 %i.bh, %i.bg
  %.not.i21 = icmp eq i32 %i.bi, 0
  br i1 %.not.i21, label %_ZL18isMMSourceRegisterRKN4llvm14MachineOperandE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i20
  %i.bj = getelementptr i8, ptr %i.c, i64 20
  %.val10 = load i32, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %i.c, i64 24
  %.val11 = load i32, ptr %i.bk, align 8, !tbaa !50
  tail call fastcc void @_ZN12_GLOBAL__N_119MicroMipsSizeReduce18ReplaceInstructionEPN4llvm12MachineInstrERKNS_11ReduceEntryES3_b(ptr noundef nonnull %i.a, i32 %.val10, i32 %.val11, ptr noundef null, i1 noundef zeroext true)
  br label %_ZL18isMMSourceRegisterRKN4llvm14MachineOperandE.exit

_ZL18isMMSourceRegisterRKN4llvm14MachineOperandE.exit: ; preds = %bb.a, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i20, %bb.e, %bb.d, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, %bb.c, %bb.b, %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit, %bb.f
  %.0 = phi i1 [ true, %bb.f ], [ false, %_ZL10ImmInRangePN4llvm12MachineInstrERKN12_GLOBAL__N_111ReduceEntryE.exit ], [ false, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i ], [ false, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i20 ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119MicroMipsSizeReduce16ReduceXORtoXOR16EPNS_18ReduceEntryFunArgsE(ptr nofree noundef readonly captures(none) %0) #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14, !nonnull !15, !align !16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 6 uses
  %.val15 = load i32, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val16 = load i32, ptr %i.f, align 4           ; 4 uses
  %i.g = and i32 %.val15, 255
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZL22isMMThreeBitGPRegisterRKN4llvm14MachineOperandE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i32 %.val16, 3                      ; 2 uses
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 914), align 2, !tbaa !48
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %.not.i.i = icmp samesign ult i32 %i.i, %i.k
  br i1 %.not.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, label %_ZL22isMMThreeBitGPRegisterRKN4llvm14MachineOperandE.exit

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i: ; preds = %bb.b
  %i.l = and i32 %.val16, 7
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 900), align 4, !tbaa !49
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 896), i64 %i.n ; 3 uses
  %i.p = zext nneg i32 %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !40
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 1, %i.l
  %i.u = and i32 %i.t, %i.s
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZL22isMMThreeBitGPRegisterRKN4llvm14MachineOperandE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val13 = load i32, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.e, i64 36
  %.val14 = load i32, ptr %i.w, align 4           ; 3 uses
  %i.x = and i32 %.val13, 255
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZL22isMMThreeBitGPRegisterRKN4llvm14MachineOperandE.exit

bb.d:                                             ; preds = %bb.c
  %i.z = lshr i32 %.val14, 3                      ; 2 uses
  %.not.i.i21 = icmp samesign ult i32 %i.z, %i.k
  br i1 %.not.i.i21, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i22, label %_ZL22isMMThreeBitGPRegisterRKN4llvm14MachineOperandE.exit

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i22: ; preds = %bb.d
  %i.aa = and i32 %.val14, 7
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !40
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 1, %i.aa
  %i.ag = and i32 %i.af, %i.ae
  %.not.i23 = icmp eq i32 %i.ag, 0
  br i1 %.not.i23, label %_ZL22isMMThreeBitGPRegisterRKN4llvm14MachineOperandE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val = load i32, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.e, i64 68
  %.val12 = load i32, ptr %i.ai, align 4          ; 3 uses
  %i.aj = and i32 %.val, 255
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %_ZL22isMMThreeBitGPRegisterRKN4llvm14MachineOperandE.exit
end_hunk_0
