Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/literal-objects?download=true
inline.NumInlined: 1540
inline.NumDeleted: 621
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal16ObjectDescriptorINS0_7IsolateEE16AddNamedPropertyEPS2_NS0_6HandleINS0_4NameEEENS0_16ClassBoilerplate9ValueKindEi:bb.a
  %i.p = load ptr, ptr %i.o, align 8
  store i64 %i.b, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.q, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.o, align 8 ; 4 uses
  %i.r = load i64, ptr %.sroa.02.0.copyload, align 8 ; 21 uses
  %i.s = load i64, ptr %2, align 8                ; 10 uses
  %i.t = add i64 %i.r, 9
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2 ; 11 uses
  %i.w = sext i16 %i.v to i32
  %i.x = icmp eq i16 %i.v, 0
  br i1 %i.x, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp slt i16 %i.v, 9
  br i1 %i.y, label %.preheader.i, label %bb.s

.preheader.i:                                     ; preds = %bb.d
  %i.z = icmp sgt i16 %i.v, 0
  br i1 %i.z, label %.lr.ph166.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i

bb.e:                                             ; preds = %.lr.ph166.i
  %exitcond176.not.i = icmp eq i16 %i.v, 1
  br i1 %exitcond176.not.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add i64 %i.r, 55
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = icmp eq i64 %i.ac, %i.s
  br i1 %i.ad, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %exitcond176.not.i.1 = icmp eq i16 %i.v, 2
  br i1 %exitcond176.not.i.1, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add i64 %i.r, 79
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = icmp eq i64 %i.ag, %i.s
  br i1 %i.ah, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %exitcond176.not.i.2 = icmp eq i16 %i.v, 3
  br i1 %exitcond176.not.i.2, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = add i64 %i.r, 103
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = icmp eq i64 %i.ak, %i.s
  br i1 %i.al, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %exitcond176.not.i.3 = icmp eq i16 %i.v, 4
  br i1 %exitcond176.not.i.3, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add i64 %i.r, 127
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = icmp eq i64 %i.ao, %i.s
  br i1 %i.ap, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %exitcond176.not.i.4 = icmp eq i16 %i.v, 5
  br i1 %exitcond176.not.i.4, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = add i64 %i.r, 151
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = icmp eq i64 %i.as, %i.s
  br i1 %i.at, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %exitcond176.not.i.5 = icmp eq i16 %i.v, 6
  br i1 %exitcond176.not.i.5, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = add i64 %i.r, 175
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i64, ptr %i.av monotonic, align 8
  %i.ax = icmp eq i64 %i.aw, %i.s
  br i1 %i.ax, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %exitcond176.not.i.6 = icmp eq i16 %i.v, 7
  br i1 %exitcond176.not.i.6, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = add i64 %i.r, 199
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = icmp eq i64 %i.ba, %i.s
  br i1 %i.bb, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i

.lr.ph166.i:                                      ; preds = %.preheader.i
  %i.bc = add i64 %i.r, 31
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = icmp eq i64 %i.be, %i.s
  br i1 %i.bf, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.e

bb.s:                                             ; preds = %bb.d
  %i.bg = load atomic volatile i16, ptr %i.u monotonic, align 2 ; 3 uses
  %i.bh = sext i16 %i.bg to i32                   ; 2 uses
  %i.bi = add i64 %i.s, -1
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load atomic i32, ptr %i.bk acquire, align 4 ; 3 uses
  %i.bm = and i32 %i.bl, 1
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZNK2v88internal4Name4hashEv.exit.i, label %bb.t, !prof !9

bb.t:                                             ; preds = %bb.s
  %i.bo = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, i32 noundef %i.bl)
  br label %_ZNK2v88internal4Name4hashEv.exit.i

