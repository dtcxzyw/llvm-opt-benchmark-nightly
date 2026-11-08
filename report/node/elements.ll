Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/elements?download=true
inline.NumInlined: 32815
inline.NumDeleted: 4754
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 975
loop-unroll.NumUnrolled: 987
begin_hunk_0_@_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE16CopyElementsImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEEjSC_S5_jii(ptr noundef %0, i64 %1, i32 noundef %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 align 2 !guid !3222 {
bb.a:
  switch i8 %4, label %_ZN2v88internal12_GLOBAL__N_126CopyObjectToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_12ElementsKindEjS6_S7_ji.exit [
    i8 0, label %bb.b
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 10, label %bb.b
    i8 8, label %bb.b
    i8 6, label %bb.b
    i8 3, label %bb.b
    i8 11, label %bb.b
    i8 9, label %bb.b
    i8 7, label %bb.b
    i8 12, label %bb.b
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 13, label %bb.g
    i8 14, label %bb.h
    i8 15, label %bb.h
    i8 16, label %bb.h
    i8 17, label %bb.h
    i8 18, label %bb.h
    i8 19, label %bb.h
    i8 20, label %bb.h
    i8 21, label %bb.h
    i8 22, label %bb.h
    i8 23, label %bb.h
    i8 24, label %bb.h
    i8 25, label %bb.h
    i8 26, label %bb.h
    i8 27, label %bb.h
    i8 28, label %bb.h
    i8 29, label %bb.h
    i8 30, label %bb.h
    i8 31, label %bb.h
    i8 32, label %bb.h
    i8 33, label %bb.h
    i8 34, label %bb.h
    i8 35, label %bb.h
    i8 36, label %bb.h
    i8 37, label %bb.h
    i8 38, label %bb.h
    i8 39, label %bb.h
    i8 40, label %bb.h
    i8 41, label %bb.h
    i8 42, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = icmp slt i32 %6, 0
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = add i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = sub i32 %i.g, %2
  %i.i = add i64 %3, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32                ; 2 uses
  %i.o = sub i32 %i.n, %5
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.h) ; 3 uses
  %i.p = add i32 %.sroa.speculated.i, %5          ; 2 uses
  %i.q = sub nsw i32 %i.n, %i.p                   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = sext i32 %i.p to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.w = load i64, ptr %i.v, align 8
  %i.x = zext nneg i32 %i.q to i64
  %i.y = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.w, i64 %i.x, ptr nonnull %i.u) #23, !srcloc !297 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi i32 [ %6, %bb.b ], [ %.sroa.speculated.i, %bb.d ], [ %.sroa.speculated.i, %bb.c ] ; 2 uses
  %i.z = icmp eq i32 %.0.i, 0
  br i1 %i.z, label %_ZN2v88internal12_GLOBAL__N_126CopyObjectToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_12ElementsKindEjS6_S7_ji.exit, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i: ; preds = %bb.e
  %i.aa = sext i32 %5 to i64
  %i.ab = add i64 %3, 15
  %.idx.i.i.i = shl nsw i64 %i.aa, 3
  %i.ac = add i64 %i.ab, %.idx.i.i.i
  %i.ad = sext i32 %2 to i64
  %i.ae = add i64 %1, 15
  %.idx13.i.i.i = shl nsw i64 %i.ad, 3
  %i.af = add i64 %i.ae, %.idx13.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ag, i64 %3, i64 %i.ac, i64 %i.af, i32 noundef %.0.i, i32 noundef 0) #23
  br label %_ZN2v88internal12_GLOBAL__N_126CopyObjectToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_12ElementsKindEjS6_S7_ji.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_126CopyDoubleToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEEjS6_ji(ptr noundef %0, i64 %1, i32 noundef %2, i64 %3, i32 noundef %5, i32 noundef %6)
  br label %_ZN2v88internal12_GLOBAL__N_126CopyObjectToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_12ElementsKindEjS6_S7_ji.exit

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_130CopyDictionaryToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEEjS6_NS0_12ElementsKindEji(ptr noundef %0, i64 %1, i32 noundef %2, i64 %3, i8 noundef zeroext 0, i32 noundef %5, i32 noundef %6)
  br label %_ZN2v88internal12_GLOBAL__N_126CopyObjectToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_12ElementsKindEjS6_S7_ji.exit

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

