Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.049?download=true
inline.NumInlined: 289
inline.NumDeleted: 146
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYBW_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection:bb.a
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !11, !noalias !12, !noundef !4 ; 3 uses
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !11, !noalias !12, !noundef !4
  %i.q = icmp uge i64 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !11, !noalias !12, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !11, !noalias !12, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.w = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i
  %i.y = lshr i64 %.sroa.0.0.i.i, 1               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.y, 0
  %or.cond.i = or i1 %i.q, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #10
  %i.aa = shl nuw nsw i64 %..i12.i, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEE7reverseCsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEECsPYQCUnoTxQ_10collection.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i475458.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEECsPYQCUnoTxQ_10collection.exit.i.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ae = phi i64 [ %i.y, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i475458.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i475458.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEECsPYQCUnoTxQ_10collection.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ak, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEECsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ag = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ai = getelementptr [16 x i8], ptr %i.af, i64 %i.ag
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, i64 noundef 2)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEECsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.q, !noalias !12

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !12
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEECsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ak, %i.ae
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEE7reverseCsPYQCUnoTxQ_10collection.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEE7reverseCsPYQCUnoTxQ_10collection.exit.i ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.al = lshr i64 %.sroa.023.0, 1
  %i.am = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.an = sub nsw i64 %factor, %i.al
  %i.ao = add nuw i64 %i.am, %factor
  %i.ap = mul i64 %i.an, %.sroa.0.0
  %i.aq = mul i64 %i.ao, %.sroa.0.0
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 false)
  %i.at = trunc nuw nsw i64 %i.as to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit
  %.sroa.02.136 = phi i64 [ %i.au, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.au = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.aw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ay, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au
  %i.ba = load i64, ptr %i.az, align 8, !noundef !4 ; 3 uses
  %i.bb = lshr i64 %i.ba, 1                       ; 5 uses
  %i.bc = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bd = add nuw i64 %i.bb, %i.bc                ; 5 uses
  %i.be = sub i64 %.sroa.09.0, %i.bd
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.be ; 3 uses
  %i.bg = icmp samesign ugt i64 %i.bd, %3
  %i.bh = trunc i64 %.sroa.023.135 to i1
  %i.bi = or i64 %i.ba, %.sroa.023.135
  %i.bj = trunc i64 %i.bi to i1
  %or.cond3.i = or i1 %i.bg, %i.bj
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = trunc i64 %i.ba to i1
  br i1 %i.bk, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bl = shl nuw nsw i64 %i.bd, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bh, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bm = or i64 %i.bb, 1
  %i.bn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = xor i32 %i.bp, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 0, 576460752303423488) %i.bb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bb
  %i.bs = or i64 %i.bc, 1
  %i.bt = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 1
  %i.bw = xor i32 %i.bv, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.br, i64 noundef range(i64 0, 576460752303423488) %i.bc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYBX_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 0, 576460752303423488) %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bb, ptr noalias nofree noundef nonnull %5)
  %i.bx = shl nuw nsw i64 %i.bd, 1
  %i.by = or disjoint i64 %i.bx, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.by, %bb.x ], [ %i.bl, %bb.t ] ; 2 uses
  %i.bz = icmp ugt i64 %i.au, 1
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ca = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cb = lshr i64 %.sroa.018.0, 1
  %i.cc = add nuw i64 %i.cb, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cd = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cd, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = or i64 %1, 1
  %i.cf = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYBW_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !22, !noalias !23, !noundef !4 ; 3 uses
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !22, !noalias !23, !noundef !4
  %i.q = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !22, !noalias !23, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !22, !noalias !23, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.w = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #10
  %i.z = shl nuw nsw i64 %..i12.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ab = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.ad = getelementptr [16 x i8], ptr %i.am, i64 %i.ab ; 3 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !24, !noalias !25, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !24, !noalias !25, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !26, !noalias !23
  store i64 %i.ae, ptr %i.ad, align 8, !alias.scope !27, !noalias !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.ag, ptr %i.ah, align 8, !alias.scope !27, !noalias !28
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i

_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader ]
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

bb.q:                                             ; preds = %bb.n
  %i.ak = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.al = phi i64 [ %i.ak, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i465357.i ; 3 uses
  %xtraiter = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.al, 9223372036854775806
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i ]
  %i.ao = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.aq = getelementptr [16 x i8], ptr %i.am, i64 %i.ao ; 3 uses
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !24, !noalias !25, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i32, ptr %i.as, align 8, !alias.scope !24, !noalias !25, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !26, !noalias !23
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !27, !noalias !28
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %i.at, ptr %i.au, align 8, !alias.scope !27, !noalias !28
  %i.av = xor i64 %.sroa.0.016.i.i.i, -2
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.am, i64 %i.av ; 3 uses
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !24, !noalias !25, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !alias.scope !24, !noalias !25, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !26, !noalias !23
  store i64 %i.az, ptr %i.ay, align 8, !alias.scope !27, !noalias !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.bb, ptr %i.bc, align 8, !alias.scope !27, !noalias !28
  %i.bd = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aj, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEE7reverseCsPYQCUnoTxQ_10collection.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYBX_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvNtNtB10_6common12score_fusion12score_fusionINtNtB1N_3vec3VecIB3c_BW_EEEs1_0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 44343134792571038) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 44343134792571038) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ae, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ae ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cu, %bb.ae ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.ae ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvNtNtB17_6common12score_fusion12score_fusionINtNtB1U_3vec3VecIB3k_B13_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit
  %.sroa.021.0 = phi i8 [ %i.bl, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvNtNtB17_6common12score_fusion12score_fusionINtNtB1U_3vec3VecIB3k_B13_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvNtNtB17_6common12score_fusion12score_fusionINtNtB1U_3vec3VecIB3k_B13_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.n = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvNtNtB16_6common12score_fusion12score_fusionINtNtB1T_3vec3VecIB3j_B12_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit.i, %bb.h
  br i1 %4, label %bb.v, label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsPYQCUnoTxQ_10collection.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 208 ; 2 uses
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !53, !noalias !54, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.val.i.i = load ptr, ptr %.val8.i, align 8, !noalias !55, !nonnull !4, !noundef !4
  %i.q = load i8, ptr %.val.i.i, align 1, !range !6, !noalias !56, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = tail call noundef i8 @_RNvXse_NtCs607s0NAIaWN_7segment5typesNtB5_11ScoredPointNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.n), !noalias !57
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit.i

bb.m:                                             ; preds = %bb.k
  %i.t = tail call noundef i8 @_RNvXse_NtCs607s0NAIaWN_7segment5typesNtB5_11ScoredPointNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.p), !noalias !57
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.0.0.i.i.i = phi i8 [ %i.s, %bb.l ], [ %i.t, %bb.m ]
  %i.u = icmp ne i8 %.sroa.0.0.i.i.i, -1          ; 2 uses
  %.not33.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.u, label %.preheader24.i, label %.preheader.i

.preheader24.i:                                   ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit.i
  br i1 %.not33.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit.i
  br i1 %.not33.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph29.i

.lr.ph.i:                                         ; preds = %.preheader24.i, %bb.p
  %.sroa.01.0.i26.i = phi i64 [ %i.ae, %bb.p ], [ 2, %.preheader24.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw [208 x i8], ptr %i.n, i64 %.sroa.01.0.i26.i ; 2 uses
  %i.w = add nsw i64 %.sroa.01.0.i26.i, -1        ; 2 uses
  %i.x = icmp samesign ult i64 %i.w, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [208 x i8], ptr %i.n, i64 %i.w ; 2 uses
  %.val.i9.i = load ptr, ptr %.val8.i, align 8, !noalias !58, !nonnull !4, !noundef !4
  %i.z = load i8, ptr %.val.i9.i, align 1, !range !6, !noalias !59, !noundef !4
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.ab = tail call noundef i8 @_RNvXse_NtCs607s0NAIaWN_7segment5typesNtB5_11ScoredPointNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.y), !noalias !57
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit11.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.ac = tail call noundef i8 @_RNvXse_NtCs607s0NAIaWN_7segment5typesNtB5_11ScoredPointNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.v), !noalias !57
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit11.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit11.i: ; preds = %bb.o, %bb.n
  %.sroa.0.0.i.i10.i = phi i8 [ %i.ab, %bb.n ], [ %i.ac, %bb.o ]
  %i.ad = icmp eq i8 %.sroa.0.0.i.i10.i, -1
  br i1 %i.ad, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvNtNtB16_6common12score_fusion12score_fusionINtNtB1T_3vec3VecIB3j_B12_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit.i, label %bb.p

bb.p:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit11.i
  %i.ae = add nuw nsw i64 %.sroa.01.0.i26.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvNtNtB16_6common12score_fusion12score_fusionINtNtB1T_3vec3VecIB3j_B12_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.lr.ph29.i:                                       ; preds = %.preheader.i, %bb.s
  %.sroa.01.1.i28.i = phi i64 [ %i.ao, %bb.s ], [ 2, %.preheader.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.n, i64 %.sroa.01.1.i28.i ; 2 uses
  %i.ag = add nsw i64 %.sroa.01.1.i28.i, -1       ; 2 uses
  %i.ah = icmp samesign ult i64 %i.ag, %i.m
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [208 x i8], ptr %i.n, i64 %i.ag ; 2 uses
  %.val.i12.i = load ptr, ptr %.val8.i, align 8, !noalias !60, !nonnull !4, !noundef !4
  %i.aj = load i8, ptr %.val.i12.i, align 1, !range !6, !noalias !61, !noundef !4
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph29.i
  %i.al = tail call noundef i8 @_RNvXse_NtCs607s0NAIaWN_7segment5typesNtB5_11ScoredPointNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.ai), !noalias !57
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit14.i

bb.r:                                             ; preds = %.lr.ph29.i
  %i.am = tail call noundef i8 @_RNvXse_NtCs607s0NAIaWN_7segment5typesNtB5_11ScoredPointNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.af), !noalias !57
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit14.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit14.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i13.i = phi i8 [ %i.al, %bb.q ], [ %i.am, %bb.r ]
  %i.an = icmp eq i8 %.sroa.0.0.i.i13.i, -1
  br i1 %i.an, label %bb.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvNtNtB16_6common12score_fusion12score_fusionINtNtB1T_3vec3VecIB3j_B12_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit.i

bb.s:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit14.i
  %i.ao = add nuw nsw i64 %.sroa.01.1.i28.i, 1    ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.ao, %i.m
  br i1 %exitcond37.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvNtNtB16_6common12score_fusion12score_fusionINtNtB1T_3vec3VecIB3j_B12_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph29.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvNtNtB16_6common12score_fusion12score_fusionINtNtB1T_3vec3VecIB3j_B12_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.s, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit14.i, %bb.p, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit11.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.p ], [ %.sroa.01.0.i26.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit11.i ], [ %.sroa.01.1.i28.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7sort_byNCINvNtNtBC_6common12score_fusion12score_fusionINtNtB7_3vec3VecIB2b_By_EEEs1_0E0CsPYQCUnoTxQ_10collection.exit14.i ], [ %i.m, %bb.s ] ; 5 uses
  %i.ap = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvNtNtB16_6common12score_fusion12score_fusionINtNtB1T_3vec3VecIB3j_B12_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit.i
  %i.aq = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aq, 0
  %or.cond.i = or i1 %i.u, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.preheader.i.i.i

bb.u:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 44343134792571038) %i.m, i64 %.sroa.01.0)
  %i.ar = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvNtNtB17_6common12score_fusion12score_fusionINtNtB1U_3vec3VecIB3k_B13_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit

