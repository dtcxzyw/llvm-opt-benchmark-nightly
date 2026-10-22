Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_swarm-ca569b56598bf95c.libp2p_swarm.47fafd1ca36ece5e-cgu.0?download=true
inline.NumInlined: 344
inline.NumDeleted: 211
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyThbtENvNtB10_11dial_ranker5scoreE0EB14_:bb.a
  %.sroa.5.0.extract.shift.i9.i = lshr i32 %i.z, 16
  %i.aa = tail call noundef i32 @_RNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker5score(ptr noundef nonnull align 8 %i.y), !noalias !216 ; 3 uses
  %.sroa.42.0.extract.shift.i10.i = lshr i32 %i.aa, 8
  %.sroa.42.0.extract.trunc.i11.i = trunc i32 %.sroa.42.0.extract.shift.i10.i to i8 ; 2 uses
  %.sroa.53.0.extract.shift.i12.i = lshr i32 %i.aa, 16
  %i.ab = icmp eq i8 %.sroa.4.0.extract.trunc.i8.i, %.sroa.42.0.extract.trunc.i11.i
  %i.ac = icmp ult i8 %.sroa.4.0.extract.trunc.i8.i, %.sroa.42.0.extract.trunc.i11.i
  %.sroa.01.0.extract.trunc.i13.i = trunc i32 %i.aa to i8 ; 2 uses
  %.sroa.0.0.extract.trunc.i14.i = trunc i32 %i.z to i8 ; 2 uses
  %i.ad = icmp eq i8 %.sroa.0.0.extract.trunc.i14.i, %.sroa.01.0.extract.trunc.i13.i
  %i.ae = icmp samesign ult i8 %.sroa.0.0.extract.trunc.i14.i, %.sroa.01.0.extract.trunc.i13.i
  %i.af = icmp samesign ult i32 %.sroa.5.0.extract.shift.i9.i, %.sroa.53.0.extract.shift.i12.i
  %spec.select.i15.i = select i1 %i.ad, i1 %i.af, i1 %i.ae
  %.sroa.0.1.in.i.i16.i = select i1 %i.ab, i1 %spec.select.i15.i, i1 %i.ac
  br i1 %.sroa.0.1.in.i.i16.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyThbtENvNtB16_11dial_ranker5scoreE0EB1a_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i38.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyThbtENvNtB16_11dial_ranker5scoreE0EB1a_.exit.i, label %.lr.ph.i

.lr.ph42.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i41.i = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.01.1.i41.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -48
  %i.aj = tail call noundef i32 @_RNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker5score(ptr noundef nonnull align 8 %i.ah), !noalias !216 ; 3 uses
  %.sroa.4.0.extract.shift.i17.i = lshr i32 %i.aj, 8
  %.sroa.4.0.extract.trunc.i18.i = trunc i32 %.sroa.4.0.extract.shift.i17.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i19.i = lshr i32 %i.aj, 16
  %i.ak = tail call noundef i32 @_RNvNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool11dial_ranker5score(ptr noundef nonnull align 8 %i.ai), !noalias !216 ; 3 uses
  %.sroa.42.0.extract.shift.i20.i = lshr i32 %i.ak, 8
  %.sroa.42.0.extract.trunc.i21.i = trunc i32 %.sroa.42.0.extract.shift.i20.i to i8 ; 2 uses
  %.sroa.53.0.extract.shift.i22.i = lshr i32 %i.ak, 16
  %i.al = icmp eq i8 %.sroa.4.0.extract.trunc.i18.i, %.sroa.42.0.extract.trunc.i21.i
  %i.am = icmp ult i8 %.sroa.4.0.extract.trunc.i18.i, %.sroa.42.0.extract.trunc.i21.i
  %.sroa.01.0.extract.trunc.i23.i = trunc i32 %i.ak to i8 ; 2 uses
  %.sroa.0.0.extract.trunc.i24.i = trunc i32 %i.aj to i8 ; 2 uses
  %i.an = icmp eq i8 %.sroa.0.0.extract.trunc.i24.i, %.sroa.01.0.extract.trunc.i23.i
  %i.ao = icmp samesign ult i8 %.sroa.0.0.extract.trunc.i24.i, %.sroa.01.0.extract.trunc.i23.i
  %i.ap = icmp samesign ult i32 %.sroa.5.0.extract.shift.i19.i, %.sroa.53.0.extract.shift.i22.i
  %spec.select.i25.i = select i1 %i.an, i1 %i.ap, i1 %i.ao
  %.sroa.0.1.in.i.i26.i = select i1 %i.al, i1 %spec.select.i25.i, i1 %i.am
  br i1 %.sroa.0.1.in.i.i26.i, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyThbtENvNtB16_11dial_ranker5scoreE0EB1a_.exit.i

