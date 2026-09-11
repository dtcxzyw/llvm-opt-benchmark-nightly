Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.08?download=true
inline.NumInlined: 3676
inline.NumDeleted: 1536
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsexYYUdYSQU6_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x:bb.a
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #48
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [24 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 3)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.q, !noalias !1959

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #46, !noalias !1959
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCs7gfv9tzbXmh_6yara_x.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCs7gfv9tzbXmh_6yara_x.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
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

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !5 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bx ; 3 uses
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
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 384307168202282326) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 384307168202282326) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsexYYUdYSQU6_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 384307168202282326) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.t, %bb.x
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
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYBW_NtNtBa_3cmp10PartialOrd2ltEB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

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
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fa, %bb.aa ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit
  %.sroa.021.0 = phi i8 [ %i.dr, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 18 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, %bb.h
  br i1 %4, label %bb.q, label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2044, !noalias !2045, !noundef !5 ; 4 uses
  %i.s = icmp ugt i64 %i.r, 4                     ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !alias.scope !2044, !noalias !2045, !nonnull !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2044, !noalias !2045 ; 3 uses
  %.sink11.i.i.i.i.i.i.i = select i1 %i.s, ptr %i.t, ptr %i.p
  %.sink10.i.i.i.i.i.i.i = select i1 %i.s, i64 %i.v, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !2046, !noalias !2047, !noundef !5 ; 2 uses
  %i.y = icmp ugt i64 %i.x, 4                     ; 2 uses
  %i.z = load ptr, ptr %i.n, align 8, !alias.scope !2046, !noalias !2047, !nonnull !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2046, !noalias !2047
  %.sink11.i1.i.i.i.i.i.i = select i1 %i.y, ptr %i.z, ptr %i.n
  %.sink10.i2.i.i.i.i.i.i = select i1 %i.y, i64 %i.ab, i64 %i.x ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sink10.i.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sink10.i2.i.i.i.i.i.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.sink11.i.i.i.i.i.i.i, ptr nonnull readonly %.sink11.i1.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !2048, !noalias !2049 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub nsw i64 %.sink10.i.i.i.i.i.i.i, %.sink10.i2.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ae, i64 %i.af, i64 %i.ad ; 2 uses
  %i.ag = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.l, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 58
  %i.ai = load i8, ptr %i.ah, align 2, !range !17, !alias.scope !2050, !noalias !2051, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 26
  %i.ak = load i8, ptr %i.aj, align 2, !range !17, !alias.scope !2052, !noalias !2053, !noundef !5
  %i.al = sub nsw i8 %i.ai, %i.ak
  switch i8 %i.al, label %default.unreachable [
    i8 -1, label %.critedge.preheader.i
    i8 0, label %.split.i
    i8 1, label %.split28.preheader.i
  ]

.critedge.preheader.i:                            ; preds = %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit.i, %.split.i, %bb.l
  %.not59.i = icmp eq i64 %i.m, 2
  br i1 %.not59.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph53.i

default.unreachable:                              ; preds = %bb.l, %bb.m, %bb.n
  unreachable

.split.i:                                         ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.an = load i16, ptr %i.am, align 8, !alias.scope !2050, !noalias !2051, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ap = load i16, ptr %i.ao, align 8, !alias.scope !2052, !noalias !2053, !noundef !5
  %i.aq = icmp ult i16 %i.an, %i.ap
  br i1 %i.aq, label %.critedge.preheader.i, label %.split28.preheader.i

_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit.i: ; preds = %bb.k
  %i.ar = icmp slt i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %.critedge.preheader.i, label %.split28.preheader.i

.split28.preheader.i:                             ; preds = %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit.i, %.split.i, %bb.l
  %.not58.i = icmp eq i64 %i.m, 2
  br i1 %.not58.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split28.preheader.i, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i
  %i.as = phi i64 [ %i.bb, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ], [ %i.v, %.split28.preheader.i ]
  %i.at = phi ptr [ %i.az, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ], [ %i.t, %.split28.preheader.i ]
  %i.au = phi i64 [ %i.ax, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ], [ %i.r, %.split28.preheader.i ] ; 2 uses
  %.sroa.01.0.i48.i = phi i64 [ %i.bt, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ], [ 2, %.split28.preheader.i ] ; 6 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.01.0.i48.i ; 6 uses
  %6 = add nsw i64 %.sroa.01.0.i48.i, -1          ; 2 uses
  %7 = icmp samesign ult i64 %6, %i.m
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !2062, !noalias !2063, !noundef !5 ; 3 uses
  %i.ay = icmp ugt i64 %i.ax, 4                   ; 2 uses
  %i.az = load ptr, ptr %i.av, align 8, !alias.scope !2062, !noalias !2063, !nonnull !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !2062, !noalias !2063 ; 2 uses
  %.sink11.i.i.i.i.i.i7.i = select i1 %i.ay, ptr %i.az, ptr %i.av
  %.sink10.i.i.i.i.i.i8.i = select i1 %i.ay, i64 %i.bb, i64 %i.ax ; 2 uses
  %i.bc = icmp ugt i64 %i.au, 4                   ; 2 uses
  %.sink11.i1.i.i.i.i.i9.i = select i1 %i.bc, ptr %i.at, ptr %8
  %.sink10.i2.i.i.i.i.i10.i = select i1 %i.bc, i64 %i.as, i64 %i.au ; 2 uses
  %spec.store.select.i.i.i.i.i.i11.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sink10.i.i.i.i.i.i8.i, i64 range(i64 0, -9223372036854775808) %.sink10.i2.i.i.i.i.i10.i)
  %i.bd = tail call i32 @memcmp(ptr nonnull readonly %.sink11.i.i.i.i.i.i7.i, ptr nonnull readonly %.sink11.i1.i.i.i.i.i9.i, i64 %spec.store.select.i.i.i.i.i.i11.i), !alias.scope !2064, !noalias !2049 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %i.bg = sub nsw i64 %.sink10.i.i.i.i.i.i8.i, %.sink10.i2.i.i.i.i.i10.i
  %spec.select.i.i.i.i.i.i12.i = select i1 %i.bf, i64 %i.bg, i64 %i.be ; 2 uses
  %i.bh = icmp eq i64 %spec.select.i.i.i.i.i.i12.i, 0
  br i1 %i.bh, label %bb.m, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 26
  %i.bj = load i8, ptr %i.bi, align 2, !range !17, !alias.scope !2065, !noalias !2066, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 26
  %i.bl = load i8, ptr %i.bk, align 2, !range !17, !alias.scope !2067, !noalias !2068, !noundef !5
  %i.bm = sub nsw i8 %i.bj, %i.bl
  switch i8 %i.bm, label %default.unreachable [
    i8 -1, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i
    i8 0, label %.split32.i
    i8 1, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i
  ]