bb.v:                                             ; preds = %bb.i
  %..i15.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 44343134792571038) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvNtNtB19_6common12score_fusion12score_fusionINtNtB1W_3vec3VecIB3m_B15_EEEs1_0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i15.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 44343134792571038) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(208) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.as = shl nuw nsw i64 %..i15.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvNtNtB17_6common12score_fusion12score_fusionINtNtB1U_3vec3VecIB3k_B13_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.i.i.i, %.preheader24.i, %bb.t, %bb.j
  %.sroa.0.0.i21.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.t ], [ 2, %.preheader24.i ], [ %.sroa.0.0.i465357.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.i.i.i ]
  %i.au = shl nuw nsw i64 %.sroa.0.0.i21.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvNtNtB17_6common12score_fusion12score_fusionINtNtB1U_3vec3VecIB3k_B13_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.t
  %i.aw = phi i64 [ %i.aq, %bb.t ], [ 1, %.preheader.i ]
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.t ], [ 2, %.preheader.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [208 x i8], ptr %i.n, i64 %.sroa.0.0.i465357.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bc, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.017.i.i.i, -1
  %i.az = getelementptr inbounds nuw [208 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ba = getelementptr [208 x i8], ptr %i.ax, i64 %i.ay
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, i64 noundef 26)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.w, !noalias !57

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !57
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bc = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bc, %i.aw
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvNtNtB17_6common12score_fusion12score_fusionINtNtB1U_3vec3VecIB3k_B13_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.u, %bb.v, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsPYQCUnoTxQ_10collection.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.av, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsPYQCUnoTxQ_10collection.exit.i ], [ %i.at, %bb.v ], [ %i.ar, %bb.u ] ; 2 uses
  %i.bd = lshr i64 %.sroa.023.0, 1
  %i.be = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bf = sub nsw i64 %factor, %i.bd
  %i.bg = add nuw i64 %i.be, %factor
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvNtNtB1a_6common12score_fusion12score_fusionINtNtB1X_3vec3VecIB3n_B16_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit
  %.sroa.02.136 = phi i64 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvNtNtB1a_6common12score_fusion12score_fusionINtNtB1X_3vec3VecIB3n_B16_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvNtNtB1a_6common12score_fusion12score_fusionINtNtB1X_3vec3VecIB3n_B16_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bm = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bo, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvNtNtB1a_6common12score_fusion12score_fusionINtNtB1X_3vec3VecIB3n_B16_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvNtNtB1a_6common12score_fusion12score_fusionINtNtB1X_3vec3VecIB3n_B16_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvNtNtB1a_6common12score_fusion12score_fusionINtNtB1X_3vec3VecIB3n_B16_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bq, align 1
  br i1 %i.k, label %bb.ae, label %bb.af

bb.x:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !4 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 5 uses
  %i.bu = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 5 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %i.bw ; 3 uses
  %i.by = icmp samesign ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.023.135 to i1
  %i.ca = or i64 %i.bs, %.sroa.023.135
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.cd = shl nuw nsw i64 %i.bv, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvNtNtB1a_6common12score_fusion12score_fusionINtNtB1X_3vec3VecIB3n_B16_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit

bb.aa:                                            ; preds = %bb.ab, %bb.y
  br i1 %i.bz, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.ce = or i64 %i.bt, 1
  %i.cf = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvNtNtB19_6common12score_fusion12score_fusionINtNtB1W_3vec3VecIB3m_B15_EEEs1_0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 44343134792571038) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 44343134792571038) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(208) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw [208 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvNtNtB19_6common12score_fusion12score_fusionINtNtB1W_3vec3VecIB3m_B15_EEEs1_0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 44343134792571038) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 44343134792571038) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(208) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvNtNtB11_6common12score_fusion12score_fusionINtNtB1O_3vec3VecIB3d_BX_EEEs1_0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 44343134792571038) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 44343134792571038) %3, i64 noundef %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cp = shl nuw nsw i64 %i.bv, 1
  %i.cq = or disjoint i64 %i.cp, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvNtNtB1a_6common12score_fusion12score_fusionINtNtB1X_3vec3VecIB3n_B16_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvNtNtB1a_6common12score_fusion12score_fusionINtNtB1X_3vec3VecIB3n_B16_EEEs1_0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.z, %bb.ad
  %.sroa.0.0.i = phi i64 [ %i.cq, %bb.ad ], [ %i.cd, %bb.z ] ; 2 uses
  %i.cr = icmp ugt i64 %i.bm, 1
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

bb.ae:                                            ; preds = %._crit_edge
  %i.cs = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ct = lshr i64 %.sroa.018.0, 1
  %i.cu = add nuw i64 %i.ct, %.sroa.09.0
  br label %bb.f

bb.af:                                            ; preds = %._crit_edge
  %i.cv = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cv, 0
  br i1 %.not30, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cw = or i64 %1, 1
  %i.cx = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvNtNtB19_6common12score_fusion12score_fusionINtNtB1W_3vec3VecIB3m_B15_EEEs1_0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 44343134792571038) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 44343134792571038) %3, i32 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(208) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYBW_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ae, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ae ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fr, %bb.ae ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fp, %bb.ae ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit
  %.sroa.021.0 = phi i8 [ %i.ei, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, %bb.h
  br i1 %4, label %bb.v, label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointId7reverseCsPYQCUnoTxQ_10collection.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.q = load i8, ptr %i.p, align 8, !range !6, !alias.scope !110, !noalias !111, !noundef !4 ; 4 uses
  %i.r = load i8, ptr %i.n, align 8, !range !6, !alias.scope !112, !noalias !113, !noundef !4 ; 3 uses
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = sub nsw i8 %i.q, %i.r                    ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.l, label %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit.i

bb.l:                                             ; preds = %bb.k
  %i.v = trunc nuw i8 %i.q to i1
  br i1 %i.v, label %loadbb, label %bb.m

loadbb:                                           ; preds = %bb.l
  tail call void @llvm.assume(i1 %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 25 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.y = load i64, ptr %i.w, align 1
  %i.z = load i64, ptr %i.x, align 1
  %i.aa = tail call i64 @llvm.bswap.i64(i64 %i.y) ; 2 uses
  %i.ab = tail call i64 @llvm.bswap.i64(i64 %i.z) ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %loadbb60, label %res_block

res_block:                                        ; preds = %loadbb60, %loadbb
  %phi.src1 = phi i64 [ %i.aa, %loadbb ], [ %i.aj, %loadbb60 ]
  %phi.src2 = phi i64 [ %i.ab, %loadbb ], [ %i.ak, %loadbb60 ]
  %i.ad = icmp ult i64 %phi.src1, %phi.src2
  %i.ae = select i1 %i.ad, i32 -1, i32 1
  br label %endblock

loadbb60:                                         ; preds = %loadbb
  %i.af = getelementptr i8, ptr %i.w, i64 8
  %i.ag = getelementptr i8, ptr %i.x, i64 8
  %i.ah = load i64, ptr %i.af, align 1
  %i.ai = load i64, ptr %i.ag, align 1
  %i.aj = tail call i64 @llvm.bswap.i64(i64 %i.ah) ; 2 uses
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %i.ai) ; 2 uses
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb60
  %phi.res = phi i32 [ 0, %loadbb60 ], [ %i.ae, %res_block ]
  %i.am = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  br label %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit.i

bb.m:                                             ; preds = %bb.l
  %i.an = icmp eq i8 %i.r, 0
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !110, !noalias !111, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !112, !noalias !113, !noundef !4
  %i.as = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ap, i64 %i.ar)
  br label %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit.i

_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.m, %endblock, %bb.k
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.am, %endblock ], [ %i.as, %bb.m ], [ %i.t, %bb.k ]
  %i.at = icmp sgt i8 %.sroa.0.0.i.i.i.i.i, -1    ; 2 uses
  %.not29.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.at, label %.preheader20.i, label %.preheader.i

.preheader20.i:                                   ; preds = %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit.i
  br i1 %.not29.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointId7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit.i
  br i1 %.not29.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph25.i

.lr.ph.i:                                         ; preds = %.preheader20.i, %bb.p
  %i.au = phi i8 [ %i.az, %bb.p ], [ %i.q, %.preheader20.i ] ; 3 uses
  %.sroa.01.0.i22.i = phi i64 [ %i.cc, %bb.p ], [ 2, %.preheader20.i ] ; 4 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i22.i ; 3 uses
  %i.aw = add nsw i64 %.sroa.01.0.i22.i, -1       ; 2 uses
  %i.ax = icmp samesign ult i64 %i.aw, %i.m
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.az = load i8, ptr %i.av, align 8, !range !6, !alias.scope !122, !noalias !123, !noundef !4 ; 3 uses
  %i.ba = trunc nuw i8 %i.au to i1
  %i.bb = sub nsw i8 %i.az, %i.au                 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit8.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.bd = trunc nuw i8 %i.az to i1
  br i1 %i.bd, label %loadbb66, label %bb.o

loadbb66:                                         ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.ba)
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.bg = load i64, ptr %i.be, align 1
  %i.bh = load i64, ptr %i.bf, align 1
  %i.bi = tail call i64 @llvm.bswap.i64(i64 %i.bg) ; 2 uses
  %i.bj = tail call i64 @llvm.bswap.i64(i64 %i.bh) ; 2 uses
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %loadbb67, label %res_block63

res_block63:                                      ; preds = %loadbb67, %loadbb66
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYBW_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection:bb.a
  br i1 %i.cm, label %loadbb73, label %bb.r

loadbb73:                                         ; preds = %bb.q
  tail call void @llvm.assume(i1 %i.cj)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %i.cp = load i64, ptr %i.cn, align 1
  %i.cq = load i64, ptr %i.co, align 1
  %i.cr = tail call i64 @llvm.bswap.i64(i64 %i.cp) ; 2 uses
  %i.cs = tail call i64 @llvm.bswap.i64(i64 %i.cq) ; 2 uses
  %i.ct = icmp eq i64 %i.cr, %i.cs
  br i1 %i.ct, label %loadbb74, label %res_block70

res_block70:                                      ; preds = %loadbb74, %loadbb73
  %phi.src171 = phi i64 [ %i.cr, %loadbb73 ], [ %i.da, %loadbb74 ]
  %phi.src272 = phi i64 [ %i.cs, %loadbb73 ], [ %i.db, %loadbb74 ]
  %i.cu = icmp ult i64 %phi.src171, %phi.src272
  %i.cv = select i1 %i.cu, i32 -1, i32 1
  br label %endblock68

loadbb74:                                         ; preds = %loadbb73
  %i.cw = getelementptr i8, ptr %i.cn, i64 8
  %i.cx = getelementptr i8, ptr %i.co, i64 8
  %i.cy = load i64, ptr %i.cw, align 1
  %i.cz = load i64, ptr %i.cx, align 1
  %i.da = tail call i64 @llvm.bswap.i64(i64 %i.cy) ; 2 uses
  %i.db = tail call i64 @llvm.bswap.i64(i64 %i.cz) ; 2 uses
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %endblock68, label %res_block70

endblock68:                                       ; preds = %res_block70, %loadbb74
  %phi.res69 = phi i32 [ 0, %loadbb74 ], [ %i.cv, %res_block70 ]
  %i.dd = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res69, i32 0)
  br label %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit10.i

bb.r:                                             ; preds = %bb.q
  %i.de = icmp eq i8 %i.cd, 0
  tail call void @llvm.assume(i1 %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !134, !noalias !135, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !136, !noalias !137, !noundef !4
  %i.dj = tail call i8 @llvm.ucmp.i8.i64(i64 %i.dg, i64 %i.di)
  br label %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit10.i

_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit10.i: ; preds = %bb.r, %endblock68, %.lr.ph25.i
  %.sroa.0.0.i.i.i.i9.i = phi i8 [ %i.dd, %endblock68 ], [ %i.dj, %bb.r ], [ %i.ck, %.lr.ph25.i ]
  %i.dk = icmp slt i8 %.sroa.0.0.i.i.i.i9.i, 0
  br i1 %i.dk, label %bb.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i

bb.s:                                             ; preds = %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit10.i
  %i.dl = add nuw nsw i64 %.sroa.01.1.i24.i, 1    ; 2 uses
  %exitcond33.not.i = icmp eq i64 %i.dl, %i.m
  br i1 %exitcond33.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph25.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.s, %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit10.i, %bb.p, %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit8.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.p ], [ %.sroa.01.0.i22.i, %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit8.i ], [ %.sroa.01.1.i24.i, %_RNvYNvYNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBW_3ops8function5FnMutTRB5_B22_EE8call_mutCsPYQCUnoTxQ_10collection.exit10.i ], [ %i.m, %bb.s ] ; 5 uses
  %i.dm = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.dm)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i
  %i.dn = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dn, 0
  %or.cond.i = or i1 %i.at, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointId7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.preheader.i.i.i

bb.u:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0)
  %i.do = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

