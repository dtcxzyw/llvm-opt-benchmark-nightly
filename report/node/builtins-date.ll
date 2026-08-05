inline.NumInlined: 1694
inline.NumDeleted: 289
begin_hunk_0_@_ZN2v88internal29Builtin_DatePrototypeSetHoursEiPmPNS0_7IsolateE:bb.a
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.f, %bb.e
  %i.bd = phi double [ %i.az, %bb.e ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.f ]
  %i.be = icmp sgt i32 %0, 6                      ; 2 uses
  br i1 %i.be, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i, label %.critedge90.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bf = add i64 %reass.sub.i, 56
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 4 uses
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.critedge82.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i105.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i105.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.bk = add nsw i64 %i.bh, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = add i64 %i.bm, 11
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i16, ptr %i.bo monotonic, align 2
  %i.bq = icmp eq i16 %i.bp, 130
  br i1 %i.bq, label %.critedge82.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit107.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit107.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i105.i
  %i.br = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.bg) #11 ; 2 uses
  %.not260.i = icmp eq ptr %i.br, null
  br i1 %.not260.i, label %bb.g, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit107..critedge82_crit_edge.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit107..critedge82_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit107.i
  %.pre276.i = load i64, ptr %i.br, align 8
  br label %.critedge82.i

bb.g:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit107.i
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.bt = load i64, ptr %i.bs, align 8
  br label %.critedge92.i

.critedge82.i:                                    ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit107..critedge82_crit_edge.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i105.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.bu = phi i64 [ %.pre276.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit107..critedge82_crit_edge.i ], [ %i.bh, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i105.i ], [ %i.bh, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i ] ; 3 uses
  %i.bv = and i64 %i.bu, 1
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge82.i
  %i.bx = lshr i64 %i.bu, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = sitofp i32 %i.by to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit109.i

bb.i:                                             ; preds = %.critedge82.i
  %i.ca = add nsw i64 %i.bu, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.0.copyload.i.i.i.i.i.i108.i = load double, ptr %i.cc, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit109.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit109.i: ; preds = %bb.i, %bb.h
  %i.cd = phi double [ %i.bz, %bb.h ], [ %.0.copyload.i.i.i.i.i.i108.i, %bb.i ] ; 4 uses
  %.not.i = icmp eq i32 %0, 7
  br i1 %.not.i, label %.critedge90.i, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit111.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit111.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit109.i
  %i.ce = add i64 %reass.sub.i, 64
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8            ; 4 uses
  %i.ch = and i64 %i.cg, 1
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.critedge84.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i112.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i112.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit111.i
  %i.cj = add nsw i64 %i.cg, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = icmp eq i16 %i.co, 130
  br i1 %i.cp, label %.critedge84.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit114.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit114.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i112.i
  %i.cq = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.cf) #11 ; 2 uses
  %.not261.i = icmp eq ptr %i.cq, null
  br i1 %.not261.i, label %bb.j, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit114..critedge84_crit_edge.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit114..critedge84_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit114.i
  %.pre277.i = load i64, ptr %i.cq, align 8
  br label %.critedge84.i

bb.j:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit114.i
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.cs = load i64, ptr %i.cr, align 8
  br label %.critedge92.i

.critedge84.i:                                    ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit114..critedge84_crit_edge.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i112.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit111.i
  %i.ct = phi i64 [ %.pre277.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit114..critedge84_crit_edge.i ], [ %i.cg, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i112.i ], [ %i.cg, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit111.i ] ; 3 uses
  %i.cu = and i64 %i.ct, 1
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge84.i
  %i.cw = lshr i64 %i.ct, 32
  %i.cx = trunc nuw i64 %i.cw to i32
  %i.cy = sitofp i32 %i.cx to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit116.i

bb.l:                                             ; preds = %.critedge84.i
  %i.cz = add nsw i64 %i.ct, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.0.copyload.i.i.i.i.i.i115.i = load double, ptr %i.db, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit116.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit116.i: ; preds = %bb.l, %bb.k
  %i.dc = phi double [ %i.cy, %bb.k ], [ %.0.copyload.i.i.i.i.i.i115.i, %bb.l ] ; 3 uses
  %i.dd = icmp samesign ugt i32 %0, 8
  br i1 %i.dd, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit118.i, label %.critedge90.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit118.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit116.i
  %i.de = add i64 %reass.sub.i, 72
  %i.df = inttoptr i64 %i.de to ptr               ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8            ; 4 uses
  %i.dh = and i64 %i.dg, 1
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.critedge86.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit118.i
  %i.dj = add nsw i64 %i.dg, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load atomic volatile i64, ptr %i.dk monotonic, align 8
  %i.dm = add i64 %i.dl, 11
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load atomic volatile i16, ptr %i.dn monotonic, align 2
  %i.dp = icmp eq i16 %i.do, 130
  br i1 %i.dp, label %.critedge86.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.dq = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.df) #11 ; 2 uses
  %.not262.i = icmp eq ptr %i.dq, null
  br i1 %.not262.i, label %.critedge88.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge86.i_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge86.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.dq, align 8
  br label %.critedge86.i