_ZN2v88internal12_GLOBAL__N_126CopyObjectToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_12ElementsKindEjS6_S7_ji.exit: ; preds = %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i, %bb.e, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_126CopyDoubleToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEEjS6_ji(ptr noundef %0, i64 %1, i32 noundef %2, i64 %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !guid !3225 {
bb.a:
  %i.a = icmp slt i32 %5, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = sub i32 %i.g, %2
  %i.i = add i64 %3, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = sub i32 %i.n, %4                         ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.h) ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = sext i32 %4 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.u = load i64, ptr %i.t, align 8
  %i.v = zext nneg i32 %i.o to i64
  %i.w = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.u, i64 %i.v, ptr nonnull %i.s) #23, !srcloc !297 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %5, %bb.a ], [ %.sroa.speculated, %bb.c ], [ %.sroa.speculated, %bb.b ] ; 4 uses
  %i.x = icmp eq i32 %.0, 0
  br i1 %i.x, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZN2v88internal6HandleINS0_16FixedDoubleArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !284

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal6HandleINS0_16FixedDoubleArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16FixedDoubleArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %i.ae = ptrtoint ptr %.0.i.i to i64
  %i.af = add i64 %i.ae, 8
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %i.y, align 8
  store i64 %1, ptr %.0.i.i, align 8
  %i.ah = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !284

bb.g:                                             ; preds = %_ZN2v88internal6HandleINS0_16FixedDoubleArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ak = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_16FixedDoubleArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.g
  %.0.i.i45 = phi ptr [ %i.ak, %bb.g ], [ %i.ah, %_ZN2v88internal6HandleINS0_16FixedDoubleArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.al = ptrtoint ptr %.0.i.i45 to i64
  %i.am = add i64 %i.al, 8
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %i.y, align 8
  store i64 %3, ptr %.0.i.i45, align 8
  %i.ao = icmp sgt i32 %.0, 0
  br i1 %i.ao, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 656
  %6 = zext nneg i32 %.0 to i64
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %.lr.ph76
  %indvars.iv.a = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next.a, %_ZN2v88internal11HandleScopeD2Ev.exit ] ; 2 uses
  %i.ar = load ptr, ptr %i.y, align 8
  %i.as = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.at = load i32, ptr %i.ap, align 8
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ap, align 8
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 100 ; 3 uses
  %indvars = trunc nsw i64 %indvars.iv.next.a to i32
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %indvars, i32 %.0)
  %i.av = sext i32 %invariant.smin to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  store ptr %i.ar, ptr %i.y, align 8
  %i.aw = load i32, ptr %i.ap, align 8
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.ap, align 8
  %i.ay = load ptr, ptr %i.aa, align 8
  %.not.i = icmp eq ptr %i.ay, %i.as
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.h, !prof !286

bb.h:                                             ; preds = %._crit_edge
  store ptr %i.as, ptr %i.aa, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.h, %._crit_edge
  %7 = icmp samesign ult i64 %indvars.iv.next.a, %6
  br i1 %7, label %.lr.ph.preheader, label %.loopexit, !llvm.loop !3223

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv77 = phi i64 [ %indvars.iv.a, %.lr.ph.preheader ], [ %indvars.iv.next78, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.az = load i64, ptr %.0.i.i, align 8
  %i.ba = trunc nuw nsw i64 %indvars.iv77 to i32  ; 2 uses
  %i.bb = add i32 %2, %i.ba
  %i.bc = add i64 %i.az, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = sext i32 %i.bb to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bg, align 1 ; 3 uses
  %i.bh = icmp eq i64 %.0.copyload.i.i.i.i.i.i, -2251799814209537
  %i.bi = bitcast i64 %.0.copyload.i.i.i.i.i.i to double ; 5 uses
  br i1 %i.bh, label %_ZN2v88internal16FixedDoubleArray3getENS0_6TaggedIS1_EEiPNS0_7IsolateE.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bj = fcmp oge double %i.bi, f0xC1E0000000000000
  %i.bk = fcmp ole double %i.bi, f0x41DFFFFFFFC00000
  %or.cond.i.i.i.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call noundef i1 @llvm.is.fpclass.f64(double %i.bi, /* (nzero) */ i32 32)
  br i1 %i.bl, label %bb.l, label %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i

_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i:        ; preds = %bb.j
  %i.bm = fptosi double %i.bi to i32              ; 2 uses
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fcmp oeq double %i.bi, %i.bn
  br i1 %i.bo, label %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i, label %bb.l

_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i: ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i
  %i.bp = sext i32 %i.bm to i64
  %i.bq = shl nsw i64 %i.bp, 32
  %i.br = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.bs = load ptr, ptr %i.aa, align 8
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.k, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !284

bb.k:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i
  %i.bu = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.k, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i
  %.0.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %i.br, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit.i.i ] ; 3 uses
  %i.bv = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bw = add i64 %i.bv, 8
  %i.bx = inttoptr i64 %i.bw to ptr
  store ptr %i.bx, ptr %i.y, align 8
  store i64 %i.bq, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal16FixedDoubleArray3getENS0_6TaggedIS1_EEiPNS0_7IsolateE.exit