bb.v:                                             ; preds = %bb.i
  %..i11.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i11.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #10
  %i.dp = shl nuw nsw i64 %..i11.i, 1
  %i.dq = or disjoint i64 %i.dp, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointId7reverseCsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdECsPYQCUnoTxQ_10collection.exit.i.i.i, %.preheader20.i, %bb.t, %bb.j
  %.sroa.0.0.i17.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.t ], [ 2, %.preheader20.i ], [ %.sroa.0.0.i475458.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdECsPYQCUnoTxQ_10collection.exit.i.i.i ]
  %i.dr = shl nuw nsw i64 %.sroa.0.0.i17.i, 1
  %i.ds = or disjoint i64 %i.dr, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.t
  %i.dt = phi i64 [ %i.dn, %bb.t ], [ 1, %.preheader.i ]
  %.sroa.0.0.i475458.i = phi i64 [ %.sroa.0.0.i.i, %bb.t ], [ 2, %.preheader.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i475458.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdECsPYQCUnoTxQ_10collection.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.dz, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdECsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.dv = xor i64 %.sroa.0.017.i.i.i, -1
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.dx = getelementptr [24 x i8], ptr %i.du, i64 %i.dv
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, i64 noundef 3)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdECsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.w, !noalias !138

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !138
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdECsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dz = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dz, %i.dt
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointId7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.u, %bb.v, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointId7reverseCsPYQCUnoTxQ_10collection.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ds, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointId7reverseCsPYQCUnoTxQ_10collection.exit.i ], [ %i.dq, %bb.v ], [ %i.do, %bb.u ] ; 2 uses
  %i.ea = lshr i64 %.sroa.023.0, 1
  %i.eb = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ec = sub nsw i64 %factor, %i.ea
  %i.ed = add nuw i64 %i.eb, %factor
  %i.ee = mul i64 %i.ec, %.sroa.0.0
  %i.ef = mul i64 %i.ed, %.sroa.0.0
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eg, i1 false)
  %i.ei = trunc nuw nsw i64 %i.eh to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit
  %.sroa.02.136 = phi i64 [ %i.ej, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ej = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.el, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.en, align 1
  br i1 %i.k, label %bb.ae, label %bb.af

bb.x:                                             ; preds = %.lr.ph
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ej
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !4 ; 3 uses
  %i.eq = lshr i64 %i.ep, 1                       ; 5 uses
  %i.er = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.es = add nuw i64 %i.eq, %i.er                ; 5 uses
  %i.et = sub i64 %.sroa.09.0, %i.es
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.et ; 3 uses
  %i.ev = icmp samesign ugt i64 %i.es, %3
  %i.ew = trunc i64 %.sroa.023.135 to i1
  %i.ex = or i64 %i.ep, %.sroa.023.135
  %i.ey = trunc i64 %i.ex to i1
  %or.cond3.i = or i1 %i.ev, %i.ey
  br i1 %or.cond3.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ez = trunc i64 %i.ep to i1
  br i1 %i.ez, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.fa = shl nuw nsw i64 %i.es, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

bb.aa:                                            ; preds = %bb.ab, %bb.y
  br i1 %i.ew, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.fb = or i64 %i.eq, 1
  %i.fc = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fb, i1 true)
  %i.fd = trunc nuw nsw i64 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 1
  %i.ff = xor i32 %i.fe, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.eu, i64 noundef range(i64 0, 384307168202282326) %i.eq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ff, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.eq
  %i.fh = or i64 %i.er, 1
  %i.fi = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fh, i1 true)
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 1
  %i.fl = xor i32 %i.fk, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.fg, i64 noundef range(i64 0, 384307168202282326) %i.er, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.fl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYBX_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %i.eu, i64 noundef range(i64 0, 384307168202282326) %i.es, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.eq, ptr noalias nofree noundef nonnull %5)
  %i.fm = shl nuw nsw i64 %i.es, 1
  %i.fn = or disjoint i64 %i.fm, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.z, %bb.ad
  %.sroa.0.0.i = phi i64 [ %i.fn, %bb.ad ], [ %i.fa, %bb.z ] ; 2 uses
  %i.fo = icmp ugt i64 %i.ej, 1
  br i1 %i.fo, label %.lr.ph, label %._crit_edge

bb.ae:                                            ; preds = %._crit_edge
  %i.fp = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.fq = lshr i64 %.sroa.018.0, 1
  %i.fr = add nuw i64 %i.fq, %.sroa.09.0
  br label %bb.f

bb.af:                                            ; preds = %._crit_edge
  %i.fs = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.fs, 0
  br i1 %.not30, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ft = or i64 %1, 1
  %i.fu = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ft, i1 true)
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = shl nuw nsw i32 %i.fv, 1
  %i.fx = xor i32 %i.fw, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.fx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYBW_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.af, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.af ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.go, %bb.af ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gm, %bb.af ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit
  %.sroa.021.0 = phi i8 [ %i.ff, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, %bb.h
  br i1 %4, label %bb.v, label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValue7reverseCsPYQCUnoTxQ_10collection.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.q = load i64, ptr %i.p, align 16, !range !188, !alias.scope !189, !noalias !190, !noundef !4 ; 4 uses
  %i.r = icmp slt i64 %i.q, 0
  %i.s = add i64 %i.q, -9223372036854775807
  %i.t = select i1 %i.r, i64 %i.s, i64 0          ; 3 uses
  %i.u = load i64, ptr %i.n, align 16, !range !188, !alias.scope !191, !noalias !192, !noundef !4 ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  %i.w = add i64 %i.u, -9223372036854775807
  %i.x = select i1 %i.v, i64 %i.w, i64 0          ; 2 uses
  %i.y = icmp eq i64 %i.t, %i.x
  br i1 %i.y, label %bb.l, label %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit.i

bb.l:                                             ; preds = %bb.k
  switch i64 %i.t, label %bb.m [
    i64 0, label %.split.i
    i64 1, label %.split20.i
    i64 2, label %.split21.i
    i64 3, label %switch.lookup.i.i.i.i.i
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

.split.i:                                         ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !189, !noalias !190, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ac = load i64, ptr %i.ab, align 16, !alias.scope !189, !noalias !190, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !191, !noalias !192, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ag = load i64, ptr %i.af, align 16, !alias.scope !191, !noalias !192, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ag)
  %i.ah = tail call i32 @memcmp(ptr nonnull %i.aa, ptr nonnull %i.ae, i64 %spec.store.select.i.i.i.i.i), !noalias !193 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %i.ac, %i.ag
  %spec.select.i.i.i.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.al, label %.preheader.i, label %.preheader36.i

.split20.i:                                       ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !189, !noalias !190, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !191, !noalias !192, !noundef !4
  %i.aq = icmp slt i64 %i.an, %i.ap
  br i1 %i.aq, label %.preheader.i, label %.preheader36.i

.split21.i:                                       ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.as = load i128, ptr %i.ar, align 16, !alias.scope !189, !noalias !190, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.au = load i128, ptr %i.at, align 16, !alias.scope !191, !noalias !192, !noundef !4
  %i.av = icmp ult i128 %i.as, %i.au
  br i1 %i.av, label %.preheader.i, label %.preheader36.i

.preheader.i:                                     ; preds = %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit.i, %switch.lookup.i.i.i.i.i, %.split21.i, %.split20.i, %.split.i
  %.not55.i = icmp eq i64 %i.m, 2
  br i1 %.not55.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph47.i

switch.lookup.i.i.i.i.i:                          ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ax = load i8, ptr %i.aw, align 8, !range !6, !alias.scope !189, !noalias !190, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.az = load i8, ptr %i.ay, align 8, !range !6, !alias.scope !191, !noalias !192, !noundef !4
  %i.ba = icmp samesign ult i8 %i.ax, %i.az
  br i1 %i.ba, label %.preheader.i, label %.preheader36.i

_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.k
  %i.bb = icmp samesign ult i64 %i.t, %i.x
  br i1 %i.bb, label %.preheader.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit.i, %switch.lookup.i.i.i.i.i, %.split21.i, %.split20.i, %.split.i
  %.not54.i = icmp eq i64 %i.m, 2
  br i1 %.not54.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader36.i, %bb.p
  %i.bc = phi i64 [ %i.bh, %bb.p ], [ %i.q, %.preheader36.i ] ; 2 uses
  %.sroa.01.0.i40.i = phi i64 [ %i.cs, %bb.p ], [ 2, %.preheader36.i ] ; 8 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.01.0.i40.i ; 6 uses
  %i.be = add nsw i64 %.sroa.01.0.i40.i, -1       ; 2 uses
  %i.bf = icmp samesign ult i64 %i.be, %i.m
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.be ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.bh = load i64, ptr %i.bd, align 16, !range !188, !alias.scope !202, !noalias !203, !noundef !4 ; 3 uses
  %i.bi = icmp slt i64 %i.bh, 0
  %i.bj = add i64 %i.bh, -9223372036854775807
  %i.bk = select i1 %i.bi, i64 %i.bj, i64 0       ; 3 uses
  %i.bl = icmp slt i64 %i.bc, 0
  %i.bm = add i64 %i.bc, -9223372036854775807
  %i.bn = select i1 %i.bl, i64 %i.bm, i64 0       ; 2 uses
  %i.bo = icmp eq i64 %i.bk, %i.bn
  br i1 %i.bo, label %bb.n, label %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit11.i

bb.n:                                             ; preds = %.lr.ph.i
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYBW_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection:bb.a
bb.r:                                             ; preds = %bb.q
  unreachable

.split25.i:                                       ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !215, !noalias !216, !nonnull !4, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.dj = load i64, ptr %i.di, align 16, !alias.scope !215, !noalias !216, !noundef !4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !217, !noalias !218, !nonnull !4, !noundef !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dn = load i64, ptr %i.dm, align 16, !alias.scope !217, !noalias !218, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 %i.dn)
  %i.do = tail call i32 @memcmp(ptr nonnull %i.dh, ptr nonnull %i.dl, i64 %spec.store.select.i.i.i.i14.i), !noalias !219 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp eq i32 %i.do, 0
  %i.dr = sub i64 %i.dj, %i.dn
  %spec.select.i.i.i.i15.i = select i1 %i.dq, i64 %i.dr, i64 %i.dp
  %i.ds = icmp slt i64 %spec.select.i.i.i.i15.i, 0
  br i1 %i.ds, label %bb.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i

.split26.i:                                       ; preds = %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !215, !noalias !216, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !217, !noalias !218, !noundef !4
  %i.dx = icmp slt i64 %i.du, %i.dw
  br i1 %i.dx, label %bb.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i

.split27.i:                                       ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.dz = load i128, ptr %i.dy, align 16, !alias.scope !215, !noalias !216, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.eb = load i128, ptr %i.ea, align 16, !alias.scope !217, !noalias !218, !noundef !4
  %i.ec = icmp ult i128 %i.dz, %i.eb
  br i1 %i.ec, label %bb.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i

switch.lookup.i.i.i.i13.i:                        ; preds = %bb.q
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.ee = load i8, ptr %i.ed, align 8, !range !6, !alias.scope !215, !noalias !216, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.eg = load i8, ptr %i.ef, align 8, !range !6, !alias.scope !217, !noalias !218, !noundef !4
  %i.eh = icmp samesign ult i8 %i.ee, %i.eg
  br i1 %i.eh, label %bb.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i

_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit16.i: ; preds = %.lr.ph47.i
  %i.ei = icmp samesign ult i64 %i.db, %i.de
  br i1 %i.ei, label %bb.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i