.critedge88.i:                                    ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ds = load i64, ptr %i.dr, align 8
  br label %.critedge92.i

.critedge86.i:                                    ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge86.i_crit_edge, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit118.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.dt = phi i64 [ %.pre, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge86.i_crit_edge ], [ %i.dg, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.dg, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit118.i ] ; 3 uses
  %i.du = and i64 %i.dt, 1
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge86.i
  %i.dw = lshr i64 %i.dt, 32
  %i.dx = trunc nuw i64 %i.dw to i32
  %i.dy = sitofp i32 %i.dx to double
  br label %.critedge90.i

bb.n:                                             ; preds = %.critedge86.i
  %i.dz = add nsw i64 %i.dt, -1
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.0.copyload.i.i.i.i.i.i119.i = load double, ptr %i.eb, align 1
  br label %.critedge90.i

.critedge90.i:                                    ; preds = %bb.n, %bb.m, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit116.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit109.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %.sroa.0148.2.i = phi double [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit109.i ], [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit116.i ], [ %i.dy, %bb.m ], [ %.0.copyload.i.i.i.i.i.i119.i, %bb.n ]
  %.sroa.4149.2.i = phi i1 [ false, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ false, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit109.i ], [ false, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit116.i ], [ true, %bb.m ], [ true, %bb.n ]
  %.sroa.0150.1.i = phi double [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit109.i ], [ %i.dc, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit116.i ], [ %i.dc, %bb.m ], [ %i.dc, %bb.n ]
  %.sroa.4151.1.i = phi i1 [ false, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ false, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit109.i ], [ true, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit116.i ], [ true, %bb.m ], [ true, %bb.n ]
  %.sroa.0153.0.i = phi double [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %i.cd, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit109.i ], [ %i.cd, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit116.i ], [ %i.cd, %bb.m ], [ %i.cd, %bb.n ]
  %i.ec = fcmp uno double %i.ag, 0.000000e+00
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge90.i
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 1936
  %i.ee = load i64, ptr %i.ed, align 8
  br label %.critedge92.i

bb.p:                                             ; preds = %.critedge90.i
  %i.ef = fptosi double %i.ag to i64              ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 59120
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = tail call noundef i32 @_ZN2v88internal9DateCache15LocalOffsetInMsElb(ptr noundef nonnull align 8 dereferenceable(848) %i.eh, i64 noundef %i.ef, i1 noundef zeroext true) #11
  %i.ej = sext i32 %i.ei to i64
  %i.ek = add nsw i64 %i.ej, %i.ef                ; 4 uses
  %i.el = icmp slt i64 %i.ek, 0
  %i.em = add nsw i64 %i.ek, -86399999
  %spec.select.i.i = select i1 %i.el, i64 %i.em, i64 %i.ek
  %i.en = sdiv i64 %spec.select.i.i, 86400000     ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %.neg.i.i = mul i64 %i.en, 4208567296
  %i.ep = add i64 %.neg.i.i, %i.ek
  %i.eq = trunc i64 %i.ep to i32                  ; 3 uses
  %i.er = sitofp i32 %i.eo to double
  %i.es = sdiv i32 %i.eq, 60000
  %4 = srem i32 %i.es, 60
  %5 = sitofp i32 %4 to double
  %.0.i121.i = select i1 %i.be, double %.sroa.0153.0.i, double %5
  %6 = sdiv i32 %i.eq, 1000
  %7 = srem i32 %6, 60
  %8 = sitofp i32 %7 to double
  %.0.i122.i = select i1 %.sroa.4151.1.i, double %.sroa.0150.1.i, double %8
  %i.et = srem i32 %i.eq, 1000
  %i.eu = sitofp i32 %i.et to double
  %.0.i123.i = select i1 %.sroa.4149.2.i, double %.sroa.0148.2.i, double %i.eu
  %i.ev = tail call noundef double @_ZN2v88internal8MakeTimeEdddd(double noundef %i.bd, double noundef %.0.i121.i, double noundef %.0.i122.i, double noundef %.0.i123.i) #11
  %i.ew = tail call noundef double @_ZN2v88internal8MakeDateEdd(double noundef %i.er, double noundef %i.ev) #11
  %i.ex = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_117SetLocalDateValueEPNS0_7IsolateENS0_12DirectHandleINS0_6JSDateEEEd(ptr noundef nonnull %2, ptr nonnull %i.l, double noundef %i.ew)
  br label %.critedge92.i