bb.l:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i.i.i, %bb.j, %bb.i
  %i.by = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #23 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = add i64 %i.bz, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %.0.copyload.i.i.i.i.i.i, ptr %i.cc, align 1
  br label %_ZN2v88internal16FixedDoubleArray3getENS0_6TaggedIS1_EEiPNS0_7IsolateE.exit

_ZN2v88internal16FixedDoubleArray3getENS0_6TaggedIS1_EEiPNS0_7IsolateE.exit: ; preds = %.lr.ph, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, %bb.l
  %.sroa.05.0.i = phi ptr [ %i.by, %bb.l ], [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %i.aq, %.lr.ph ]
  %i.cd = load i64, ptr %.0.i.i45, align 8
  %i.ce = add i64 %i.cd, -1                       ; 3 uses
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = add i32 %4, %i.ba
  %i.ch = load i64, ptr %.sroa.05.0.i, align 8    ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cj = sext i32 %i.cg to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  store atomic volatile i64 %i.ch, ptr %i.ck monotonic, align 8
  %i.cl = trunc i64 %i.ch to i1
  br i1 %i.cl, label %bb.m, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.m:                                             ; preds = %_ZN2v88internal16FixedDoubleArray3getENS0_6TaggedIS1_EEiPNS0_7IsolateE.exit
  %i.cm = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cn = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.co = and i64 %i.ce, -262144
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load i64, ptr %i.cp, align 262144       ; 2 uses
  %i.cr = and i64 %i.cq, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.cr, 0
  %i.cs = and i64 %i.cq, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not37.i.i.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ct = and i64 %i.ch, -262144
  %i.cu = inttoptr i64 %i.ct to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 262144
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not38.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cm, i64 noundef %i.cn, i64 %i.ch) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.q, !prof !286

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cm, i64 %i.cn, i64 %i.ch) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal16FixedDoubleArray3getENS0_6TaggedIS1_EEiPNS0_7IsolateE.exit, %bb.p, %bb.q
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.cw = icmp slt i64 %indvars.iv.next78, %i.av
  br i1 %i.cw, label %.lr.ph, label %._crit_edge, !llvm.loop !3224

.loopexit:                                        ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_130CopyDictionaryToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEEjS6_NS0_12ElementsKindEji(ptr nofree noundef readonly captures(none) %0, i64 %1, i32 noundef %2, i64 %3, i8 noundef zeroext range(i8 0, 13) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !guid !3233 {
bb.a:
  %7 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 7 uses
  %i.a = icmp slt i32 %6, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = and i64 %i.e, 1
  %i.g = icmp eq i64 %i.f, 0
  %sum.shift.i = lshr i64 %i.e, 33
  %i.h = trunc nuw nsw i64 %sum.shift.i to i32
  %i.i = add nuw i32 %i.h, 1
  %i.j = select i1 %i.g, i32 %i.i, i32 1
  %i.k = sub i32 %i.j, %2                         ; 3 uses
  %i.l = add i32 %i.k, %5                         ; 2 uses
  %i.m = add i64 %3, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = sub nsw i32 %i.r, %i.l                   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = sext i32 %i.l to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.y = load i64, ptr %i.x, align 8
  %i.z = zext nneg i32 %i.s to i64
  %i.aa = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.y, i64 %i.z, ptr nonnull %i.w) #23, !srcloc !297 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %6, %bb.a ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.ab = icmp eq i32 %.0, 0
  br i1 %i.ab, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add i64 %3, -1                          ; 5 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32              ; 2 uses
  %i.ai = add i32 %.0, %5
  %i.aj = icmp ugt i32 %i.ai, %i.ah
  %i.ak = sub i32 %i.ah, %5
  %spec.select = select i1 %i.aj, i32 %i.ak, i32 %.0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.al = icmp samesign ult i8 %4, 2
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 0) #23
  br label %_ZN2v88internal12_GLOBAL__N_119GetWriteBarrierModeENS0_6TaggedINS0_14FixedArrayBaseEEENS0_12ElementsKindERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

bb.g:                                             ; preds = %bb.e
  %i.am = and i8 %4, 14
  %i.an = icmp eq i8 %i.am, 4
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 0) #23
  br label %_ZN2v88internal12_GLOBAL__N_119GetWriteBarrierModeENS0_6TaggedINS0_14FixedArrayBaseEEENS0_12ElementsKindERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ao = or disjoint i64 %i.ac, 1
  %i.ap = and i64 %i.ac, -262144
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i64, ptr %i.aq, align 262144, !noalias !3234 ; 2 uses
  %i.as = and i64 %i.ar, 32
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  %i.at = and i64 %i.ar, 24
  %.not7.i.i.i.i = icmp ne i64 %i.at, 0
  %i.au = and i1 %.not.i.i.i.i, %.not7.i.i.i.i
  %.1.i.i.i.i = select i1 %i.au, i32 1, i32 4
end_hunk_0