bb.s:                                             ; preds = %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit16.i, %switch.lookup.i.i.i.i13.i, %.split27.i, %.split26.i, %.split25.i
  %i.ej = add nuw nsw i64 %.sroa.01.1.i46.i, 1    ; 2 uses
  %exitcond59.not.i = icmp eq i64 %i.ej, %i.m
  br i1 %exitcond59.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph47.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.p, %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit11.i, %switch.lookup.i.i.i.i8.i, %.split24.i, %.split23.i, %.split22.i, %bb.s, %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit16.i, %switch.lookup.i.i.i.i13.i, %.split27.i, %.split26.i, %.split25.i, %.preheader36.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader.i ], [ true, %bb.s ], [ false, %.preheader36.i ], [ true, %.split25.i ], [ true, %.split26.i ], [ true, %.split27.i ], [ true, %switch.lookup.i.i.i.i13.i ], [ true, %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit16.i ], [ false, %.split22.i ], [ false, %.split23.i ], [ false, %.split24.i ], [ false, %switch.lookup.i.i.i.i8.i ], [ false, %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit11.i ], [ false, %bb.p ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader.i ], [ %i.m, %bb.s ], [ 2, %.preheader36.i ], [ %.sroa.01.1.i46.i, %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit16.i ], [ %.sroa.01.1.i46.i, %switch.lookup.i.i.i.i13.i ], [ %.sroa.01.1.i46.i, %.split27.i ], [ %.sroa.01.1.i46.i, %.split26.i ], [ %.sroa.01.1.i46.i, %.split25.i ], [ %i.m, %bb.p ], [ %.sroa.01.0.i40.i, %_RNvYNvYNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtB16_3ops8function5FnMutTRB5_B2d_EE8call_mutCsPYQCUnoTxQ_10collection.exit11.i ], [ %.sroa.01.0.i40.i, %switch.lookup.i.i.i.i8.i ], [ %.sroa.01.0.i40.i, %.split24.i ], [ %.sroa.01.0.i40.i, %.split23.i ], [ %.sroa.01.0.i40.i, %.split22.i ] ; 7 uses
  %i.ek = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ek)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB12_NtNtB8_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.w, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValue7reverseCsPYQCUnoTxQ_10collection.exit.i

bb.u:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.m, i64 %.sroa.01.0)
  %i.el = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

bb.v:                                             ; preds = %bb.i
  %..i17.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 16 %i.n, i64 noundef %..i17.i, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #10
  %i.em = shl nuw nsw i64 %..i17.i, 1
  %i.en = or disjoint i64 %i.em, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValue7reverseCsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueECsPYQCUnoTxQ_10collection.exit.i.i.i, %bb.w, %bb.t, %bb.j
  %.sroa.0.0.i33.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.t ], [ %.sroa.0.0.i.i, %bb.w ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueECsPYQCUnoTxQ_10collection.exit.i.i.i ]
  %i.eo = shl nuw nsw i64 %.sroa.0.0.i33.i, 1
  %i.ep = or disjoint i64 %i.eo, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

bb.w:                                             ; preds = %bb.t
  %i.eq = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValue7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.w
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueECsPYQCUnoTxQ_10collection.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ew, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueECsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.es = xor i64 %.sroa.0.017.i.i.i, -1
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.eu = getelementptr [32 x i8], ptr %i.er, i64 %i.es
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.et, ptr noundef nonnull %i.eu, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueECsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.x, !noalias !220

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !220
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueECsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ew = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ew, %i.eq
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValue7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.u, %bb.v, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValue7reverseCsPYQCUnoTxQ_10collection.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ep, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValue7reverseCsPYQCUnoTxQ_10collection.exit.i ], [ %i.en, %bb.v ], [ %i.el, %bb.u ] ; 2 uses
  %i.ex = lshr i64 %.sroa.023.0, 1
  %i.ey = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ez = sub nsw i64 %factor, %i.ex
  %i.fa = add nuw nsw i64 %i.ey, %factor
  %i.fb = mul i64 %i.ez, %.sroa.0.0
  %i.fc = mul i64 %i.fa, %.sroa.0.0
  %i.fd = xor i64 %i.fc, %i.fb
  %i.fe = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fd, i1 false)
  %i.ff = trunc nuw nsw i64 %i.fe to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit
  %.sroa.02.136 = phi i64 [ %i.fg, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.fg = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.fi, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.y

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.fk, align 1
  br i1 %i.k, label %bb.af, label %bb.ag

bb.y:                                             ; preds = %.lr.ph
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fg
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !4 ; 3 uses
  %i.fn = lshr i64 %i.fm, 1                       ; 5 uses
  %i.fo = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.fp = add nuw i64 %i.fn, %i.fo                ; 5 uses
  %i.fq = sub i64 %.sroa.09.0, %i.fp
  %i.fr = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.fq ; 3 uses
  %i.fs = icmp samesign ugt i64 %i.fp, %3
  %i.ft = trunc i64 %.sroa.023.135 to i1
  %i.fu = or i64 %i.fm, %.sroa.023.135
  %i.fv = trunc i64 %i.fu to i1
  %or.cond3.i = or i1 %i.fs, %i.fv
  br i1 %or.cond3.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fw = trunc i64 %i.fm to i1
  br i1 %i.fw, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.fx = shl nuw nsw i64 %i.fp, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

bb.ab:                                            ; preds = %bb.ac, %bb.z
  br i1 %i.ft, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.fy = or i64 %i.fn, 1
  %i.fz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.fy, i1 true)
  %i.ga = trunc nuw nsw i64 %i.fz to i32
  %i.gb = shl nuw nsw i32 %i.ga, 1
  %i.gc = xor i32 %i.gb, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 16 %i.fr, i64 noundef range(i64 0, 288230376151711744) %i.fn, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.gc, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %i.fn
  %i.ge = or i64 %i.fo, 1
  %i.gf = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ge, i1 true)
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = shl nuw nsw i32 %i.gg, 1
  %i.gi = xor i32 %i.gh, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 16 %i.gd, i64 noundef range(i64 0, 288230376151711744) %i.fo, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.gi, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYBX_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 16 %i.fr, i64 noundef range(i64 0, 288230376151711744) %i.fp, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.fn, ptr noalias nofree noundef nonnull %5)
  %i.gj = shl nuw nsw i64 %i.fp, 1
  %i.gk = or disjoint i64 %i.gj, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB16_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.aa, %bb.ae
  %.sroa.0.0.i = phi i64 [ %i.gk, %bb.ae ], [ %i.fx, %bb.aa ] ; 2 uses
  %i.gl = icmp ugt i64 %i.fg, 1
  br i1 %i.gl, label %.lr.ph, label %._crit_edge

bb.af:                                            ; preds = %._crit_edge
  %i.gm = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.gn = lshr i64 %.sroa.018.0, 1
  %i.go = add nuw i64 %i.gn, %.sroa.09.0
  br label %bb.f

bb.ag:                                            ; preds = %._crit_edge
  %i.gp = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gp, 0
  br i1 %.not30, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gq = or i64 %1, 1
  %i.gr = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.gq, i1 true)
  %i.gs = trunc nuw nsw i64 %i.gr to i32
  %i.gt = shl nuw nsw i32 %i.gs, 1
  %i.gu = xor i32 %i.gt, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.gu, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.ai
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keymNCNvMNtNtB12_6shards12shard_holderNtB2U_11ShardHolder30get_resharding_operations_info0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB32_11ShardHolder30get_resharding_operations_info0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB32_11ShardHolder30get_resharding_operations_info0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB32_11ShardHolder30get_resharding_operations_info0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB31_11ShardHolder30get_resharding_operations_info0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfo7reverseBA_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104
  %.val10.i = load i32, ptr %i.p, align 8, !alias.scope !225, !noalias !226, !noundef !4 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 48
  %.val11.i = load i32, ptr %i.q, align 8, !alias.scope !225, !noalias !226, !noundef !4
  %i.r = icmp uge i32 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfo7reverseBA_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %.val8.i = load i32, ptr %i.t, align 8, !alias.scope !225, !noalias !226, !noundef !4 ; 2 uses
  %i.u = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB31_11ShardHolder30get_resharding_operations_info0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB31_11ShardHolder30get_resharding_operations_info0E0EB18_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %.val.i = load i32, ptr %i.x, align 8, !alias.scope !225, !noalias !226, !noundef !4 ; 2 uses
  %i.y = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB31_11ShardHolder30get_resharding_operations_info0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB31_11ShardHolder30get_resharding_operations_info0E0EB18_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB31_11ShardHolder30get_resharding_operations_info0E0EB18_.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB31_11ShardHolder30get_resharding_operations_info0E0EB18_.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfo7reverseBA_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB32_11ShardHolder30get_resharding_operations_info0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvMNtNtB1b_6shards12shard_holderNtB34_11ShardHolder30get_resharding_operations_info0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB32_11ShardHolder30get_resharding_operations_info0E0EB19_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfo7reverseBA_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB16_.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB16_.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB32_11ShardHolder30get_resharding_operations_info0E0EB19_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB16_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB16_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [56 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 7)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB16_.exit.i.i.i unwind label %bb.q, !noalias !226

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !226
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB16_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfo7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB32_11ShardHolder30get_resharding_operations_info0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfo7reverseBA_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfo7reverseBA_.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB35_11ShardHolder30get_resharding_operations_info0E0EB1c_.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB35_11ShardHolder30get_resharding_operations_info0E0EB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB35_11ShardHolder30get_resharding_operations_info0E0EB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB35_11ShardHolder30get_resharding_operations_info0E0EB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB35_11ShardHolder30get_resharding_operations_info0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB35_11ShardHolder30get_resharding_operations_info0E0EB1c_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.135 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.135
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB35_11ShardHolder30get_resharding_operations_info0E0EB1c_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvMNtNtB1b_6shards12shard_holderNtB34_11ShardHolder30get_resharding_operations_info0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvMNtNtB1b_6shards12shard_holderNtB34_11ShardHolder30get_resharding_operations_info0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keymNCNvMNtNtB13_6shards12shard_holderNtB2V_11ShardHolder30get_resharding_operations_info0E0EB13_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB35_11ShardHolder30get_resharding_operations_info0E0EB1c_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB35_11ShardHolder30get_resharding_operations_info0E0EB1c_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvMNtNtB1b_6shards12shard_holderNtB34_11ShardHolder30get_resharding_operations_info0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keymNCNvMNtNtB12_6shards12shard_holderNtB2X_11ShardHolder23get_shard_transfer_infos_0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB35_11ShardHolder23get_shard_transfer_infos_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB35_11ShardHolder23get_shard_transfer_infos_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB35_11ShardHolder23get_shard_transfer_infos_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB34_11ShardHolder23get_shard_transfer_infos_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfo7reverseBA_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104
  %.val10.i = load i32, ptr %i.p, align 8, !alias.scope !231, !noalias !232, !noundef !4 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 48
  %.val11.i = load i32, ptr %i.q, align 8, !alias.scope !231, !noalias !232, !noundef !4
  %i.r = icmp uge i32 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfo7reverseBA_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %.val8.i = load i32, ptr %i.t, align 8, !alias.scope !231, !noalias !232, !noundef !4 ; 2 uses
  %i.u = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB34_11ShardHolder23get_shard_transfer_infos_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB34_11ShardHolder23get_shard_transfer_infos_0E0EB18_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %.val.i = load i32, ptr %i.x, align 8, !alias.scope !231, !noalias !232, !noundef !4 ; 2 uses
  %i.y = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB34_11ShardHolder23get_shard_transfer_infos_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB34_11ShardHolder23get_shard_transfer_infos_0E0EB18_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB34_11ShardHolder23get_shard_transfer_infos_0E0EB18_.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvMNtNtB18_6shards12shard_holderNtB34_11ShardHolder23get_shard_transfer_infos_0E0EB18_.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfo7reverseBA_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB35_11ShardHolder23get_shard_transfer_infos_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvMNtNtB1b_6shards12shard_holderNtB37_11ShardHolder23get_shard_transfer_infos_0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB35_11ShardHolder23get_shard_transfer_infos_0E0EB19_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfo7reverseBA_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoEB16_.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoEB16_.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB35_11ShardHolder23get_shard_transfer_infos_0E0EB19_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoEB16_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoEB16_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [56 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 7)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoEB16_.exit.i.i.i unwind label %bb.q, !noalias !232

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !232
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoEB16_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfo7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvMNtNtB19_6shards12shard_holderNtB35_11ShardHolder23get_shard_transfer_infos_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfo7reverseBA_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfo7reverseBA_.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB38_11ShardHolder23get_shard_transfer_infos_0E0EB1c_.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB38_11ShardHolder23get_shard_transfer_infos_0E0EB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB38_11ShardHolder23get_shard_transfer_infos_0E0EB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB38_11ShardHolder23get_shard_transfer_infos_0E0EB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB38_11ShardHolder23get_shard_transfer_infos_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB38_11ShardHolder23get_shard_transfer_infos_0E0EB1c_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.135 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.135
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB38_11ShardHolder23get_shard_transfer_infos_0E0EB1c_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvMNtNtB1b_6shards12shard_holderNtB37_11ShardHolder23get_shard_transfer_infos_0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvMNtNtB1b_6shards12shard_holderNtB37_11ShardHolder23get_shard_transfer_infos_0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keymNCNvMNtNtB13_6shards12shard_holderNtB2Y_11ShardHolder23get_shard_transfer_infos_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB38_11ShardHolder23get_shard_transfer_infos_0E0EB1c_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvMNtNtB1c_6shards12shard_holderNtB38_11ShardHolder23get_shard_transfer_infos_0E0EB1c_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvMNtNtB1b_6shards12shard_holderNtB37_11ShardHolder23get_shard_transfer_infos_0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvMs3_BZ_NtBZ_15SlowRequestsLog15get_log_entriess0_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs3_B16_NtB16_15SlowRequestsLog15get_log_entriess0_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.cj, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs3_B16_NtB16_15SlowRequestsLog15get_log_entriess0_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs3_B16_NtB16_15SlowRequestsLog15get_log_entriess0_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7reverseBB_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !244, !noalias !245, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !244, !noalias !245, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val11.i, i64 104
  %i.r = load i64, ptr %i.q, align 8, !noalias !246, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 104
  %i.t = load i64, ptr %i.s, align 8, !noalias !246, !noundef !4 ; 4 uses
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %.split.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit.i