.critedge92.i:                                    ; preds = %bb.p, %bb.o, %.critedge88.i, %bb.j, %bb.g, %bb.d, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit99.i
  %.sroa.0182.4.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit99.i ], [ %i.at, %bb.d ], [ %i.ee, %bb.o ], [ %i.ex, %bb.p ], [ %i.bt, %bb.g ], [ %i.ds, %.critedge88.i ], [ %i.cs, %bb.j ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ey = load i32, ptr %i.e, align 8
  %i.ez = add nsw i32 %i.ey, -1
  store i32 %i.ez, ptr %i.e, align 8
  %i.fa = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.fa, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL34Builtin_Impl_DatePrototypeSetHoursENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.q, !prof !6

bb.q:                                             ; preds = %.critedge92.i
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL34Builtin_Impl_DatePrototypeSetHoursENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL34Builtin_Impl_DatePrototypeSetHoursENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %.critedge92.i, %bb.q
  ret i64 %.sroa.0182.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal36Builtin_DatePrototypeSetMillisecondsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.450"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i43.i = icmp ult i32 %0, 4
  br i1 %.not.i43.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 2 uses
  %i.k = add i64 %reass.sub.i, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2124
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit49.i, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.6, i64 30, i8 noundef zeroext 0) #11 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit46.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit46.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.v, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.i

_ZNK2v88internal16BuiltinArguments8receiverEv.exit49.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.not.i50.i = icmp sgt i32 %0, 5
  %i.ab = add i64 %reass.sub.i, 48
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i50.i, ptr %i.ac, ptr %i.ad ; 4 uses
  %i.ae = add i64 %i.m, 23
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = load i64, ptr %.sroa.0.0.i.i, align 8   ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.critedge.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit49.i
  %i.ak = add nsw i64 %i.ah, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 130
  br i1 %i.aq, label %.critedge.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ar = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.at = load i64, ptr %i.as, align 8
  br label %bb.i

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit49.i
  %.sroa.07.0.i100104.i = phi ptr [ %i.ar, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %.sroa.0.0.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit49.i ]
  %i.au = fcmp uno double %i.ag, 0.000000e+00
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1936
  %i.aw = load i64, ptr %i.av, align 8
  br label %bb.i

