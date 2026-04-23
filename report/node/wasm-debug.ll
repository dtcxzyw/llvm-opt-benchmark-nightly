inline.NumInlined: 2477
inline.NumDeleted: 1488
begin_hunk_0_@_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE
define hidden void @_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE(ptr readonly captures(none) %0, i32 noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 13 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = add i64 %i.c, 47
  %i.e = inttoptr i64 %i.d to ptr
end_hunk_0
begin_hunk_1_@_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.at = lshr i64 %i.as, 32
  %i.au = trunc nuw i64 %i.at to i32              ; 5 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %.lr.ph.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bb
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8 ; 2 uses
  %3 = load i64, ptr %i.ax, align 8
  %i.be = icmp eq i64 %i.bd, %3
  br i1 %i.be, label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.j

end_hunk_2
begin_hunk_3_@_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %bb.i, label %._crit_edge.i, !llvm.loop !42

._crit_edge.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit ], [ %.0..i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %i.bn = sext i32 %.0.lcssa.i to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 648 ; 2 uses
  %5 = load i64, ptr %4, align 8                  ; 3 uses
  %i.bq = icmp eq i64 %i.bp, %5
  br i1 %i.bq, label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ca ; 2 uses
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, %5
  br i1 %i.cd, label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_4
begin_hunk_5_@_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.cu = ashr i64 %sext, 32
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cu
  %i.cw = load atomic volatile i64, ptr %i.cv monotonic, align 8
  %i.cx = icmp eq i64 %i.cw, %5
  br i1 %i.cx, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.critedge
end_hunk_5
begin_hunk_6_@_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %indvars.iv.next184
  %i.fq = load atomic volatile i64, ptr %i.fp monotonic, align 8 ; 6 uses
  %i.fr = load i64, ptr %4, align 8
  %i.fs = icmp eq i64 %i.fq, %i.fr
  br i1 %i.fs, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87, label %bb.af

end_hunk_6
begin_hunk_7_@_ZN2v88internal10WasmScript15ClearBreakPointENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a

bb.b:                                             ; preds = %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.q = load ptr, ptr %i.p, align 8              ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 560 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 568 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN2v88internal10WasmScript15ClearBreakPointENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = trunc nuw i64 %i.ab to i32              ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 648
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %.lr.ph.i
end_hunk_8
begin_hunk_9_@_ZN2v88internal10WasmScript15ClearBreakPointENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.aj
  %i.al = load atomic volatile i64, ptr %i.ak monotonic, align 8 ; 2 uses
  %4 = load i64, ptr %i.af, align 8
  %i.am = icmp eq i64 %i.al, %4
  br i1 %i.am, label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.e

end_hunk_9
begin_hunk_10_@_ZN2v88internal10WasmScript15ClearBreakPointENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.d, label %._crit_edge.i, !llvm.loop !42

._crit_edge.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0..i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.av = sext i32 %.0.lcssa.i to i64             ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.q, i64 648 ; 3 uses
  %6 = load i64, ptr %5, align 8
  %i.ay = icmp eq i64 %i.ax, %6
  br i1 %i.ay, label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
end_hunk_10
begin_hunk_11_@_ZN2v88internal10WasmScript15ClearBreakPointENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  br i1 %i.bt, label %.preheader.a, label %bb.q

.preheader.a:                                     ; preds = %_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bu = zext nneg i32 %.0.i22.i to i64
  %i.bv = add nsw i64 %i.av, %i.bu
  br label %bb.i
end_hunk_11
begin_hunk_12_@_ZN2v88internal10WasmScript15ClearBreakPointENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.j, %bb.n, %bb.o
  %i.cs = load i64, ptr %5, align 8
  %i.ct = icmp eq i64 %i.cf, %i.cs
  br i1 %i.ct, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit._crit_edge, label %bb.i, !llvm.loop !45

end_hunk_12
begin_hunk_13_@_ZN2v88internal10WasmScript15ClearBreakPointENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  br label %bb.p, !llvm.loop !45

split:                                            ; preds = %bb.i
  %.pre128 = load i64, ptr %5, align 8
  br label %bb.p

bb.p:                                             ; preds = %split, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit._crit_edge
end_hunk_13
begin_hunk_14_@_ZN2v88internal10WasmScript16CheckBreakPointsEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEiNS0_12StackFrameIdE:bb.a
  %i.z = lshr i64 %i.y, 32
  %i.aa = trunc nuw i64 %i.z to i32               ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %.lr.ph.i
end_hunk_14
begin_hunk_15_@_ZN2v88internal10WasmScript16CheckBreakPointsEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEiNS0_12StackFrameIdE:bb.a
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8 ; 2 uses
  %4 = load i64, ptr %i.ad, align 8
  %i.ak = icmp eq i64 %i.aj, %4
  br i1 %i.ak, label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.e

end_hunk_15
begin_hunk_16_@_ZN2v88internal10WasmScript16CheckBreakPointsEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEiNS0_12StackFrameIdE:bb.a
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %bb.d, label %._crit_edge.i, !llvm.loop !42

._crit_edge.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0..i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.at = sext i32 %.0.lcssa.i to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %6 = load i64, ptr %5, align 8
  %i.aw = icmp eq i64 %i.av, %6
  br i1 %i.aw, label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
end_hunk_16
begin_hunk_17_@_ZN2v88internal10WasmScript16CheckBreakPointsEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEiNS0_12StackFrameIdE:bb.a
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.p, align 8
  store i64 %i.bh, ptr %.0.i.i, align 8
  %i.bp = load i64, ptr %5, align 8
  %i.bq = icmp eq i64 %i.bh, %i.bp
  br i1 %i.bq, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread, label %bb.i

end_hunk_17