_ZNK2v88internal4Name4hashEv.exit.i:              ; preds = %bb.t, %bb.s
  %.0.in.i.i = phi i32 [ %i.bo, %bb.t ], [ %i.bl, %bb.s ]
  %.0.i44.i = lshr i32 %.0.in.i.i, 2              ; 2 uses
  %i.bp = icmp sgt i16 %i.bg, 0
  br i1 %i.bp, label %.lr.ph.i.i.preheader.i, label %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeENS_9iota_viewIiiEEjZN2v88internal15DescriptorArray12BinarySearchENS5_6TaggedINS5_4NameEEEiEUliE_TkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEESt4lessIvEEENSt13__conditionalIX14borrowed_rangeISH_EEE4typeISJ_NS_8danglingEEEOSH_RSD_T2_SK_.exit.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK2v88internal4Name4hashEv.exit.i
  %i.bq = zext nneg i16 %i.bg to i64
  %i.br = add i64 %i.r, 7
  %i.bs = add i64 %i.r, -1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i, %.lr.ph.i.i.preheader.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i ], [ %i.bq, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.sroa.011.015.i.i.i = phi i32 [ %.sroa.011.1.i.i.i, %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i ], [ 0, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.bt = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = add i32 %.sroa.011.015.i.i.i, %i.bu     ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i64 %i.bw, 103079215104
  %sext.i.i.i.i.i.i.i.i.i.i = add i64 %i.bx, 137438953472
  %i.by = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 32
  %i.bz = add i64 %i.br, %i.by
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %sum.shift.i.i.i.i.i.i.i.i.i = lshr i64 %i.cb, 41
  %i.cc = and i64 %sum.shift.i.i.i.i.i.i.i.i.i, 1023
  %i.cd = mul nuw nsw i64 %i.cc, 103079215104
  %sext.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %i.cd, 137438953472
  %i.ce = lshr exact i64 %sext.i.i.i.i.i.i.i.i.i, 32
  %i.cf = add i64 %i.bs, %i.ce
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i64, ptr %i.cg monotonic, align 8
  %i.ci = add i64 %i.ch, -1
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load atomic i32, ptr %i.ck acquire, align 4 ; 3 uses
  %i.cm = and i32 %i.cl, 1
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i, label %bb.u, !prof !9

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.co = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.cj, i32 noundef %i.cl)
  br label %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i

_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i: ; preds = %bb.u, %.lr.ph.i.i.i
  %.0.in.i.i.i.i.i.i.i = phi i32 [ %i.co, %bb.u ], [ %i.cl, %.lr.ph.i.i.i ]
  %.0.i.i.i.i.i.i.i = lshr i32 %.0.in.i.i.i.i.i.i.i, 2
  %i.cp = icmp samesign ult i32 %.0.i.i.i.i.i.i.i, %.0.i44.i ; 2 uses
  %i.cq = add nsw i32 %i.bv, 1
  %i.cr = xor i64 %i.bt, -1
  %i.cs = add nsw i64 %.016.i.i.i, %i.cr
  %.sroa.011.1.i.i.i = select i1 %i.cp, i32 %i.cq, i32 %.sroa.011.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.cp, i64 %i.cs, i64 %i.bt ; 2 uses
  %i.ct = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ct, label %.lr.ph.i.i.i, label %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeENS_9iota_viewIiiEEjZN2v88internal15DescriptorArray12BinarySearchENS5_6TaggedINS5_4NameEEEiEUliE_TkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEESt4lessIvEEENSt13__conditionalIX14borrowed_rangeISH_EEE4typeISJ_NS_8danglingEEEOSH_RSD_T2_SK_.exit.i, !llvm.loop !2

_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeENS_9iota_viewIiiEEjZN2v88internal15DescriptorArray12BinarySearchENS5_6TaggedINS5_4NameEEEiEUliE_TkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEESt4lessIvEEENSt13__conditionalIX14borrowed_rangeISH_EEE4typeISJ_NS_8danglingEEEOSH_RSD_T2_SK_.exit.i: ; preds = %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i, %_ZNK2v88internal4Name4hashEv.exit.i
  %.sroa.011.0.lcssa.i.i.i = phi i32 [ 0, %_ZNK2v88internal4Name4hashEv.exit.i ], [ %.sroa.011.1.i.i.i, %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i ] ; 2 uses
  %i.cu = icmp slt i32 %.sroa.011.0.lcssa.i.i.i, %i.bh
  br i1 %i.cu, label %.lr.ph.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i

.lr.ph.i:                                         ; preds = %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeENS_9iota_viewIiiEEjZN2v88internal15DescriptorArray12BinarySearchENS5_6TaggedINS5_4NameEEEiEUliE_TkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEESt4lessIvEEENSt13__conditionalIX14borrowed_rangeISH_EEE4typeISJ_NS_8danglingEEEOSH_RSD_T2_SK_.exit.i
  %i.cv = add i64 %i.r, 7
  %i.cw = add i64 %i.r, -1
  %i.cx = sext i32 %.sroa.011.0.lcssa.i.i.i to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal4Name4hashEv.exit51.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cx, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK2v88internal4Name4hashEv.exit51.i ] ; 2 uses
  %i.cy = mul i64 %indvars.iv.i, 103079215104
  %sext.i.i46.i = add i64 %i.cy, 137438953472
  %i.cz = ashr exact i64 %sext.i.i46.i, 32
  %i.da = add i64 %i.cv, %i.cz
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load atomic volatile i64, ptr %i.db monotonic, align 8
  %sum.shift.i.i = lshr i64 %i.dc, 41             ; 2 uses
  %i.dd = and i64 %sum.shift.i.i, 1023            ; 2 uses
  %i.de = mul nuw nsw i64 %i.dd, 103079215104
  %sext.i.i48.i = add nuw nsw i64 %i.de, 137438953472
  %i.df = lshr exact i64 %sext.i.i48.i, 32        ; 2 uses
  %i.dg = add i64 %i.cw, %i.df
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i64, ptr %i.dh monotonic, align 8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, %i.s
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.dl = and i32 %i.dk, 1023
  %.not9.i.i = icmp slt i32 %i.dl, %i.w
  br i1 %.not9.i.i, label %._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i