bb.f:                                             ; preds = %.critedge.i
  %i.ax = fptosi double %i.ag to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 59120
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef i32 @_ZN2v88internal9DateCache15LocalOffsetInMsElb(ptr noundef nonnull align 8 dereferenceable(848) %i.az, i64 noundef %i.ax, i1 noundef zeroext true) #11
  %i.bb = sext i32 %i.ba to i64
  %i.bc = add nsw i64 %i.bb, %i.ax                ; 4 uses
  %i.bd = icmp slt i64 %i.bc, 0
  %i.be = add nsw i64 %i.bc, -86399999
  %spec.select.i.i = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = sdiv i64 %spec.select.i.i, 86400000     ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %.neg.i.i = mul i64 %i.bf, 4208567296
  %i.bh = add i64 %.neg.i.i, %i.bc
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %i.bj = sdiv i32 %i.bi, 3600000
  %i.bk = sdiv i32 %i.bi, 60000
  %4 = srem i32 %i.bk, 60
  %5 = sdiv i32 %i.bi, 1000
  %6 = srem i32 %5, 60
  %7 = sitofp i32 %i.bg to double
  %i.bl = sitofp i32 %i.bj to double
  %i.bm = sitofp i32 %4 to double
  %8 = sitofp i32 %6 to double
  %i.bn = load i64, ptr %.sroa.07.0.i100104.i, align 8 ; 3 uses
  %i.bo = and i64 %i.bn, 1
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = lshr i64 %i.bn, 32
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = sitofp i32 %i.br to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bt = add nsw i64 %i.bn, -1
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bv, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.h, %bb.g
  %i.bw = phi double [ %i.bs, %bb.g ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.h ]
  %i.bx = tail call noundef double @_ZN2v88internal8MakeTimeEdddd(double noundef %i.bl, double noundef %i.bm, double noundef %8, double noundef %i.bw) #11
  %i.by = tail call noundef double @_ZN2v88internal8MakeDateEdd(double noundef %7, double noundef %i.bx) #11
  %i.bz = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_117SetLocalDateValueEPNS0_7IsolateENS0_12DirectHandleINS0_6JSDateEEEd(ptr noundef nonnull %2, ptr nonnull %i.l, double noundef %i.by)
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %bb.e, %bb.d, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit46.i
  %.sroa.070.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit46.i ], [ %i.aw, %bb.e ], [ %i.bz, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %i.at, %bb.d ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ca = load i32, ptr %i.e, align 8
  %i.cb = add nsw i32 %i.ca, -1
  store i32 %i.cb, ptr %i.e, align 8
  %i.cc = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.cc, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL41Builtin_Impl_DatePrototypeSetMillisecondsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL41Builtin_Impl_DatePrototypeSetMillisecondsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL41Builtin_Impl_DatePrototypeSetMillisecondsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.i, %bb.j
  ret i64 %.sroa.070.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Builtin_DatePrototypeSetMinutesEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.450"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i79.i = icmp ult i32 %0, 4
  br i1 %.not.i79.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 4 uses
  %i.k = add i64 %reass.sub.i, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2124
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit85.i, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.7, i64 25, i8 noundef zeroext 0) #11 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit82.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit82.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.v, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.n

_ZNK2v88internal16BuiltinArguments8receiverEv.exit85.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.not.i86.i = icmp sgt i32 %0, 5
  %i.ab = add i64 %reass.sub.i, 48
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i86.i, ptr %i.ac, ptr %i.ad ; 4 uses
  %i.ae = add i64 %i.m, 23
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = load i64, ptr %.sroa.0.0.i.i, align 8   ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.critedge.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit85.i
  %i.ak = add nsw i64 %i.ah, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 130
  br i1 %i.aq, label %.critedge.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ar = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #11 ; 2 uses
  %.not212.i = icmp eq ptr %i.ar, null
  br i1 %.not212.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.at = load i64, ptr %i.as, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit85.i
  %.sroa.07.0.i195199.i = phi ptr [ %i.ar, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %.sroa.0.0.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit85.i ]
  %i.au = icmp sgt i32 %0, 6                      ; 2 uses
  br i1 %i.au, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i, label %.critedge76.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i: ; preds = %.critedge.i
  %i.av = add i64 %reass.sub.i, 56
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 4 uses
  %i.ay = and i64 %i.ax, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.critedge70.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i88.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i88.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.ba = add nsw i64 %i.ax, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2
  %i.bg = icmp eq i16 %i.bf, 130
  br i1 %i.bg, label %.critedge70.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit90.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit90.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i88.i
  %i.bh = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.aw) #11 ; 2 uses
  %.not213.i = icmp eq ptr %i.bh, null
  br i1 %.not213.i, label %bb.e, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit90..critedge70_crit_edge.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit90..critedge70_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit90.i
  %.pre.i = load i64, ptr %i.bh, align 8
  br label %.critedge70.i

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit90.i
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.bj = load i64, ptr %i.bi, align 8
  br label %bb.n

.critedge70.i:                                    ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit90..critedge70_crit_edge.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i88.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.bk = phi i64 [ %.pre.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit90..critedge70_crit_edge.i ], [ %i.ax, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i88.i ], [ %i.ax, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i ] ; 3 uses
  %i.bl = and i64 %i.bk, 1
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge70.i
  %i.bn = lshr i64 %i.bk, 32
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = sitofp i32 %i.bo to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.g:                                             ; preds = %.critedge70.i
  %i.bq = add nsw i64 %i.bk, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bs, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.g, %bb.f
  %i.bt = phi double [ %i.bp, %bb.f ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %.not.i = icmp eq i32 %0, 7
  br i1 %.not.i, label %.critedge76.i, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit92.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit92.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bu = add i64 %reass.sub.i, 64
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8            ; 4 uses
  %i.bx = and i64 %i.bw, 1
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.critedge72.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i93.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i93.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit92.i
  %i.bz = add nsw i64 %i.bw, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = icmp eq i16 %i.ce, 130
  br i1 %i.cf, label %.critedge72.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit95.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit95.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i93.i
  %i.cg = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.bv) #11 ; 2 uses
  %.not214.i = icmp eq ptr %i.cg, null
  br i1 %.not214.i, label %.critedge74.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit95..critedge72_crit_edge.i