.split32.i:                                       ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bo = load i16, ptr %i.bn, align 8, !alias.scope !2065, !noalias !2066, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bq = load i16, ptr %i.bp, align 8, !alias.scope !2067, !noalias !2068, !noundef !5
  %i.br = icmp ult i16 %i.bo, %i.bq
  br i1 %i.br, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i

_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.i: ; preds = %.lr.ph.i
  %i.bs = icmp slt i64 %spec.select.i.i.i.i.i.i12.i, 0
  br i1 %i.bs, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i

_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i: ; preds = %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.i, %.split32.i, %bb.m
  %i.bt = add nuw nsw i64 %.sroa.01.0.i48.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph.i

.lr.ph53.i:                                       ; preds = %.critedge.preheader.i, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i
  %i.bu = phi i64 [ %i.cd, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i ], [ %i.v, %.critedge.preheader.i ]
  %i.bv = phi ptr [ %i.cb, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i ], [ %i.t, %.critedge.preheader.i ]
  %i.bw = phi i64 [ %i.bz, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i ], [ %i.r, %.critedge.preheader.i ] ; 2 uses
  %.sroa.01.1.i52.i = phi i64 [ %i.cv, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i ], [ 2, %.critedge.preheader.i ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.01.1.i52.i ; 6 uses
  %9 = add nsw i64 %.sroa.01.1.i52.i, -1          ; 2 uses
  %10 = icmp samesign ult i64 %9, %i.m
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !2077, !noalias !2078, !noundef !5 ; 3 uses
  %i.ca = icmp ugt i64 %i.bz, 4                   ; 2 uses
  %i.cb = load ptr, ptr %i.bx, align 8, !alias.scope !2077, !noalias !2078, !nonnull !5 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !2077, !noalias !2078 ; 2 uses
  %.sink11.i.i.i.i.i.i16.i = select i1 %i.ca, ptr %i.cb, ptr %i.bx
  %.sink10.i.i.i.i.i.i17.i = select i1 %i.ca, i64 %i.cd, i64 %i.bz ; 2 uses
  %i.ce = icmp ugt i64 %i.bw, 4                   ; 2 uses
  %.sink11.i1.i.i.i.i.i18.i = select i1 %i.ce, ptr %i.bv, ptr %11
  %.sink10.i2.i.i.i.i.i19.i = select i1 %i.ce, i64 %i.bu, i64 %i.bw ; 2 uses
  %spec.store.select.i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sink10.i.i.i.i.i.i17.i, i64 range(i64 0, -9223372036854775808) %.sink10.i2.i.i.i.i.i19.i)
  %i.cf = tail call i32 @memcmp(ptr nonnull readonly %.sink11.i.i.i.i.i.i16.i, ptr nonnull readonly %.sink11.i1.i.i.i.i.i18.i, i64 %spec.store.select.i.i.i.i.i.i20.i), !alias.scope !2079, !noalias !2049 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp eq i32 %i.cf, 0
  %i.ci = sub nsw i64 %.sink10.i.i.i.i.i.i17.i, %.sink10.i2.i.i.i.i.i19.i
  %spec.select.i.i.i.i.i.i21.i = select i1 %i.ch, i64 %i.ci, i64 %i.cg ; 2 uses
  %i.cj = icmp eq i64 %spec.select.i.i.i.i.i.i21.i, 0
  br i1 %i.cj, label %bb.n, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i