._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i: ; preds = %bb.w
  %.pre.i = load i64, ptr %.sroa.02.0.copyload, align 8
  br label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dm = add i64 %i.di, -1
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load atomic i32, ptr %i.do acquire, align 4 ; 3 uses
  %i.dq = and i32 %i.dp, 1
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_ZNK2v88internal4Name4hashEv.exit51.i, label %bb.y, !prof !9

bb.y:                                             ; preds = %bb.x
  %i.ds = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.dn, i32 noundef %i.dp)
  br label %_ZNK2v88internal4Name4hashEv.exit51.i

_ZNK2v88internal4Name4hashEv.exit51.i:            ; preds = %bb.y, %bb.x
  %.0.in.i49.i = phi i32 [ %i.ds, %bb.y ], [ %i.dp, %bb.x ]
  %.0.i50.i = lshr i32 %.0.in.i49.i, 2
  %.not.i.i = icmp ne i32 %.0.i50.i, %.0.i44.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %lftr.wideiv.i, %i.bh
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.v, !llvm.loop !3

_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i: ; preds = %_ZNK2v88internal4Name4hashEv.exit51.i, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.r, %bb.w, %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeENS_9iota_viewIiiEEjZN2v88internal15DescriptorArray12BinarySearchENS5_6TaggedINS5_4NameEEEiEUliE_TkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEESt4lessIvEEENSt13__conditionalIX14borrowed_rangeISH_EEE4typeISJ_NS_8danglingEEEOSH_RSD_T2_SK_.exit.i, %.preheader.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN2v88internal10DescriptorC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  %i.dt = icmp eq i32 %3, 0
  br i1 %i.dt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN2v88internal10Descriptor12DataConstantENS0_12DirectHandleINS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::Descriptor") align 8 %6, ptr nonnull %2, ptr %.sroa.0.0.copyload, i32 noundef 2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i
  %i.du = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #12 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = load i64, ptr %.sroa.0.0.copyload, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEE(i64 %i.dv, i32 noundef %3, i64 %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZN2v88internal10Descriptor16AccessorConstantENS0_12DirectHandleINS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::Descriptor") align 8 %7, ptr nonnull %2, ptr nonnull %i.du, i32 noundef 2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.dx = load i64, ptr %.sroa.02.0.copyload, align 8
  store i64 %i.dx, ptr %8, align 8
  call void @_ZN2v88internal15DescriptorArray6AppendEPNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_7IsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit

_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i: ; preds = %.lr.ph166.i, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i
  %.pre-phi178.i = phi i64 [ %i.df, %._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i ], [ 32, %.lr.ph166.i ], [ 56, %bb.f ], [ 80, %bb.h ], [ 104, %bb.j ], [ 128, %bb.l ], [ 152, %bb.n ], [ 176, %bb.p ], [ 200, %bb.r ]
  %i.dy = phi i64 [ %.pre.i, %._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i ], [ %i.r, %bb.r ], [ %i.r, %bb.p ], [ %i.r, %bb.n ], [ %i.r, %bb.l ], [ %i.r, %bb.j ], [ %i.r, %bb.h ], [ %i.r, %bb.f ], [ %i.r, %.lr.ph166.i ]
  %.sroa.09.1.i158.i = phi i64 [ %i.dd, %._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i ], [ 0, %.lr.ph166.i ], [ 1, %bb.f ], [ 2, %bb.h ], [ 3, %bb.j ], [ 4, %bb.l ], [ 5, %bb.n ], [ 6, %bb.p ], [ 7, %bb.r ] ; 2 uses
  %i.dz = add i64 %i.dy, %.pre-phi178.i           ; 2 uses
  %i.ea = add i64 %i.dz, 7
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %sum.shift.i = lshr i64 %i.ec, 41
  %i.ed = trunc nuw nsw i64 %sum.shift.i to i32
  %i.ee = and i32 %i.ed, 1023                     ; 2 uses
  %i.ef = icmp eq i32 %3, 0
  br i1 %i.ef, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @_ZN2v88internal10Descriptor12DataConstantENS0_12DirectHandleINS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::Descriptor") align 8 %9, ptr nonnull %2, ptr %.sroa.0.0.copyload, i32 noundef 2) #12
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = and i32 %i.eh, -523777
  %i.ej = shl nuw nsw i32 %i.ee, 9
  %i.ek = or disjoint i32 %i.ei, %i.ej            ; 2 uses
  store i32 %i.ek, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.el = load i64, ptr %.sroa.02.0.copyload, align 8
  store i64 %i.el, ptr %10, align 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %9, align 8
  %i.em = load i64, ptr %.sroa.0.0.copyload.i.i.i, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i10.i.i = load i32, ptr %i.en, align 8
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8 ; 3 uses
  %i.eo = icmp eq i32 %.sroa.0.0.copyload.i10.i.i, 0
  %i.ep = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null ; 2 uses
  br i1 %i.eo, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ep, label %bb.ae, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i.i, !prof !11

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i.i: ; preds = %bb.ad
  %i.eq = load i64, ptr %.sroa.21.0.copyload.i.i.i, align 8
  %i.er = or i64 %i.eq, 3
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i