end_hunk_0
begin_hunk_1_@_ZN2v88internal32Builtin_DatePrototypeSetUTCHoursEiPmPNS0_7IsolateE:bb.a
bb.f:                                             ; preds = %.critedge.i
  %i.ba = add nsw i64 %i.au, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bc, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.f, %bb.e
  %i.bd = phi double [ %i.az, %bb.e ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.f ]
  %i.be = icmp sgt i32 %0, 6                      ; 2 uses
  br i1 %i.be, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i, label %.critedge88.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bf = add i64 %reass.sub.i, 56
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 4 uses
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.critedge80.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i103.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i103.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.bk = add nsw i64 %i.bh, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = add i64 %i.bm, 11
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i16, ptr %i.bo monotonic, align 2
  %i.bq = icmp eq i16 %i.bp, 130
  br i1 %i.bq, label %.critedge80.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit105.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit105.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i103.i
  %i.br = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.bg) #11 ; 2 uses
  %.not258.i = icmp eq ptr %i.br, null
  br i1 %.not258.i, label %bb.g, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit105..critedge80_crit_edge.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit105..critedge80_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit105.i
  %.pre274.i = load i64, ptr %i.br, align 8
  br label %.critedge80.i

bb.g:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit105.i
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.bt = load i64, ptr %i.bs, align 8
  br label %.critedge90.i

.critedge80.i:                                    ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit105..critedge80_crit_edge.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i103.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.bu = phi i64 [ %.pre274.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit105..critedge80_crit_edge.i ], [ %i.bh, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i103.i ], [ %i.bh, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i ] ; 3 uses
  %i.bv = and i64 %i.bu, 1
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge80.i
  %i.bx = lshr i64 %i.bu, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = sitofp i32 %i.by to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit107.i

bb.i:                                             ; preds = %.critedge80.i
  %i.ca = add nsw i64 %i.bu, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.0.copyload.i.i.i.i.i.i106.i = load double, ptr %i.cc, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit107.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit107.i: ; preds = %bb.i, %bb.h
  %i.cd = phi double [ %i.bz, %bb.h ], [ %.0.copyload.i.i.i.i.i.i106.i, %bb.i ] ; 4 uses
  %.not.i = icmp eq i32 %0, 7
  br i1 %.not.i, label %.critedge88.i, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit109.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit109.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit107.i
  %i.ce = add i64 %reass.sub.i, 64
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8            ; 4 uses
  %i.ch = and i64 %i.cg, 1
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.critedge82.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i110.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i110.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit109.i
  %i.cj = add nsw i64 %i.cg, -1
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  %i.cm = add i64 %i.cl, 11
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i16, ptr %i.cn monotonic, align 2
  %i.cp = icmp eq i16 %i.co, 130
  br i1 %i.cp, label %.critedge82.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit112.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit112.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i110.i
  %i.cq = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.cf) #11 ; 2 uses
  %.not259.i = icmp eq ptr %i.cq, null
  br i1 %.not259.i, label %bb.j, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit112..critedge82_crit_edge.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit112..critedge82_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit112.i
  %.pre275.i = load i64, ptr %i.cq, align 8
  br label %.critedge82.i

bb.j:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit112.i
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.cs = load i64, ptr %i.cr, align 8
  br label %.critedge90.i

.critedge82.i:                                    ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit112..critedge82_crit_edge.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i110.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit109.i
  %i.ct = phi i64 [ %.pre275.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit112..critedge82_crit_edge.i ], [ %i.cg, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i110.i ], [ %i.cg, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit109.i ] ; 3 uses
  %i.cu = and i64 %i.ct, 1
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge82.i
  %i.cw = lshr i64 %i.ct, 32
  %i.cx = trunc nuw i64 %i.cw to i32
  %i.cy = sitofp i32 %i.cx to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit114.i

