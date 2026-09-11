Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMBaseInstrInfo?download=true
inline.NumInlined: 7065
inline.NumDeleted: 2511
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZNK4llvm16ARMBaseInstrInfo14getNumMicroOpsEPKNS_18InstrItineraryDataERKNS_12MachineInstrE:bb.a
  switch i32 %i.fx, label %bb.av [
    i32 2905, label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit
    i32 3894, label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit
    i32 2903, label %bb.aw
    i32 2904, label %bb.aw
    i32 2902, label %bb.aw
    i32 2907, label %bb.aw
    i32 2908, label %bb.aw
    i32 2906, label %bb.aw
    i32 3892, label %bb.aw
    i32 3893, label %bb.aw
    i32 3891, label %bb.aw
    i32 3896, label %bb.aw
    i32 3897, label %bb.aw
    i32 3895, label %bb.aw
    i32 374, label %bb.ax
    i32 954, label %bb.ax
    i32 950, label %bb.ax
    i32 952, label %bb.ax
    i32 956, label %bb.ax
    i32 955, label %bb.ax
    i32 951, label %bb.ax
    i32 953, label %bb.ax
    i32 957, label %bb.ax
    i32 2023, label %bb.ax
    i32 2019, label %bb.ax
    i32 2021, label %bb.ax
    i32 2025, label %bb.ax
    i32 2024, label %bb.ax
    i32 2020, label %bb.ax
    i32 2022, label %bb.ax
    i32 2026, label %bb.ax
    i32 4479, label %bb.ax
    i32 790, label %bb.ax
    i32 4510, label %bb.ax
    i32 801, label %bb.ax
    i32 4501, label %bb.ax
    i32 4502, label %bb.ax
    i32 701, label %bb.ax
    i32 4144, label %bb.ax
    i32 4142, label %bb.ax
    i32 4145, label %bb.ax
    i32 4143, label %bb.ax
    i32 4355, label %bb.ax
    i32 4353, label %bb.ax
    i32 4356, label %bb.ax
    i32 4354, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fz = load i24, ptr %i.fy, align 8
  %i.ga = zext i24 %i.fz to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.gc = load i16, ptr %i.gb, align 4, !tbaa !522
  %i.gd = zext i16 %i.gc to i32
  %i.ge = sub nsw i32 %i.ga, %i.gd                ; 2 uses
  %i.gf = lshr i32 %i.ge, 1
  %i.gg = add nsw i32 %i.ge, 1
  %i.gh = sub i32 %i.gg, %i.gf
  br label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit

bb.ax:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gj = load i24, ptr %i.gi, align 8
  %i.gk = zext i24 %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.gm = load i16, ptr %i.gl, align 4, !tbaa !522
  %i.gn = zext i16 %i.gm to i32
  %i.go = sub nsw i32 %i.gk, %i.gn                ; 6 uses
  %i.gp = add nsw i32 %i.go, 1                    ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !91, !nonnull !92, !align !93
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 536
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !1691
  switch i32 %i.gt, label %bb.bh [
    i32 3, label %bb.ay
    i32 2, label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit
    i32 0, label %bb.bb
    i32 1, label %bb.bd
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.gu = add nsw i32 %i.go, 2
  switch i32 %i.fx, label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit [
    i32 2904, label %bb.az
    i32 2902, label %bb.az
    i32 2908, label %bb.az
    i32 2906, label %bb.az
    i32 3893, label %bb.az
    i32 3891, label %bb.az
    i32 3897, label %bb.az
    i32 3895, label %bb.az
    i32 955, label %bb.az
    i32 951, label %bb.az
    i32 953, label %bb.az
    i32 957, label %bb.az
    i32 2024, label %bb.az
    i32 2020, label %bb.az
    i32 2022, label %bb.az
    i32 2026, label %bb.az
    i32 790, label %bb.az
    i32 4510, label %bb.az
    i32 4145, label %bb.az
    i32 4143, label %bb.az
    i32 4356, label %bb.az
    i32 4354, label %bb.az
    i32 374, label %bb.ba
    i32 801, label %bb.ba
    i32 701, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay
  %i.gv = add nsw i32 %i.go, 3
  br label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit

bb.ba:                                            ; preds = %bb.ay, %bb.ay, %bb.ay
  %i.gw = add nsw i32 %i.go, 4
  br label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit

bb.bb:                                            ; preds = %bb.ax
  %i.gx = icmp ult i32 %i.gp, 4
  br i1 %i.gx, label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gy = lshr i32 %i.gp, 1
  %i.gz = and i32 %i.go, 1
  %i.ha = xor i32 %i.gz, 1
  %spec.select = add nuw i32 %i.gy, %i.ha
  br label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit

bb.bd:                                            ; preds = %bb.ax
  %i.hb = lshr i32 %i.gp, 1                       ; 2 uses
  %i.hc = and i32 %i.go, 1
  %.not42.not = icmp eq i32 %i.hc, 0
  br i1 %.not42.not, label %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !239 ; 5 uses
  %i.hf = icmp ugt i64 %i.he, 7
  br i1 %i.hf, label %bb.bf, label %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.hg = and i64 %i.he, 7
  switch i64 %i.hg, label %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread [
    i64 0, label %bb.bg
    i64 3, label %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit
  ]

_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit: ; preds = %bb.bf
  %i.hh = and i64 %i.he, -8
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !540
  %i.hk = icmp eq i32 %i.hj, 1
  br i1 %i.hk, label %thread-pre-split, label %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.hl = inttoptr i64 %i.he to ptr               ; 2 uses
  store ptr %i.hl, ptr %i.hd, align 8, !tbaa !239
  br label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit

thread-pre-split:                                 ; preds = %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit
  %i.hm = and i64 %i.he, -8
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %.pre = load ptr, ptr %i.ho, align 8, !tbaa !491
  br label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit

_ZNK4llvm12MachineInstr17memoperands_beginEv.exit: ; preds = %bb.bg, %thread-pre-split
  %i.hp = phi ptr [ %i.hl, %bb.bg ], [ %.pre, %thread-pre-split ]
  %i.hq = tail call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.hp) #26
  %i.hr = icmp ult i8 %i.hq, 3
  br i1 %i.hr, label %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread, label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit

_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread: ; preds = %bb.bf, %bb.be, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit, %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit, %bb.bd
  %i.hs = add nuw i32 %i.hb, 1
  br label %_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit

bb.bh:                                            ; preds = %bb.ax
  unreachable

_ZL23getNumMicroOpsSwiftLdStPKN4llvm18InstrItineraryDataERKNS_12MachineInstrE.exit: ; preds = %bb.d, %bb.bc, %bb.ax, %bb.bb, %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit, %bb.ay, %bb.az, %bb.ba, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.c, %bb.au, %bb.au, %bb.aw, %bb.a, %bb.b
  %.3 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 2, %bb.au ], [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ 3, %bb.ag ], [ %i.gh, %bb.aw ], [ 2, %bb.au ], [ 2, %bb.e ], [ 2, %bb.e ], [ 1, %bb.h ], [ 1, %bb.j ], [ %i.ax, %bb.o ], [ %i.bf, %bb.p ], [ %i.dv, %bb.aj ], [ 1, %bb.l ], [ 2, %bb.s ], [ %i.cx, %bb.ab ], [ 2, %bb.w ], [ 3, %bb.z ], [ 3, %bb.af ], [ %i.eb, %bb.ak ], [ %i.er, %bb.ao ], [ %i.ej, %bb.am ], [ 2, %bb.al ], [ %i.ff, %bb.aq ], [ %i.ex, %bb.ap ], [ 2, %bb.e ], [ 2, %bb.e ], [ %i.fv, %bb.at ], [ 3, %bb.ar ], [ 1, %bb.i ], [ 2, %bb.n ], [ 1, %bb.m ], [ %i.fn, %bb.as ], [ 2, %bb.x ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ 2, %bb.e ], [ %i.k, %bb.f ], [ 3, %bb.q ], [ 3, %bb.u ], [ 2, %bb.t ], [ 2, %bb.y ], [ %i.cp, %bb.aa ], [ 3, %bb.ac ], [ 4, %bb.ad ], [ 4, %bb.ah ], [ %i.hb, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit ], [ %i.hs, %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread ], [ 2, %bb.bb ], [ %i.gp, %bb.ax ], [ %spec.select, %bb.bc ], [ %i.gu, %bb.ay ], [ %i.gv, %bb.az ], [ %i.gw, %bb.ba ]
  ret i32 %.3
}