bb.af:                                            ; preds = %bb.ac
  br i1 %i.ep, label %bb.ag, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i, !prof !11

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i: ; preds = %bb.af
  %i.es = load i64, ptr %.sroa.21.0.copyload.i.i.i, align 8
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i

_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i.i
  %.sroa.05.0.i.i.i = phi i64 [ %i.er, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i.i ], [ %i.es, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i ]
  call void @_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexENS0_6TaggedINS0_4NameEEENS3_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_15PropertyDetailsE(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 %.sroa.09.1.i158.i, i64 %i.em, i64 %.sroa.05.0.i.i.i, i32 %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_7IsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit

bb.ah:                                            ; preds = %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i
  %i.et = add i64 %i.dz, 15
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load atomic volatile i64, ptr %i.eu monotonic, align 8 ; 3 uses
  %i.ew = trunc i64 %i.ev to i1
  br i1 %i.ew, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.ah
  %i.ex = add nsw i64 %i.ev, -1
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load atomic volatile i64, ptr %i.ey monotonic, align 8
  %i.fa = add i64 %i.ez, 11
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load atomic volatile i16, ptr %i.fb monotonic, align 2
  %i.fd = icmp eq i16 %i.fc, 140
  br i1 %i.fd, label %bb.am, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.ah
  %i.fe = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @_ZN2v88internal10Descriptor16AccessorConstantENS0_12DirectHandleINS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::Descriptor") align 8 %11, ptr nonnull %2, ptr %i.fe, i32 noundef 2) #12
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = and i32 %i.fg, -523777
  %i.fi = shl nuw nsw i32 %i.ee, 9
  %i.fj = or disjoint i32 %i.fh, %i.fi            ; 2 uses
  store i32 %i.fj, ptr %i.ff, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.fk = load i64, ptr %.sroa.02.0.copyload, align 8
  store i64 %i.fk, ptr %12, align 8
  %.sroa.0.0.copyload.i.i54.i = load ptr, ptr %11, align 8
  %i.fl = load i64, ptr %.sroa.0.0.copyload.i.i54.i, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0.0.copyload.i10.i55.i = load i32, ptr %i.fm, align 8
  %.sroa.21.0..sroa_idx.i.i56.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.21.0.copyload.i.i57.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i56.i, align 8 ; 3 uses
  %i.fn = icmp eq i32 %.sroa.0.0.copyload.i10.i55.i, 0
  %i.fo = icmp eq ptr %.sroa.21.0.copyload.i.i57.i, null ; 2 uses
  br i1 %i.fn, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  br i1 %i.fo, label %bb.aj, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i, !prof !11

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i: ; preds = %bb.ai
  %i.fp = load i64, ptr %.sroa.21.0.copyload.i.i57.i, align 8
  %i.fq = or i64 %i.fp, 3
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i

bb.ak:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  br i1 %i.fo, label %bb.al, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i, !prof !11

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i: ; preds = %bb.ak
  %i.fr = load i64, ptr %.sroa.21.0.copyload.i.i57.i, align 8
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i

_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i
  %.sroa.05.0.i.i59.i = phi i64 [ %i.fq, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i ], [ %i.fr, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i ]
  call void @_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexENS0_6TaggedINS0_4NameEEENS3_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_15PropertyDetailsE(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 %.sroa.09.1.i158.i, i64 %i.fl, i64 %.sroa.05.0.i.i59.i, i32 %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.fs = load i64, ptr %i.fe, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.sroa.066.0.i = phi i64 [ %i.fs, %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i ], [ %i.ev, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.ft = load i64, ptr %.sroa.0.0.copyload, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %.sroa.066.0.i, i32 noundef %3, i64 %i.ft)
  br label %_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_7IsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_7IsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit: ; preds = %bb.am, %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i, %bb.ab, %bb.b
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewStructENS0_12InstanceTypeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16ClassBoilerplate3NewINS0_12LocalIsolateEEENS0_6HandleIS1_EEPT_PNS0_12ClassLiteralENS0_14AllocationTypeE(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LocalHandleScope", align 8 ; 10 uses
  %4 = alloca %"class.v8::internal::ObjectDescriptor.580", align 8 ; 24 uses
  %5 = alloca %"class.v8::internal::ObjectDescriptor.580", align 8 ; 21 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v88internal16LocalHandleScope19OpenMainThreadScopeEPNS0_9LocalHeapE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.b) #12
  br label %_ZN2v88internal16LocalHandleScopeC2EPNS0_12LocalIsolateE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  store ptr %i.b, ptr %3, align 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8
  br label %_ZN2v88internal16LocalHandleScopeC2EPNS0_12LocalIsolateE.exit

_ZN2v88internal16LocalHandleScopeC2EPNS0_12LocalIsolateE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i32 6, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.r, i8 0, i64 52, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store i32 1, ptr %5, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.u, i8 0, i64 52, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4
end_hunk_0
begin_hunk_1_@_ZN2v88internal16ObjectDescriptorINS0_12LocalIsolateEE16AddNamedPropertyEPS2_NS0_6HandleINS0_4NameEEENS0_16ClassBoilerplate9ValueKindEi:bb.a
  %i.p = load ptr, ptr %i.o, align 8
  store i64 %i.b, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.q, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.o, align 8 ; 4 uses
  %i.r = load i64, ptr %.sroa.02.0.copyload, align 8 ; 21 uses
  %i.s = load i64, ptr %2, align 8                ; 10 uses
  %i.t = add i64 %i.r, 9
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2 ; 11 uses
  %i.w = sext i16 %i.v to i32
  %i.x = icmp eq i16 %i.v, 0
  br i1 %i.x, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp slt i16 %i.v, 9
  br i1 %i.y, label %.preheader.i, label %bb.s

.preheader.i:                                     ; preds = %bb.d
  %i.z = icmp sgt i16 %i.v, 0
  br i1 %i.z, label %.lr.ph166.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i

bb.e:                                             ; preds = %.lr.ph166.i
  %exitcond176.not.i = icmp eq i16 %i.v, 1
  br i1 %exitcond176.not.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add i64 %i.r, 55
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = icmp eq i64 %i.ac, %i.s
  br i1 %i.ad, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %exitcond176.not.i.1 = icmp eq i16 %i.v, 2
  br i1 %exitcond176.not.i.1, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add i64 %i.r, 79
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = icmp eq i64 %i.ag, %i.s
  br i1 %i.ah, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %exitcond176.not.i.2 = icmp eq i16 %i.v, 3
  br i1 %exitcond176.not.i.2, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = add i64 %i.r, 103
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = icmp eq i64 %i.ak, %i.s
  br i1 %i.al, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %exitcond176.not.i.3 = icmp eq i16 %i.v, 4
  br i1 %exitcond176.not.i.3, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add i64 %i.r, 127
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = icmp eq i64 %i.ao, %i.s
  br i1 %i.ap, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %exitcond176.not.i.4 = icmp eq i16 %i.v, 5
  br i1 %exitcond176.not.i.4, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = add i64 %i.r, 151
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = icmp eq i64 %i.as, %i.s
  br i1 %i.at, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %exitcond176.not.i.5 = icmp eq i16 %i.v, 6
  br i1 %exitcond176.not.i.5, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = add i64 %i.r, 175
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i64, ptr %i.av monotonic, align 8
  %i.ax = icmp eq i64 %i.aw, %i.s
  br i1 %i.ax, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %exitcond176.not.i.6 = icmp eq i16 %i.v, 7
  br i1 %exitcond176.not.i.6, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = add i64 %i.r, 199
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = icmp eq i64 %i.ba, %i.s
  br i1 %i.bb, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i

.lr.ph166.i:                                      ; preds = %.preheader.i
  %i.bc = add i64 %i.r, 31
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = icmp eq i64 %i.be, %i.s
  br i1 %i.bf, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i, label %bb.e

bb.s:                                             ; preds = %bb.d
  %i.bg = load atomic volatile i16, ptr %i.u monotonic, align 2 ; 3 uses
  %i.bh = sext i16 %i.bg to i32                   ; 2 uses
  %i.bi = add i64 %i.s, -1
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load atomic i32, ptr %i.bk acquire, align 4 ; 3 uses
  %i.bm = and i32 %i.bl, 1
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZNK2v88internal4Name4hashEv.exit.i, label %bb.t, !prof !9

bb.t:                                             ; preds = %bb.s
  %i.bo = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, i32 noundef %i.bl)
  br label %_ZNK2v88internal4Name4hashEv.exit.i

_ZNK2v88internal4Name4hashEv.exit.i:              ; preds = %bb.t, %bb.s
  %.0.in.i.i = phi i32 [ %i.bo, %bb.t ], [ %i.bl, %bb.s ]
  %.0.i44.i = lshr i32 %.0.in.i.i, 2              ; 2 uses
  %i.bp = icmp sgt i16 %i.bg, 0
  br i1 %i.bp, label %.lr.ph.i.i.preheader.i, label %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeENS_9iota_viewIiiEEjZN2v88internal15DescriptorArray12BinarySearchENS5_6TaggedINS5_4NameEEEiEUliE_TkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEESt4lessIvEEENSt13__conditionalIX14borrowed_rangeISH_EEE4typeISJ_NS_8danglingEEEOSH_RSD_T2_SK_.exit.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK2v88internal4Name4hashEv.exit.i
  %i.bq = zext nneg i16 %i.bg to i64
  %i.br = add i64 %i.r, 7
  %i.bs = add i64 %i.r, -1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i, %.lr.ph.i.i.preheader.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i ], [ %i.bq, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.sroa.011.015.i.i.i = phi i32 [ %.sroa.011.1.i.i.i, %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i ], [ 0, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.bt = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = add i32 %.sroa.011.015.i.i.i, %i.bu     ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i64 %i.bw, 103079215104
  %sext.i.i.i.i.i.i.i.i.i.i = add i64 %i.bx, 137438953472
  %i.by = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 32
  %i.bz = add i64 %i.br, %i.by
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %sum.shift.i.i.i.i.i.i.i.i.i = lshr i64 %i.cb, 41
  %i.cc = and i64 %sum.shift.i.i.i.i.i.i.i.i.i, 1023
  %i.cd = mul nuw nsw i64 %i.cc, 103079215104
  %sext.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %i.cd, 137438953472
  %i.ce = lshr exact i64 %sext.i.i.i.i.i.i.i.i.i, 32
  %i.cf = add i64 %i.bs, %i.ce
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i64, ptr %i.cg monotonic, align 8
  %i.ci = add i64 %i.ch, -1
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load atomic i32, ptr %i.ck acquire, align 4 ; 3 uses
  %i.cm = and i32 %i.cl, 1
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i, label %bb.u, !prof !9

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.co = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.cj, i32 noundef %i.cl)
  br label %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i

_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i: ; preds = %bb.u, %.lr.ph.i.i.i
  %.0.in.i.i.i.i.i.i.i = phi i32 [ %i.co, %bb.u ], [ %i.cl, %.lr.ph.i.i.i ]
  %.0.i.i.i.i.i.i.i = lshr i32 %.0.in.i.i.i.i.i.i.i, 2
  %i.cp = icmp samesign ult i32 %.0.i.i.i.i.i.i.i, %.0.i44.i ; 2 uses
  %i.cq = add nsw i32 %i.bv, 1
  %i.cr = xor i64 %i.bt, -1
  %i.cs = add nsw i64 %.016.i.i.i, %i.cr
  %.sroa.011.1.i.i.i = select i1 %i.cp, i32 %i.cq, i32 %.sroa.011.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.cp, i64 %i.cs, i64 %i.bt ; 2 uses
  %i.ct = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ct, label %.lr.ph.i.i.i, label %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeENS_9iota_viewIiiEEjZN2v88internal15DescriptorArray12BinarySearchENS5_6TaggedINS5_4NameEEEiEUliE_TkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEESt4lessIvEEENSt13__conditionalIX14borrowed_rangeISH_EEE4typeISJ_NS_8danglingEEEOSH_RSD_T2_SK_.exit.i, !llvm.loop !2

_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeENS_9iota_viewIiiEEjZN2v88internal15DescriptorArray12BinarySearchENS5_6TaggedINS5_4NameEEEiEUliE_TkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEESt4lessIvEEENSt13__conditionalIX14borrowed_rangeISH_EEE4typeISJ_NS_8danglingEEEOSH_RSD_T2_SK_.exit.i: ; preds = %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i, %_ZNK2v88internal4Name4hashEv.exit.i
  %.sroa.011.0.lcssa.i.i.i = phi i32 [ 0, %_ZNK2v88internal4Name4hashEv.exit.i ], [ %.sroa.011.1.i.i.i, %_ZSt8__invokeIRZN2v88internal15DescriptorArray12BinarySearchENS1_6TaggedINS1_4NameEEEiEUliE_JiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS9_DpOSA_.exit.i.i.i ] ; 2 uses
  %i.cu = icmp slt i32 %.sroa.011.0.lcssa.i.i.i, %i.bh
  br i1 %i.cu, label %.lr.ph.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i

.lr.ph.i:                                         ; preds = %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeENS_9iota_viewIiiEEjZN2v88internal15DescriptorArray12BinarySearchENS5_6TaggedINS5_4NameEEEiEUliE_TkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEESt4lessIvEEENSt13__conditionalIX14borrowed_rangeISH_EEE4typeISJ_NS_8danglingEEEOSH_RSD_T2_SK_.exit.i
  %i.cv = add i64 %i.r, 7
  %i.cw = add i64 %i.r, -1
  %i.cx = sext i32 %.sroa.011.0.lcssa.i.i.i to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal4Name4hashEv.exit51.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cx, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK2v88internal4Name4hashEv.exit51.i ] ; 2 uses
  %i.cy = mul i64 %indvars.iv.i, 103079215104
  %sext.i.i46.i = add i64 %i.cy, 137438953472
  %i.cz = ashr exact i64 %sext.i.i46.i, 32
  %i.da = add i64 %i.cv, %i.cz
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load atomic volatile i64, ptr %i.db monotonic, align 8
  %sum.shift.i.i = lshr i64 %i.dc, 41             ; 2 uses
  %i.dd = and i64 %sum.shift.i.i, 1023            ; 2 uses
  %i.de = mul nuw nsw i64 %i.dd, 103079215104
  %sext.i.i48.i = add nuw nsw i64 %i.de, 137438953472
  %i.df = lshr exact i64 %sext.i.i48.i, 32        ; 2 uses
  %i.dg = add i64 %i.cw, %i.df
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i64, ptr %i.dh monotonic, align 8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, %i.s
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.dl = and i32 %i.dk, 1023
  %.not9.i.i = icmp slt i32 %i.dl, %i.w
  br i1 %.not9.i.i, label %._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i