bb.l:                                             ; preds = %.critedge82.i
  %i.cz = add nsw i64 %i.ct, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.0.copyload.i.i.i.i.i.i113.i = load double, ptr %i.db, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit114.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit114.i: ; preds = %bb.l, %bb.k
  %i.dc = phi double [ %i.cy, %bb.k ], [ %.0.copyload.i.i.i.i.i.i113.i, %bb.l ] ; 3 uses
  %i.dd = icmp samesign ugt i32 %0, 8
  br i1 %i.dd, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit116.i, label %.critedge88.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit116.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit114.i
  %i.de = add i64 %reass.sub.i, 72
  %i.df = inttoptr i64 %i.de to ptr               ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8            ; 4 uses
  %i.dh = and i64 %i.dg, 1
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.critedge84.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit116.i
  %i.dj = add nsw i64 %i.dg, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load atomic volatile i64, ptr %i.dk monotonic, align 8
  %i.dm = add i64 %i.dl, 11
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load atomic volatile i16, ptr %i.dn monotonic, align 2
  %i.dp = icmp eq i16 %i.do, 130
  br i1 %i.dp, label %.critedge84.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.dq = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.df) #11 ; 2 uses
  %.not260.i = icmp eq ptr %i.dq, null
  br i1 %.not260.i, label %.critedge86.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge84.i_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge84.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.dq, align 8
  br label %.critedge84.i

.critedge86.i:                                    ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ds = load i64, ptr %i.dr, align 8
  br label %.critedge90.i

.critedge84.i:                                    ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge84.i_crit_edge, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit116.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.dt = phi i64 [ %.pre, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge84.i_crit_edge ], [ %i.dg, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.dg, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit116.i ] ; 3 uses
  %i.du = and i64 %i.dt, 1
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge84.i
  %i.dw = lshr i64 %i.dt, 32
  %i.dx = trunc nuw i64 %i.dw to i32
  %i.dy = sitofp i32 %i.dx to double
  br label %.critedge88.i

bb.n:                                             ; preds = %.critedge84.i
  %i.dz = add nsw i64 %i.dt, -1
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.0.copyload.i.i.i.i.i.i117.i = load double, ptr %i.eb, align 1
  br label %.critedge88.i

.critedge88.i:                                    ; preds = %bb.n, %bb.m, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit114.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit107.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %.sroa.0146.2.i = phi double [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit107.i ], [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit114.i ], [ %i.dy, %bb.m ], [ %.0.copyload.i.i.i.i.i.i117.i, %bb.n ]
  %.sroa.4147.2.i = phi i1 [ false, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ false, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit107.i ], [ false, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit114.i ], [ true, %bb.m ], [ true, %bb.n ]
  %.sroa.0148.1.i = phi double [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit107.i ], [ %i.dc, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit114.i ], [ %i.dc, %bb.m ], [ %i.dc, %bb.n ]
  %.sroa.4149.1.i = phi i1 [ false, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ false, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit107.i ], [ true, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit114.i ], [ true, %bb.m ], [ true, %bb.n ]
  %.sroa.0151.0.i = phi double [ undef, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %i.cd, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit107.i ], [ %i.cd, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit114.i ], [ %i.cd, %bb.m ], [ %i.cd, %bb.n ]
  %i.ec = fcmp uno double %i.ag, 0.000000e+00
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge88.i
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 1936
  %i.ee = load i64, ptr %i.ed, align 8
  br label %.critedge90.i

bb.p:                                             ; preds = %.critedge88.i
  %i.ef = fptosi double %i.ag to i64              ; 4 uses
  %i.eg = icmp slt i64 %i.ef, 0
  %i.eh = add nsw i64 %i.ef, -86399999
  %spec.select.i.i = select i1 %i.eg, i64 %i.eh, i64 %i.ef
  %i.ei = sdiv i64 %spec.select.i.i, 86400000     ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  %.neg.i.i = mul i64 %i.ei, 4208567296
  %i.ek = add i64 %.neg.i.i, %i.ef
  %i.el = trunc i64 %i.ek to i32                  ; 3 uses
  %i.em = sitofp i32 %i.ej to double
  %i.en = sdiv i32 %i.el, 60000
  %4 = srem i32 %i.en, 60
  %5 = sitofp i32 %4 to double
  %.0.i119.i = select i1 %i.be, double %.sroa.0151.0.i, double %5
  %6 = sdiv i32 %i.el, 1000
  %7 = srem i32 %6, 60
  %8 = sitofp i32 %7 to double
  %.0.i120.i = select i1 %.sroa.4149.1.i, double %.sroa.0148.1.i, double %8
  %i.eo = srem i32 %i.el, 1000
  %i.ep = sitofp i32 %i.eo to double
  %.0.i121.i = select i1 %.sroa.4147.2.i, double %.sroa.0146.2.i, double %i.ep
  %i.eq = tail call noundef double @_ZN2v88internal8MakeTimeEdddd(double noundef %i.bd, double noundef %.0.i119.i, double noundef %.0.i120.i, double noundef %.0.i121.i) #11
  %i.er = tail call noundef double @_ZN2v88internal8MakeDateEdd(double noundef %i.em, double noundef %i.eq) #11
  %i.es = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_112SetDateValueEPNS0_7IsolateENS0_12DirectHandleINS0_6JSDateEEEd(ptr noundef nonnull %2, ptr nonnull %i.l, double noundef %i.er)
  br label %.critedge90.i