declare i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK4llvm16ARMBaseInstrInfo15getVLDMDefCycleEPKNS_18InstrItineraryDataERKNS_11MCInstrDescEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = add i32 %4, 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i16, ptr %i.b, align 4, !tbaa !522
  %i.d = zext i16 %i.c to i32
  %i.e = sub i32 %i.a, %i.d                       ; 5 uses
  %i.f = add i32 %i.e, 1                          ; 4 uses
  %i.g = icmp ugt i32 %i.e, 2147483646
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !541  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %3 to i64
  %i.l = getelementptr inbounds nuw [10 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.n = load i16, ptr %i.m, align 2, !tbaa !545
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i16, ptr %i.p, align 2, !tbaa !546
  %i.r = zext i16 %i.q to i32
  %i.s = add i32 %4, %i.o                         ; 2 uses
  %.not.i = icmp ult i32 %i.s, %i.r
  br i1 %.not.i, label %bb.d, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !547
  %i.v = zext nneg i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = zext i32 %i.x to i64
  %i.z = or disjoint i64 %i.y, 4294967296
  br label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit

_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.2.0.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.2.0.i to i32
  %.sroa.3.0.extract.shift = and i64 %.sroa.2.0.i, -4294967296
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91, !nonnull !92, !align !93
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 480
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !208
  switch i32 %i.ad, label %bb.j [
    i32 6, label %bb.f
    i32 12, label %bb.f
    i32 18, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 1, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 5, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 13, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ae = lshr i32 %i.f, 1
  %i.af = and i32 %i.e, 1
  %reass.sub19 = sub nsw i32 %i.ae, %i.af
  %spec.select = add nsw i32 %reass.sub19, 2
  br label %bb.k

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread:   ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.ag = load i32, ptr %2, align 8, !tbaa !523
  %.off = add i32 %i.ag, -2906
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
  %i.ah = trunc i32 %i.f to i1
  %i.ai = icmp ult i32 %5, 8
  %or.cond = or i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.i, label %bb.k

bb.h:                                             ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
  %.old1 = icmp ult i32 %5, 8
  br i1 %.old1, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = add nuw i32 %i.e, 2
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.ak = add nuw i32 %i.e, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j, %bb.g, %bb.i, %bb.h, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.extract.shift, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit ], [ 4294967296, %bb.h ], [ 4294967296, %bb.i ], [ 4294967296, %bb.g ], [ 4294967296, %bb.j ], [ 4294967296, %bb.f ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit ], [ %i.f, %bb.h ], [ %i.aj, %bb.i ], [ %i.f, %bb.g ], [ %i.ak, %bb.j ], [ %spec.select, %bb.f ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK4llvm16ARMBaseInstrInfo14getLDMDefCycleEPKNS_18InstrItineraryDataERKNS_11MCInstrDescEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = add i32 %4, 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i16, ptr %i.b, align 4, !tbaa !522
  %i.d = zext i16 %i.c to i32
  %i.e = sub i32 %i.a, %i.d                       ; 3 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 3 uses
  %i.g = icmp ugt i32 %i.e, 2147483646
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !541  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %3 to i64
  %i.l = getelementptr inbounds nuw [10 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.n = load i16, ptr %i.m, align 2, !tbaa !545
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i16, ptr %i.p, align 2, !tbaa !546
  %i.r = zext i16 %i.q to i32
  %i.s = add i32 %4, %i.o                         ; 2 uses
  %.not.i = icmp ult i32 %i.s, %i.r
  br i1 %.not.i, label %bb.d, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !547
  %i.v = zext nneg i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = zext i32 %i.x to i64
  %i.z = or disjoint i64 %i.y, 4294967296
  br label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit

_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.2.0.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.2.0.i to i32
  %.sroa.3.0.extract.shift = and i64 %.sroa.2.0.i, -4294967296
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91, !nonnull !92, !align !93
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 480
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !208
  switch i32 %i.ad, label %bb.g [
    i32 6, label %bb.f
    i32 12, label %bb.f
    i32 18, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 1, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 5, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 13, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ae = lshr i32 %i.f, 1
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 1)
  %i.af = add nuw nsw i32 %spec.store.select, 2
  br label %bb.h

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread:   ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.ag = lshr i32 %i.f, 1
  %i.ah = trunc i32 %i.f to i1
  %i.ai = icmp ult i32 %5, 8
  %or.cond = or i1 %i.ai, %i.ah
  %i.aj = zext i1 %or.cond to i32
  %spec.select = add nuw nsw i32 %i.ag, 2
  %i.ak = add nuw nsw i32 %spec.select, %i.aj
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = add nuw i32 %i.e, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.extract.shift, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit ], [ 4294967296, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread ], [ 4294967296, %bb.g ], [ 4294967296, %bb.f ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit ], [ %i.ak, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread ], [ %i.al, %bb.g ], [ %i.af, %bb.f ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK4llvm16ARMBaseInstrInfo15getVSTMUseCycleEPKNS_18InstrItineraryDataERKNS_11MCInstrDescEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = add i32 %4, 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i16, ptr %i.b, align 4, !tbaa !522
  %i.d = zext i16 %i.c to i32
  %i.e = sub i32 %i.a, %i.d                       ; 5 uses
  %i.f = add i32 %i.e, 1                          ; 4 uses
  %i.g = icmp ugt i32 %i.e, 2147483646
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !541  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %3 to i64
  %i.l = getelementptr inbounds nuw [10 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.n = load i16, ptr %i.m, align 2, !tbaa !545
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i16, ptr %i.p, align 2, !tbaa !546
  %i.r = zext i16 %i.q to i32
  %i.s = add i32 %4, %i.o                         ; 2 uses
  %.not.i = icmp ult i32 %i.s, %i.r
  br i1 %.not.i, label %bb.d, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !547
  %i.v = zext nneg i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = zext i32 %i.x to i64
  %i.z = or disjoint i64 %i.y, 4294967296
  br label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit

_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.2.0.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.2.0.i to i32
  %.sroa.3.0.extract.shift = and i64 %.sroa.2.0.i, -4294967296
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91, !nonnull !92, !align !93
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 480
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !208
  switch i32 %i.ad, label %bb.j [
    i32 6, label %bb.f
    i32 12, label %bb.f
    i32 18, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 1, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 5, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 13, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ae = lshr i32 %i.f, 1
  %i.af = and i32 %i.e, 1
  %reass.sub19 = sub nsw i32 %i.ae, %i.af
  %spec.select = add nsw i32 %reass.sub19, 2
  br label %bb.k

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread:   ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.ag = load i32, ptr %2, align 8, !tbaa !523
  %.off = add i32 %i.ag, -3895
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
  %i.ah = trunc i32 %i.f to i1
  %i.ai = icmp ult i32 %5, 8
  %or.cond = or i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.i, label %bb.k

bb.h:                                             ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
  %.old1 = icmp ult i32 %5, 8
  br i1 %.old1, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = add nuw i32 %i.e, 2
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.ak = add nuw i32 %i.e, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j, %bb.g, %bb.i, %bb.h, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.extract.shift, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit ], [ 4294967296, %bb.h ], [ 4294967296, %bb.i ], [ 4294967296, %bb.g ], [ 4294967296, %bb.j ], [ 4294967296, %bb.f ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit ], [ %i.f, %bb.h ], [ %i.aj, %bb.i ], [ %i.f, %bb.g ], [ %i.ak, %bb.j ], [ %spec.select, %bb.f ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK4llvm16ARMBaseInstrInfo14getSTMUseCycleEPKNS_18InstrItineraryDataERKNS_11MCInstrDescEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = add i32 %4, 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i16, ptr %i.b, align 4, !tbaa !522
  %i.d = zext i16 %i.c to i32
  %i.e = sub i32 %i.a, %i.d                       ; 2 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 3 uses
  %i.g = icmp ugt i32 %i.e, 2147483646
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !541  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %3 to i64
  %i.l = getelementptr inbounds nuw [10 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.n = load i16, ptr %i.m, align 2, !tbaa !545
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i16, ptr %i.p, align 2, !tbaa !546
  %i.r = zext i16 %i.q to i32
  %i.s = add i32 %4, %i.o                         ; 2 uses
  %.not.i = icmp ult i32 %i.s, %i.r
  br i1 %.not.i, label %bb.d, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !547
  %i.v = zext nneg i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = zext i32 %i.x to i64
  %i.z = or disjoint i64 %i.y, 4294967296
  br label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit

_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.2.0.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.2.0.i to i32
  %.sroa.3.0.extract.shift = and i64 %.sroa.2.0.i, -4294967296
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91, !nonnull !92, !align !93
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 480
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !208
  switch i32 %i.ad, label %bb.g [
    i32 6, label %bb.f
    i32 12, label %bb.f
    i32 18, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 1, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 5, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 13, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ae = lshr i32 %i.f, 1
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 2)
  %i.af = add nuw nsw i32 %spec.store.select, 2
  br label %bb.g

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread:   ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.ag = lshr i32 %i.f, 1
  %i.ah = trunc i32 %i.f to i1
  %i.ai = icmp ult i32 %5, 8
  %or.cond = or i1 %i.ai, %i.ah
  %i.aj = zext i1 %or.cond to i32
  %spec.select = add nuw nsw i32 %i.ag, %i.aj
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread, %bb.e, %bb.f, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.extract.shift, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit ], [ 4294967296, %bb.e ], [ 4294967296, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread ], [ 4294967296, %bb.f ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit ], [ 1, %bb.e ], [ %spec.select, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread ], [ %i.af, %bb.f ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK4llvm16ARMBaseInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataERKNS_11MCInstrDescEjjS6_jj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !542  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !542  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = load i8, ptr %i.e, align 2, !tbaa !1692
  %i.g = zext i8 %i.f to i32
  %i.h = icmp ult i32 %3, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.j = load i16, ptr %i.i, align 4
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %i.l = icmp ult i32 %6, %i.k
  %or.cond = select i1 %i.h, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !541  ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK4llvm18InstrItineraryData17getOperandLatencyEjjjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext i16 %i.b to i64
  %i.q = getelementptr inbounds nuw [10 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !545
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i16, ptr %i.u, align 2, !tbaa !546
  %i.w = zext i16 %i.v to i32
  %i.x = add nuw nsw i32 %3, %i.t                 ; 3 uses
  %.not.i.i = icmp samesign uge i32 %i.x, %i.w    ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !547
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !52
  %i.ad = zext i32 %i.ac to i64
  %i.ae = or disjoint i64 %i.ad, 4294967296
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.2.0.i.i = phi i64 [ 0, %bb.c ], [ %i.ae, %bb.d ] ; 3 uses
  %.sroa.039.0.extract.trunc.i = trunc i64 %.sroa.2.0.i.i to i32
  %i.af = zext i16 %i.d to i64
  %i.ag = getelementptr inbounds nuw [10 x i8], ptr %i.n, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !545
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !546
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %6, %i.aj               ; 3 uses
  %.not.i8.i = icmp samesign uge i32 %i.an, %i.am ; 2 uses
  br i1 %.not.i8.i, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit10.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !547
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.at = zext i32 %i.as to i64
  %i.au = or disjoint i64 %i.at, 4294967296
  br label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit10.i

_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit10.i: ; preds = %bb.f, %bb.e
  %.sroa.2.0.i9.i = phi i64 [ 0, %bb.e ], [ %i.au, %bb.f ] ; 3 uses
  %.sroa.022.0.extract.trunc.i = trunc i64 %.sroa.2.0.i9.i to i32
  %i.av = and i64 %.sroa.2.0.i.i, 4294967296
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = and i64 %.sroa.2.0.i9.i, 4294967296
  %i.ay = icmp eq i64 %i.ax, 0
  %or.cond.not47.i = select i1 %i.aw, i1 true, i1 %i.ay
  %i.az = add i32 %.sroa.039.0.extract.trunc.i, 1
  %i.ba = icmp ult i32 %i.az, %.sroa.022.0.extract.trunc.i
  %or.cond45.i = select i1 %or.cond.not47.i, i1 true, i1 %i.ba
  br i1 %or.cond45.i, label %_ZNK4llvm18InstrItineraryData17getOperandLatencyEjjjj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit10.i
  %i.bb = sub nsw i64 %.sroa.2.0.i.i, %.sroa.2.0.i9.i
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %.sroa.022.0.extract.trunc26.i = add i32 %i.bc, 1 ; 4 uses
  %.not.i = icmp eq i32 %.sroa.022.0.extract.trunc26.i, 0
  %brmerge.i = or i1 %.not.i.i, %.not.i
  br i1 %brmerge.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1693 ; 2 uses
  %i.bf = zext nneg i32 %i.x to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !52 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  %brmerge52.i = or i1 %.not.i8.i, %i.bi
  br i1 %brmerge52.i, label %.critedge.i, label %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.i

_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.i: ; preds = %bb.h
  %i.bj = zext nneg i32 %i.an to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !52
  %i.bm = icmp eq i32 %i.bh, %i.bl
  %spec.select.i = select i1 %i.bm, i32 %i.bc, i32 %.sroa.022.0.extract.trunc26.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.i, %bb.h, %bb.g
  %.sroa.022.0.i = phi i32 [ %.sroa.022.0.extract.trunc26.i, %bb.h ], [ %spec.select.i, %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.i ], [ %.sroa.022.0.extract.trunc26.i, %bb.g ]
  %i.bn = zext i32 %.sroa.022.0.i to i64
  %i.bo = or disjoint i64 %i.bn, 4294967296
  br label %_ZNK4llvm18InstrItineraryData17getOperandLatencyEjjjj.exit

_ZNK4llvm18InstrItineraryData17getOperandLatencyEjjjj.exit: ; preds = %bb.b, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit10.i, %.critedge.i
  %.sroa.2.1.i = phi i64 [ 0, %bb.b ], [ 0, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit10.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0178.0.extract.trunc = trunc i64 %.sroa.2.1.i to i32
  %.sroa.3.0.extract.shift = and i64 %.sroa.2.1.i, -4294967296
  br label %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.thread

bb.i:                                             ; preds = %bb.a
  %i.bp = load i32, ptr %2, align 8, !tbaa !523   ; 2 uses
  switch i32 %i.bp, label %bb.j [
    i32 2903, label %bb.l
    i32 2904, label %bb.l
    i32 2902, label %bb.l
    i32 2907, label %bb.l
    i32 2908, label %bb.l
    i32 2906, label %bb.l
    i32 374, label %bb.u
    i32 954, label %bb.u
    i32 950, label %bb.u
    i32 952, label %bb.u
    i32 956, label %bb.u
    i32 955, label %bb.u
    i32 951, label %bb.u
    i32 953, label %bb.u
    i32 957, label %bb.u
    i32 4479, label %bb.u
    i32 790, label %bb.u
    i32 4502, label %bb.u
    i32 701, label %bb.u
    i32 4144, label %bb.u
    i32 4142, label %bb.u
    i32 4145, label %bb.u
    i32 4143, label %bb.u
  ]

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !541 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = zext i16 %i.b to i64
  %i.bu = getelementptr inbounds nuw [10 x i8], ptr %i.br, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !545
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !546
  %i.ca = zext i16 %i.bz to i32
  %i.cb = add i32 %3, %i.bx                       ; 2 uses
  %.not.i57 = icmp ult i32 %i.cb, %i.ca
  br i1 %.not.i57, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit: ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !547
  %i.ce = zext nneg i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !52
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

bb.l:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.ch = add i32 %3, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cj = load i16, ptr %i.ci, align 4, !tbaa !522
  %i.ck = zext i16 %i.cj to i32
  %i.cl = sub i32 %i.ch, %i.ck                    ; 5 uses
  %i.cm = add i32 %i.cl, 1                        ; 4 uses
  %i.cn = icmp ugt i32 %i.cl, 2147483646
  br i1 %i.cn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !541 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = zext i16 %i.b to i64
  %i.cs = getelementptr inbounds nuw [10 x i8], ptr %i.cp, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !545
  %i.cv = zext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !546
  %i.cy = zext i16 %i.cx to i32
  %i.cz = add i32 %3, %i.cv                       ; 2 uses
  %.not.i.i59 = icmp ult i32 %i.cz, %i.cy
  br i1 %.not.i.i59, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit.i, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit.i: ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !547
  %i.dc = zext nneg i32 %i.cz to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !52
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

bb.o:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !91, !nonnull !92, !align !93
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 480
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !208
  switch i32 %i.di, label %bb.t [
    i32 6, label %bb.p
    i32 12, label %bb.p
    i32 18, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
    i32 1, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
    i32 5, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
    i32 13, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dj = lshr i32 %i.cm, 1
  %i.dk = and i32 %i.cl, 1
  %reass.sub = sub nsw i32 %i.dj, %i.dk
  %spec.select.i58 = add nsw i32 %reass.sub, 2
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i: ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %.off.i = add nsw i32 %i.bp, -2906
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
  %i.dl = trunc i32 %i.cm to i1
  %i.dm = icmp ult i32 %4, 8
  %or.cond.i = or i1 %i.dm, %i.dl
  br i1 %or.cond.i, label %bb.s, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

bb.r:                                             ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
  %.old1.i = icmp ult i32 %4, 8
  br i1 %.old1.i, label %bb.s, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dn = add nuw i32 %i.cl, 2
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

bb.t:                                             ; preds = %bb.o
  %i.do = add nuw i32 %i.cl, 3
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

bb.u:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.dp = add i32 %3, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dr = load i16, ptr %i.dq, align 4, !tbaa !522
  %i.ds = zext i16 %i.dr to i32
  %i.dt = sub i32 %i.dp, %i.ds                    ; 3 uses
  %i.du = add nuw nsw i32 %i.dt, 1                ; 3 uses
  %i.dv = icmp ugt i32 %i.dt, 2147483646
  br i1 %i.dv, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !541 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = zext i16 %i.b to i64
  %i.ea = getelementptr inbounds nuw [10 x i8], ptr %i.dx, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 6
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !545
  %i.ed = zext i16 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !546
  %i.eg = zext i16 %i.ef to i32
  %i.eh = add i32 %3, %i.ed                       ; 2 uses
  %.not.i.i68 = icmp ult i32 %i.eh, %i.eg
  br i1 %.not.i.i68, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

bb.x:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !91, !nonnull !92, !align !93
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 480
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !208
  switch i32 %i.el, label %bb.z [
    i32 6, label %bb.y
    i32 12, label %bb.y
    i32 18, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i61
    i32 1, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i61
    i32 5, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i61
    i32 13, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i61
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.em = lshr i32 %i.du, 1
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.em, i32 1)
  %i.en = add nuw nsw i32 %spec.store.select.i, 2
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i61: ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %i.eo = lshr i32 %i.du, 1
  %i.ep = trunc i32 %i.du to i1
  %i.eq = icmp ult i32 %4, 8
  %or.cond.i62 = or i1 %i.eq, %i.ep
  %i.er = zext i1 %or.cond.i62 to i32
  %spec.select.i63 = add nuw nsw i32 %i.eo, 2
  %i.es = add nuw nsw i32 %spec.select.i63, %i.er
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

bb.z:                                             ; preds = %bb.x
  %i.et = add nuw i32 %i.dt, 3
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit: ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !547
  %i.ew = zext nneg i32 %i.eh to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !52
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238

_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238: ; preds = %bb.p, %bb.r, %bb.s, %bb.q, %bb.t, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i61, %bb.z, %bb.y, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit.i, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit, %bb.n, %bb.m, %bb.k, %bb.j, %bb.w, %bb.v
  %.0233 = phi i1 [ true, %bb.v ], [ false, %bb.n ], [ false, %bb.j ], [ false, %bb.m ], [ false, %bb.k ], [ true, %bb.w ], [ false, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit.i ], [ true, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit ], [ false, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit ], [ true, %bb.y ], [ true, %bb.z ], [ true, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i61 ], [ false, %bb.t ], [ false, %bb.q ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.p ]
  %i.ez = phi i32 [ 2, %bb.v ], [ 2, %bb.n ], [ 2, %bb.j ], [ 2, %bb.m ], [ 2, %bb.k ], [ 2, %bb.w ], [ %i.de, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit.i ], [ %i.ey, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit ], [ %i.cg, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit ], [ %i.en, %bb.y ], [ %i.et, %bb.z ], [ %i.es, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i61 ], [ %i.do, %bb.t ], [ %i.cm, %bb.q ], [ %i.dn, %bb.s ], [ %i.cm, %bb.r ], [ %spec.select.i58, %bb.p ] ; 2 uses
  %i.fa = load i32, ptr %5, align 8, !tbaa !523   ; 2 uses
  switch i32 %i.fa, label %bb.aa [
    i32 3892, label %bb.ac
    i32 3893, label %bb.ac
    i32 3891, label %bb.ac
    i32 3896, label %bb.ac
    i32 3897, label %bb.ac
    i32 3895, label %bb.ac
    i32 2023, label %bb.al
    i32 2019, label %bb.al
    i32 2021, label %bb.al
    i32 2025, label %bb.al
    i32 2024, label %bb.al
    i32 2020, label %bb.al
    i32 2022, label %bb.al
    i32 2026, label %bb.al
    i32 4510, label %bb.al
    i32 801, label %bb.al
    i32 4501, label %bb.al
    i32 4355, label %bb.al
    i32 4353, label %bb.al
    i32 4356, label %bb.al
    i32 4354, label %bb.al
  ]

bb.aa:                                            ; preds = %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !541 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = zext i16 %i.d to i64
  %i.ff = getelementptr inbounds nuw [10 x i8], ptr %i.fc, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !545
  %i.fi = zext i16 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !546
  %i.fl = zext i16 %i.fk to i32
  %i.fm = add i32 %6, %i.fi                       ; 2 uses
  %.not.i73 = icmp ult i32 %i.fm, %i.fl
  br i1 %.not.i73, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit75, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit75: ; preds = %bb.ab
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !547
  %i.fp = zext nneg i32 %i.fm to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !52
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

bb.ac:                                            ; preds = %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238
  %i.fs = add i32 %6, 1
  %i.ft = sub i32 %i.fs, %i.k                     ; 5 uses
  %i.fu = add i32 %i.ft, 1                        ; 4 uses
  %i.fv = icmp ugt i32 %i.ft, 2147483646
  br i1 %i.fv, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !541 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fz = zext i16 %i.d to i64
  %i.ga = getelementptr inbounds nuw [10 x i8], ptr %i.fx, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 6
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !545
  %i.gd = zext i16 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !546
  %i.gg = zext i16 %i.gf to i32
  %i.gh = add i32 %6, %i.gd                       ; 2 uses
  %.not.i.i87 = icmp ult i32 %i.gh, %i.gg
  br i1 %.not.i.i87, label %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit.i88, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit.i88: ; preds = %bb.ae
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !547
  %i.gk = zext nneg i32 %i.gh to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !52
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

bb.af:                                            ; preds = %bb.ac
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !91, !nonnull !92, !align !93
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 480
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !208
  switch i32 %i.gq, label %bb.ak [
    i32 6, label %bb.ag
    i32 12, label %bb.ag
    i32 18, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i76
    i32 1, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i76
    i32 5, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i76
    i32 13, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i76
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.gr = lshr i32 %i.fu, 1
  %i.gs = and i32 %i.ft, 1
  %reass.sub198 = sub nsw i32 %i.gr, %i.gs
  %spec.select.i86 = add nsw i32 %reass.sub198, 2
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i76: ; preds = %bb.af, %bb.af, %bb.af, %bb.af
  %.off.i77 = add nsw i32 %i.fa, -3895
  %switch.i78 = icmp ult i32 %.off.i77, 3
  br i1 %switch.i78, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i76
  %i.gt = trunc i32 %i.fu to i1
  %i.gu = icmp ult i32 %7, 8
  %or.cond.i84 = or i1 %i.gu, %i.gt
  br i1 %or.cond.i84, label %bb.aj, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

bb.ai:                                            ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i76
  %.old1.i79 = icmp ult i32 %7, 8
  br i1 %.old1.i79, label %bb.aj, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gv = add nuw i32 %i.ft, 2
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

bb.ak:                                            ; preds = %bb.af
  %i.gw = add nuw i32 %i.ft, 3
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

bb.al:                                            ; preds = %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.thread238
  %i.gx = add i32 %6, 1
  %i.gy = sub i32 %i.gx, %i.k                     ; 2 uses
  %i.gz = add nuw nsw i32 %i.gy, 1                ; 3 uses
  %i.ha = icmp ugt i32 %i.gy, 2147483646
  br i1 %i.ha, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !541 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.he = zext i16 %i.d to i64
  %i.hf = getelementptr inbounds nuw [10 x i8], ptr %i.hc, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 6
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !545
  %i.hi = zext i16 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !546
  %i.hl = zext i16 %i.hk to i32
  %i.hm = add i32 %6, %i.hi                       ; 2 uses
  %.not.i.i100 = icmp ult i32 %i.hm, %i.hl
  br i1 %.not.i.i100, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

bb.ao:                                            ; preds = %bb.al
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !91, !nonnull !92, !align !93
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 480
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !208
  switch i32 %i.hq, label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250 [
    i32 6, label %bb.ap
    i32 12, label %bb.ap
    i32 18, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i92
    i32 1, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i92
    i32 5, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i92
    i32 13, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i92
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.hr = lshr i32 %i.gz, 1
  %spec.store.select.i99 = tail call i32 @llvm.umax.i32(i32 %i.hr, i32 2)
  %i.hs = add nuw nsw i32 %spec.store.select.i99, 2
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i92: ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.ht = lshr i32 %i.gz, 1
  %i.hu = trunc i32 %i.gz to i1
  %i.hv = icmp ult i32 %7, 8
  %or.cond.i93 = or i1 %i.hv, %i.hu
  %i.hw = zext i1 %or.cond.i93 to i32
  %spec.select.i94 = add nuw nsw i32 %i.ht, %i.hw
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105: ; preds = %bb.an
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !547
  %i.hz = zext nneg i32 %i.hm to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !52
  br label %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250

_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250: ; preds = %bb.ag, %bb.ai, %bb.aj, %bb.ah, %bb.ak, %bb.ao, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i92, %bb.ap, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit.i88, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit75, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.an, %bb.am
  %i.ic = phi i32 [ 1, %bb.am ], [ 1, %bb.ae ], [ 1, %bb.aa ], [ 1, %bb.ad ], [ 1, %bb.ab ], [ 1, %bb.an ], [ %i.gm, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit.i88 ], [ %i.ib, %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105 ], [ %i.fr, %_ZNK4llvm18InstrItineraryData15getOperandCycleEjj.exit75 ], [ %i.hs, %bb.ap ], [ %spec.select.i94, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i92 ], [ 1, %bb.ao ], [ %i.gw, %bb.ak ], [ %i.fu, %bb.ah ], [ %i.gv, %bb.aj ], [ %i.fu, %bb.ai ], [ %spec.select.i86, %bb.ag ] ; 2 uses
  %i.id = add i32 %i.ez, 1
  %i.ie = icmp ugt i32 %i.ic, %i.id
  br i1 %i.ie, label %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit105.thread250
  %i.if = sub i32 %i.ez, %i.ic                    ; 3 uses
  %i.ig = add i32 %i.if, 1                        ; 9 uses
  %.not = icmp eq i32 %i.ig, 0
  br i1 %.not, label %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.0233, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ii = load i16, ptr %i.ih, align 4, !tbaa !522
  %i.ij = zext i16 %i.ii to i32
  %i.ik = add nsw i32 %i.ij, -1
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !541 ; 2 uses
  %i.in = zext i16 %i.b to i64
  %i.io = getelementptr inbounds nuw [10 x i8], ptr %i.im, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 6
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !545
  %i.ir = zext i16 %i.iq to i32
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.it = load i16, ptr %i.is, align 2, !tbaa !546
  %i.iu = zext i16 %i.it to i32
  %i.iv = add nsw i32 %i.ik, %i.ir                ; 2 uses
  %.not.i106 = icmp ult i32 %i.iv, %i.iu
  br i1 %.not.i106, label %bb.at, label %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !1693 ; 2 uses
  %i.iy = zext nneg i32 %i.iv to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !52 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jc = zext i16 %i.d to i64
  %i.jd = getelementptr inbounds nuw [10 x i8], ptr %i.im, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 6
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !545
  %i.jg = zext i16 %i.jf to i32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !546
  %i.jj = zext i16 %i.ji to i32
  %i.jk = add i32 %6, %i.jg                       ; 2 uses
  %.not20.i = icmp ult i32 %i.jk, %i.jj
  br i1 %.not20.i, label %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit, label %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.thread

_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit: ; preds = %bb.au
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !52
  %i.jo = icmp eq i32 %i.ja, %i.jn
  %spec.select191 = select i1 %i.jo, i32 %i.if, i32 %i.ig
  br label %_ZNK4llvm18InstrItineraryData21hasPipelineForwardingEjjjj.exit.thread
end_hunk_0