.split.i:                                         ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val11.i, i64 112
  %i.w = load i32, ptr %i.v, align 8, !range !247, !noalias !246, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.val10.i, i64 112
  %i.y = load i32, ptr %i.x, align 8, !range !247, !noalias !246, !noundef !4
  %i.z = icmp samesign ult i32 %i.w, %i.y
  br i1 %i.z, label %.preheader.i, label %.preheader29.i

.preheader.i:                                     ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit.i, %.split.i
  %.not40.i = icmp eq i64 %i.m, 2
  br i1 %.not40.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i, label %.lr.ph35.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit.i: ; preds = %bb.k
  %i.aa = icmp ult i64 %i.r, %i.t
  br i1 %i.aa, label %.preheader.i, label %.preheader29.i

.preheader29.i:                                   ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit.i, %.split.i
  %.not39.i = icmp eq i64 %i.m, 2
  br i1 %.not39.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader29.i, %bb.l
  %i.ab = phi i64 [ %i.ag, %bb.l ], [ %i.t, %.preheader29.i ] ; 2 uses
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader29.i ]
  %.sroa.01.0.i31.i = phi i64 [ %i.ao, %bb.l ], [ 2, %.preheader29.i ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i31.i
  %i.ad = add nsw i64 %.sroa.01.0.i31.i, -1
  %i.ae = icmp samesign ult i64 %i.ad, %i.m
  tail call void @llvm.assume(i1 %i.ae)
  %.val8.i = load ptr, ptr %i.ac, align 8, !alias.scope !244, !noalias !245, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val8.i, i64 104
  %i.ag = load i64, ptr %i.af, align 8, !noalias !246, !noundef !4 ; 3 uses
  %i.ah = icmp eq i64 %i.ab, %i.ag
  br i1 %i.ah, label %.split19.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit13.i

.split19.i:                                       ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i, i64 112
  %i.aj = load i32, ptr %i.ai, align 8, !range !247, !noalias !246, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.val8.i, i64 112
  %i.al = load i32, ptr %i.ak, align 8, !range !247, !noalias !246, !noundef !4
  %i.am = icmp samesign ult i32 %i.aj, %i.al
  br i1 %i.am, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i, label %bb.l

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit13.i: ; preds = %.lr.ph.i
  %i.an = icmp ult i64 %i.ab, %i.ag
  br i1 %i.an, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit13.i, %.split19.i
  %i.ao = add nuw nsw i64 %.sroa.01.0.i31.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i, label %.lr.ph.i

.lr.ph35.i:                                       ; preds = %.preheader.i, %bb.m
  %i.ap = phi i64 [ %i.au, %bb.m ], [ %i.t, %.preheader.i ] ; 2 uses
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i34.i = phi i64 [ %i.bc, %bb.m ], [ 2, %.preheader.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i34.i
  %i.ar = add nsw i64 %.sroa.01.1.i34.i, -1
  %i.as = icmp samesign ult i64 %i.ar, %i.m
  tail call void @llvm.assume(i1 %i.as)
  %.val.i = load ptr, ptr %i.aq, align 8, !alias.scope !244, !noalias !245, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 104
  %i.au = load i64, ptr %i.at, align 8, !noalias !246, !noundef !4 ; 3 uses
  %i.av = icmp eq i64 %i.ap, %i.au
  br i1 %i.av, label %.split20.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit15.i

.split20.i:                                       ; preds = %.lr.ph35.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.val7.i, i64 112
  %i.ax = load i32, ptr %i.aw, align 8, !range !247, !noalias !246, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 112
  %i.az = load i32, ptr %i.ay, align 8, !range !247, !noalias !246, !noundef !4
  %i.ba = icmp samesign ult i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit15.i: ; preds = %.lr.ph35.i
  %i.bb = icmp ult i64 %i.ap, %i.au
  br i1 %i.bb, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i

bb.m:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit15.i, %.split20.i
  %i.bc = add nuw nsw i64 %.sroa.01.1.i34.i, 1    ; 2 uses
  %exitcond44.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond44.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i, label %.lr.ph35.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i: ; preds = %bb.l, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit13.i, %.split19.i, %bb.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit15.i, %.split20.i, %.preheader29.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader.i ], [ false, %.preheader29.i ], [ true, %bb.m ], [ true, %.split20.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit15.i ], [ false, %.split19.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit13.i ], [ false, %bb.l ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader.i ], [ 2, %.preheader29.i ], [ %i.m, %bb.m ], [ %.sroa.01.1.i34.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit15.i ], [ %.sroa.01.1.i34.i, %.split20.i ], [ %i.m, %bb.l ], [ %.sroa.01.0.i31.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7sort_byNCNvMs3_BB_NtBB_15SlowRequestsLog15get_log_entriess0_0E0BF_.exit13.i ], [ %.sroa.01.0.i31.i, %.split19.i ] ; 9 uses
  %i.bd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bd)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs3_B15_NtB15_15SlowRequestsLog15get_log_entriess0_0E0EB19_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7reverseBB_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.be = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs3_B16_NtB16_15SlowRequestsLog15get_log_entriess0_0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i16.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs3_B18_NtB18_15SlowRequestsLog15get_log_entriess0_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i16.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.bf = shl nuw nsw i64 %..i16.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs3_B16_NtB16_15SlowRequestsLog15get_log_entriess0_0E0EB1a_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7reverseBB_.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i, %middle.block, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i26.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %middle.block ], [ %.sroa.0.0.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i ]
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i26.i, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs3_B16_NtB16_15SlowRequestsLog15get_log_entriess0_0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.bj = lshr i64 %.sroa.0.0.i.i, 1              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7reverseBB_.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.preheader.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.preheader.i.i.i: ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i, 8
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = xor i64 %index, -1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.bn = getelementptr [8 x i8], ptr %i.bk, i64 %i.bl ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bm, align 8, !alias.scope !250, !noalias !251
  %wide.load60 = load <2 x ptr>, ptr %i.bo, align 8, !alias.scope !250, !noalias !251
  %i.bp = getelementptr i8, ptr %i.bn, i64 -8
  %i.bq = getelementptr i8, ptr %i.bn, i64 -24
  %wide.load61 = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !252, !noalias !253
  %wide.load62 = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !252, !noalias !253
  %reverse = shufflevector <2 x i64> %wide.load61, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse63 = shufflevector <2 x i64> %wide.load62, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <2 x i64> %reverse, ptr %i.bm, align 8, !alias.scope !250, !noalias !251
  store <2 x i64> %reverse63, ptr %i.br, align 8, !alias.scope !250, !noalias !251
  %i.bs = getelementptr i8, ptr %i.bn, i64 -8
  %i.bt = getelementptr i8, ptr %i.bn, i64 -24
  %reverse64 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse65 = shufflevector <2 x ptr> %wide.load60, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse64, ptr %i.bs, align 8, !alias.scope !252, !noalias !253
  store <2 x ptr> %reverse65, ptr %i.bt, align 8, !alias.scope !252, !noalias !253
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7reverseBB_.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.ca, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i.preheader ] ; 3 uses
  %i.bv = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bk, i64 %i.bv ; 2 uses
  %i.by = load ptr, ptr %i.bw, align 8, !alias.scope !250, !noalias !251, !nonnull !4, !align !5, !noundef !4
  %i.bz = load i64, ptr %i.bx, align 8, !alias.scope !252, !noalias !253
  store i64 %i.bz, ptr %i.bw, align 8, !alias.scope !250, !noalias !251
  store ptr %i.by, ptr %i.bx, align 8, !alias.scope !252, !noalias !253
  %i.ca = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ca, %i.bj
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7reverseBB_.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry12split_at_mutBB_.exit11.i.i.i, !llvm.loop !243

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs3_B16_NtB16_15SlowRequestsLog15get_log_entriess0_0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7reverseBB_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bi, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntry7reverseBB_.exit.i ], [ %i.bg, %bb.p ], [ %i.be, %bb.o ] ; 2 uses
  %i.cb = lshr i64 %.sroa.023.0, 1
  %i.cc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cd = sub nsw i64 %factor, %i.cb
  %i.ce = add nuw nsw i64 %i.cc, %factor
  %i.cf = mul i64 %i.cd, %.sroa.0.0
  %i.cg = mul i64 %i.ce, %.sroa.0.0
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 false)
  %i.cj = trunc nuw nsw i64 %i.ci to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs3_B19_NtB19_15SlowRequestsLog15get_log_entriess0_0E0EB1d_.exit
  %.sroa.02.136 = phi i64 [ %i.ck, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs3_B19_NtB19_15SlowRequestsLog15get_log_entriess0_0E0EB1d_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs3_B19_NtB19_15SlowRequestsLog15get_log_entriess0_0E0EB1d_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ck = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.cm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs3_B19_NtB19_15SlowRequestsLog15get_log_entriess0_0E0EB1d_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs3_B19_NtB19_15SlowRequestsLog15get_log_entriess0_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs3_B19_NtB19_15SlowRequestsLog15get_log_entriess0_0E0EB1d_.exit ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.co, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ck
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !4 ; 3 uses
  %i.cr = lshr i64 %i.cq, 1                       ; 5 uses
  %i.cs = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.ct = add nuw i64 %i.cr, %i.cs                ; 5 uses
  %i.cu = sub i64 %.sroa.09.0, %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu ; 3 uses
  %i.cw = icmp samesign ugt i64 %i.ct, %3
  %i.cx = trunc i64 %.sroa.023.135 to i1
  %i.cy = or i64 %i.cq, %.sroa.023.135
  %i.cz = trunc i64 %i.cy to i1
  %or.cond3.i = or i1 %i.cw, %i.cz
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.da = trunc i64 %i.cq to i1
  br i1 %i.da, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.db = shl nuw nsw i64 %i.ct, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs3_B19_NtB19_15SlowRequestsLog15get_log_entriess0_0E0EB1d_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cx, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.dc = or i64 %i.cr, 1
  %i.dd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dc, i1 true)
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 1
  %i.dg = xor i32 %i.df, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs3_B18_NtB18_15SlowRequestsLog15get_log_entriess0_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.cv, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cr
  %i.di = or i64 %i.cs, 1
  %i.dj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs3_B18_NtB18_15SlowRequestsLog15get_log_entriess0_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 1152921504606846976) %i.cs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCNvMs3_B10_NtB10_15SlowRequestsLog15get_log_entriess0_0E0EB14_(ptr noalias nofree noundef nonnull align 8 %i.cv, i64 noundef range(i64 0, 1152921504606846976) %i.ct, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cr, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.dn = shl nuw nsw i64 %i.ct, 1
  %i.do = or disjoint i64 %i.dn, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs3_B19_NtB19_15SlowRequestsLog15get_log_entriess0_0E0EB1d_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs3_B19_NtB19_15SlowRequestsLog15get_log_entriess0_0E0EB1d_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.do, %bb.x ], [ %i.db, %bb.t ] ; 2 uses
  %i.dp = icmp ugt i64 %i.ck, 1
  br i1 %i.dp, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dq = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.dr = lshr i64 %.sroa.018.0, 1
  %i.ds = add nuw i64 %i.dr, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dt = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dt, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.du = or i64 %1, 1
  %i.dv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs3_B18_NtB18_15SlowRequestsLog15get_log_entriess0_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB3f_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5b_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBX_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1D_11conversionsNtB1B_16CollectionConfigINtNtBa_7convert7TryFromNtB6V_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 64051194700380388) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4q_8adapters12GenericShuntINtNtB5l_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1K_11conversionsNtB1I_16CollectionConfigINtNtBa_7convert7TryFromNtB76_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4q_8adapters12GenericShuntINtNtB5l_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1K_11conversionsNtB1I_16CollectionConfigINtNtBa_7convert7TryFromNtB76_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4q_8adapters12GenericShuntINtNtB5l_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1K_11conversionsNtB1I_16CollectionConfigINtNtBa_7convert7TryFromNtB76_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4p_8adapters12GenericShuntINtNtB5k_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1J_11conversionsNtB1H_16CollectionConfigINtNtB8_7convert7TryFromNtB75_16CollectionConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 152
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !269, !noalias !270, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 160
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !269, !noalias !270, !noundef !4 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !269, !noalias !270, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !269, !noalias !270, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !271, !noalias !272 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [144 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !269, !noalias !270, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !269, !noalias !270, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !273, !noalias !272 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4p_8adapters12GenericShuntINtNtB5k_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1J_11conversionsNtB1H_16CollectionConfigINtNtB8_7convert7TryFromNtB75_16CollectionConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4p_8adapters12GenericShuntINtNtB5k_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1J_11conversionsNtB1H_16CollectionConfigINtNtB8_7convert7TryFromNtB75_16CollectionConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [144 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !269, !noalias !270, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !269, !noalias !270, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !274, !noalias !272 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4p_8adapters12GenericShuntINtNtB5k_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1J_11conversionsNtB1H_16CollectionConfigINtNtB8_7convert7TryFromNtB75_16CollectionConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4p_8adapters12GenericShuntINtNtB5k_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1J_11conversionsNtB1H_16CollectionConfigINtNtB8_7convert7TryFromNtB75_16CollectionConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4p_8adapters12GenericShuntINtNtB5k_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1J_11conversionsNtB1H_16CollectionConfigINtNtB8_7convert7TryFromNtB75_16CollectionConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4p_8adapters12GenericShuntINtNtB5k_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1J_11conversionsNtB1H_16CollectionConfigINtNtB8_7convert7TryFromNtB75_16CollectionConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 64051194700380388) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4q_8adapters12GenericShuntINtNtB5l_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1K_11conversionsNtB1I_16CollectionConfigINtNtBa_7convert7TryFromNtB76_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 64051194700380388) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3p_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4s_8adapters12GenericShuntINtNtB5n_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1M_11conversionsNtB1K_16CollectionConfigINtNtBa_7convert7TryFromNtB78_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4q_8adapters12GenericShuntINtNtB5l_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1K_11conversionsNtB1I_16CollectionConfigINtNtBa_7convert7TryFromNtB76_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4q_8adapters12GenericShuntINtNtB5l_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1K_11conversionsNtB1I_16CollectionConfigINtNtBa_7convert7TryFromNtB76_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [144 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [144 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [144 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 18)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i unwind label %bb.q, !noalias !270

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !270
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4q_8adapters12GenericShuntINtNtB5l_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1K_11conversionsNtB1I_16CollectionConfigINtNtBa_7convert7TryFromNtB76_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1N_11conversionsNtB1L_16CollectionConfigINtNtBa_7convert7TryFromNtB79_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1N_11conversionsNtB1L_16CollectionConfigINtNtBa_7convert7TryFromNtB79_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1N_11conversionsNtB1L_16CollectionConfigINtNtBa_7convert7TryFromNtB79_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1N_11conversionsNtB1L_16CollectionConfigINtNtBa_7convert7TryFromNtB79_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1N_11conversionsNtB1L_16CollectionConfigINtNtBa_7convert7TryFromNtB79_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1N_11conversionsNtB1L_16CollectionConfigINtNtBa_7convert7TryFromNtB79_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1N_11conversionsNtB1L_16CollectionConfigINtNtBa_7convert7TryFromNtB79_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3p_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4s_8adapters12GenericShuntINtNtB5n_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1M_11conversionsNtB1K_16CollectionConfigINtNtBa_7convert7TryFromNtB78_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 64051194700380388) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [144 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3p_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4s_8adapters12GenericShuntINtNtB5n_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1M_11conversionsNtB1K_16CollectionConfigINtNtBa_7convert7TryFromNtB78_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 64051194700380388) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB3g_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB4i_8adapters12GenericShuntINtNtB5c_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBY_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1E_11conversionsNtB1C_16CollectionConfigINtNtBa_7convert7TryFromNtB6W_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1G_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 64051194700380388) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1N_11conversionsNtB1L_16CollectionConfigINtNtBa_7convert7TryFromNtB79_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4t_8adapters12GenericShuntINtNtB5o_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1N_11conversionsNtB1L_16CollectionConfigINtNtBa_7convert7TryFromNtB79_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3p_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4s_8adapters12GenericShuntINtNtB5n_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1M_11conversionsNtB1K_16CollectionConfigINtNtBa_7convert7TryFromNtB78_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 64051194700380388) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB3f_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3f_4IterBX_B1z_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3M_NtB62_9Anonymize9anonymize0EE0E0EB1F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 64051194700380388) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3n_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3U_NtB6d_9Anonymize9anonymize0EE0E0EB1M_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3n_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3U_NtB6d_9Anonymize9anonymize0EE0E0EB1M_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3n_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3U_NtB6d_9Anonymize9anonymize0EE0E0EB1M_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3T_NtB6c_9Anonymize9anonymize0EE0E0EB1L_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 152
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !288, !noalias !289, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 160
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !288, !noalias !289, !noundef !4 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !288, !noalias !289, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !288, !noalias !289, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !290, !noalias !291 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [144 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !288, !noalias !289, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !288, !noalias !289, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !292, !noalias !291 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3T_NtB6c_9Anonymize9anonymize0EE0E0EB1L_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3T_NtB6c_9Anonymize9anonymize0EE0E0EB1L_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [144 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !288, !noalias !289, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !288, !noalias !289, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !293, !noalias !291 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3T_NtB6c_9Anonymize9anonymize0EE0E0EB1L_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3T_NtB6c_9Anonymize9anonymize0EE0E0EB1L_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3T_NtB6c_9Anonymize9anonymize0EE0E0EB1L_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3m_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3T_NtB6c_9Anonymize9anonymize0EE0E0EB1L_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 64051194700380388) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3n_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3U_NtB6d_9Anonymize9anonymize0EE0E0EB1M_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 64051194700380388) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3p_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4s_8adapters3map3MapINtB3p_4IterB16_B1I_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3W_NtB6f_9Anonymize9anonymize0EE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3n_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3U_NtB6d_9Anonymize9anonymize0EE0E0EB1M_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3n_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3U_NtB6d_9Anonymize9anonymize0EE0E0EB1M_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [144 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [144 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [144 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 18)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i unwind label %bb.q, !noalias !289

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !289
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEB1J_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3n_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3n_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3U_NtB6d_9Anonymize9anonymize0EE0E0EB1M_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsE7reverseB1d_.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4t_8adapters3map3MapINtB3q_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3X_NtB6g_9Anonymize9anonymize0EE0E0EB1P_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4t_8adapters3map3MapINtB3q_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3X_NtB6g_9Anonymize9anonymize0EE0E0EB1P_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4t_8adapters3map3MapINtB3q_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3X_NtB6g_9Anonymize9anonymize0EE0E0EB1P_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4t_8adapters3map3MapINtB3q_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3X_NtB6g_9Anonymize9anonymize0EE0E0EB1P_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4t_8adapters3map3MapINtB3q_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3X_NtB6g_9Anonymize9anonymize0EE0E0EB1P_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4t_8adapters3map3MapINtB3q_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3X_NtB6g_9Anonymize9anonymize0EE0E0EB1P_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4t_8adapters3map3MapINtB3q_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3X_NtB6g_9Anonymize9anonymize0EE0E0EB1P_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3p_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4s_8adapters3map3MapINtB3p_4IterB16_B1I_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3W_NtB6f_9Anonymize9anonymize0EE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 64051194700380388) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [144 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3p_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4s_8adapters3map3MapINtB3p_4IterB16_B1I_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3W_NtB6f_9Anonymize9anonymize0EE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 64051194700380388) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB3g_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4i_8adapters3map3MapINtB3g_4IterBY_B1A_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3N_NtB63_9Anonymize9anonymize0EE0E0EB1G_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 64051194700380388) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4t_8adapters3map3MapINtB3q_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3X_NtB6g_9Anonymize9anonymize0EE0E0EB1P_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3q_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4t_8adapters3map3MapINtB3q_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3X_NtB6g_9Anonymize9anonymize0EE0E0EB1P_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3p_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4s_8adapters3map3MapINtB3p_4IterB16_B1I_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3W_NtB6f_9Anonymize9anonymize0EE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 64051194700380388) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 64051194700380388) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB11_5sliceSBW_7sort_byNCNvXs1z_NtNtNtB11_11collections5btree3mapINtB3i_8BTreeMapBX_B1z_EINtNtBa_7convert4FromABW_j1_E4from0E0EB1F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 72057594037927936) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 72057594037927936) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB18_5sliceSB13_7sort_byNCNvXs1z_NtNtNtB18_11collections5btree3mapINtB3q_8BTreeMapB14_B1G_EINtNtBa_7convert4FromAB13_j1_E4from0E0EB1M_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB18_5sliceSB13_7sort_byNCNvXs1z_NtNtNtB18_11collections5btree3mapINtB3q_8BTreeMapB14_B1G_EINtNtBa_7convert4FromAB13_j1_E4from0E0EB1M_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB18_5sliceSB13_7sort_byNCNvXs1z_NtNtNtB18_11collections5btree3mapINtB3q_8BTreeMapB14_B1G_EINtNtBa_7convert4FromAB13_j1_E4from0E0EB1M_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB17_5sliceSB12_7sort_byNCNvXs1z_NtNtNtB17_11collections5btree3mapINtB3p_8BTreeMapB13_B1F_EINtNtB8_7convert4FromAB12_j1_E4from0E0EB1L_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffE7reverseB1d_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 136
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !307, !noalias !308, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 144
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !307, !noalias !308, !noundef !4 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !307, !noalias !308, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !307, !noalias !308, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !309, !noalias !310 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffE7reverseB1d_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !307, !noalias !308, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !307, !noalias !308, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !311, !noalias !310 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB17_5sliceSB12_7sort_byNCNvXs1z_NtNtNtB17_11collections5btree3mapINtB3p_8BTreeMapB13_B1F_EINtNtB8_7convert4FromAB12_j1_E4from0E0EB1L_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB17_5sliceSB12_7sort_byNCNvXs1z_NtNtNtB17_11collections5btree3mapINtB3p_8BTreeMapB13_B1F_EINtNtB8_7convert4FromAB12_j1_E4from0E0EB1L_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !307, !noalias !308, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !307, !noalias !308, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !312, !noalias !310 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB17_5sliceSB12_7sort_byNCNvXs1z_NtNtNtB17_11collections5btree3mapINtB3p_8BTreeMapB13_B1F_EINtNtB8_7convert4FromAB12_j1_E4from0E0EB1L_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB17_5sliceSB12_7sort_byNCNvXs1z_NtNtNtB17_11collections5btree3mapINtB3p_8BTreeMapB13_B1F_EINtNtB8_7convert4FromAB12_j1_E4from0E0EB1L_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB17_5sliceSB12_7sort_byNCNvXs1z_NtNtNtB17_11collections5btree3mapINtB3p_8BTreeMapB13_B1F_EINtNtB8_7convert4FromAB12_j1_E4from0E0EB1L_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB17_5sliceSB12_7sort_byNCNvXs1z_NtNtNtB17_11collections5btree3mapINtB3p_8BTreeMapB13_B1F_EINtNtB8_7convert4FromAB12_j1_E4from0E0EB1L_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffE7reverseB1d_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 72057594037927936) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB18_5sliceSB13_7sort_byNCNvXs1z_NtNtNtB18_11collections5btree3mapINtB3q_8BTreeMapB14_B1G_EINtNtBa_7convert4FromAB13_j1_E4from0E0EB1M_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 72057594037927936) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1z_NtNtNtB1a_11collections5btree3mapINtB3s_8BTreeMapB16_B1I_EINtNtBa_7convert4FromAB15_j1_E4from0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 72057594037927936) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB18_5sliceSB13_7sort_byNCNvXs1z_NtNtNtB18_11collections5btree3mapINtB3q_8BTreeMapB14_B1G_EINtNtBa_7convert4FromAB13_j1_E4from0E0EB1M_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffE7reverseB1d_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffEEB1J_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffEEB1J_.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB18_5sliceSB13_7sort_byNCNvXs1z_NtNtNtB18_11collections5btree3mapINtB3q_8BTreeMapB14_B1G_EINtNtBa_7convert4FromAB13_j1_E4from0E0EB1M_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffEEB1J_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffEEB1J_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [128 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 16)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffEEB1J_.exit.i.i.i unwind label %bb.q, !noalias !308

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !308
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffEEB1J_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffE7reverseB1d_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB18_5sliceSB13_7sort_byNCNvXs1z_NtNtNtB18_11collections5btree3mapINtB3q_8BTreeMapB14_B1G_EINtNtBa_7convert4FromAB13_j1_E4from0E0EB1M_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffE7reverseB1d_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffE7reverseB1d_.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1b_11collections5btree3mapINtB3t_8BTreeMapB17_B1J_EINtNtBa_7convert4FromAB16_j1_E4from0E0EB1P_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1b_11collections5btree3mapINtB3t_8BTreeMapB17_B1J_EINtNtBa_7convert4FromAB16_j1_E4from0E0EB1P_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1b_11collections5btree3mapINtB3t_8BTreeMapB17_B1J_EINtNtBa_7convert4FromAB16_j1_E4from0E0EB1P_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1b_11collections5btree3mapINtB3t_8BTreeMapB17_B1J_EINtNtBa_7convert4FromAB16_j1_E4from0E0EB1P_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1b_11collections5btree3mapINtB3t_8BTreeMapB17_B1J_EINtNtBa_7convert4FromAB16_j1_E4from0E0EB1P_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1b_11collections5btree3mapINtB3t_8BTreeMapB17_B1J_EINtNtBa_7convert4FromAB16_j1_E4from0E0EB1P_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1b_11collections5btree3mapINtB3t_8BTreeMapB17_B1J_EINtNtBa_7convert4FromAB16_j1_E4from0E0EB1P_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1z_NtNtNtB1a_11collections5btree3mapINtB3s_8BTreeMapB16_B1I_EINtNtBa_7convert4FromAB15_j1_E4from0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 72057594037927936) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 72057594037927936) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [128 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1z_NtNtNtB1a_11collections5btree3mapINtB3s_8BTreeMapB16_B1I_EINtNtBa_7convert4FromAB15_j1_E4from0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 72057594037927936) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 72057594037927936) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB12_5sliceSBX_7sort_byNCNvXs1z_NtNtNtB12_11collections5btree3mapINtB3j_8BTreeMapBY_B1A_EINtNtBa_7convert4FromABX_j1_E4from0E0EB1G_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 72057594037927936) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 72057594037927936) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1b_11collections5btree3mapINtB3t_8BTreeMapB17_B1J_EINtNtBa_7convert4FromAB16_j1_E4from0E0EB1P_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1b_5sliceSB16_7sort_byNCNvXs1z_NtNtNtB1b_11collections5btree3mapINtB3t_8BTreeMapB17_B1J_EINtNtBa_7convert4FromAB16_j1_E4from0E0EB1P_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1z_NtNtNtB1a_11collections5btree3mapINtB3s_8BTreeMapB16_B1I_EINtNtBa_7convert4FromAB15_j1_E4from0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 72057594037927936) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 72057594037927936) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB3l_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtB4n_8adapters12GenericShuntINtNtB5h_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBX_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1D_11conversionsNtB1B_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB71_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1K_11conversionsNtB1I_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7c_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1K_11conversionsNtB1I_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7c_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1K_11conversionsNtB1I_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7c_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4v_8adapters12GenericShuntINtNtB5q_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1J_11conversionsNtB1H_19SparseVectorsConfigINtNtB8_7convert7TryFromNtB7b_18SparseVectorConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 64
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !326, !noalias !327, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 72
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !326, !noalias !327, !noundef !4 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !326, !noalias !327, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !326, !noalias !327, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !328, !noalias !329 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !326, !noalias !327, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !326, !noalias !327, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !330, !noalias !329 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4v_8adapters12GenericShuntINtNtB5q_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1J_11conversionsNtB1H_19SparseVectorsConfigINtNtB8_7convert7TryFromNtB7b_18SparseVectorConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4v_8adapters12GenericShuntINtNtB5q_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1J_11conversionsNtB1H_19SparseVectorsConfigINtNtB8_7convert7TryFromNtB7b_18SparseVectorConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !326, !noalias !327, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !326, !noalias !327, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !331, !noalias !329 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4v_8adapters12GenericShuntINtNtB5q_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1J_11conversionsNtB1H_19SparseVectorsConfigINtNtB8_7convert7TryFromNtB7b_18SparseVectorConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4v_8adapters12GenericShuntINtNtB5q_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1J_11conversionsNtB1H_19SparseVectorsConfigINtNtB8_7convert7TryFromNtB7b_18SparseVectorConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4v_8adapters12GenericShuntINtNtB5q_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1J_11conversionsNtB1H_19SparseVectorsConfigINtNtB8_7convert7TryFromNtB7b_18SparseVectorConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4v_8adapters12GenericShuntINtNtB5q_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB13_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1J_11conversionsNtB1H_19SparseVectorsConfigINtNtB8_7convert7TryFromNtB7b_18SparseVectorConfigE8try_from0EINtNtB8_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1L_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1K_11conversionsNtB1I_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7c_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3v_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4y_8adapters12GenericShuntINtNtB5t_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1M_11conversionsNtB1K_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7e_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1K_11conversionsNtB1I_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7c_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1K_11conversionsNtB1I_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7c_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [56 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 7)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i unwind label %bb.q, !noalias !327

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !327
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB14_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1K_11conversionsNtB1I_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7c_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1M_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4z_8adapters12GenericShuntINtNtB5u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1N_11conversionsNtB1L_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7f_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4z_8adapters12GenericShuntINtNtB5u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1N_11conversionsNtB1L_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7f_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4z_8adapters12GenericShuntINtNtB5u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1N_11conversionsNtB1L_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7f_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4z_8adapters12GenericShuntINtNtB5u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1N_11conversionsNtB1L_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7f_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4z_8adapters12GenericShuntINtNtB5u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1N_11conversionsNtB1L_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7f_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4z_8adapters12GenericShuntINtNtB5u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1N_11conversionsNtB1L_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7f_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4z_8adapters12GenericShuntINtNtB5u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1N_11conversionsNtB1L_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7f_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3v_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4y_8adapters12GenericShuntINtNtB5t_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1M_11conversionsNtB1K_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7e_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 164703072086692426) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [56 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3v_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4y_8adapters12GenericShuntINtNtB5t_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1M_11conversionsNtB1K_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7e_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 164703072086692426) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB3m_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB4o_8adapters12GenericShuntINtNtB5i_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBY_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1E_11conversionsNtB1C_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB72_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1G_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 164703072086692426) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4z_8adapters12GenericShuntINtNtB5u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1N_11conversionsNtB1L_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7f_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4z_8adapters12GenericShuntINtNtB5u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB17_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1N_11conversionsNtB1L_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7f_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1P_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3v_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4y_8adapters12GenericShuntINtNtB5t_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1M_11conversionsNtB1K_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7e_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB3l_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4n_8adapters3map3MapINtB3l_4IterBX_B1z_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3S_NtB68_9Anonymize9anonymize0EE0E0EB1F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4w_8adapters3map3MapINtB3t_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB40_NtB6j_9Anonymize9anonymize0EE0E0EB1M_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4w_8adapters3map3MapINtB3t_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB40_NtB6j_9Anonymize9anonymize0EE0E0EB1M_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4w_8adapters3map3MapINtB3t_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB40_NtB6j_9Anonymize9anonymize0EE0E0EB1M_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3s_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3Z_NtB6i_9Anonymize9anonymize0EE0E0EB1L_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 64
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !345, !noalias !346, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 72
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !345, !noalias !346, !noundef !4 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !345, !noalias !346, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !345, !noalias !346, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !347, !noalias !348 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !345, !noalias !346, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !345, !noalias !346, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !349, !noalias !348 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3s_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3Z_NtB6i_9Anonymize9anonymize0EE0E0EB1L_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3s_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3Z_NtB6i_9Anonymize9anonymize0EE0E0EB1L_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !345, !noalias !346, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !345, !noalias !346, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !350, !noalias !348 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3s_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3Z_NtB6i_9Anonymize9anonymize0EE0E0EB1L_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3s_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3Z_NtB6i_9Anonymize9anonymize0EE0E0EB1L_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3s_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3Z_NtB6i_9Anonymize9anonymize0EE0E0EB1L_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB3s_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4v_8adapters3map3MapINtB3s_4IterB13_B1F_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3Z_NtB6i_9Anonymize9anonymize0EE0E0EB1L_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4w_8adapters3map3MapINtB3t_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB40_NtB6j_9Anonymize9anonymize0EE0E0EB1M_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3v_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4y_8adapters3map3MapINtB3v_4IterB16_B1I_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB42_NtB6l_9Anonymize9anonymize0EE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4w_8adapters3map3MapINtB3t_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB40_NtB6j_9Anonymize9anonymize0EE0E0EB1M_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4w_8adapters3map3MapINtB3t_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB40_NtB6j_9Anonymize9anonymize0EE0E0EB1M_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [56 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 7)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i unwind label %bb.q, !noalias !346

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !346
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEEB1J_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB3t_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4w_8adapters3map3MapINtB3t_4IterB14_B1G_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB40_NtB6j_9Anonymize9anonymize0EE0E0EB1M_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE7reverseB1d_.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4z_8adapters3map3MapINtB3w_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB43_NtB6m_9Anonymize9anonymize0EE0E0EB1P_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4z_8adapters3map3MapINtB3w_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB43_NtB6m_9Anonymize9anonymize0EE0E0EB1P_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4z_8adapters3map3MapINtB3w_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB43_NtB6m_9Anonymize9anonymize0EE0E0EB1P_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4z_8adapters3map3MapINtB3w_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB43_NtB6m_9Anonymize9anonymize0EE0E0EB1P_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4z_8adapters3map3MapINtB3w_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB43_NtB6m_9Anonymize9anonymize0EE0E0EB1P_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4z_8adapters3map3MapINtB3w_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB43_NtB6m_9Anonymize9anonymize0EE0E0EB1P_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4z_8adapters3map3MapINtB3w_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB43_NtB6m_9Anonymize9anonymize0EE0E0EB1P_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3v_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4y_8adapters3map3MapINtB3v_4IterB16_B1I_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB42_NtB6l_9Anonymize9anonymize0EE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 164703072086692426) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [56 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3v_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4y_8adapters3map3MapINtB3v_4IterB16_B1I_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB42_NtB6l_9Anonymize9anonymize0EE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 164703072086692426) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB3m_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4o_8adapters3map3MapINtB3m_4IterBY_B1A_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3T_NtB69_9Anonymize9anonymize0EE0E0EB1G_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 164703072086692426) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4z_8adapters3map3MapINtB3w_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB43_NtB6m_9Anonymize9anonymize0EE0E0EB1P_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3w_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4z_8adapters3map3MapINtB3w_4IterB17_B1J_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB43_NtB6m_9Anonymize9anonymize0EE0E0EB1P_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3v_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4y_8adapters3map3MapINtB3v_4IterB16_B1I_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB42_NtB6l_9Anonymize9anonymize0EE0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB13_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB33_8BTreeMapjBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB42_8adapters3map3MapINtNtB4Y_9enumerate9EnumerateINtNtNtB13_3vec9into_iter8IntoIterB1x_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB33_6ValuesNtNtB13_6string6StringB7m_EEs_0EE0E0EB7s_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !360, !noalias !361, !noundef !4 ; 3 uses
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !360, !noalias !361, !noundef !4
  %i.q = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !360, !noalias !361, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !360, !noalias !361, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.w = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.z = shl nuw nsw i64 %..i12.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ab = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.ad = getelementptr [16 x i8], ptr %i.am, i64 %i.ab ; 3 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !362, !noalias !363, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !362, !noalias !363, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !364, !noalias !361
  store i64 %i.ae, ptr %i.ad, align 8, !alias.scope !365, !noalias !366
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !alias.scope !365, !noalias !366
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader ]
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