.critedge90.i:                                    ; preds = %bb.p, %bb.o, %.critedge86.i, %bb.j, %bb.g, %bb.d, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit97.i
  %.sroa.0180.4.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit97.i ], [ %i.at, %bb.d ], [ %i.ee, %bb.o ], [ %i.es, %bb.p ], [ %i.bt, %bb.g ], [ %i.ds, %.critedge86.i ], [ %i.cs, %bb.j ]
  store ptr %i.b, ptr %i.a, align 8
  %i.et = load i32, ptr %i.e, align 8
  %i.eu = add nsw i32 %i.et, -1
  store i32 %i.eu, ptr %i.e, align 8
  %i.ev = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ev, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL37Builtin_Impl_DatePrototypeSetUTCHoursENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.q, !prof !6

bb.q:                                             ; preds = %.critedge90.i
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL37Builtin_Impl_DatePrototypeSetUTCHoursENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL37Builtin_Impl_DatePrototypeSetUTCHoursENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %.critedge90.i, %bb.q
  ret i64 %.sroa.0180.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal39Builtin_DatePrototypeSetUTCMillisecondsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.450"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i41.i = icmp ult i32 %0, 4
  br i1 %.not.i41.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 2 uses
  %i.k = add i64 %reass.sub.i, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2124
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit47.i, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.14, i64 33, i8 noundef zeroext 0) #11 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit44.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit44.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.v, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.i

_ZNK2v88internal16BuiltinArguments8receiverEv.exit47.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.not.i48.i = icmp sgt i32 %0, 5
  %i.ab = add i64 %reass.sub.i, 48
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i48.i, ptr %i.ac, ptr %i.ad ; 4 uses
  %i.ae = add i64 %i.m, 23
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = load i64, ptr %.sroa.0.0.i.i, align 8   ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.critedge.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit47.i
  %i.ak = add nsw i64 %i.ah, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 130
  br i1 %i.aq, label %.critedge.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ar = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.at = load i64, ptr %i.as, align 8
  br label %bb.i

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit47.i
  %.sroa.07.0.i98102.i = phi ptr [ %i.ar, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %.sroa.0.0.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit47.i ]
  %i.au = fcmp uno double %i.ag, 0.000000e+00
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1936
  %i.aw = load i64, ptr %i.av, align 8
  br label %bb.i

bb.f:                                             ; preds = %.critedge.i
  %i.ax = fptosi double %i.ag to i64              ; 4 uses
  %i.ay = icmp slt i64 %i.ax, 0
  %i.az = add nsw i64 %i.ax, -86399999
  %spec.select.i.i = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = sdiv i64 %spec.select.i.i, 86400000     ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %.neg.i.i = mul i64 %i.ba, 4208567296
  %i.bc = add i64 %.neg.i.i, %i.ax
  %i.bd = trunc i64 %i.bc to i32                  ; 3 uses
  %i.be = sdiv i32 %i.bd, 3600000
  %i.bf = sdiv i32 %i.bd, 60000
  %4 = srem i32 %i.bf, 60
  %5 = sdiv i32 %i.bd, 1000
  %6 = srem i32 %5, 60
  %7 = sitofp i32 %i.bb to double
  %i.bg = sitofp i32 %i.be to double
  %i.bh = sitofp i32 %4 to double
  %8 = sitofp i32 %6 to double
  %i.bi = load i64, ptr %.sroa.07.0.i98102.i, align 8 ; 3 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = lshr i64 %i.bi, 32
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = sitofp i32 %i.bm to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bo = add nsw i64 %i.bi, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bq, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.h, %bb.g
  %i.br = phi double [ %i.bn, %bb.g ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.h ]
  %i.bs = tail call noundef double @_ZN2v88internal8MakeTimeEdddd(double noundef %i.bg, double noundef %i.bh, double noundef %8, double noundef %i.br) #11
  %i.bt = tail call noundef double @_ZN2v88internal8MakeDateEdd(double noundef %7, double noundef %i.bs) #11
  %i.bu = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_112SetDateValueEPNS0_7IsolateENS0_12DirectHandleINS0_6JSDateEEEd(ptr noundef nonnull %2, ptr nonnull %i.l, double noundef %i.bt)
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %bb.e, %bb.d, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit44.i
  %.sroa.068.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit44.i ], [ %i.aw, %bb.e ], [ %i.bu, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %i.at, %bb.d ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bv = load i32, ptr %i.e, align 8
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.e, align 8
  %i.bx = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bx, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL44Builtin_Impl_DatePrototypeSetUTCMillisecondsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL44Builtin_Impl_DatePrototypeSetUTCMillisecondsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL44Builtin_Impl_DatePrototypeSetUTCMillisecondsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.i, %bb.j
  ret i64 %.sroa.068.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal34Builtin_DatePrototypeSetUTCMinutesEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.450"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i77.i = icmp ult i32 %0, 4
  br i1 %.not.i77.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 4 uses
  %i.k = add i64 %reass.sub.i, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2124
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit83.i, label %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.15, i64 28, i8 noundef zeroext 0) #11 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit80.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit80.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.v, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.n