._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i: ; preds = %bb.w
  %.pre.i = load i64, ptr %.sroa.02.0.copyload, align 8
  br label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dm = add i64 %i.di, -1
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load atomic i32, ptr %i.do acquire, align 4 ; 3 uses
  %i.dq = and i32 %i.dp, 1
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_ZNK2v88internal4Name4hashEv.exit51.i, label %bb.y, !prof !9

bb.y:                                             ; preds = %bb.x
  %i.ds = tail call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.dn, i32 noundef %i.dp)
  br label %_ZNK2v88internal4Name4hashEv.exit51.i

_ZNK2v88internal4Name4hashEv.exit51.i:            ; preds = %bb.y, %bb.x
  %.0.in.i49.i = phi i32 [ %i.ds, %bb.y ], [ %i.dp, %bb.x ]
  %.0.i50.i = lshr i32 %.0.in.i49.i, 2
  %.not.i.i = icmp ne i32 %.0.i50.i, %.0.i44.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %lftr.wideiv.i, %i.bh
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i, label %bb.v, !llvm.loop !3

_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i: ; preds = %_ZNK2v88internal4Name4hashEv.exit51.i, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.r, %bb.w, %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeENS_9iota_viewIiiEEjZN2v88internal15DescriptorArray12BinarySearchENS5_6TaggedINS5_4NameEEEiEUliE_TkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEESt4lessIvEEENSt13__conditionalIX14borrowed_rangeISH_EEE4typeISJ_NS_8danglingEEEOSH_RSD_T2_SK_.exit.i, %.preheader.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN2v88internal10DescriptorC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #12
  %i.dt = icmp eq i32 %3, 0
  br i1 %i.dt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN2v88internal10Descriptor12DataConstantENS0_12DirectHandleINS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::Descriptor") align 8 %6, ptr nonnull %2, ptr %.sroa.0.0.copyload, i32 noundef 2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.thread.i
  %i.du = call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #12 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = load i64, ptr %.sroa.0.0.copyload, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEE(i64 %i.dv, i32 noundef %3, i64 %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZN2v88internal10Descriptor16AccessorConstantENS0_12DirectHandleINS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::Descriptor") align 8 %7, ptr nonnull %2, ptr nonnull %i.du, i32 noundef 2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.dx = load i64, ptr %.sroa.02.0.copyload, align 8
  store i64 %i.dx, ptr %8, align 8
  call void @_ZN2v88internal15DescriptorArray6AppendEPNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_12LocalIsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit

_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i: ; preds = %.lr.ph166.i, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i
  %.pre-phi178.i = phi i64 [ %i.df, %._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i ], [ 32, %.lr.ph166.i ], [ 56, %bb.f ], [ 80, %bb.h ], [ 104, %bb.j ], [ 128, %bb.l ], [ 152, %bb.n ], [ 176, %bb.p ], [ 200, %bb.r ]
  %i.dy = phi i64 [ %.pre.i, %._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i ], [ %i.r, %bb.r ], [ %i.r, %bb.p ], [ %i.r, %bb.n ], [ %i.r, %bb.l ], [ %i.r, %bb.j ], [ %i.r, %bb.h ], [ %i.r, %bb.f ], [ %i.r, %.lr.ph166.i ]
  %.sroa.09.1.i158.i = phi i64 [ %i.dd, %._ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit_crit_edge.i ], [ 0, %.lr.ph166.i ], [ 1, %bb.f ], [ 2, %bb.h ], [ 3, %bb.j ], [ 4, %bb.l ], [ 5, %bb.n ], [ 6, %bb.p ], [ 7, %bb.r ] ; 2 uses
  %i.dz = add i64 %i.dy, %.pre-phi178.i           ; 2 uses
  %i.ea = add i64 %i.dz, 7
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %sum.shift.i = lshr i64 %i.ec, 41
  %i.ed = trunc nuw nsw i64 %sum.shift.i to i32
  %i.ee = and i32 %i.ed, 1023                     ; 2 uses
  %i.ef = icmp eq i32 %3, 0
  br i1 %i.ef, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @_ZN2v88internal10Descriptor12DataConstantENS0_12DirectHandleINS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::Descriptor") align 8 %9, ptr nonnull %2, ptr %.sroa.0.0.copyload, i32 noundef 2) #12
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = and i32 %i.eh, -523777
  %i.ej = shl nuw nsw i32 %i.ee, 9
  %i.ek = or disjoint i32 %i.ei, %i.ej            ; 2 uses
  store i32 %i.ek, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.el = load i64, ptr %.sroa.02.0.copyload, align 8
  store i64 %i.el, ptr %10, align 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %9, align 8
  %i.em = load i64, ptr %.sroa.0.0.copyload.i.i.i, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i10.i.i = load i32, ptr %i.en, align 8
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8 ; 3 uses
  %i.eo = icmp eq i32 %.sroa.0.0.copyload.i10.i.i, 0
  %i.ep = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null ; 2 uses
  br i1 %i.eo, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ep, label %bb.ae, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i.i, !prof !11

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i.i: ; preds = %bb.ad
  %i.eq = load i64, ptr %.sroa.21.0.copyload.i.i.i, align 8
  %i.er = or i64 %i.eq, 3
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i

