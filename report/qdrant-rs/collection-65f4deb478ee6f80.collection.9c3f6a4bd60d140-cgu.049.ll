Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.049?download=true
inline.NumInlined: 289
inline.NumDeleted: 146
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYBW_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cc, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ca, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit
  %.sroa.021.0 = phi i8 [ %i.at, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEENvYB13_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
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
  %i.ca = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNvYBW_NtNtBa_3cmp10PartialOrd2ltECsPYQCUnoTxQ_10collection:bb.a
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
  %i.gm = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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

end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortRNtNtNtCsPYQCUnoTxQ_10collection9profiling17slow_requests_log8LogEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvMs3_BZ_NtBZ_15SlowRequestsLog15get_log_entriess0_0E0EB13_:bb.a
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
  %i.dq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
end_hunk_2