bb.q:                                             ; preds = %bb.n
  %i.ak = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.al = phi i64 [ %i.ak, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i465357.i ; 3 uses
  %xtraiter = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.al, 9223372036854775806
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i ]
  %i.ao = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.aq = getelementptr [16 x i8], ptr %i.am, i64 %i.ao ; 3 uses
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !362, !noalias !363, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !362, !noalias !363, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !364, !noalias !361
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !365, !noalias !366
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !365, !noalias !366
  %i.av = xor i64 %.sroa.0.016.i.i.i, -2
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.am, i64 %i.av ; 3 uses
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !362, !noalias !363, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !362, !noalias !363, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !364, !noalias !361
  store i64 %i.az, ptr %i.ay, align 8, !alias.scope !365, !noalias !366
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !365, !noalias !366
  %i.bd = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aj, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB14_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB34_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB43_8adapters3map3MapINtNtB4Z_9enumerate9EnumerateINtNtNtB14_3vec9into_iter8IntoIterB1y_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB34_6ValuesNtNtB14_6string6StringB7n_EEs_0EE0E0EB7t_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB13_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB33_8BTreeMapjBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB42_8adapters3map3MapINtNtB4Y_9enumerate9EnumerateINtNtNtB13_3vec9into_iter8IntoIterB1x_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB33_6ValuesNtNtB13_6string6StringB7m_EEs_0EE0E0EB7s_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !378, !noalias !379, !noundef !4 ; 3 uses
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !378, !noalias !379, !noundef !4
  %i.q = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !378, !noalias !379, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !378, !noalias !379, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.w = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.z = shl nuw nsw i64 %..i12.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ab = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.ad = getelementptr [16 x i8], ptr %i.am, i64 %i.ab ; 3 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !380, !noalias !381, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !380, !noalias !381, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !382, !noalias !379
  store i64 %i.ae, ptr %i.ad, align 8, !alias.scope !383, !noalias !384
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !alias.scope !383, !noalias !384
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader ]
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