_ZNK2v88internal16BuiltinArguments8receiverEv.exit83.i: ; preds = %_ZN2v88internal8IsJSDateENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.not.i84.i = icmp sgt i32 %0, 5
  %i.ab = add i64 %reass.sub.i, 48
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i84.i, ptr %i.ac, ptr %i.ad ; 4 uses
  %i.ae = add i64 %i.m, 23
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = load i64, ptr %.sroa.0.0.i.i, align 8   ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.critedge.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit83.i
  %i.ak = add nsw i64 %i.ah, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 130
  br i1 %i.aq, label %.critedge.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ar = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #11 ; 2 uses
  %.not210.i = icmp eq ptr %i.ar, null
  br i1 %.not210.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.at = load i64, ptr %i.as, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit83.i
  %.sroa.07.0.i193197.i = phi ptr [ %i.ar, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %.sroa.0.0.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit83.i ]
  %i.au = icmp sgt i32 %0, 6                      ; 2 uses
  br i1 %i.au, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i, label %.critedge74.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i: ; preds = %.critedge.i
  %i.av = add i64 %reass.sub.i, 56
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 4 uses
  %i.ay = and i64 %i.ax, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.critedge68.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i86.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i86.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.ba = add nsw i64 %i.ax, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2
  %i.bg = icmp eq i16 %i.bf, 130
  br i1 %i.bg, label %.critedge68.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit88.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit88.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i86.i
  %i.bh = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.aw) #11 ; 2 uses
  %.not211.i = icmp eq ptr %i.bh, null
  br i1 %.not211.i, label %bb.e, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit88..critedge68_crit_edge.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit88..critedge68_crit_edge.i: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit88.i
  %.pre.i = load i64, ptr %i.bh, align 8
  br label %.critedge68.i

bb.e:                                             ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit88.i
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.bj = load i64, ptr %i.bi, align 8
  br label %bb.n

.critedge68.i:                                    ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit88..critedge68_crit_edge.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i86.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.bk = phi i64 [ %.pre.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit88..critedge68_crit_edge.i ], [ %i.ax, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i86.i ], [ %i.ax, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i ] ; 3 uses
  %i.bl = and i64 %i.bk, 1
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge68.i
  %i.bn = lshr i64 %i.bk, 32
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = sitofp i32 %i.bo to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.g:                                             ; preds = %.critedge68.i
  %i.bq = add nsw i64 %i.bk, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bs, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.g, %bb.f
  %i.bt = phi double [ %i.bp, %bb.f ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %.not.i = icmp eq i32 %0, 7
  br i1 %.not.i, label %.critedge74.i, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit90.i

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit90.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bu = add i64 %reass.sub.i, 64
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8            ; 4 uses
  %i.bx = and i64 %i.bw, 1
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.critedge70.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i91.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i91.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit90.i
  %i.bz = add nsw i64 %i.bw, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = icmp eq i16 %i.ce, 130
  br i1 %i.cf, label %.critedge70.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit93.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit93.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i91.i
  %i.cg = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.bv) #11 ; 2 uses
  %.not212.i = icmp eq ptr %i.cg, null
  br i1 %.not212.i, label %.critedge72.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit93..critedge70_crit_edge.i

end_hunk_1
