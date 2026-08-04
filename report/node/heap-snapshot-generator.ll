inline.NumInlined: 7022
inline.NumDeleted: 3467
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal12HeapSnapshot12FillChildrenEv:bb.a

bb.b:                                             ; preds = %._crit_edge
  %i.av = sub nuw i64 %i.am, %i.at
  tail call void @_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.av)
  %.pre = load ptr, ptr %i.l, align 8, !noalias !29
  %.pre30 = load ptr, ptr %i.af, align 8, !noalias !29
  %.pre31 = load ptr, ptr %i.o, align 8, !noalias !29
  %.pre32 = load ptr, ptr %i.k, align 8, !noalias !32
  br label %_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.aw = icmp ult i64 %i.am, %i.at
  br i1 %i.aw, label %bb.d, label %_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.ax
  br i1 %.not.i.i, label %_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ax, ptr %i.an, align 8
  br label %_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.ay = phi ptr [ %.pre32, %bb.b ], [ %i.x, %bb.c ], [ %i.x, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  %i.az = phi ptr [ %.pre31, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %bb.e ]
  %i.ba = phi ptr [ %.pre30, %bb.b ], [ %i.ag, %bb.c ], [ %i.ag, %bb.d ], [ %i.ag, %bb.e ]
  %i.bb = phi ptr [ %.pre, %bb.b ], [ %i.ah, %bb.c ], [ %i.ah, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ay
  br i1 %i.bc, label %._crit_edge29, label %.lr.ph28

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit
  %.024 = phi i32 [ %i.bf, %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.1320.023 = phi ptr [ %.sroa.1320.1, %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.sroa.1019.022 = phi ptr [ %.sroa.1019.1, %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.015.021 = phi ptr [ %.sroa.015.1, %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add i32 %i.be, %.024
  store i32 %.024, ptr %i.bd, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 40 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %.sroa.1019.022
  br i1 %i.bh, label %bb.f, label %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit

bb.f:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.1320.023, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 480
  br label %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit

_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit: ; preds = %.lr.ph, %bb.f
  %.sroa.015.1 = phi ptr [ %i.bj, %bb.f ], [ %i.bg, %.lr.ph ] ; 2 uses
  %.sroa.1019.1 = phi ptr [ %i.bk, %bb.f ], [ %.sroa.1019.022, %.lr.ph ]
  %.sroa.1320.1 = phi ptr [ %i.bi, %bb.f ], [ %.sroa.1320.023, %.lr.ph ]
  %i.bl = icmp eq ptr %.sroa.015.1, %i.d
  br i1 %i.bl, label %._crit_edge, label %.lr.ph

._crit_edge29:                                    ; preds = %_ZNSt15_Deque_iteratorIN2v88internal13HeapGraphEdgeERS2_PS2_EppEv.exit, %_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE6resizeEm.exit
  ret void

.lr.ph28:                                         ; preds = %_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE6resizeEm.exit, %_ZNSt15_Deque_iteratorIN2v88internal13HeapGraphEdgeERS2_PS2_EppEv.exit
  %.sroa.08.027 = phi ptr [ %.sroa.08.1, %_ZNSt15_Deque_iteratorIN2v88internal13HeapGraphEdgeERS2_PS2_EppEv.exit ], [ %i.bb, %_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE6resizeEm.exit ] ; 4 uses
  %.sroa.10.026 = phi ptr [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIN2v88internal13HeapGraphEdgeERS2_PS2_EppEv.exit ], [ %i.ba, %_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE6resizeEm.exit ] ; 2 uses
  %.sroa.13.025 = phi ptr [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIN2v88internal13HeapGraphEdgeERS2_PS2_EppEv.exit ], [ %i.az, %_ZNSt6vectorIPN2v88internal13HeapGraphEdgeESaIS3_EE6resizeEm.exit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.08.027, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = load i32, ptr %.sroa.08.027, align 8
  %i.br = lshr i32 %i.bq, 3
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 256
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !35 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 264
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !35
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 280
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !35
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = sdiv exact i64 %i.cb, 40
  %i.cd = add nsw i64 %i.cc, %i.bs                ; 5 uses
  %i.ce = icmp sgt i64 %i.cd, -1
  br i1 %i.ce, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph28
  %i.cf = icmp samesign ult i64 %i.cd, 12
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %i.bs
  br label %_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EEixEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ch = udiv i64 %i.cd, 12
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph28
  %i.ci = xor i64 %i.cd, -1
  %i.cj = udiv i64 %i.ci, 12
  %i.ck = xor i64 %i.cj, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cl = phi i64 [ %i.ch, %bb.i ], [ %i.ck, %bb.j ] ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !35
  %.idx.i.i.i.i = mul i64 %i.cl, -480
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i.i
  %i.cp = getelementptr [40 x i8], ptr %i.co, i64 %i.cd
  br label %_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EEixEm.exit

_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EEixEm.exit: ; preds = %bb.h, %bb.k
  %storemerge.i.i.i.i = phi ptr [ %i.cp, %bb.k ], [ %i.cg, %bb.h ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 400
  %i.ct = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4            ; 2 uses
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4
  %i.cw = zext i32 %i.cu to i64
  %i.cx = load ptr, ptr %i.cs, align 8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  store ptr %.sroa.08.027, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.08.027, i64 24 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %.sroa.10.026
  br i1 %i.da, label %bb.l, label %_ZNSt15_Deque_iteratorIN2v88internal13HeapGraphEdgeERS2_PS2_EppEv.exit

bb.l:                                             ; preds = %_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EEixEm.exit
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.13.025, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 504
  br label %_ZNSt15_Deque_iteratorIN2v88internal13HeapGraphEdgeERS2_PS2_EppEv.exit

_ZNSt15_Deque_iteratorIN2v88internal13HeapGraphEdgeERS2_PS2_EppEv.exit: ; preds = %_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EEixEm.exit, %bb.l
  %.sroa.13.1 = phi ptr [ %i.db, %bb.l ], [ %.sroa.13.025, %_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EEixEm.exit ]
  %.sroa.10.1 = phi ptr [ %i.dd, %bb.l ], [ %.sroa.10.026, %_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EEixEm.exit ]
  %.sroa.08.1 = phi ptr [ %i.dc, %bb.l ], [ %i.cz, %_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EEixEm.exit ] ; 2 uses
  %i.de = icmp eq ptr %.sroa.08.1, %i.ay
  br i1 %i.de, label %._crit_edge29, label %.lr.ph28
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal12HeapSnapshot12GetEntryByIdEj(ptr noundef nonnull align 8 dereferenceable(584) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.j = load ptr, ptr %i.i, align 8
  %.not = icmp eq ptr %i.h, %i.j
  br i1 %.not, label %bb.c, label %bb.d, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ne ptr %i.n, null
  %.neg.i.i = sext i1 %i.u to i64
  %i.v = add nsw i64 %i.t, %.neg.i.i
  %i.w = mul nsw i64 %i.v, 12
  %i.x = load ptr, ptr %i.k, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 40
  %i.ae = add nsw i64 %i.w, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.l, align 8
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 40
  %i.am = add nsw i64 %i.ae, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.ao = uitofp i64 %i.am to double
  %i.ap = load float, ptr %i.an, align 8
  %i.aq = fpext float %i.ap to double
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %3 = load i64, ptr %2, align 8
  %4 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ao, i64 0
  %5 = insertelement <2 x double> poison, double %i.aq, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x double> %4, %6
  %8 = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %7) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %10 = fptoui double %9 to i64
  %11 = extractelement <2 x double> %8, i64 1
  %i.ar = fptoui double %11 to i64
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %10, i64 %i.ar)
  %i.as = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef %.sroa.speculated.i.i.i) #29 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.au = load i64, ptr %i.at, align 8
  %.not.i.i.i = icmp eq i64 %i.as, %i.au
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.as)
  br label %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE7reserveEm.exit

bb.f:                                             ; preds = %bb.d
  store i64 %3, ptr %2, align 8
  br label %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE7reserveEm.exit

_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE7reserveEm.exit: ; preds = %bb.e, %bb.f
  %i.av = load ptr, ptr %i.l, align 8, !noalias !39 ; 2 uses
  %i.aw = load ptr, ptr %i.k, align 8, !noalias !42 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE7reserveEm.exit
  %i.ay = load ptr, ptr %i.o, align 8, !noalias !39
  %i.az = load ptr, ptr %i.af, align 8, !noalias !39
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit
  %.sroa.13.021 = phi ptr [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit ], [ %i.ay, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.020 = phi ptr [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit ], [ %i.az, %.lr.ph.preheader ] ; 2 uses
  %.sroa.08.019 = phi ptr [ %.sroa.08.1, %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit ], [ %i.av, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 32
  %i.bb = load i32, ptr %i.ba, align 8
  store i32 %i.bb, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr %.sroa.08.019, ptr %i.b, align 8
  %i.bc = call { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 40 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %.sroa.10.020
  br i1 %i.be, label %bb.g, label %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit

bb.g:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.13.021, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 480
  br label %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit

_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit: ; preds = %.lr.ph, %bb.g
  %.sroa.08.1 = phi ptr [ %i.bg, %bb.g ], [ %i.bd, %.lr.ph ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.bh, %bb.g ], [ %.sroa.10.020, %.lr.ph ]
  %.sroa.13.1 = phi ptr [ %i.bf, %bb.g ], [ %.sroa.13.021, %.lr.ph ]
  %i.bi = icmp eq ptr %.sroa.08.1, %i.aw
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_EppEv.exit, %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE7reserveEm.exit
  %.pr = load i64, ptr %i.d, align 8
  %.not.not.i.i = icmp eq i64 %.pr, 0
  br i1 %.not.not.i.i, label %bb.h, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.06.0.in.i.i = phi ptr [ %i.bj, %bb.h ], [ %.sroa.06.0.i.i, %bb.j ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %i.bk = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.bk, label %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = icmp eq i32 %1, %i.bm
  br i1 %i.bn, label %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, label %bb.i, !llvm.loop !45

.thread:                                          ; preds = %bb.a, %._crit_edge
  %i.bo = zext i32 %1 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = urem i64 %i.bo, %i.bq                   ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = icmp eq i32 %1, %i.bx
  br i1 %i.by, label %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.bz = icmp eq i32 %1, %i.cc
  br i1 %i.bz, label %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !46

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %.020.i.i.i.i = phi ptr [ %i.ca, %bb.l ], [ %i.bv, %bb.k ]
  %i.ca = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = urem i64 %i.cd, %i.bq
  %.not19.i.i.i.i = icmp eq i64 %i.ce, %i.br
  br i1 %.not19.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !46

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.m
  br label %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread, !llvm.loop !46

_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit: ; preds = %bb.l, %bb.j, %bb.k
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.j ], [ %i.bv, %bb.k ], [ %i.ca, %bb.l ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  br label %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread

_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.i, %.thread, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit
  %i.ch = phi ptr [ %i.cg, %_ZNSt13unordered_mapIjPN2v88internal9HeapEntryESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit ], [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %bb.i ], [ null, %.thread ], [ null, %.lr.ph.i.i.i.i ]
  ret ptr %i.ch
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12HeapSnapshot5PrintEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(584) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNK2v88internal9HeapEntry5PrintEPKcS3_ii(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14HeapObjectsMapC2EPNS0_4HeapE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 24)) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  store i32 59, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %calloc.i.i.i = tail call dereferenceable_or_null(192) ptr @calloc(i64 1, i64 192) ; 2 uses
  store ptr %calloc.i.i.i, ptr %i.b, align 8
  %i.d = icmp eq ptr %calloc.i.i.i, null
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIN2v88internal14HeapObjectsMap9EntryInfoESaIS3_EE12emplace_backIJiRKmibEEERS3_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.879) #31
  unreachable

_ZNSt6vectorIN2v88internal14HeapObjectsMap9EntryInfoESaIS3_EE12emplace_backIJiRKmibEEERS3_DpOT_.exit: ; preds = %bb.a
  store i32 8, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 6 uses
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i8 1, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.p, ptr %i.f, align 8
  store ptr %i.t, ptr %i.n, align 8
  store ptr %i.t, ptr %i.o, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14HeapObjectsMap10MoveObjectEmmi(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, %2
  br i1 %i.a, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE6RemoveERKS2_j.exit59.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.d = trunc i64 %1 to i32                      ; 2 uses
  %i.e = xor i32 %i.d, -1
  %i.f = shl i32 %i.d, 15
  %i.g = add i32 %i.f, %i.e                       ; 2 uses
  %i.h = lshr i32 %i.g, 12
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 5                          ; 2 uses
  %i.k = lshr i32 %i.j, 4
  %i.l = xor i32 %i.k, %i.j
  %i.m = mul i32 %i.l, 2057                       ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %.masked.i.i = and i32 %i.m, 1073741823
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_Map_baseIiSt4pairIKiN2v84base11SmallVectorIiLm32ESaIiEEEESaIS8_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_:bb.a
.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = urem i64 %i.q, %i.d
  %.not19.i.i = icmp eq i64 %i.r, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !293

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !293

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.s = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #30 ; 13 uses
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.v, i8 0, i64 128, i1 false)
  store ptr %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  store ptr %i.y, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 noundef %i.d, i64 noundef %i.ab, i64 noundef 1) #29 ; 2 uses
  %i.ad = extractvalue { i8, i64 } %i.ac, 0
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.af = extractvalue { i8, i64 } %i.ac, 1
  tail call void @_ZNSt10_HashtableIiSt4pairIKiN2v84base11SmallVectorIiLm32ESaIiEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.af)
  %i.ag = load i64, ptr %i.c, align 8
  %i.ah = urem i64 %i.b, %i.ag
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0.i19 = phi i64 [ %i.ah, %bb.e ], [ %i.e, %.loopexit ] ; 2 uses
  %i.ai = load ptr, ptr %0, align 8               ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0.i19 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.ak, align 8
  store ptr %i.al, ptr %i.s, align 8
  %i.am = load ptr, ptr %i.aj, align 8
  store ptr %i.s, ptr %i.am, align 8
  br label %_ZNSt10_HashtableIiSt4pairIKiN2v84base11SmallVectorIiLm32ESaIiEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  store ptr %i.ao, ptr %i.s, align 8
  store ptr %i.s, ptr %i.an, align 8
  %.not11.i.i = icmp eq ptr %i.ao, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.c, align 8
  %i.ar = load i32, ptr %i.ap, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = urem i64 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.at
  store ptr %i.s, ptr %i.au, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = phi ptr [ %.pre, %bb.i ], [ %i.ai, %bb.h ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0.i19
  store ptr %i.an, ptr %i.aw, align 8
  br label %_ZNSt10_HashtableIiSt4pairIKiN2v84base11SmallVectorIiLm32ESaIiEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIiSt4pairIKiN2v84base11SmallVectorIiLm32ESaIiEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.ax = load i64, ptr %i.aa, align 8
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aa, align 8
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIiSt4pairIKiN2v84base11SmallVectorIiLm32ESaIiEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.s, %_ZNSt10_HashtableIiSt4pairIKiN2v84base11SmallVectorIiLm32ESaIiEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjPN2v88internal9HeapEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjPN2v88internal9HeapEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjPN2v88internal9HeapEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjPN2v88internal9HeapEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.031, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.031, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !295

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #32
  br label %_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 10 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %1, align 4                ; 6 uses
  store i32 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %2, align 8
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.g, 0
  br i1 %.not.not, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  %i.h = zext i32 %i.c to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8              ; 5 uses
  %i.k = urem i64 %i.h, %i.j                      ; 5 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.critedge18, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.025.0.in = phi ptr [ %i.o, %bb.b ], [ %.sroa.025.0, %bb.d ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8 ; 4 uses
  %i.p = icmp eq ptr %.sroa.025.0, null
  br i1 %i.p, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.c, %i.r
  br i1 %i.s, label %_ZNKSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %bb.c, !llvm.loop !296

.critedge:                                        ; preds = %bb.c
  %i.t = zext i32 %i.c to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = urem i64 %i.t, %i.v
  br label %.critedge18

bb.e:                                             ; preds = %.critedge.thread
  %i.x = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.c, %i.z
  br i1 %i.aa, label %_ZNKSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.g
  %i.ab = icmp eq i32 %i.c, %i.ae
  br i1 %i.ab, label %_ZNKSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i, !llvm.loop !46

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.x, %bb.e ]
  %i.ac = load ptr, ptr %.020.i.i, align 8        ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i, label %.critedge18, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = urem i64 %i.af, %i.j
  %.not19.i.i = icmp eq i64 %i.ag, %i.k
  br i1 %.not19.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i, !llvm.loop !46

..loopexit_crit_edge21.i.i:                       ; preds = %bb.g
  br label %.critedge18, !llvm.loop !46

.critedge18:                                      ; preds = %.lr.ph.i.i, %.critedge, %..loopexit_crit_edge21.i.i, %.critedge.thread
  %i.ah = phi i64 [ %i.w, %.critedge ], [ %i.k, %.critedge.thread ], [ %i.k, %..loopexit_crit_edge21.i.i ], [ %i.k, %.lr.ph.i.i ]
  %i.ai = phi i64 [ %i.v, %.critedge ], [ %i.j, %.critedge.thread ], [ %i.j, %..loopexit_crit_edge21.i.i ], [ %i.j, %.lr.ph.i.i ]
  %i.aj = phi ptr [ %i.u, %.critedge ], [ %i.i, %.critedge.thread ], [ %i.i, %..loopexit_crit_edge21.i.i ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ak = phi i64 [ %i.t, %.critedge ], [ %i.h, %.critedge.thread ], [ %i.h, %..loopexit_crit_edge21.i.i ], [ %i.h, %.lr.ph.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef %i.ai, i64 noundef %i.g, i64 noundef 1) #29 ; 2 uses
  %i.an = extractvalue { i8, i64 } %i.am, 0
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge18
  %i.ap = extractvalue { i8, i64 } %i.am, 1
  tail call void @_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ap)
  %i.aq = load i64, ptr %i.aj, align 8
  %i.ar = urem i64 %i.ak, %i.aq
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge18
  %.0.i19 = phi i64 [ %i.ar, %bb.h ], [ %i.ah, %.critedge18 ] ; 2 uses
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i19 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.au, null
  br i1 %.not.i.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.au, align 8
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = load ptr, ptr %i.at, align 8
  store ptr %i.a, ptr %i.aw, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  store ptr %i.ay, ptr %i.a, align 8
  store ptr %i.a, ptr %i.ax, align 8
  %.not11.i.i = icmp eq ptr %i.ay, null
  br i1 %.not11.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.aj, align 8
  %i.bb = load i32, ptr %i.az, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = urem i64 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bd
  store ptr %i.a, ptr %i.be, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = phi ptr [ %.pre, %bb.l ], [ %i.as, %bb.k ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.0.i19
  store ptr %i.ax, ptr %i.bg, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bh = load i64, ptr %i.f, align 8
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.f, align 8
  br label %_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNKSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit: ; preds = %bb.f, %bb.d, %bb.e
  %.sroa.032.0.ph = phi ptr [ %.sroa.025.0, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #32
  br label %_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %_ZNKSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  %.sroa.4.043 = phi i8 [ 1, %bb.n ], [ 0, %_ZNKSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit ]
  %.sroa.032.041 = phi ptr [ %i.a, %bb.n ], [ %.sroa.032.0.ph, %_ZNKSt10_HashtableIjSt4pairIKjPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.032.041, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.043, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableIPvSt4pairIKS0_mESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS3_EEES1_INS5_14_Node_iteratorIS3_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 9 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.d, 0
  br i1 %.not.not, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = urem i64 %i.f, %i.h                      ; 5 uses
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.critedge17, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.024.0.in = phi ptr [ %i.m, %bb.b ], [ %.sroa.024.0, %bb.d ]
  %.sroa.024.0 = load ptr, ptr %.sroa.024.0.in, align 8 ; 4 uses
  %i.n = icmp eq ptr %.sroa.024.0, null
  br i1 %i.n, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 8
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNKSt10_HashtableIPvSt4pairIKS0_mESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit, label %bb.c, !llvm.loop !297

.critedge:                                        ; preds = %bb.c
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE14LookupOrInsertIS2_ZNS8_14LookupOrInsertIZNS8_14LookupOrInsertERKS2_jEUlvE_EEPNS0_20TemplateHashMapEntryIS2_S2_EESC_jRKT_EUlvE_SD_EESG_SJ_jRKT0_RKT1_:bb.a
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SD_j.exit, !llvm.loop !338

_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SD_j.exit: ; preds = %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i.i, %bb.b, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit.thread, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit
  %.0 = phi ptr [ %i.o, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit ], [ %.lcssa.i18, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit.thread ], [ %i.av, %bb.b ], [ %i.bm, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i ], [ %i.bb, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = shl i32 %i.d, 1                          ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = mul nuw nsw i64 %i.h, 24
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.i) ; 2 uses
  store ptr %calloc.i, ptr %i.a, align 8
  %i.j = icmp eq ptr %calloc.i, null
  br i1 %i.j, label %bb.b, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.879) #31
  unreachable

_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit: ; preds = %bb.a
  store i32 %i.g, ptr %i.c, align 8
  store i32 0, ptr %i.e, align 4
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit
  tail call void @free(ptr noundef %i.b) #29
  ret void

.lr.ph:                                           ; preds = %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit, %bb.e
  %.018 = phi i32 [ %.1, %bb.e ], [ %i.f, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit ] ; 2 uses
  %.01315 = phi ptr [ %i.ca, %bb.e ], [ %i.b, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE10InitializeEj.exit ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01315, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.n = and i32 %i.l, 2147483647                 ; 3 uses
  %i.o = load i32, ptr %i.c, align 8              ; 2 uses
  %i.p = add i32 %i.o, 2147483647
  %i.q = and i32 %i.p, %i.n
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.r ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i
  %i.x = phi i32 [ %i.ag, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i ], [ %i.o, %bb.c ]
  %i.y = phi i32 [ %i.an, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i ], [ %i.v, %bb.c ]
  %i.z = phi ptr [ %i.al, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i ], [ %i.t, %bb.c ] ; 2 uses
  %.013.i = phi i64 [ %i.ak, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i ], [ %i.r, %bb.c ]
  %i.aa = and i32 %i.y, 2147483647
  %i.ab = icmp eq i32 %i.n, %i.aa
  br i1 %i.ab, label %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i, label %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i

_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i: ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = load ptr, ptr %.01315, align 8
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = tail call noundef zeroext i1 %i.ac(ptr noundef %i.ad, ptr noundef %i.ae) #29, !inline_history !337
  br i1 %i.af, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit.loopexit, label %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit._ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread_crit_edge.i

_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit._ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread_crit_edge.i: ; preds = %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i
  %.pre.i = load i32, ptr %i.c, align 8
  br label %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i

_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i: ; preds = %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit._ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread_crit_edge.i, %.lr.ph.i
  %i.ag = phi i32 [ %.pre.i, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit._ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread_crit_edge.i ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %i.ah = add nsw i64 %.013.i, 1
  %i.ai = add i32 %i.ag, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = and i64 %i.ah, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit.loopexit, !llvm.loop !338

_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit.loopexit: ; preds = %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i
  %.lcssa.i.ph = phi ptr [ %i.al, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i ], [ %i.z, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i ]
  %.pre = load i32, ptr %i.k, align 8             ; 2 uses
  %.pre19 = and i32 %.pre, 2147483647
  br label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit

_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit: ; preds = %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit.loopexit, %bb.c
  %.pre-phi = phi i32 [ %.pre19, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit.loopexit ], [ %i.n, %bb.c ] ; 2 uses
  %i.ap = phi i32 [ %.pre, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit.loopexit ], [ %i.l, %bb.c ]
  %.lcssa.i = phi ptr [ %.lcssa.i.ph, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit.loopexit ], [ %i.t, %bb.c ] ; 2 uses
  %i.aq = load <2 x ptr>, ptr %.01315, align 8
  store <2 x ptr> %i.aq, ptr %.lcssa.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.as = or i32 %i.ap, -2147483648
  store i32 %i.as, ptr %i.ar, align 8
  %i.at = load i32, ptr %i.e, align 4
  %i.au = add i32 %i.at, 1                        ; 3 uses
  store i32 %i.au, ptr %i.e, align 4
  %i.av = lshr i32 %i.au, 2
  %i.aw = add i32 %i.av, %i.au
  %i.ax = load i32, ptr %i.c, align 8
  %.not.i = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SD_j.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit
  tail call void @_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !339
  %i.ay = load i32, ptr %i.c, align 8             ; 2 uses
  %i.az = add i32 %i.ay, 2147483647
  %i.ba = and i32 %i.az, %.pre-phi
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bb ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SD_j.exit

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i
  %i.bh = phi i32 [ %i.bq, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i ], [ %i.ay, %bb.d ]
  %i.bi = phi i32 [ %i.bx, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i ], [ %i.bf, %bb.d ]
  %i.bj = phi ptr [ %i.bv, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i ], [ %i.bd, %bb.d ]
  %.013.i.i = phi i64 [ %i.bu, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i ], [ %i.bb, %bb.d ]
  %i.bk = and i32 %i.bi, 2147483647
  %i.bl = icmp eq i32 %.pre-phi, %i.bk
  br i1 %i.bl, label %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i.i, label %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i

_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = load ptr, ptr %.01315, align 8
  %i.bo = load ptr, ptr %i.bj, align 8
  %i.bp = tail call noundef zeroext i1 %i.bm(ptr noundef %i.bn, ptr noundef %i.bo) #29, !inline_history !340
  br i1 %i.bp, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SD_j.exit, label %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit._ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread_crit_edge.i.i

_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit._ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread_crit_edge.i.i: ; preds = %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i.i
  %.pre.i.i = load i32, ptr %i.c, align 8
  br label %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i

_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i: ; preds = %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit._ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread_crit_edge.i.i, %.lr.ph.i.i
  %i.bq = phi i32 [ %.pre.i.i, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit._ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread_crit_edge.i.i ], [ %i.bh, %.lr.ph.i.i ] ; 2 uses
  %i.br = add nsw i64 %.013.i.i, 1
  %i.bs = add i32 %i.bq, -1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = and i64 %i.br, %i.bt                    ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i32, ptr %i.bw, align 8            ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SD_j.exit, !llvm.loop !338

_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SD_j.exit: ; preds = %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.i.i, %_ZNK2v84base26HashEqualityThenKeyMatcherIPvPFbS2_S2_EEclEjjRKS2_S7_.exit.thread.i.i, %bb.d, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE5ProbeIS2_EEPNS0_20TemplateHashMapEntryIS2_S2_EERKT_j.exit
  %i.bz = add i32 %.018, -1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SD_j.exit
  %.1 = phi i32 [ %i.bz, %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_26HashEqualityThenKeyMatcherIS2_PFbS2_S2_EEENS0_23DefaultAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS2_S2_EERKS2_SD_j.exit ], [ %.018, %.lr.ph ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01315, i64 24
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !341
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #29 = { nounwind }
attributes #30 = { builtin nounwind allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El: argument 0"}
!9 = distinct !{!9, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El"}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE3endEv: argument 0"}
!14 = distinct !{!14, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE3endEv"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE3endEv: argument 0"}
!17 = distinct !{!17, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE3endEv"}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"_ZSt19__relocate_object_aIN2v88internal19EntrySourceLocationES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!20 = distinct !{!20, !"_ZSt19__relocate_object_aIN2v88internal19EntrySourceLocationES2_SaIS2_EEvPT_PT0_RT1_"}
!21 = distinct !{!21, !20, !"_ZSt19__relocate_object_aIN2v88internal19EntrySourceLocationES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!22 = distinct !{!22, !6}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE5beginEv: argument 0"}
!25 = distinct !{!25, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE5beginEv"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE3endEv: argument 0"}
!28 = distinct !{!28, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE3endEv"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE5beginEv: argument 0"}
!31 = distinct !{!31, !"_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE5beginEv"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE3endEv: argument 0"}
!34 = distinct !{!34, !"_ZNSt5dequeIN2v88internal13HeapGraphEdgeESaIS2_EE3endEv"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El: argument 0"}
!37 = distinct !{!37, !"_ZStplRKSt15_Deque_iteratorIN2v88internal9HeapEntryERS2_PS2_El"}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE5beginEv: argument 0"}
!41 = distinct !{!41, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE5beginEv"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE3endEv: argument 0"}
!44 = distinct !{!44, !"_ZNSt5dequeIN2v88internal9HeapEntryESaIS2_EE3endEv"}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{null}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"_ZSt19__relocate_object_aIN2v88internal14HeapObjectsMap9EntryInfoES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!54 = distinct !{!54, !"_ZSt19__relocate_object_aIN2v88internal14HeapObjectsMap9EntryInfoES3_SaIS3_EEvPT_PT0_RT1_"}
!55 = distinct !{!55, !54, !"_ZSt19__relocate_object_aIN2v88internal14HeapObjectsMap9EntryInfoES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, !6}
!59 = distinct !{null, null}
!60 = !{!"branch_weights", !"expected", i32 2145380166, i32 2103482}
!61 = distinct !{!61, !6}
!62 = distinct !{null}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !6}
!67 = distinct !{!67, !6}
!68 = !{!69, !71}
!69 = distinct !{!69, !70, !"_ZSt19__relocate_object_aIN2v815HeapStatsUpdateES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!70 = distinct !{!70, !"_ZSt19__relocate_object_aIN2v815HeapStatsUpdateES1_SaIS1_EEvPT_PT0_RT1_"}
!71 = distinct !{!71, !70, !"_ZSt19__relocate_object_aIN2v815HeapStatsUpdateES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!72 = distinct !{!72, !6}
!73 = distinct !{!73, !6}
!74 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"_ZSt19__relocate_object_aIN2v88internal19EntrySourceLocationES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!77 = distinct !{!77, !"_ZSt19__relocate_object_aIN2v88internal19EntrySourceLocationES2_SaIS2_EEvPT_PT0_RT1_"}
!78 = distinct !{!78, !77, !"_ZSt19__relocate_object_aIN2v88internal19EntrySourceLocationES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!79 = distinct !{!79, !6}
!80 = distinct !{!80, !6}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZSt19__relocate_object_aIN2v88internal6HandleINS1_6ScriptEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!83 = distinct !{!83, !"_ZSt19__relocate_object_aIN2v88internal6HandleINS1_6ScriptEEES4_SaIS4_EEvPT_PT0_RT1_"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"_ZSt19__relocate_object_aIN2v88internal6HandleINS1_6ScriptEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!86 = distinct !{!86, !6, !87, !88}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = distinct !{!89, !6, !87}
!90 = distinct !{!90, !6}
!91 = distinct !{!91, !6}
!92 = distinct !{!92, !6}
!93 = distinct !{!93, !6}
!94 = !{!"branch_weights", i32 2146410443, i32 1073205}
!95 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!96 = !{!"branch_weights", i32 -4292821, i32 4292820}
!97 = distinct !{!97, !6}
!98 = distinct !{!98, !6}
!99 = distinct !{!99, !6}
!100 = distinct !{!100, !6}
!101 = !{!102, !104, !106}
!102 = distinct !{!102, !103, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!103 = distinct !{!103, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!104 = distinct !{!104, !105, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!105 = distinct !{!105, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE"}
!106 = distinct !{!106, !107, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!107 = distinct !{!107, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE"}
!108 = !{!109, !111, !113}
!109 = distinct !{!109, !110, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!110 = distinct !{!110, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!111 = distinct !{!111, !112, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!112 = distinct !{!112, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE"}
!113 = distinct !{!113, !114, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!114 = distinct !{!114, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE"}
!115 = !{!116, !118, !120}
!116 = distinct !{!116, !117, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!117 = distinct !{!117, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!118 = distinct !{!118, !119, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!119 = distinct !{!119, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE"}
!120 = distinct !{!120, !121, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!121 = distinct !{!121, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE"}
!122 = distinct !{!122, !6}
!123 = distinct !{!123, !6}
!124 = !{!125, !127, !129}
!125 = distinct !{!125, !126, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!126 = distinct !{!126, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!127 = distinct !{!127, !128, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!128 = distinct !{!128, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE"}
!129 = distinct !{!129, !130, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!130 = distinct !{!130, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE"}
!131 = distinct !{!131, !6}
!132 = distinct !{!132, !6}
!133 = distinct !{!133, !6}
!134 = distinct !{!134, !6}
!135 = distinct !{!135, !6}
!136 = distinct !{!136, !6}
!137 = distinct !{null, null}
!138 = distinct !{!138, !6}
!139 = distinct !{!139, !6}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!142 = distinct !{!142, !"_ZNSt7__cxx119to_stringEi"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!145 = distinct !{!145, !"_ZNSt7__cxx119to_stringEi"}
!146 = distinct !{!146, !6}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!149 = distinct !{!149, !"_ZNSt7__cxx119to_stringEi"}
!150 = distinct !{!150, !6}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!153 = distinct !{!153, !"_ZNSt7__cxx119to_stringEl"}
!154 = distinct !{!154, !6}
!155 = distinct !{!155, !6}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!158 = distinct !{!158, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
end_hunk_2