bb.m:                                             ; preds = %.lr.ph42.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i41.i, 1    ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.aq, %i.m
  br i1 %exitcond50.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyThbtENvNtB16_11dial_ranker5scoreE0EB1a_.exit.i, label %.lr.ph42.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyThbtENvNtB16_11dial_ranker5scoreE0EB1a_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph42.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i41.i, %.lr.ph42.i ], [ %.sroa.01.0.i38.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyThbtENvNtB16_11dial_ranker5scoreE0EB1a_.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  %or.cond.not.i = and i1 %.sroa.0.1.in.i.i.i, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDial7reverseBC_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.m, i64 %.sroa.01.0)
  %i.at = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyThbtENvNtB17_11dial_ranker5scoreE0EB1b_.exit

bb.p:                                             ; preds = %bb.i
  %..i27.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.m, i64 16) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyThbtENvNtB19_11dial_ranker5scoreE0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i27.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.au = shl nuw nsw i64 %..i27.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyThbtENvNtB17_11dial_ranker5scoreE0EB1b_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDial7reverseBC_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEB18_.exit.i.i.i, %.preheader36.i, %bb.n, %bb.j
  %.sroa.0.0.i33.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader36.i ], [ %.sroa.0.0.i596670.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEB18_.exit.i.i.i ]
  %i.aw = shl nuw nsw i64 %.sroa.0.0.i33.i, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyThbtENvNtB17_11dial_ranker5scoreE0EB1b_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ay = phi i64 [ %i.as, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.0.0.i596670.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEB18_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.be, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEB18_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ba = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bc = getelementptr [48 x i8], ptr %i.az, i64 %i.ba
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, i64 noundef 6)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEB18_.exit.i.i.i unwind label %bb.q, !noalias !216

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24, !noalias !216
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialEB18_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.be = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.be, %i.ay
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDial7reverseBC_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyThbtENvNtB17_11dial_ranker5scoreE0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDial7reverseBC_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ax, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDial7reverseBC_.exit.i ], [ %i.av, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.bf = lshr i64 %.sroa.023.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bh = sub nsw i64 %factor, %i.bf
  %i.bi = add nuw nsw i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyThbtENvNtB1a_11dial_ranker5scoreE0EB1e_.exit
  %.sroa.02.136 = phi i64 [ %i.bo, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyThbtENvNtB1a_11dial_ranker5scoreE0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyThbtENvNtB1a_11dial_ranker5scoreE0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bo = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !6
  %.not28 = icmp ult i8 %i.bq, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyThbtENvNtB1a_11dial_ranker5scoreE0EB1e_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyThbtENvNtB1a_11dial_ranker5scoreE0EB1e_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyThbtENvNtB1a_11dial_ranker5scoreE0EB1e_.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !6 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 5 uses
  %i.bw = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 5 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.by ; 3 uses
  %i.ca = icmp samesign ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.023.135 to i1
  %i.cc = or i64 %i.bu, %.sroa.023.135
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cf = shl nuw nsw i64 %i.bx, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyThbtENvNtB1a_11dial_ranker5scoreE0EB1e_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cb, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyThbtENvNtB19_11dial_ranker5scoreE0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 192153584101141163) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ck, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.bz, i64 %i.bv
  %i.cm = or i64 %i.bw, 1
  %i.cn = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyThbtENvNtB19_11dial_ranker5scoreE0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef range(i64 0, 192153584101141163) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cq, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyThbtENvNtB11_11dial_ranker5scoreE0EB15_(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 192153584101141163) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cr = shl nuw nsw i64 %i.bx, 1
  %i.cs = or disjoint i64 %i.cr, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyThbtENvNtB1a_11dial_ranker5scoreE0EB1e_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyThbtENvNtB1a_11dial_ranker5scoreE0EB1e_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cs, %bb.x ], [ %i.cf, %bb.t ] ; 2 uses
  %i.ct = icmp ugt i64 %i.bo, 1
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cu = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cv = lshr i64 %.sroa.018.0, 1
  %i.cw = add nuw i64 %i.cv, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %6 = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %6, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyThbtENvNtB19_11dial_ranker5scoreE0EB1d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.db, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !5, !alias.scope !219, !noundef !6 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !219
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !219
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !219
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !219, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !12, !noalias !219, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #26
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !219, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !219
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !219
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtCs1eA6bChxBZF_5bytes5bytesNtB6_5BytesNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs9gyJhbkOeXY_8hashlink13DefaultHasherECs6b9j1MKPRPC_12libp2p_swarm(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 16, !alias.scope !238, !noundef !6 ; 3 uses
  %i.g = icmp ugt i8 %i.f, 64
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i64 %i.d to i128
  %i.i = zext nneg i8 %i.f to i128
  %i.j = shl nuw i128 %i.h, %i.i
  %i.k = load i128, ptr %1, align 16, !alias.scope !238, !noundef !6
  %i.l = or i128 %i.k, %i.j
  %i.m = add nuw i8 %i.f, 64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !239
  %.phi.trans.insert1 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2 = load ptr, ptr %.phi.trans.insert1, align 16, !alias.scope !239
  br label %_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load i128, ptr %1, align 16, !alias.scope !238, !noundef !6 ; 2 uses
  %i.o = trunc i128 %i.n to i64
  %i.p = lshr i128 %i.n, 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !238, !noundef !6
  %i.s = xor i64 %i.r, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 16, !alias.scope !238, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !238, !noundef !6
  %i.w = zext i64 %i.s to i128
  %i.x = zext i64 %i.v to i128
  %i.y = xor i128 %i.p, %i.x
  %i.z = mul nuw i128 %i.y, %i.w                  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = xor i128 %i.aa, %i.z
  %i.ac = trunc i128 %i.ab to i64
  %i.ad = zext i64 %i.d to i128
  br label %_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs6b9j1MKPRPC_12libp2p_swarm.exit

_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.u, %bb.c ], [ %.pre2, %bb.b ] ; 2 uses
  %i.af = phi i64 [ %i.ac, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %.sink.i.i = phi i128 [ %i.ad, %bb.c ], [ %i.l, %bb.b ]
  %storemerge.i.i.i = phi i8 [ 64, %bb.c ], [ %i.m, %bb.b ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !238
  store i8 %storemerge.i.i.i, ptr %i.e, align 16, !alias.scope !238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshr.i64(i64 %i.af, i64 %i.af, i64 range(i64 0, -9223372036854775808) %i.d) ; 6 uses
  store i64 %i.ah, ptr %i.ag, align 8, !alias.scope !239
  %i.ai = icmp samesign ult i64 %i.d, 17
  br i1 %i.ai, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.aj = tail call noundef i64 @_RNvCs2CMyvXgshDu_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae) #23, !noalias !239
  br label %_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit

bb.e:                                             ; preds = %_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs6b9j1MKPRPC_12libp2p_swarm.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !245, !noalias !246, !noundef !6 ; 4 uses
  %i.am = icmp samesign ugt i64 %i.d, 7
  br i1 %i.am, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6b9j1MKPRPC_12libp2p_swarm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = icmp samesign ugt i64 %i.d, 3
  br i1 %i.an, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6b9j1MKPRPC_12libp2p_swarm.exit.i.i, label %bb.g

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6b9j1MKPRPC_12libp2p_swarm.exit.i.i: ; preds = %bb.e
  %.sroa.014.0.copyload.i.i.i = load i64, ptr %i.b, align 1, !alias.scope !247
  %i.ao = xor i64 %.sroa.014.0.copyload.i.i.i, %i.ah
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.d
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %i.aq, align 1, !alias.scope !247
  %i.ar = xor i64 %.sroa.016.0.copyload.i.i.i, %i.al
  br label %_RNvCs2CMyvXgshDu_8foldhash16hash_bytes_short.exit.i.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_RNvCs2CMyvXgshDu_8foldhash16hash_bytes_short.exit.i.i, label %bb.h

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6b9j1MKPRPC_12libp2p_swarm.exit.i.i: ; preds = %bb.f
  %i.as = getelementptr i8, ptr %i.b, i64 %i.d
  %i.at = getelementptr i8, ptr %i.as, i64 -4
  %.sroa.019.0.copyload.i.i.i = load i32, ptr %i.at, align 1, !alias.scope !247
  %.sroa.018.0.copyload.i.i.i = load i32, ptr %i.b, align 1, !alias.scope !247
  %i.au = zext i32 %.sroa.018.0.copyload.i.i.i to i64
  %i.av = xor i64 %i.ah, %i.au
  %i.aw = zext i32 %.sroa.019.0.copyload.i.i.i to i64
  %i.ax = xor i64 %i.al, %i.aw
  br label %_RNvCs2CMyvXgshDu_8foldhash16hash_bytes_short.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load i8, ptr %i.b, align 1, !alias.scope !247, !noundef !6
  %i.az = lshr i64 %i.d, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !247, !noundef !6
  %i.bc = getelementptr i8, ptr %i.b, i64 %i.d
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !247, !noundef !6
  %i.bf = zext i8 %i.ay to i64
  %i.bg = xor i64 %i.ah, %i.bf
  %i.bh = zext i8 %i.be to i64
  %i.bi = shl nuw nsw i64 %i.bh, 8
  %i.bj = zext i8 %i.bb to i64
  %i.bk = or disjoint i64 %i.bi, %i.bj
  %i.bl = xor i64 %i.bk, %i.al
  br label %_RNvCs2CMyvXgshDu_8foldhash16hash_bytes_short.exit.i.i

_RNvCs2CMyvXgshDu_8foldhash16hash_bytes_short.exit.i.i: ; preds = %bb.h, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6b9j1MKPRPC_12libp2p_swarm.exit.i.i, %bb.g, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6b9j1MKPRPC_12libp2p_swarm.exit.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6b9j1MKPRPC_12libp2p_swarm.exit.i.i ], [ %i.ax, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6b9j1MKPRPC_12libp2p_swarm.exit.i.i ], [ %i.bl, %bb.h ], [ %i.al, %bb.g ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.ao, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6b9j1MKPRPC_12libp2p_swarm.exit.i.i ], [ %i.av, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs6b9j1MKPRPC_12libp2p_swarm.exit.i.i ], [ %i.bg, %bb.h ], [ %i.ah, %bb.g ]
  %i.bm = zext i64 %.sroa.0.0.i.i.i to i128
  %i.bn = zext i64 %.sroa.04.0.i.i.i to i128
  %i.bo = mul nuw i128 %i.bm, %i.bn               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64
  br label %_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit

_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit: ; preds = %bb.d, %_RNvCs2CMyvXgshDu_8foldhash16hash_bytes_short.exit.i.i
  %storemerge.i.i = phi i64 [ %i.aj, %bb.d ], [ %i.br, %_RNvCs2CMyvXgshDu_8foldhash16hash_bytes_short.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.ag, align 8, !alias.scope !239
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs6_NtCs1eA6bChxBZF_5bytes5bytesNtB6_5BytesNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs6b9j1MKPRPC_12libp2p_swarm(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !252
  store i64 %i.e, ptr %i.a, align 8, !noalias !252
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !252
  tail call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e) #27
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !259
  store i32 2, ptr %i.d, align 8, !noalias !259
  %i.e = load i32, ptr %i.a, align 8, !range !8, !noalias !259, !noundef !6
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
          to label %bb.d unwind label %bb.e, !noalias !259

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #25
          to label %common.resume unwind label %bb.f, !noalias !259

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !259
  unreachable

_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.j = load i64, ptr %1, align 8, !range !11, !alias.scope !260, !noundef !6
  %3 = icmp eq i64 %i.j, 0
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !262, !noundef !6
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !262, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !262 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !6, !noalias !262 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.l, !noalias !262

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !6, !noalias !262 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !6, !noalias !262
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #22, !noalias !262
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !6, !noalias !262 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !6, !noalias !262
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #22, !noalias !262
  br label %.body

bb.m:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit
  ret void

.body:                                            ; preds = %bb.l, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.l, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !265
  store i32 2, ptr %i.a, align 8, !noalias !265
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !265
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.i
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.k, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.q
    i8 2, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit
    i8 3, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs6b9j1MKPRPC_12libp2p_swarm.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !276
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !277
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !276

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !276
  store i32 2, ptr %i.f, align 8, !noalias !276
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !276

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !276
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !276
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !277 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24, !noalias !277
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !276
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !277, !noundef !6
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCs6b9j1MKPRPC_12libp2p_swarm:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.l
  resume { ptr, i32 } %i.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit

_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !289
  store i32 2, ptr %i.d, align 8, !noalias !289
  %i.e = load i32, ptr %i.a, align 8, !range !8, !noalias !289, !noundef !6
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
          to label %bb.d unwind label %bb.e, !noalias !289

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #25
          to label %common.resume unwind label %bb.f, !noalias !289

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !289
  unreachable

_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.j = load i64, ptr %1, align 8, !range !11, !alias.scope !290, !noundef !6
  %3 = icmp eq i64 %i.j, 0
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !292, !noundef !6
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !292, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !292 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !6, !noalias !292 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.l, !noalias !292

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !6, !noalias !292 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !6, !noalias !292
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #22, !noalias !292
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !6, !noalias !292 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !6, !noalias !292
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #22, !noalias !292
  br label %.body

bb.m:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit
  ret void

.body:                                            ; preds = %bb.l, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE21drop_join_handle_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.l, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !295
  store i32 2, ptr %i.a, align 8, !noalias !295
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !295
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.i
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.k, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.q
    i8 2, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit
    i8 3, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs6b9j1MKPRPC_12libp2p_swarm.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !306
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !307
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !306

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !306
  store i32 2, ptr %i.f, align 8, !noalias !306
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !306

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !306
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !306
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !307 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24, !noalias !307
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !306
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !307, !noundef !6
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeCs6b9j1MKPRPC_12libp2p_swarm:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.l
  resume { ptr, i32 } %i.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs_NtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB4_6HandleENtNtBa_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit

_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_IB21_IBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !319
  store i32 2, ptr %i.d, align 8, !noalias !319
  %i.e = load i32, ptr %i.a, align 8, !range !8, !noalias !319, !noundef !6
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
          to label %bb.d unwind label %bb.e, !noalias !319

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1t_IB1J_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #25
          to label %common.resume unwind label %bb.f, !noalias !319

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !319
  unreachable

_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.j = load i64, ptr %1, align 8, !range !11, !alias.scope !320, !noundef !6
  %3 = icmp eq i64 %i.j, 0
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !322, !noundef !6
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !322, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !322 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !6, !noalias !322 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.l, !noalias !322

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !6, !noalias !322 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !6, !noalias !322
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #22, !noalias !322
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !6, !noalias !322 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !6, !noalias !322
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #22, !noalias !322
  br label %.body

bb.m:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit
  ret void

.body:                                            ; preds = %bb.l, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.l, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !325
  store i32 2, ptr %i.a, align 8, !noalias !325
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !325
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.i
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.k, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_IB21_IBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.q
    i8 2, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit
    i8 3, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs6b9j1MKPRPC_12libp2p_swarm.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !336
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !337
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !336

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !336
  store i32 2, ptr %i.f, align 8, !noalias !336
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !336

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !336
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !336
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !337 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24, !noalias !337
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !336
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !337, !noundef !6
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCs6b9j1MKPRPC_12libp2p_swarm:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.l
  resume { ptr, i32 } %i.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_IB21_IBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_IB21_IBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit

_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !14, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_IB21_IBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !349
  store i32 2, ptr %i.d, align 8, !noalias !349
  %i.e = load i32, ptr %i.a, align 8, !range !8, !noalias !349, !noundef !6
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
          to label %bb.d unwind label %bb.e, !noalias !349

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB1t_IB1J_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #25
          to label %common.resume unwind label %bb.f, !noalias !349

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !349
  unreachable

_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !349
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.j = load i64, ptr %1, align 8, !range !11, !alias.scope !350, !noundef !6
  %3 = icmp eq i64 %i.j, 0
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !352, !noundef !6
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !352, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !352 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !6, !noalias !352 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.l, !noalias !352

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !6, !noalias !352 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !6, !noalias !352
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #22, !noalias !352
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !6, !noalias !352 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !6, !noalias !352
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #22, !noalias !352
  br label %.body

bb.m:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit
  ret void

.body:                                            ; preds = %bb.l, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5error9JoinErrorEEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs6b9j1MKPRPC_12libp2p_swarm.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE21drop_join_handle_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.l, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !355
  store i32 2, ptr %i.a, align 8, !noalias !355
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !355
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6b9j1MKPRPC_12libp2p_swarm.exit5.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.i
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.k, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_IB21_IBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs6b9j1MKPRPC_12libp2p_swarm(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit

_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs6b9j1MKPRPC_12libp2p_swarm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.q
    i8 2, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs6b9j1MKPRPC_12libp2p_swarm.exit
    i8 3, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs6b9j1MKPRPC_12libp2p_swarm.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !366
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !367
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !366

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !366
  store i32 2, ptr %i.f, align 8, !noalias !366
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs6b9j1MKPRPC_12libp2p_swarm(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !366

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !366
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !366
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !367 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24, !noalias !367
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !366
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !14, !noalias !367, !noundef !6
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs6b9j1MKPRPC_12libp2p_swarm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_3