bb.af:                                            ; preds = %bb.ac
  br i1 %i.ep, label %bb.ag, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i, !prof !11

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i: ; preds = %bb.af
  %i.es = load i64, ptr %.sroa.21.0.copyload.i.i.i, align 8
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i

_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i.i
  %.sroa.05.0.i.i.i = phi i64 [ %i.er, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i.i ], [ %i.es, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i ]
  call void @_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexENS0_6TaggedINS0_4NameEEENS3_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_15PropertyDetailsE(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 %.sroa.09.1.i158.i, i64 %i.em, i64 %.sroa.05.0.i.i.i, i32 %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_12LocalIsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit

bb.ah:                                            ; preds = %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i
  %i.et = add i64 %i.dz, 15
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load atomic volatile i64, ptr %i.eu monotonic, align 8 ; 3 uses
  %i.ew = trunc i64 %i.ev to i1
  br i1 %i.ew, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.ah
  %i.ex = add nsw i64 %i.ev, -1
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load atomic volatile i64, ptr %i.ey monotonic, align 8
  %i.fa = add i64 %i.ez, 11
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load atomic volatile i16, ptr %i.fb monotonic, align 2
  %i.fd = icmp eq i16 %i.fc, 140
  br i1 %i.fd, label %bb.am, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.ah
  %i.fe = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @_ZN2v88internal10Descriptor16AccessorConstantENS0_12DirectHandleINS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::Descriptor") align 8 %11, ptr nonnull %2, ptr %i.fe, i32 noundef 2) #12
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = and i32 %i.fg, -523777
  %i.fi = shl nuw nsw i32 %i.ee, 9
  %i.fj = or disjoint i32 %i.fh, %i.fi            ; 2 uses
  store i32 %i.fj, ptr %i.ff, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.fk = load i64, ptr %.sroa.02.0.copyload, align 8
  store i64 %i.fk, ptr %12, align 8
  %.sroa.0.0.copyload.i.i54.i = load ptr, ptr %11, align 8
  %i.fl = load i64, ptr %.sroa.0.0.copyload.i.i54.i, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0.0.copyload.i10.i55.i = load i32, ptr %i.fm, align 8
  %.sroa.21.0..sroa_idx.i.i56.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.21.0.copyload.i.i57.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i56.i, align 8 ; 3 uses
  %i.fn = icmp eq i32 %.sroa.0.0.copyload.i10.i55.i, 0
  %i.fo = icmp eq ptr %.sroa.21.0.copyload.i.i57.i, null ; 2 uses
  br i1 %i.fn, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  br i1 %i.fo, label %bb.aj, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i, !prof !11

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i: ; preds = %bb.ai
  %i.fp = load i64, ptr %.sroa.21.0.copyload.i.i57.i, align 8
  %i.fq = or i64 %i.fp, 3
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i

bb.ak:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  br i1 %i.fo, label %bb.al, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i, !prof !11

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i: ; preds = %bb.ak
  %i.fr = load i64, ptr %.sroa.21.0.copyload.i.i57.i, align 8
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i

_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i
  %.sroa.05.0.i.i59.i = phi i64 [ %i.fq, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i ], [ %i.fr, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i ]
  call void @_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexENS0_6TaggedINS0_4NameEEENS3_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_15PropertyDetailsE(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 %.sroa.09.1.i158.i, i64 %i.fl, i64 %.sroa.05.0.i.i59.i, i32 %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.fs = load i64, ptr %i.fe, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.sroa.066.0.i = phi i64 [ %i.fs, %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i ], [ %i.ev, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.ft = load i64, ptr %.sroa.0.0.copyload, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %.sroa.066.0.i, i32 noundef %3, i64 %i.ft)
  br label %_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_12LocalIsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_12LocalIsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit: ; preds = %bb.am, %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i, %bb.ab, %bb.b
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE9NewStructENS0_12InstanceTypeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal16LocalHandleScope14CloseAndEscapeINS0_16ClassBoilerplateENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.g, -55464
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 560
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN2v88internal16LocalHandleScope20CloseMainThreadScopeEPNS0_9LocalHeapEPmS4_(ptr noundef nonnull %i.b, ptr noundef %i.l, ptr noundef %i.n) #12
  br label %_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.r, ptr %i.p, align 8
  store ptr %i.t, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 8
  %.not.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i, label %_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12LocalHandles18RemoveUnusedBlocksEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p) #12
  br label %_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit

_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %bb.d ] ; 3 uses
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !range !12, !noundef !13
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit
  %i.ad = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.z, i64 noundef %i.a) #12
  br label %_ZN2v88internal10HandleBaseC2EmPNS0_9LocalHeapE.exit
end_hunk_1