bb.n:                                             ; preds = %.lr.ph53.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 26
  %i.cl = load i8, ptr %i.ck, align 2, !range !17, !alias.scope !2080, !noalias !2081, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 26
  %i.cn = load i8, ptr %i.cm, align 2, !range !17, !alias.scope !2082, !noalias !2083, !noundef !5
  %i.co = sub nsw i8 %i.cl, %i.cn
  switch i8 %i.co, label %default.unreachable [
    i8 -1, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i
    i8 0, label %.split36.i
    i8 1, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i
  ]

.split36.i:                                       ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cq = load i16, ptr %i.cp, align 8, !alias.scope !2080, !noalias !2081, !noundef !5
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cs = load i16, ptr %i.cr, align 8, !alias.scope !2082, !noalias !2083, !noundef !5
  %i.ct = icmp ult i16 %i.cq, %i.cs
  br i1 %i.ct, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i: ; preds = %.lr.ph53.i
  %i.cu = icmp slt i64 %spec.select.i.i.i.i.i.i21.i, 0
  br i1 %i.cu, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i: ; preds = %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i, %.split36.i, %bb.n
  %i.cv = add nuw nsw i64 %.sroa.01.1.i52.i, 1    ; 2 uses
  %exitcond63.not.i = icmp eq i64 %i.cv, %i.m
  br i1 %exitcond63.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph53.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i: ; preds = %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.i, %.split32.i, %bb.m, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i, %.split36.i, %bb.n, %.split28.preheader.i, %.critedge.preheader.i
  %.sroa.3.0.i.i = phi i1 [ true, %.critedge.preheader.i ], [ true, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i ], [ false, %.split28.preheader.i ], [ true, %bb.n ], [ true, %.split36.i ], [ true, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i ], [ false, %bb.m ], [ false, %.split32.i ], [ false, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.i ], [ false, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i ], [ 2, %.split28.preheader.i ], [ %.sroa.01.1.i52.i, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i ], [ %.sroa.01.1.i52.i, %.split36.i ], [ %.sroa.01.1.i52.i, %bb.n ], [ %i.m, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ], [ %.sroa.01.0.i48.i, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.i ], [ %.sroa.01.0.i48.i, %.split32.i ], [ %.sroa.01.0.i48.i, %bb.m ] ; 7 uses
  %i.cw = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.cw)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.r, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i