bb.q:                                             ; preds = %bb.n
  %i.ak = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.al = phi i64 [ %i.ak, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i465357.i ; 3 uses
  %xtraiter = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.al, 9223372036854775806
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i ]
  %i.ao = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.aq = getelementptr [16 x i8], ptr %i.am, i64 %i.ao ; 3 uses
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !380, !noalias !381, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !380, !noalias !381, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !382, !noalias !379
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !383, !noalias !384
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !383, !noalias !384
  %i.av = xor i64 %.sroa.0.016.i.i.i, -2
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.am, i64 %i.av ; 3 uses
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !380, !noalias !381, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !380, !noalias !381, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !382, !noalias !379
  store i64 %i.az, ptr %i.ay, align 8, !alias.scope !383, !noalias !384
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !383, !noalias !384
  %i.bd = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aj, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB14_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB34_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB43_8adapters3map3MapINtNtB4Z_9enumerate9EnumerateINtNtNtB14_3vec9into_iter8IntoIterB1y_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB34_6ValuesNtNtB14_6string6StringB7n_EEs_0EE0E0EB7t_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB13_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB33_8BTreeMapjBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB42_8adapters3map3MapINtNtB4Y_9enumerate9EnumerateINtNtNtB13_3vec9into_iter8IntoIterB1x_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB33_6ValuesNtNtB13_6string6StringB7m_EEs_0EE0E0EB7s_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !396, !noalias !397, !noundef !4 ; 3 uses
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !396, !noalias !397, !noundef !4
  %i.q = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !396, !noalias !397, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !396, !noalias !397, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.w = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB19_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB3a_8BTreeMapjB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB19_3vec9into_iter8IntoIterB1D_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3a_6ValuesNtNtB19_6string6StringB7v_EEs_0EE0E0EB7B_.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.z = shl nuw nsw i64 %..i12.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ab = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.ad = getelementptr [16 x i8], ptr %i.am, i64 %i.ab ; 3 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !398, !noalias !399, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !398, !noalias !399, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !400, !noalias !397
  store i64 %i.ae, ptr %i.ad, align 8, !alias.scope !401, !noalias !402
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !alias.scope !401, !noalias !402
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader ]
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit

bb.q:                                             ; preds = %bb.n
  %i.ak = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.al = phi i64 [ %i.ak, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i465357.i ; 3 uses
  %xtraiter = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.al, 9223372036854775806
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new ], [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i ]
  %i.ao = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.aq = getelementptr [16 x i8], ptr %i.am, i64 %i.ao ; 3 uses
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !398, !noalias !399, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !398, !noalias !399, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !400, !noalias !397
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !401, !noalias !402
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !401, !noalias !402
  %i.av = xor i64 %.sroa.0.016.i.i.i, -2
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.am, i64 %i.av ; 3 uses
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !398, !noalias !399, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !398, !noalias !399, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !400, !noalias !397
  store i64 %i.az, ptr %i.ay, align 8, !alias.scope !401, !noalias !402
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !401, !noalias !402
  %i.bd = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE12split_at_mutCsPYQCUnoTxQ_10collection.exit11.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1a_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3b_8BTreeMapjB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4b_8adapters3map3MapINtNtB58_9enumerate9EnumerateINtNtNtB1a_3vec9into_iter8IntoIterB1E_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3b_6ValuesNtNtB1a_6string6StringB7w_EEs_0EE0E0EB7C_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aj, %_RNvMNtCskKLDkoKarTP_4core5sliceSTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEE7reverseCsPYQCUnoTxQ_10collection.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.135 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.135
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB14_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB34_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB43_8adapters3map3MapINtNtB4Z_9enumerate9EnumerateINtNtNtB14_3vec9into_iter8IntoIterB1y_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB34_6ValuesNtNtB14_6string6StringB7n_EEs_0EE0E0EB7t_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 576460752303423488) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1d_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB3e_8BTreeMapjB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtB5b_9enumerate9EnumerateINtNtNtB1d_3vec9into_iter8IntoIterB1H_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3e_6ValuesNtNtB1d_6string6StringB7z_EEs_0EE0E0EB7F_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cr, %bb.x ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cw, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias nofree noundef nonnull) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias nofree noundef nonnull) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvNtNtB19_6common12score_fusion12score_fusionINtNtB1W_3vec3VecIB3m_B15_EEEs1_0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 44343134792571038), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 44343134792571038), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(208), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias nofree noundef nonnull) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYB15_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 16, i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef nonnull align 16, i64 noundef range(i64 0, 288230376151711744), i32 noundef, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(32), ptr noalias nofree noundef nonnull) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvMNtNtB1b_6shards12shard_holderNtB34_11ShardHolder30get_resharding_operations_info0E0EB1b_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvMNtNtB1b_6shards12shard_holderNtB37_11ShardHolder23get_shard_transfer_infos_0E0EB1b_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs3_B18_NtB18_15SlowRequestsLog15get_log_entriess0_0E0EB1c_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3p_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4s_8adapters12GenericShuntINtNtB5n_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1M_11conversionsNtB1K_16CollectionConfigINtNtBa_7convert7TryFromNtB78_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1O_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 64051194700380388), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 64051194700380388), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3p_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4s_8adapters3map3MapINtB3p_4IterB16_B1I_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3W_NtB6f_9Anonymize9anonymize0EE0E0EB1O_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 64051194700380388), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 64051194700380388), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB1a_5sliceSB15_7sort_byNCNvXs1z_NtNtNtB1a_11collections5btree3mapINtB3s_8BTreeMapB16_B1I_EINtNtBa_7convert4FromAB15_j1_E4from0E0EB1O_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 72057594037927936), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 72057594037927936), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3v_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4y_8adapters12GenericShuntINtNtB5t_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB16_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1M_11conversionsNtB1K_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB7e_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1O_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB3v_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4y_8adapters3map3MapINtB3v_4IterB16_B1I_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB42_NtB6l_9Anonymize9anonymize0EE0E0EB1O_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB1c_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3d_8BTreeMapjB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4d_8adapters3map3MapINtNtB5a_9enumerate9EnumerateINtNtNtB1c_3vec9into_iter8IntoIterB1G_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB3d_6ValuesNtNtB1c_6string6StringB7y_EEs_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYBX_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEENvYBX_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvNtNtB11_6common12score_fusion12score_fusionINtNtB1O_3vec3VecIB3d_BX_EEEs1_0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 44343134792571038), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 44343134792571038), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNvYBX_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYBX_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 16, i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef nonnull align 16, i64 noundef range(i64 0, 288230376151711744), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keymNCNvMNtNtB13_6shards12shard_holderNtB2V_11ShardHolder30get_resharding_operations_info0E0EB13_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keymNCNvMNtNtB13_6shards12shard_holderNtB2Y_11ShardHolder23get_shard_transfer_infos_0E0EB13_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCNvMs3_B10_NtB10_15SlowRequestsLog15get_log_entriess0_0E0EB14_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB3g_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB4i_8adapters12GenericShuntINtNtB5c_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBY_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsENCNvXs12_NtB1E_11conversionsNtB1C_16CollectionConfigINtNtBa_7convert7TryFromNtB6W_16CollectionConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1G_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 64051194700380388), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 64051194700380388), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB3g_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4i_8adapters3map3MapINtB3g_4IterBY_B1A_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3N_NtB63_9Anonymize9anonymize0EE0E0EB1G_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 64051194700380388), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 64051194700380388), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffENCINvMNtB12_5sliceSBX_7sort_byNCNvXs1z_NtNtNtB12_11collections5btree3mapINtB3j_8BTreeMapBY_B1A_EINtNtBa_7convert4FromABX_j1_E4from0E0EB1G_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 72057594037927936), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 72057594037927936), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB3m_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB4o_8adapters12GenericShuntINtNtB5i_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBY_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsENCNvXs11_NtB1E_11conversionsNtB1C_19SparseVectorsConfigINtNtBa_7convert7TryFromNtB72_18SparseVectorConfigE8try_from0EINtNtBa_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEE0E0EB1G_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB3m_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4o_8adapters3map3MapINtB3m_4IterBY_B1A_ENCNvXs2_NtNtCs607s0NAIaWN_7segment6common9anonymizeB3T_NtB69_9Anonymize9anonymize0EE0E0EB1G_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 164703072086692426), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB14_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB34_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB43_8adapters3map3MapINtNtB4Z_9enumerate9EnumerateINtNtNtB14_3vec9into_iter8IntoIterB1y_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsINtB34_6ValuesNtNtB14_6string6StringB7n_EEs_0EE0E0EB7t_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB14_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB34_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB43_8adapters3map3MapINtNtB4Z_9enumerate9EnumerateINtNtNtB14_3vec9into_iter8IntoIterB1y_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types16VectorParamsDiffINtB34_6ValuesNtNtB14_6string6StringB7n_EEs_0EE0E0EB7t_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTjINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvMNtB14_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB34_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB43_8adapters3map3MapINtNtB4Z_9enumerate9EnumerateINtNtNtB14_3vec9into_iter8IntoIterB1y_EENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsINtB34_6ValuesNtNtB14_6string6StringB7n_EEs_0EE0E0EB7t_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @_RNvXse_NtCs607s0NAIaWN_7segment5typesNtB5_11ScoredPointNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsPYQCUnoTxQ_10collection(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noinline }
attributes #11 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 8}
!6 = !{i8 0, i8 2}
!7 = distinct !{!7, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection"}
!8 = distinct !{!8, !7, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection: argument 0"}
!9 = distinct !{!9, !7, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection: argument 2"}
!10 = distinct !{!10, !7, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection: argument 1"}
!11 = !{!8}
!12 = !{!10, !9}
end_hunk_2
