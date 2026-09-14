Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/elements?download=true
inline.NumInlined: 32815
inline.NumDeleted: 4754
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 975
loop-unroll.NumUnrolled: 987
begin_hunk_0_@"_ZSt13__adjust_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_T2_":bb.a
.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us.i"
  %.0915.us.i = phi i32 [ %.09.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us.i" ], [ %.0913.i, %.lr.ph.split.us.i ] ; 5 uses
  %.014.us.i = phi i32 [ %.0915.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us.i" ], [ %.1, %.lr.ph.split.us.i ] ; 3 uses
  %i.cv = sext i32 %.0915.us.i to i64
  %i.cw = shl nsw i64 %i.cv, 3
  %i.cx = add i64 %i.cw, %0
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = load atomic volatile i64, ptr %i.cy monotonic, align 8 ; 5 uses
  %i.da = and i64 %i.cz, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.critedge46.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.split.i
  %i.dc = load i64, ptr %i.bo, align 8
  %i.dd = icmp eq i64 %i.cz, %i.dc
  br i1 %i.dd, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.us.i", label %bb.r

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.us.i": ; preds = %bb.q
  %i.de = icmp eq i64 %3, %i.cz
  br i1 %i.de, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us.i", label %"_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_RT2_.exit"

bb.r:                                             ; preds = %bb.q
  %i.df = add nsw i64 %i.cz, -1
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.0.copyload.i.i.i.i.i.i.i.us.i = load double, ptr %i.dh, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.i

.critedge46.i:                                    ; preds = %.lr.ph.split.us.split.i
  %i.di = lshr i64 %i.cz, 32
  %i.dj = trunc nuw i64 %i.di to i32
  %i.dk = sitofp i32 %i.dj to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.i: ; preds = %.critedge46.i, %bb.r
  %i.dl = phi double [ %i.dk, %.critedge46.i ], [ %.0.copyload.i.i.i.i.i.i.i.us.i, %bb.r ]
  %i.dm = fcmp olt double %i.dl, %i.bx
  br i1 %i.dm, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us.i", label %"_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us.i": ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.us.i"
  %i.dn = sext i32 %.014.us.i to i64
  %i.do = shl nsw i64 %i.dn, 3
  %i.dp = add i64 %i.do, %0
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load atomic volatile i64, ptr %i.cy monotonic, align 8
  store atomic volatile i64 %i.dr, ptr %i.dq monotonic, align 8
  %.09.in.us.i = add nsw i32 %.0915.us.i, -1
  %.09.us.i = sdiv i32 %.09.in.us.i, 2
  %i.ds = icmp sgt i32 %.0915.us.i, %1
  br i1 %i.ds, label %.lr.ph.split.us.split.i, label %"_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_RT2_.exit", !llvm.loop !3058

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.bp, label %.lr.ph.split.split.i, label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us27.i"
  %.0915.us20.i = phi i32 [ %.09.us29.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us27.i" ], [ %.0913.i, %.lr.ph.split.i ] ; 5 uses
  %.014.us21.i = phi i32 [ %.0915.us20.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us27.i" ], [ %.1, %.lr.ph.split.i ] ; 3 uses
  %i.dt = sext i32 %.0915.us20.i to i64
  %i.du = shl nsw i64 %i.dt, 3
  %i.dv = add i64 %i.du, %0
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %i.dx = load atomic volatile i64, ptr %i.dw monotonic, align 8 ; 4 uses
  %i.dy = and i64 %i.dx, 1
  %i.dz = icmp eq i64 %i.dy, 0
  %.pre.i = load i64, ptr %i.bo, align 8          ; 3 uses
  br i1 %i.dz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split.us.i
  %i.ea = icmp eq i64 %i.dx, %.pre.i
  br i1 %i.ea, label %"_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_RT2_.exit", label %.thread.i

bb.t:                                             ; preds = %.lr.ph.split.split.us.i
  %i.eb = icmp eq i64 %3, %.pre.i
  br i1 %i.eb, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us27.i", label %bb.v

.thread.i:                                        ; preds = %bb.s
  %i.ec = icmp eq i64 %3, %.pre.i
  br i1 %i.ec, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us27.i", label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.ed = add nsw i64 %i.dx, -1
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.0.copyload.i.i.i.i.i.i.i.us24.i = load double, ptr %i.ef, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us25.i

bb.v:                                             ; preds = %bb.t
  %i.eg = lshr i64 %i.dx, 32
  %i.eh = trunc nuw i64 %i.eg to i32
  %i.ei = sitofp i32 %i.eh to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us25.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us25.i: ; preds = %bb.v, %bb.u
  %i.ej = phi double [ %i.ei, %bb.v ], [ %.0.copyload.i.i.i.i.i.i.i.us24.i, %bb.u ]
  %.0.copyload.i.i.i.i.i14.i.i.us26.i = load double, ptr %i.bu, align 1
  %i.ek = fcmp olt double %i.ej, %.0.copyload.i.i.i.i.i14.i.i.us26.i
  br i1 %i.ek, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us27.i", label %"_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us27.i": ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us25.i, %.thread.i, %bb.t
  %i.el = sext i32 %.014.us21.i to i64
  %i.em = shl nsw i64 %i.el, 3
  %i.en = add i64 %i.em, %0
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load atomic volatile i64, ptr %i.dw monotonic, align 8
  store atomic volatile i64 %i.ep, ptr %i.eo monotonic, align 8
  %.09.in.us28.i = add nsw i32 %.0915.us20.i, -1
  %.09.us29.i = sdiv i32 %.09.in.us28.i, 2
  %i.eq = icmp sgt i32 %.0915.us20.i, %1
  br i1 %i.eq, label %.lr.ph.split.split.us.i, label %"_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_RT2_.exit", !llvm.loop !3058

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.i"
  %.0915.i = phi i32 [ %.09.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.i" ], [ %.0913.i, %.lr.ph.split.i ] ; 5 uses
  %.014.i = phi i32 [ %.0915.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.i" ], [ %.1, %.lr.ph.split.i ] ; 3 uses
  %i.er = sext i32 %.0915.i to i64
  %i.es = shl nsw i64 %i.er, 3
  %i.et = add i64 %i.es, %0
  %i.eu = inttoptr i64 %i.et to ptr               ; 2 uses
  %i.ev = load atomic volatile i64, ptr %i.eu monotonic, align 8 ; 5 uses
  %i.ew = and i64 %i.ev, 1
  %i.ex = icmp eq i64 %i.ew, 0
  %.pre53.i = load i64, ptr %i.bo, align 8        ; 3 uses
  br i1 %i.ex, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.split.i
  %i.ey = icmp eq i64 %i.ev, %.pre53.i
  br i1 %i.ey, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.i", label %.thread60.i

bb.x:                                             ; preds = %.lr.ph.split.split.i
  %i.ez = icmp eq i64 %3, %.pre53.i
  br i1 %i.ez, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.i", label %bb.y

.thread60.i:                                      ; preds = %bb.w
  %i.fa = icmp eq i64 %3, %.pre53.i
  br i1 %i.fa, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.i", label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fb = lshr i64 %i.ev, 32
  %i.fc = trunc nuw i64 %i.fb to i32
  %i.fd = sitofp i32 %i.fc to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i

bb.z:                                             ; preds = %.thread60.i
  %i.fe = add nsw i64 %i.ev, -1
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.fg, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i: ; preds = %bb.z, %bb.y
  %i.fh = phi double [ %i.fd, %bb.y ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.z ]
  %.0.copyload.i.i.i.i.i14.i.i.i = load double, ptr %i.bu, align 1
  %i.fi = fcmp olt double %i.fh, %.0.copyload.i.i.i.i.i14.i.i.i
  br i1 %i.fi, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.i", label %"_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.i": ; preds = %bb.w
  %i.fj = icmp eq i64 %3, %i.ev
  br i1 %i.fj, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.i", label %"_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.i", %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %.thread60.i, %bb.x
  %i.fk = sext i32 %.014.i to i64
  %i.fl = shl nsw i64 %i.fk, 3
  %i.fm = add i64 %i.fl, %0
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = load atomic volatile i64, ptr %i.eu monotonic, align 8
  store atomic volatile i64 %i.fo, ptr %i.fn monotonic, align 8
  %.09.in.i = add nsw i32 %.0915.i, -1
  %.09.i = sdiv i32 %.09.in.i, 2
  %i.fp = icmp sgt i32 %.0915.i, %1
  br i1 %i.fp, label %.lr.ph.split.split.i, label %"_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_RT2_.exit", !llvm.loop !3058

"_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_SF_T1_RT2_.exit": ; preds = %bb.s, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us25.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us27.i", %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.i", %bb.o, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us.us.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.us.i", %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us.i", %bb.n
  %.0.lcssa.i = phi i32 [ %.1, %bb.n ], [ %.014.us.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.i ], [ %.014.us.us.i, %bb.o ], [ %.014.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.i" ], [ %.014.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.us.i" ], [ %.0915.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us.i" ], [ %.0915.us.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us.us.i" ], [ %.014.us.us.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.us.i ], [ %.014.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.0915.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.i" ], [ %.014.us21.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us25.i ], [ %.0915.us20.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotEmEEbT_RT0_.exit.thread.us27.i" ], [ %.014.us21.i, %bb.s ]
  %i.fq = sext i32 %.0.lcssa.i to i64
  %i.fr = shl nsw i64 %i.fq, 3
  %i.fs = add i64 %i.fr, %0
  %i.ft = inttoptr i64 %i.fs to ptr
  store atomic volatile i64 %3, ptr %i.ft monotonic, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_SE_T0_"(i64 %0, i64 %1, ptr nofree readonly captures(none) %2) unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.010.027 = add i64 %0, 8                  ; 2 uses
  %.not28 = icmp eq i64 %.sroa.010.027, %1
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.010.030 = phi i64 [ %.sroa.010.027, %.lr.ph ], [ %.sroa.010.0, %bb.q ] ; 8 uses
  %.sroa.010.0.in29 = phi i64 [ %0, %.lr.ph ], [ %.sroa.010.030, %bb.q ]
  %i.d = inttoptr i64 %.sroa.010.030 to ptr       ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 5 uses
  %i.f = load atomic volatile i64, ptr %i.b monotonic, align 8 ; 6 uses
  %i.g = and i64 %i.e, 1
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8
  %i.j = icmp eq i64 %i.e, %i.i
  br i1 %i.j, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotESD_EEbT_T0_.exit", label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = and i64 %i.f, 1
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.c, align 8
  %i.n = icmp eq i64 %i.f, %i.m
  br i1 %i.n, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotESD_EEbT_T0_.exit.thread", label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = lshr i64 %i.e, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = sitofp i32 %i.p to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.r = add nsw i64 %i.e, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.t, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i: ; preds = %bb.h, %bb.g
  %i.u = phi double [ %i.q, %bb.g ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.h ]
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i
  %i.v = lshr i64 %i.f, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = sitofp i32 %i.w to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i

bb.j:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i
  %i.y = add nsw i64 %i.f, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.copyload.i.i.i.i.i14.i.i = load double, ptr %i.aa, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i: ; preds = %bb.j, %bb.i
  %i.ab = phi double [ %i.x, %bb.i ], [ %.0.copyload.i.i.i.i.i14.i.i, %bb.j ]
  %i.ac = fcmp olt double %i.u, %i.ab
  br i1 %i.ac, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotESD_EEbT_T0_.exit.thread", label %bb.k

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotESD_EEbT_T0_.exit": ; preds = %bb.c
  %i.ad = trunc i64 %i.f to i1
  %i.ae = icmp eq i64 %i.f, %i.e
  %spec.select.i.i = and i1 %i.ae, %i.ad
  br i1 %spec.select.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotESD_EEbT_T0_.exit.thread", label %bb.k

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotESD_EEbT_T0_.exit.thread": ; preds = %bb.e, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotESD_EEbT_T0_.exit"
  %i.af = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.ag = sub i64 %.sroa.010.030, %0
  %.fr42 = freeze i64 %i.ag
  %i.ah = trunc i64 %.fr42 to i32                 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 7
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotESD_EEbT_T0_.exit.thread"
  %i.aj = add i64 %.sroa.010.0.in29, 16           ; 2 uses
  %i.ak = lshr i32 %i.ah, 3                       ; 4 uses
  %i.al = add nsw i32 %i.ak, -1
  %xtraiter = and i32 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi i32 [ %i.ar, %.lr.ph.i.i.i.i.i.prol ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.09.012.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.010.030, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.06.011.i.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.prol ], [ %i.aj, %.lr.ph.preheader.i.i.i.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i.i ]
  %i.am = add i64 %.sroa.09.012.i.i.i.i.i.prol, -8 ; 3 uses
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = add i64 %.sroa.06.011.i.i.i.i.i.prol, -8 ; 3 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.an monotonic, align 8
  store atomic volatile i64 %i.aq, ptr %i.ap monotonic, align 8
  %i.ar = add nsw i32 %.013.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3059

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i
  %.013.i.i.i.i.i.unr = phi i32 [ %i.ak, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.09.012.i.i.i.i.i.unr = phi i64 [ %.sroa.010.030, %.lr.ph.preheader.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.06.011.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %i.as = icmp ult i32 %i.al, 3
  br i1 %i.as, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi i32 [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.09.012.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.sroa.09.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.06.011.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.sroa.06.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.at = add i64 %.sroa.09.012.i.i.i.i.i, -8
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = add i64 %.sroa.06.011.i.i.i.i.i, -8
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i64, ptr %i.au monotonic, align 8
  store atomic volatile i64 %i.ax, ptr %i.aw monotonic, align 8
  %i.ay = add i64 %.sroa.09.012.i.i.i.i.i, -16
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = add i64 %.sroa.06.011.i.i.i.i.i, -16
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.az monotonic, align 8
  store atomic volatile i64 %i.bc, ptr %i.bb monotonic, align 8
  %i.bd = add i64 %.sroa.09.012.i.i.i.i.i, -24
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = add i64 %.sroa.06.011.i.i.i.i.i, -24
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i64, ptr %i.be monotonic, align 8
  store atomic volatile i64 %i.bh, ptr %i.bg monotonic, align 8
  %i.bi = add i64 %.sroa.09.012.i.i.i.i.i, -32    ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = add i64 %.sroa.06.011.i.i.i.i.i, -32    ; 2 uses
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i64, ptr %i.bj monotonic, align 8
  store atomic volatile i64 %i.bm, ptr %i.bl monotonic, align 8
  %i.bn = add nsw i32 %.013.i.i.i.i.i, -4
  %i.bo = icmp sgt i32 %.013.i.i.i.i.i, 4
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, !llvm.loop !3060

_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotESD_EEbT_T0_.exit.thread"
  store atomic volatile i64 %i.af, ptr %i.b monotonic, align 8
  br label %bb.q

bb.k:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclINS3_10AtomicSlotESD_EEbT_T0_.exit"
  %i.bp = load atomic volatile i64, ptr %i.d monotonic, align 8
  %.fr.i = freeze i64 %i.bp                       ; 6 uses
  %i.bq = and i64 %.fr.i, 1
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = add nsw i64 %.fr.i, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = lshr i64 %.fr.i, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  %i.bx = sitofp i32 %i.bw to double
  br i1 %i.br, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.k, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.us.i"
  %.sroa.011.0.us.i = phi i64 [ %.sroa.03.0.us.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.us.i" ], [ %.sroa.010.030, %bb.k ] ; 3 uses
  %.sroa.03.0.us.i = add i64 %.sroa.011.0.us.i, -8 ; 2 uses
  %i.by = inttoptr i64 %.sroa.03.0.us.i to ptr    ; 2 uses
  %i.bz = load atomic volatile i64, ptr %i.by monotonic, align 8 ; 4 uses
  %i.ca = and i64 %i.bz, 1
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.split.us.i
  %i.cc = load i64, ptr %i.c, align 8
  %i.cd = icmp eq i64 %i.bz, %i.cc
  br i1 %i.cd, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.us.i", label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.i: ; preds = %bb.l
  %i.ce = add nsw i64 %i.bz, -1
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.0.copyload.i.i.i.i.i14.i.i.us.i = load double, ptr %i.cg, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.us.i

.critedge.i:                                      ; preds = %.split.us.i
  %i.ch = lshr i64 %i.bz, 32
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = sitofp i32 %i.ci to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.us.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.us.i: ; preds = %.critedge.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.i
  %i.ck = phi double [ %i.cj, %.critedge.i ], [ %.0.copyload.i.i.i.i.i14.i.i.us.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.us.i ]
  %i.cl = fcmp ogt double %i.ck, %i.bx
  br i1 %i.cl, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.us.i", label %"_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.us.i": ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.us.i, %bb.l
  %i.cm = inttoptr i64 %.sroa.011.0.us.i to ptr
  %i.cn = load atomic volatile i64, ptr %i.by monotonic, align 8
  store atomic volatile i64 %i.cn, ptr %i.cm monotonic, align 8
  br label %.split.us.i, !llvm.loop !161

.split.i:                                         ; preds = %bb.k, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.i"
  %.sroa.011.0.i = phi i64 [ %.sroa.03.0.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.i" ], [ %.sroa.010.030, %bb.k ] ; 4 uses
  %.sroa.03.0.i = add i64 %.sroa.011.0.i, -8      ; 2 uses
  %i.co = inttoptr i64 %.sroa.03.0.i to ptr       ; 2 uses
  %i.cp = load atomic volatile i64, ptr %i.co monotonic, align 8 ; 6 uses
  %i.cq = load i64, ptr %i.c, align 8             ; 2 uses
  %i.cr = icmp eq i64 %.fr.i, %i.cq
  br i1 %i.cr, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.i", label %bb.m

bb.m:                                             ; preds = %.split.i
  %i.cs = and i64 %i.cp, 1
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = icmp eq i64 %i.cp, %i.cq
  br i1 %i.cu, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.i", label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cv = lshr i64 %i.cp, 32
  %i.cw = trunc nuw i64 %i.cv to i32
  %i.cx = sitofp i32 %i.cw to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cy = add nsw i64 %i.cp, -1
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.0.copyload.i.i.i.i.i14.i.i.i = load double, ptr %i.da, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.i: ; preds = %bb.p, %bb.o
  %i.db = phi double [ %i.cx, %bb.o ], [ %.0.copyload.i.i.i.i.i14.i.i.i, %bb.p ]
  %.0.copyload.i.i.i.i.i.i.i22.i = load double, ptr %i.bu, align 1
  %i.dc = fcmp olt double %.0.copyload.i.i.i.i.i.i.i22.i, %i.db
  br i1 %i.dc, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.i", label %"_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.i": ; preds = %.split.i
  %i.dd = trunc i64 %i.cp to i1
  %i.de = icmp eq i64 %i.cp, %.fr.i
  %spec.select.i.i.i = and i1 %i.de, %i.dd
  br i1 %spec.select.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.i", label %"_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.i", %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.i, %bb.n
  %i.df = inttoptr i64 %.sroa.011.0.i to ptr
  %i.dg = load atomic volatile i64, ptr %i.co monotonic, align 8
  store atomic volatile i64 %i.dg, ptr %i.df monotonic, align 8
  br label %.split.i, !llvm.loop !161

"_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_.exit": ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.i", %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.us.i
  %.us-phi.i = phi i64 [ %.sroa.011.0.us.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.us.i ], [ %.sroa.011.0.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN2v88internal12_GLOBAL__N_111SortIndicesEPNS3_7IsolateENS3_12DirectHandleINS3_10FixedArrayEEEjE3$_0EclImNS3_10AtomicSlotEEEbRT_T0_.exit.i" ], [ %.sroa.011.0.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit15.i.i.i ]
  %i.dh = inttoptr i64 %.us-phi.i to ptr
  store atomic volatile i64 %.fr.i, ptr %i.dh monotonic, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, %"_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_12_GLOBAL__N_111SortIndicesEPNS1_7IsolateENS1_12DirectHandleINS1_10FixedArrayEEEjE3$_0EEEvT_T0_.exit"
  %.sroa.010.0 = add i64 %.sroa.010.030, 8        ; 2 uses
  %.not = icmp eq i64 %.sroa.010.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !3061

.loopexit:                                        ; preds = %bb.q, %.preheader, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal8JSObject26WouldConvertToSlowElementsEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2v88internal8JSObject20UpdateAllocationSiteILNS0_24AllocationSiteUpdateModeE1EEEbPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef, ptr, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, -4294967294) i64 @_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE12AddArgumentsEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEENSA_INS0_14FixedArrayBaseEEEPNS0_16BuiltinArgumentsEjNS1_5WhereE(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 23
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32                        ; 2 uses
  %i.f = trunc nuw i64 %i.e to i32                ; 3 uses
  %i.g = load i64, ptr %2, align 8                ; 2 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %4, %i.f                         ; 5 uses
  %i.o = icmp ugt i32 %i.n, %i.m
  br i1 %i.o, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.p = lshr i32 %i.n, 1
  %i.q = add i32 %i.n, 16                         ; 2 uses
  %i.r = add i32 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ult i32 %i.q, 134217729
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.r, i32 134217728)
  %.0.i = select i1 %i.s, i32 %i.t, i32 %i.r      ; 2 uses
  %i.u = icmp eq i32 %5, 0
  %i.v = select i1 %i.u, i32 %4, i32 0            ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i36.i = load i64, ptr %i.w, align 8
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i36.i, 0
  %i.y = icmp ult i32 %.0.i, 134217729
  %or.cond.i = or i1 %i.y, %i.x
  br i1 %or.cond.i, label %bb.c, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %bb.b
  %i.z = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %.0.i, i8 noundef zeroext 0, i8 0) #23 ; 5 uses
  %i.aa = load i64, ptr %1, align 8
  %i.ab = add i64 %i.aa, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2 ; 0 uses
  %i.ah = load i64, ptr %2, align 8               ; 2 uses
  %i.ai = load i64, ptr %i.z, align 8             ; 3 uses
  %i.aj = add i64 %i.ah, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = add i64 %i.ai, -1
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = lshr i64 %i.as, 32
  %i.au = trunc nuw i64 %i.at to i32              ; 2 uses
  %i.av = sub i32 %i.au, %i.v
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.ao) ; 3 uses
  %i.aw = add i32 %.sroa.speculated.i.i, %i.v     ; 2 uses
  %i.ax = sub nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ba = sext i32 %i.aw to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = zext nneg i32 %i.ax to i64
  %i.bf = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.bd, i64 %i.be, ptr nonnull %i.bb) #23, !srcloc !211 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bg = icmp eq i32 %.sroa.speculated.i.i, 0
  br i1 %i.bg, label %bb.f, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.e
  %i.bh = sext i32 %i.v to i64
  %.idx.i.i.i.i = shl nsw i64 %i.bh, 3
  %i.bi = add nsw i64 %.idx.i.i.i.i, 15
  %i.bj = add i64 %i.bi, %i.ai
  %i.bk = add i64 %i.ah, 15
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.bl, i64 %i.ai, i64 %i.bj, i64 %i.bk, i32 noundef %.sroa.speculated.i.i, i32 noundef 0) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i
  %i.bm = load i64, ptr %1, align 8               ; 4 uses
  %i.bn = load i64, ptr %i.z, align 8             ; 5 uses
  %i.bo = add i64 %i.bm, 15                       ; 3 uses
  %i.bp = inttoptr i64 %i.bo to ptr
  store atomic volatile i64 %i.bn, ptr %i.bp monotonic, align 8
  %i.bq = trunc i64 %i.bn to i1
  br i1 %i.bq, label %bb.g, label %_ZN2v88internal10FixedArray12MoveElementsEPNS0_7IsolateEiiiNS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %bb.f
  %i.br = and i64 %i.bm, -262144
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load i64, ptr %i.bs, align 262144       ; 2 uses
  %i.bu = and i64 %i.bt, 32
  %.not.i.i.i = icmp eq i64 %i.bu, 0
  %i.bv = and i64 %i.bt, 25
  %.not37.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not37.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bw = and i64 %i.bn, -262144
  %i.bx = inttoptr i64 %i.bw to ptr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bx, align 262144
  %i.by = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not38.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bm, i64 noundef %i.bo, i64 %i.bn) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i, label %_ZN2v88internal10FixedArray12MoveElementsEPNS0_7IsolateEiiiNS0_16WriteBarrierModeE.exit, label %bb.k, !prof !200

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bm, i64 %i.bo, i64 %i.bn) #23
  br label %_ZN2v88internal10FixedArray12MoveElementsEPNS0_7IsolateEiiiNS0_16WriteBarrierModeE.exit

_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.b
  %i.bz = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 238, ptr null, i64 0) #23
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ca, ptr noundef null) #23 ; 0 uses
  br label %bb.u

bb.l:                                             ; preds = %bb.a
  %i.cc = icmp ne i32 %5, 0
  %i.cd = icmp eq i64 %i.e, 0
  %or.cond = or i1 %i.cc, %i.cd
  br i1 %or.cond, label %_ZN2v88internal10FixedArray12MoveElementsEPNS0_7IsolateEiiiNS0_16WriteBarrierModeE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = or disjoint i64 %i.h, 1
  %i.cf = sext i32 %4 to i64
  %i.cg = add i64 %i.g, 15                        ; 2 uses
  %.idx.i.i = shl nsw i64 %i.cf, 3
  %i.ch = add i64 %i.cg, %.idx.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 55464
  tail call void @_ZN2v88internal4Heap9MoveRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ci, i64 %i.ce, i64 %i.ch, i64 %i.cg, i32 noundef %i.f, i32 noundef 0) #23
  br label %_ZN2v88internal10FixedArray12MoveElementsEPNS0_7IsolateEiiiNS0_16WriteBarrierModeE.exit

_ZN2v88internal10FixedArray12MoveElementsEPNS0_7IsolateEiiiNS0_16WriteBarrierModeE.exit: ; preds = %bb.k, %bb.j, %bb.f, %bb.m, %bb.l
  %.sroa.050.0 = phi ptr [ %2, %bb.m ], [ %2, %bb.l ], [ %i.z, %bb.k ], [ %i.z, %bb.f ], [ %i.z, %bb.j ]
  %i.cj = icmp eq i32 %5, 0
  %i.ck = select i1 %i.cj, i32 0, i32 %i.f
  %i.cl = load i64, ptr %.sroa.050.0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cm = add i64 %i.cl, -1                       ; 3 uses
  %i.cn = or disjoint i64 %i.cm, 1                ; 3 uses
  %i.co = and i64 %i.cm, -262144
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 262144, !noalias !3067 ; 2 uses
  %i.cr = and i64 %i.cq, 32
  %.not.i.i.i.i = icmp eq i64 %i.cr, 0
  %i.cs = and i64 %i.cq, 24
  %.not7.i.i.i.i = icmp ne i64 %i.cs, 0
  %i.ct = and i1 %.not.i.i.i.i, %.not7.i.i.i.i
  %.1.i.i.i.i = select i1 %i.ct, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %6, i64 %i.cn, i32 noundef %.1.i.i.i.i) #23
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120FastElementsAccessorINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE13CopyArgumentsEPNS0_16BuiltinArgumentsENS0_12DirectHandleINS0_14FixedArrayBaseEEEjjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal10FixedArray12MoveElementsEPNS0_7IsolateEiiiNS0_16WriteBarrierModeE.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cv = inttoptr i64 %i.cm to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE7SetImplENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexENS8_INS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %.lr.ph.i
  %.014.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cx, %_ZN2v88internal12_GLOBAL__N_131FastSmiOrObjectElementsAccessorINS1_29FastPackedSmiElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE0EEEE7SetImplENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexENS8_INS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ] ; 4 uses
  %i.cx = add nuw i32 %.014.i, 1                  ; 2 uses
  %i.cy = add i32 %.014.i, 5
  %i.cz = load i64, ptr %3, align 8               ; 2 uses
  %i.da = trunc i64 %i.cz to i32
  %.not.i.i = icmp ugt i32 %i.cy, %i.da
  br i1 %.not.i.i, label %bb.o, label %_ZNK2v88internal16BuiltinArgumentsixEi.exit.i, !prof !198

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43) #24
end_hunk_0