bb.p:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.m, i64 %.sroa.01.0)
  %i.cx = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.q:                                             ; preds = %bb.i
  %..i25.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i25.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #48
  %i.cy = shl nuw nsw i64 %..i25.i, 1
  %i.cz = or disjoint i64 %i.cy, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i, %bb.r, %bb.o, %bb.j
  %.sroa.0.0.i42.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.o ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i ]
  %i.da = shl nuw nsw i64 %.sroa.0.0.i42.i, 1
  %i.db = or disjoint i64 %i.da, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.r:                                             ; preds = %bb.o
  %i.dc = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.di, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.de = xor i64 %.sroa.0.017.i.i.i, -1
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.dg = getelementptr [32 x i8], ptr %i.dd, i64 %i.de
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.df, ptr noundef nonnull %i.dg, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i unwind label %bb.s, !noalias !2049

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #46, !noalias !2049
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.di = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.di, %i.dc
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit: ; preds = %bb.p, %bb.q, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.db, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i ], [ %i.cz, %bb.q ], [ %i.cx, %bb.p ] ; 2 uses
  %i.dj = lshr i64 %.sroa.023.0, 1
  %i.dk = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dl = sub nsw i64 %factor, %i.dj
  %i.dm = add nuw nsw i64 %i.dk, %factor
  %i.dn = mul i64 %i.dl, %.sroa.0.0
  %i.do = mul i64 %i.dm, %.sroa.0.0
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dp, i1 false)
  %i.dr = trunc nuw nsw i64 %i.dq to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.02.138 = phi i64 [ %i.ds, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ds = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.du, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.dw, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.t:                                             ; preds = %.lr.ph
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ds
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !5 ; 3 uses
  %i.dz = lshr i64 %i.dy, 1                       ; 5 uses
  %i.ea = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.eb = add nuw i64 %i.dz, %i.ea                ; 5 uses
  %i.ec = sub i64 %.sroa.09.0, %i.eb
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ec ; 3 uses
  %i.ee = icmp samesign ugt i64 %i.eb, %3
  %i.ef = trunc i64 %.sroa.023.137 to i1
  %i.eg = or i64 %i.dy, %.sroa.023.137
  %i.eh = trunc i64 %i.eg to i1
  %or.cond3.i = or i1 %i.ee, %i.eh
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ei = trunc i64 %i.dy to i1
  br i1 %i.ei, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ej = shl nuw nsw i64 %i.eb, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.w:                                             ; preds = %bb.x, %bb.u
  br i1 %i.ef, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.ek = or i64 %i.dz, 1
  %i.el = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.ed, i64 noundef range(i64 0, 288230376151711744) %i.dz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %i.dz
  %i.eq = or i64 %i.ea, 1
  %i.er = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.ep, i64 noundef range(i64 0, 288230376151711744) %i.ea, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.eu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_(ptr noalias nofree noundef nonnull align 8 %i.ed, i64 noundef range(i64 0, 288230376151711744) %i.eb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.dz, ptr noalias nofree noundef nonnull %5)
  %i.ev = shl nuw nsw i64 %i.eb, 1
  %i.ew = or disjoint i64 %i.ev, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %bb.v, %bb.z
  %.sroa.0.0.i = phi i64 [ %i.ew, %bb.z ], [ %i.ej, %bb.v ] ; 2 uses
  %i.ex = icmp ugt i64 %i.ds, 1
  br i1 %i.ex, label %.lr.ph, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ey = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ez = lshr i64 %.sroa.018.0, 1
  %i.fa = add nuw i64 %i.ez, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.fb = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.fb, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fc = or i64 %1, 1
  %i.fd = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.fc, i1 true)
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 1
  %i.fg = xor i32 %i.ff, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.fg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortReNvYBW_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
end_hunk_0
