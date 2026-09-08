Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.08?download=true
inline.NumInlined: 3676
inline.NumDeleted: 1536
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x:bb.a
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2AhGS15tZfv_4bstr7bstring7BString7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !1917, !noalias !1918, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !1917, !noalias !1918, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i18.i), !noalias !1919 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !1917, !noalias !1918, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !1917, !noalias !1918, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i20.i), !noalias !1919 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2AhGS15tZfv_4bstr7bstring7BString7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #48
  %i.at = shl nuw nsw i64 %..i22.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2AhGS15tZfv_4bstr7bstring7BString7reverseCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i637074.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i637074.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i637074.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bd, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bb = getelementptr [24 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 3)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.q, !noalias !1918

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #46, !noalias !1918
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2AhGS15tZfv_4bstr7bstring7BString7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2AhGS15tZfv_4bstr7bstring7BString7reverseCs7gfv9tzbXmh_6yara_x.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2AhGS15tZfv_4bstr7bstring7BString7reverseCs7gfv9tzbXmh_6yara_x.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
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

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.02.136 = phi i64 [ %i.bn, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ] ; 3 uses
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
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 384307168202282326) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 384307168202282326) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 384307168202282326) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bu, ptr noalias nofree noundef nonnull %5)
  %i.cq = shl nuw nsw i64 %i.bw, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.t, %bb.x
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
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ci, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bb, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId7reverseBy_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.val10.i = load i32, ptr %i.p, align 4, !alias.scope !1931, !noalias !1932, !noundef !5 ; 3 uses
  %.val11.i = load i32, ptr %i.n, align 4, !alias.scope !1931, !noalias !1932, !noundef !5
  %i.q = icmp slt i32 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId7reverseBy_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %.val8.i = load i32, ptr %i.r, align 4, !alias.scope !1931, !noalias !1932, !noundef !5 ; 2 uses
  %i.s = icmp slt i32 %.val8.i, %.val9.i
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %.val.i = load i32, ptr %i.u, align 4, !alias.scope !1931, !noalias !1932, !noundef !5 ; 2 uses
  %i.v = icmp slt i32 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.w = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId7reverseBy_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #48
  %i.z = shl nuw nsw i64 %..i12.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId7reverseBy_.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i, %middle.block, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i465357.i, %middle.block ], [ %.sroa.0.0.i465357.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i ]
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.q:                                             ; preds = %bb.n
  %i.ad = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId7reverseBy_.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.preheader.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ae = phi i64 [ %i.ad, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.0.0.i465357.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ae, 8
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = xor i64 %index, -1
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !alias.scope !1935, !noalias !1936
  %wide.load54 = load <4 x i32>, ptr %i.aj, align 4, !alias.scope !1935, !noalias !1936
  %i.ak = getelementptr i8, ptr %i.ai, i64 -12    ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 -28    ; 2 uses
  %wide.load55 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !1937, !noalias !1938
  %wide.load56 = load <4 x i32>, ptr %i.al, align 4, !alias.scope !1937, !noalias !1938
  %reverse = shufflevector <4 x i32> %wide.load55, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse57 = shufflevector <4 x i32> %wide.load56, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ah, align 4, !alias.scope !1935, !noalias !1936
  store <4 x i32> %reverse57, ptr %i.aj, align 4, !alias.scope !1935, !noalias !1936
  %reverse58 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse59 = shufflevector <4 x i32> %wide.load54, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse58, ptr %i.ak, align 4, !alias.scope !1937, !noalias !1938
  store <4 x i32> %reverse59, ptr %i.al, align 4, !alias.scope !1937, !noalias !1938
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1929

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId7reverseBy_.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.as, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i.preheader ] ; 3 uses
  %i.an = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.af, i64 %i.an ; 2 uses
  %i.aq = load i32, ptr %i.ao, align 4, !alias.scope !1935, !noalias !1936, !noundef !5
  %i.ar = load i32, ptr %i.ap, align 4, !alias.scope !1937, !noalias !1938
  store i32 %i.ar, ptr %i.ao, align 4, !alias.scope !1935, !noalias !1936
  store i32 %i.aq, ptr %i.ap, align 4, !alias.scope !1937, !noalias !1938
  %i.as = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.as, %i.ae
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId7reverseBy_.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId12split_at_mutBy_.exit11.i.i.i, !llvm.loop !1930

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId7reverseBy_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ac, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternId7reverseBy_.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.at = lshr i64 %.sroa.023.0, 1
  %i.au = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.av = sub nsw i64 %factor, %i.at
  %i.aw = add nuw nsw i64 %i.au, %factor
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %.sroa.02.136 = phi i64 [ %i.bc, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bc = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.be, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bg, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5 ; 3 uses
  %i.bj = lshr i64 %i.bi, 1                       ; 5 uses
  %i.bk = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bl = add nuw i64 %i.bj, %i.bk                ; 5 uses
  %i.bm = sub i64 %.sroa.09.0, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm ; 3 uses
  %i.bo = icmp samesign ugt i64 %i.bl, %3
  %i.bp = trunc i64 %.sroa.023.135 to i1
  %i.bq = or i64 %i.bi, %.sroa.023.135
  %i.br = trunc i64 %i.bq to i1
  %or.cond3.i = or i1 %i.bo, %i.br
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = trunc i64 %i.bi to i1
  br i1 %i.bs, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bt = shl nuw nsw i64 %i.bl, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bp, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bu = or i64 %i.bj, 1
  %i.bv = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %i.bn, i64 noundef range(i64 0, 2305843009213693952) %i.bj, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.by, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bj
  %i.ca = or i64 %i.bk, 1
  %i.cb = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %i.bz, i64 noundef range(i64 0, 2305843009213693952) %i.bk, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_(ptr noalias nofree noundef nonnull align 4 %i.bn, i64 noundef range(i64 0, 2305843009213693952) %i.bl, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef %i.bj, ptr noalias nofree noundef nonnull %5)
  %i.cf = shl nuw nsw i64 %i.bl, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cg, %bb.x ], [ %i.bt, %bb.t ] ; 2 uses
  %i.ch = icmp ugt i64 %i.bc, 1
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ci = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cj = lshr i64 %.sroa.018.0, 1
  %i.ck = add nuw i64 %i.cj, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cl = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cl, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = or i64 %1, 1
  %i.cn = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB10_11nfa_builderINtB3a_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
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

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB17_11nfa_builderINtB3i_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB17_11nfa_builderINtB3i_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB17_11nfa_builderINtB3i_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCINvMs1_NtB16_11nfa_builderINtB3h_10NfaBuilderhmE14sibling_groupsNvYmINtNtB8_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroup7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 64
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !1943, !noalias !1944, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 24
  %.val11.i = load i64, ptr %i.q, align 8, !alias.scope !1943, !noalias !1944, !noundef !5
  %i.r = icmp uge i64 %.val11.i, %.val10.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroup7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %.val8.i = load i64, ptr %i.t, align 8, !alias.scope !1943, !noalias !1944, !noundef !5 ; 2 uses
  %i.u = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCINvMs1_NtB16_11nfa_builderINtB3h_10NfaBuilderhmE14sibling_groupsNvYmINtNtB8_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCINvMs1_NtB16_11nfa_builderINtB3h_10NfaBuilderhmE14sibling_groupsNvYmINtNtB8_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %.val.i = load i64, ptr %i.x, align 8, !alias.scope !1943, !noalias !1944, !noundef !5 ; 2 uses
  %i.y = icmp ult i64 %.val7.i, %.val.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCINvMs1_NtB16_11nfa_builderINtB3h_10NfaBuilderhmE14sibling_groupsNvYmINtNtB8_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCINvMs1_NtB16_11nfa_builderINtB3h_10NfaBuilderhmE14sibling_groupsNvYmINtNtB8_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCINvMs1_NtB16_11nfa_builderINtB3h_10NfaBuilderhmE14sibling_groupsNvYmINtNtB8_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCINvMs1_NtB16_11nfa_builderINtB3h_10NfaBuilderhmE14sibling_groupsNvYmINtNtB8_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroup7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB17_11nfa_builderINtB3i_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB19_11nfa_builderINtB3k_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB17_11nfa_builderINtB3i_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroup7reverseCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupECs7gfv9tzbXmh_6yara_x.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB17_11nfa_builderINtB3i_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [40 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupECs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.q, !noalias !1944

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #46, !noalias !1944
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroup7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB17_11nfa_builderINtB3i_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroup7reverseCs7gfv9tzbXmh_6yara_x.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroup7reverseCs7gfv9tzbXmh_6yara_x.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
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

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB1a_11nfa_builderINtB3l_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB1a_11nfa_builderINtB3l_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB1a_11nfa_builderINtB3l_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB1a_11nfa_builderINtB3l_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB1a_11nfa_builderINtB3l_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB1a_11nfa_builderINtB3l_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bh ; 3 uses
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
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB1a_11nfa_builderINtB3l_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB19_11nfa_builderINtB3k_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 230584300921369396) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB19_11nfa_builderINtB3k_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 230584300921369396) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB11_11nfa_builderINtB3b_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 230584300921369396) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB1a_11nfa_builderINtB3l_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB1a_11nfa_builderINtB3l_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.t, %bb.x
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
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsc2ZV4bV5Srq_9daachorse12build_helper12SiblingGroupNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCINvMs1_NtB19_11nfa_builderINtB3k_10NfaBuilderhmE14sibling_groupsNvYmINtNtBa_7convert4FromhE4fromE0E0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsexYYUdYSQU6_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
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

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !1958, !noalias !1959, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 40
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !1958, !noalias !1959, !noundef !5 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !1958, !noalias !1959, !nonnull !5, !noundef !5
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !1958, !noalias !1959, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1960, !noalias !1961 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.x, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !1958, !noalias !1959, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !1958, !noalias !1959, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !1962, !noalias !1961 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.af, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ag = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !1958, !noalias !1959, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !1958, !noalias !1959, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !1963, !noalias !1961 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.x, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32) ; 2 uses
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fg, %bb.aa ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fe, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit
  %.sroa.021.0 = phi i8 [ %i.dx, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 0, %bb.f ] ; 2 uses
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
  %i.as = phi i64 [ %i.be, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ], [ %i.v, %.split28.preheader.i ]
  %i.at = phi ptr [ %i.bc, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ], [ %i.t, %.split28.preheader.i ]
  %i.au = phi i64 [ %i.ba, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ], [ %i.r, %.split28.preheader.i ] ; 2 uses
  %.sroa.01.0.i48.i = phi i64 [ %i.bw, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ], [ 2, %.split28.preheader.i ] ; 6 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.01.0.i48.i ; 6 uses
  %i.aw = add nsw i64 %.sroa.01.0.i48.i, -1       ; 2 uses
  %i.ax = icmp samesign ult i64 %i.aw, %i.m
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.aw ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !2062, !noalias !2063, !noundef !5 ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, 4                   ; 2 uses
  %i.bc = load ptr, ptr %i.av, align 8, !alias.scope !2062, !noalias !2063, !nonnull !5 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !2062, !noalias !2063 ; 2 uses
  %.sink11.i.i.i.i.i.i7.i = select i1 %i.bb, ptr %i.bc, ptr %i.av
  %.sink10.i.i.i.i.i.i8.i = select i1 %i.bb, i64 %i.be, i64 %i.ba ; 2 uses
  %i.bf = icmp ugt i64 %i.au, 4                   ; 2 uses
  %.sink11.i1.i.i.i.i.i9.i = select i1 %i.bf, ptr %i.at, ptr %i.ay
  %.sink10.i2.i.i.i.i.i10.i = select i1 %i.bf, i64 %i.as, i64 %i.au ; 2 uses
  %spec.store.select.i.i.i.i.i.i11.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sink10.i.i.i.i.i.i8.i, i64 range(i64 0, -9223372036854775808) %.sink10.i2.i.i.i.i.i10.i)
  %i.bg = tail call i32 @memcmp(ptr nonnull readonly %.sink11.i.i.i.i.i.i7.i, ptr nonnull readonly %.sink11.i1.i.i.i.i.i9.i, i64 %spec.store.select.i.i.i.i.i.i11.i), !alias.scope !2064, !noalias !2049 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %i.bj = sub nsw i64 %.sink10.i.i.i.i.i.i8.i, %.sink10.i2.i.i.i.i.i10.i
  %spec.select.i.i.i.i.i.i12.i = select i1 %i.bi, i64 %i.bj, i64 %i.bh ; 2 uses
  %i.bk = icmp eq i64 %spec.select.i.i.i.i.i.i12.i, 0
  br i1 %i.bk, label %bb.m, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 26
  %i.bm = load i8, ptr %i.bl, align 2, !range !17, !alias.scope !2065, !noalias !2066, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 26
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYBW_NtNtBa_3cmp10PartialOrd2ltEB12_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !2077, !noalias !2078, !noundef !5 ; 3 uses
  %i.cg = icmp ugt i64 %i.cf, 4                   ; 2 uses
  %i.ch = load ptr, ptr %i.ca, align 8, !alias.scope !2077, !noalias !2078, !nonnull !5 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !2077, !noalias !2078 ; 2 uses
  %.sink11.i.i.i.i.i.i16.i = select i1 %i.cg, ptr %i.ch, ptr %i.ca
  %.sink10.i.i.i.i.i.i17.i = select i1 %i.cg, i64 %i.cj, i64 %i.cf ; 2 uses
  %i.ck = icmp ugt i64 %i.bz, 4                   ; 2 uses
  %.sink11.i1.i.i.i.i.i18.i = select i1 %i.ck, ptr %i.by, ptr %i.cd
  %.sink10.i2.i.i.i.i.i19.i = select i1 %i.ck, i64 %i.bx, i64 %i.bz ; 2 uses
  %spec.store.select.i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sink10.i.i.i.i.i.i17.i, i64 range(i64 0, -9223372036854775808) %.sink10.i2.i.i.i.i.i19.i)
  %i.cl = tail call i32 @memcmp(ptr nonnull readonly %.sink11.i.i.i.i.i.i16.i, ptr nonnull readonly %.sink11.i1.i.i.i.i.i18.i, i64 %spec.store.select.i.i.i.i.i.i20.i), !alias.scope !2079, !noalias !2049 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = sub nsw i64 %.sink10.i.i.i.i.i.i17.i, %.sink10.i2.i.i.i.i.i19.i
  %spec.select.i.i.i.i.i.i21.i = select i1 %i.cn, i64 %i.co, i64 %i.cm ; 2 uses
  %i.cp = icmp eq i64 %spec.select.i.i.i.i.i.i21.i, 0
  br i1 %i.cp, label %bb.n, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i

bb.n:                                             ; preds = %.lr.ph53.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 26
  %i.cr = load i8, ptr %i.cq, align 2, !range !17, !alias.scope !2080, !noalias !2081, !noundef !5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 26
  %i.ct = load i8, ptr %i.cs, align 2, !range !17, !alias.scope !2082, !noalias !2083, !noundef !5
  %i.cu = sub nsw i8 %i.cr, %i.ct
  switch i8 %i.cu, label %default.unreachable [
    i8 -1, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i
    i8 0, label %.split36.i
    i8 1, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i
  ]

.split36.i:                                       ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cw = load i16, ptr %i.cv, align 8, !alias.scope !2080, !noalias !2081, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cy = load i16, ptr %i.cx, align 8, !alias.scope !2082, !noalias !2083, !noundef !5
  %i.cz = icmp ult i16 %i.cw, %i.cy
  br i1 %i.cz, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i: ; preds = %.lr.ph53.i
  %i.da = icmp slt i64 %spec.select.i.i.i.i.i.i21.i, 0
  br i1 %i.da, label %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i: ; preds = %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i, %.split36.i, %bb.n
  %i.db = add nuw nsw i64 %.sroa.01.1.i52.i, 1    ; 2 uses
  %exitcond63.not.i = icmp eq i64 %i.db, %i.m
  br i1 %exitcond63.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph53.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i: ; preds = %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.i, %.split32.i, %bb.m, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i, %.split36.i, %bb.n, %.split28.preheader.i, %.critedge.preheader.i
  %.sroa.3.0.i.i = phi i1 [ true, %.critedge.preheader.i ], [ true, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i ], [ false, %.split28.preheader.i ], [ true, %bb.n ], [ true, %.split36.i ], [ true, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i ], [ false, %bb.m ], [ false, %.split32.i ], [ false, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.i ], [ false, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.thread.i ], [ 2, %.split28.preheader.i ], [ %.sroa.01.1.i52.i, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit24.i ], [ %.sroa.01.1.i52.i, %.split36.i ], [ %.sroa.01.1.i52.i, %bb.n ], [ %i.m, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.thread30.i ], [ %.sroa.01.0.i48.i, %_RNvYNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutBb_.exit15.i ], [ %.sroa.01.0.i48.i, %.split32.i ], [ %.sroa.01.0.i48.i, %bb.m ] ; 7 uses
  %i.dc = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.dc)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.r, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i

bb.p:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.m, i64 %.sroa.01.0)
  %i.dd = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.q:                                             ; preds = %bb.i
  %..i25.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i25.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #48
  %i.de = shl nuw nsw i64 %..i25.i, 1
  %i.df = or disjoint i64 %i.de, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i, %bb.r, %bb.o, %bb.j
  %.sroa.0.0.i42.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.o ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i ]
  %i.dg = shl nuw nsw i64 %.sroa.0.0.i42.i, 1
  %i.dh = or disjoint i64 %i.dg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.r:                                             ; preds = %bb.o
  %i.di = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.do, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.dk = xor i64 %.sroa.0.017.i.i.i, -1
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.dm = getelementptr [32 x i8], ptr %i.dj, i64 %i.dk
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dm, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i unwind label %bb.s, !noalias !2049

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #46, !noalias !2049
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEB16_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.do = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.do, %i.di
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit: ; preds = %bb.p, %bb.q, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.dh, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4Atom7reverseBA_.exit.i ], [ %i.df, %bb.q ], [ %i.dd, %bb.p ] ; 2 uses
  %i.dp = lshr i64 %.sroa.023.0, 1
  %i.dq = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dr = sub nsw i64 %factor, %i.dp
  %i.ds = add nuw nsw i64 %i.dq, %factor
  %i.dt = mul i64 %i.dr, %.sroa.0.0
  %i.du = mul i64 %i.ds, %.sroa.0.0
  %i.dv = xor i64 %i.du, %i.dt
  %i.dw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dv, i1 false)
  %i.dx = trunc nuw nsw i64 %i.dw to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.02.138 = phi i64 [ %i.dy, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.dy = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ea, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ec, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.t:                                             ; preds = %.lr.ph
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dy
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !5 ; 3 uses
  %i.ef = lshr i64 %i.ee, 1                       ; 5 uses
  %i.eg = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.eh = add nuw i64 %i.ef, %i.eg                ; 5 uses
  %i.ei = sub i64 %.sroa.09.0, %i.eh
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ei ; 3 uses
  %i.ek = icmp samesign ugt i64 %i.eh, %3
  %i.el = trunc i64 %.sroa.023.137 to i1
  %i.em = or i64 %i.ee, %.sroa.023.137
  %i.en = trunc i64 %i.em to i1
  %or.cond3.i = or i1 %i.ek, %i.en
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eo = trunc i64 %i.ee to i1
  br i1 %i.eo, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ep = shl nuw nsw i64 %i.eh, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.w:                                             ; preds = %bb.x, %bb.u
  br i1 %i.el, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.eq = or i64 %i.ef, 1
  %i.er = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.ej, i64 noundef range(i64 0, 288230376151711744) %i.ef, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.eu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.ef
  %i.ew = or i64 %i.eg, 1
  %i.ex = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = xor i32 %i.ez, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.ev, i64 noundef range(i64 0, 288230376151711744) %i.eg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_(ptr noalias nofree noundef nonnull align 8 %i.ej, i64 noundef range(i64 0, 288230376151711744) %i.eh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.ef, ptr noalias nofree noundef nonnull %5)
  %i.fb = shl nuw nsw i64 %i.eh, 1
  %i.fc = or disjoint i64 %i.fb, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %bb.v, %bb.z
  %.sroa.0.0.i = phi i64 [ %i.fc, %bb.z ], [ %i.ep, %bb.v ] ; 2 uses
  %i.fd = icmp ugt i64 %i.dy, 1
  br i1 %i.fd, label %.lr.ph, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.fe = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ff = lshr i64 %.sroa.018.0, 1
  %i.fg = add nuw i64 %i.ff, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.fh = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.fh, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fi = or i64 %1, 1
  %i.fj = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.fi, i1 true)
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = shl nuw nsw i32 %i.fk, 1
  %i.fm = xor i32 %i.fl, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.fm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #48
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

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dl, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dj, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.021.0 = phi i8 [ %i.cc, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !2120, !noalias !2121, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 24
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !2120, !noalias !2121, !noundef !5 ; 4 uses
  %.val16.i = load ptr, ptr %i.n, align 8, !alias.scope !2120, !noalias !2121, !nonnull !5, !noundef !5
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !2120, !noalias !2121, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !2122, !noalias !2123 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.t
  %i.w = icmp slt i64 %spec.select.i.i.i.i.i.i, 0 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.w, label %.preheader.i, label %.preheader31.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ae, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !2120, !noalias !2121, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !2120, !noalias !2121, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.z = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !2124, !noalias !2123 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %i.ac = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ab, i64 %i.ac, i64 %i.aa
  %i.ad = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.ad, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.am, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !2120, !noalias !2121, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val7.i = load i64, ptr %i.ag, align 8, !alias.scope !2120, !noalias !2121, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !2125, !noalias !2123 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.al, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.am = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.am, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph37.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.an = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.an)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runReNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.ao = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortReNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #48
  %i.ap = shl nuw nsw i64 %..i22.i, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i ], [ %i.bt, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ar = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.at = getelementptr [16 x i8], ptr %i.bc, i64 %i.ar ; 3 uses
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !2126, !noalias !2127, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !2126, !noalias !2127, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !2128, !noalias !2121
  store ptr %i.au, ptr %i.at, align 8, !alias.scope !2129, !noalias !2130
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !alias.scope !2129, !noalias !2130
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i

_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i.loopexit.unr-lcssa, %.preheader31.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i606771.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i606771.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i.epil.preheader ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

bb.q:                                             ; preds = %bb.n
  %i.ba = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  %.not.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bb = phi i64 [ %i.ba, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i606771.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i606771.i ; 3 uses
  %xtraiter = and i64 %i.bb, 1
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.bb, 9223372036854775806
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i.new ], [ %i.bt, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i ]
  %i.be = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.bg = getelementptr [16 x i8], ptr %i.bc, i64 %i.be ; 3 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !alias.scope !2126, !noalias !2127, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !2126, !noalias !2127, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !alias.scope !2128, !noalias !2121
  store ptr %i.bh, ptr %i.bg, align 8, !alias.scope !2129, !noalias !2130
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !alias.scope !2129, !noalias !2130
  %i.bl = xor i64 %.sroa.0.016.i.i.i, -2
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = getelementptr [16 x i8], ptr %i.bc, i64 %i.bl ; 3 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !alias.scope !2126, !noalias !2127, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !2126, !noalias !2127, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !2128, !noalias !2121
  store ptr %i.bp, ptr %i.bo, align 8, !alias.scope !2129, !noalias !2130
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !alias.scope !2129, !noalias !2130
  %i.bt = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRe12split_at_mutCs7gfv9tzbXmh_6yara_x.exit11.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runReNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.az, %_RNvMNtCskKLDkoKarTP_4core5sliceSRe7reverseCs7gfv9tzbXmh_6yara_x.exit.i ], [ %i.aq, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  %i.bu = lshr i64 %.sroa.023.0, 1
  %i.bv = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bw = sub nsw i64 %factor, %i.bu
  %i.bx = add nuw nsw i64 %i.bv, %factor
  %i.by = mul i64 %i.bw, %.sroa.0.0
  %i.bz = mul i64 %i.bx, %.sroa.0.0
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ca, i1 false)
  %i.cc = trunc nuw nsw i64 %i.cb to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit
  %.sroa.02.136 = phi i64 [ %i.cd, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cd = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.cf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ch, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cd
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !5 ; 3 uses
  %i.ck = lshr i64 %i.cj, 1                       ; 5 uses
  %i.cl = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cm = add nuw i64 %i.ck, %i.cl                ; 5 uses
  %i.cn = sub i64 %.sroa.09.0, %i.cm
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cn ; 3 uses
  %i.cp = icmp samesign ugt i64 %i.cm, %3
  %i.cq = trunc i64 %.sroa.023.135 to i1
  %i.cr = or i64 %i.cj, %.sroa.023.135
  %i.cs = trunc i64 %i.cr to i1
  %or.cond3.i = or i1 %i.cp, %i.cs
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = trunc i64 %i.cj to i1
  br i1 %i.ct, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cu = shl nuw nsw i64 %i.cm, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cq, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cv = or i64 %i.ck, 1
  %i.cw = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortReNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.ck, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.ck
  %i.db = or i64 %i.cl, 1
  %i.dc = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortReNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.da, i64 noundef range(i64 0, 576460752303423488) %i.cl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeReNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.cm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.ck, ptr noalias nofree noundef nonnull %5)
  %i.dg = shl nuw nsw i64 %i.cm, 1
  %i.dh = or disjoint i64 %i.dg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeReNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dh, %bb.x ], [ %i.cu, %bb.t ] ; 2 uses
  %i.di = icmp ugt i64 %i.cd, 1
  br i1 %i.di, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dj = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dk = lshr i64 %.sroa.018.0, 1
  %i.dl = add nuw i64 %i.dk, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dm = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dm, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dn = or i64 %1, 1
  %i.do = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = xor i32 %i.dq, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortReNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #48
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB11_5sliceSBW_11sort_by_keyyNCNvMs0_B1B_NtB1B_6Struct29from_proto_descriptor_and_msgs1_0E0EB1F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 48038396025285291) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
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

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB18_5sliceSB13_11sort_by_keyyNCNvMs0_B1I_NtB1I_6Struct29from_proto_descriptor_and_msgs1_0E0EB1M_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB18_5sliceSB13_11sort_by_keyyNCNvMs0_B1I_NtB1I_6Struct29from_proto_descriptor_and_msgs1_0E0EB1M_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB18_5sliceSB13_11sort_by_keyyNCNvMs0_B1I_NtB1I_6Struct29from_proto_descriptor_and_msgs1_0E0EB1M_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB17_5sliceSB12_11sort_by_keyyNCNvMs0_B1H_NtB1H_6Struct29from_proto_descriptor_and_msgs1_0E0EB1L_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE7reverseB1d_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 360
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !2137, !noalias !2138, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 168
  %.val11.i = load i64, ptr %i.q, align 8, !alias.scope !2137, !noalias !2138, !noundef !5
  %i.r = icmp uge i64 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE7reverseB1d_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [192 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 168
  %.val8.i = load i64, ptr %i.t, align 8, !alias.scope !2137, !noalias !2138, !noundef !5 ; 2 uses
  %i.u = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB17_5sliceSB12_11sort_by_keyyNCNvMs0_B1H_NtB1H_6Struct29from_proto_descriptor_and_msgs1_0E0EB1L_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB17_5sliceSB12_11sort_by_keyyNCNvMs0_B1H_NtB1H_6Struct29from_proto_descriptor_and_msgs1_0E0EB1L_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [192 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 168
  %.val.i = load i64, ptr %i.x, align 8, !alias.scope !2137, !noalias !2138, !noundef !5 ; 2 uses
  %i.y = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB17_5sliceSB12_11sort_by_keyyNCNvMs0_B1H_NtB1H_6Struct29from_proto_descriptor_and_msgs1_0E0EB1L_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB17_5sliceSB12_11sort_by_keyyNCNvMs0_B1H_NtB1H_6Struct29from_proto_descriptor_and_msgs1_0E0EB1L_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB17_5sliceSB12_11sort_by_keyyNCNvMs0_B1H_NtB1H_6Struct29from_proto_descriptor_and_msgs1_0E0EB1L_.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB17_5sliceSB12_11sort_by_keyyNCNvMs0_B1H_NtB1H_6Struct29from_proto_descriptor_and_msgs1_0E0EB1L_.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE7reverseB1d_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 48038396025285291) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB18_5sliceSB13_11sort_by_keyyNCNvMs0_B1I_NtB1I_6Struct29from_proto_descriptor_and_msgs1_0E0EB1M_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 48038396025285291) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1a_5sliceSB15_11sort_by_keyyNCNvMs0_B1K_NtB1K_6Struct29from_proto_descriptor_and_msgs1_0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(192) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB18_5sliceSB13_11sort_by_keyyNCNvMs0_B1I_NtB1I_6Struct29from_proto_descriptor_and_msgs1_0E0EB1M_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE7reverseB1d_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEEB1J_.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEEB1J_.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB18_5sliceSB13_11sort_by_keyyNCNvMs0_B1I_NtB1I_6Struct29from_proto_descriptor_and_msgs1_0E0EB1M_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [192 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEEB1J_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEEB1J_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [192 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [192 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 24)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEEB1J_.exit.i.i.i unwind label %bb.q, !noalias !2138

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #46, !noalias !2138
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEEB1J_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE7reverseB1d_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB18_5sliceSB13_11sort_by_keyyNCNvMs0_B1I_NtB1I_6Struct29from_proto_descriptor_and_msgs1_0E0EB1M_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE7reverseB1d_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE7reverseB1d_.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
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

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1b_5sliceSB16_11sort_by_keyyNCNvMs0_B1L_NtB1L_6Struct29from_proto_descriptor_and_msgs1_0E0EB1P_.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1b_5sliceSB16_11sort_by_keyyNCNvMs0_B1L_NtB1L_6Struct29from_proto_descriptor_and_msgs1_0E0EB1P_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1b_5sliceSB16_11sort_by_keyyNCNvMs0_B1L_NtB1L_6Struct29from_proto_descriptor_and_msgs1_0E0EB1P_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1b_5sliceSB16_11sort_by_keyyNCNvMs0_B1L_NtB1L_6Struct29from_proto_descriptor_and_msgs1_0E0EB1P_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1b_5sliceSB16_11sort_by_keyyNCNvMs0_B1L_NtB1L_6Struct29from_proto_descriptor_and_msgs1_0E0EB1P_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1b_5sliceSB16_11sort_by_keyyNCNvMs0_B1L_NtB1L_6Struct29from_proto_descriptor_and_msgs1_0E0EB1P_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %i.bh ; 3 uses
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
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1b_5sliceSB16_11sort_by_keyyNCNvMs0_B1L_NtB1L_6Struct29from_proto_descriptor_and_msgs1_0E0EB1P_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1a_5sliceSB15_11sort_by_keyyNCNvMs0_B1K_NtB1K_6Struct29from_proto_descriptor_and_msgs1_0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 48038396025285291) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(192) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [192 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1a_5sliceSB15_11sort_by_keyyNCNvMs0_B1K_NtB1K_6Struct29from_proto_descriptor_and_msgs1_0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 48038396025285291) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(192) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB12_5sliceSBX_11sort_by_keyyNCNvMs0_B1C_NtB1C_6Struct29from_proto_descriptor_and_msgs1_0E0EB1G_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 48038396025285291) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1b_5sliceSB16_11sort_by_keyyNCNvMs0_B1L_NtB1L_6Struct29from_proto_descriptor_and_msgs1_0E0EB1P_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1b_5sliceSB16_11sort_by_keyyNCNvMs0_B1L_NtB1L_6Struct29from_proto_descriptor_and_msgs1_0E0EB1P_.exit: ; preds = %bb.t, %bb.x
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
  %i.ci = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldENCINvMNtB1a_5sliceSB15_11sort_by_keyyNCNvMs0_B1K_NtB1K_6Struct29from_proto_descriptor_and_msgs1_0E0EB1O_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 48038396025285291) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(192) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyBX_NCNvXs2_NtB13_9structureINtNtB1P_2rc2RcNtB2H_6StructEINtNtBa_7convert4FromRDNtNtB15_7modules16RegisteredModuleEL_E4froms_0E0EB15_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs2_NtB1a_9structureINtNtB1W_2rc2RcNtB2Q_6StructEINtNtBa_7convert4FromRDNtNtB1c_7modules16RegisteredModuleEL_E4froms_0E0EB1c_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs2_NtB1a_9structureINtNtB1W_2rc2RcNtB2Q_6StructEINtNtBa_7convert4FromRDNtNtB1c_7modules16RegisteredModuleEL_E4froms_0E0EB1c_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs2_NtB1a_9structureINtNtB1W_2rc2RcNtB2Q_6StructEINtNtBa_7convert4FromRDNtNtB1c_7modules16RegisteredModuleEL_E4froms_0E0EB1c_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs2_NtB19_9structureINtNtB1V_2rc2RcNtB2P_6StructEINtNtB8_7convert4FromRDNtNtB1b_7modules16RegisteredModuleEL_E4froms_0E0EB1b_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE7reverseBD_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !2170, !noalias !2171, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 72
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !2170, !noalias !2171, !noundef !5 ; 4 uses
  %.val16.i = load ptr, ptr %i.n, align 8, !alias.scope !2170, !noalias !2171, !nonnull !5, !noundef !5
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !2170, !noalias !2171, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !2172, !noalias !2173 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.t
  %i.w = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.w, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE7reverseBD_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader31.i ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader31.i ]
  %.sroa.01.0.i33.i = phi i64 [ %i.ae, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 2 uses
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !2170, !noalias !2171, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !2170, !noalias !2171, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.z = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !2174, !noalias !2173 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %i.ac = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i19.i = select i1 %i.ab, i64 %i.ac, i64 %i.aa
  %i.ad = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.ad, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs2_NtB19_9structureINtNtB1V_2rc2RcNtB2P_6StructEINtNtB8_7convert4FromRDNtNtB1b_7modules16RegisteredModuleEL_E4froms_0E0EB1b_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs2_NtB19_9structureINtNtB1V_2rc2RcNtB2P_6StructEINtNtB8_7convert4FromRDNtNtB1b_7modules16RegisteredModuleEL_E4froms_0E0EB1b_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i36.i = phi i64 [ %i.am, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 2 uses
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !2170, !noalias !2171, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val7.i = load i64, ptr %i.ag, align 8, !alias.scope !2170, !noalias !2171, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !2175, !noalias !2173 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.al, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs2_NtB19_9structureINtNtB1V_2rc2RcNtB2P_6StructEINtNtB8_7convert4FromRDNtNtB1b_7modules16RegisteredModuleEL_E4froms_0E0EB1b_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.am = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.am, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs2_NtB19_9structureINtNtB1V_2rc2RcNtB2P_6StructEINtNtB8_7convert4FromRDNtNtB1b_7modules16RegisteredModuleEL_E4froms_0E0EB1b_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs2_NtB19_9structureINtNtB1V_2rc2RcNtB2P_6StructEINtNtB8_7convert4FromRDNtNtB1b_7modules16RegisteredModuleEL_E4froms_0E0EB1b_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.an = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.an)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs2_NtB19_9structureINtNtB1V_2rc2RcNtB2P_6StructEINtNtB8_7convert4FromRDNtNtB1b_7modules16RegisteredModuleEL_E4froms_0E0EB1b_.exit.i
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  %or.cond.i = or i1 %i.w, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE7reverseBD_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.m, i64 %.sroa.01.0)
  %i.ap = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs2_NtB1a_9structureINtNtB1W_2rc2RcNtB2Q_6StructEINtNtBa_7convert4FromRDNtNtB1c_7modules16RegisteredModuleEL_E4froms_0E0EB1c_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs2_NtB1c_9structureINtNtB1Y_2rc2RcNtB2S_6StructEINtNtBa_7convert4FromRDNtNtB1e_7modules16RegisteredModuleEL_E4froms_0E0EB1e_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  %i.aq = shl nuw nsw i64 %..i22.i, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs2_NtB1a_9structureINtNtB1W_2rc2RcNtB2Q_6StructEINtNtBa_7convert4FromRDNtNtB1c_7modules16RegisteredModuleEL_E4froms_0E0EB1c_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE7reverseBD_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEB19_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i616872.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEB19_.exit.i.i.i ]
  %i.as = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs2_NtB1a_9structureINtNtB1W_2rc2RcNtB2Q_6StructEINtNtBa_7convert4FromRDNtNtB1c_7modules16RegisteredModuleEL_E4froms_0E0EB1c_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.au = phi i64 [ %i.ao, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i616872.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %.sroa.0.0.i616872.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEB19_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ba, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEB19_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aw = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ay = getelementptr [64 x i8], ptr %i.av, i64 %i.aw
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, i64 noundef 8)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEB19_.exit.i.i.i unwind label %bb.q, !noalias !2171

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #46, !noalias !2171
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEB19_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ba = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ba, %i.au
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE7reverseBD_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs2_NtB1a_9structureINtNtB1W_2rc2RcNtB2Q_6StructEINtNtBa_7convert4FromRDNtNtB1c_7modules16RegisteredModuleEL_E4froms_0E0EB1c_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE7reverseBD_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.at, %_RNvMNtCskKLDkoKarTP_4core5sliceSTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE7reverseBD_.exit.i ], [ %i.ar, %bb.p ], [ %i.ap, %bb.o ] ; 2 uses
  %i.bb = lshr i64 %.sroa.023.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb
  %i.be = add nuw i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs2_NtB1d_9structureINtNtB1Z_2rc2RcNtB2T_6StructEINtNtBa_7convert4FromRDNtNtB1f_7modules16RegisteredModuleEL_E4froms_0E0EB1f_.exit
  %.sroa.02.136 = phi i64 [ %i.bk, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs2_NtB1d_9structureINtNtB1Z_2rc2RcNtB2T_6StructEINtNtBa_7convert4FromRDNtNtB1f_7modules16RegisteredModuleEL_E4froms_0E0EB1f_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs2_NtB1d_9structureINtNtB1Z_2rc2RcNtB2T_6StructEINtNtBa_7convert4FromRDNtNtB1f_7modules16RegisteredModuleEL_E4froms_0E0EB1f_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bk = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs2_NtB1d_9structureINtNtB1Z_2rc2RcNtB2T_6StructEINtNtBa_7convert4FromRDNtNtB1f_7modules16RegisteredModuleEL_E4froms_0E0EB1f_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs2_NtB1d_9structureINtNtB1Z_2rc2RcNtB2T_6StructEINtNtBa_7convert4FromRDNtNtB1f_7modules16RegisteredModuleEL_E4froms_0E0EB1f_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs2_NtB1d_9structureINtNtB1Z_2rc2RcNtB2T_6StructEINtNtBa_7convert4FromRDNtNtB1f_7modules16RegisteredModuleEL_E4froms_0E0EB1f_.exit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bo, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !5 ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 5 uses
  %i.bs = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bt = add nuw i64 %i.br, %i.bs                ; 5 uses
  %i.bu = sub i64 %.sroa.09.0, %i.bt
  %i.bv = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.bu ; 3 uses
  %i.bw = icmp samesign ugt i64 %i.bt, %3
  %i.bx = trunc i64 %.sroa.023.135 to i1
  %i.by = or i64 %i.bq, %.sroa.023.135
  %i.bz = trunc i64 %i.by to i1
  %or.cond3.i = or i1 %i.bw, %i.bz
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = trunc i64 %i.bq to i1
  br i1 %i.ca, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cb = shl nuw nsw i64 %i.bt, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs2_NtB1d_9structureINtNtB1Z_2rc2RcNtB2T_6StructEINtNtBa_7convert4FromRDNtNtB1f_7modules16RegisteredModuleEL_E4froms_0E0EB1f_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bx, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cc = or i64 %i.br, 1
  %i.cd = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs2_NtB1c_9structureINtNtB1Y_2rc2RcNtB2S_6StructEINtNtBa_7convert4FromRDNtNtB1e_7modules16RegisteredModuleEL_E4froms_0E0EB1e_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 144115188075855872) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.bv, i64 %i.br
  %i.ci = or i64 %i.bs, 1
  %i.cj = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs2_NtB1c_9structureINtNtB1Y_2rc2RcNtB2S_6StructEINtNtBa_7convert4FromRDNtNtB1e_7modules16RegisteredModuleEL_E4froms_0E0EB1e_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 144115188075855872) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs2_NtB14_9structureINtNtB1Q_2rc2RcNtB2I_6StructEINtNtBa_7convert4FromRDNtNtB16_7modules16RegisteredModuleEL_E4froms_0E0EB16_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 144115188075855872) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i64 noundef %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cn = shl nuw nsw i64 %i.bt, 1
  %i.co = or disjoint i64 %i.cn, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs2_NtB1d_9structureINtNtB1Z_2rc2RcNtB2T_6StructEINtNtBa_7convert4FromRDNtNtB1f_7modules16RegisteredModuleEL_E4froms_0E0EB1f_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs2_NtB1d_9structureINtNtB1Z_2rc2RcNtB2T_6StructEINtNtBa_7convert4FromRDNtNtB1f_7modules16RegisteredModuleEL_E4froms_0E0EB1f_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.co, %bb.x ], [ %i.cb, %bb.t ] ; 2 uses
  %i.cp = icmp ugt i64 %i.bk, 1
  br i1 %i.cp, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cr = lshr i64 %.sroa.018.0, 1
  %i.cs = add nuw i64 %i.cr, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.ct = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ct, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cu = or i64 %1, 1
  %i.cv = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true)
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 1
  %i.cy = xor i32 %i.cx, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs2_NtB1c_9structureINtNtB1Y_2rc2RcNtB2S_6StructEINtNtBa_7convert4FromRDNtNtB1e_7modules16RegisteredModuleEL_E4froms_0E0EB1e_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #48
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB9_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_mapINtB3_6AccessINtNtNtBf_2de7decoder11DecoderImplNtNtB2J_4read11SliceReaderNtNtBf_6config13ConfigurationuEENtB1r_9MapAccess13next_key_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.615 = alloca [31 x i8], align 1          ; 6 uses
  %.sroa.6 = alloca [31 x i8], align 1            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.e, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, -1
  store i64 %i.f, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615)
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !23, !noundef !5
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2185
  store ptr %i.h, ptr %i.b, align 8, !noalias !2186
  call void @_RINvXsc_NtNtCslcwApyVHiOd_7bincode8features10impl_allocINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtBa_2de6DecodeuE6decodeQINtNtB1t_7decoder11DecoderImplNtNtB1t_4read11SliceReaderNtNtBa_6config13ConfigurationuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !2187
  %i.i = load i8, ptr %i.a, align 8, !range !27, !noalias !2186, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.615, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48.0..sroa_idx.i.i.i, i64 31, i1 false), !noalias !2188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.615, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, i64 31, i1 false)
  store i8 %i.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.615.8..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.615, i64 7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.615.8..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !2188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2185
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.615.8..sroa_idx16, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i8 -1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB9_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_mapINtB3_6AccessINtNtNtBf_2de7decoder11DecoderImplNtNtB2J_4read11SliceReaderNtNtBf_6config13ConfigurationuEENtB1r_9MapAccess13next_key_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, -1
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !align !23, !noundef !5
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !23, !noundef !5
  call void @_RINvXs6_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB1Z_2de7decoder11DecoderImplNtNtB36_4read11SliceReaderNtNtB1Z_6config13ConfigurationuEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load i8, ptr %i.a, align 8, !range !27, !noundef !5 ; 2 uses
  %.not13 = icmp eq i8 %i.h, -1
  br i1 %.not13, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.sink = phi i8 [ -1, %bb.f ], [ %i.h, %bb.e ], [ -1, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.410.0..sroa_idx, i64 31, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB9_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_mapINtB3_6AccessINtNtNtBf_2de7decoder11DecoderImplNtNtB2J_4read11SliceReaderNtNtBf_6config13ConfigurationuEENtB1r_9MapAccess13next_key_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataxEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, -1
  store i64 %i.f, ptr %i.c, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !23, !noundef !5
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2198
  store ptr %i.h, ptr %i.b, align 8, !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2199
  call void @_RINvXsh_NtNtCslcwApyVHiOd_7bincode2de5implsxINtB8_6DecodeuE6decodeQINtNtB8_7decoder11DecoderImplNtNtB8_4read11SliceReaderNtNtBa_6config13ConfigurationuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !2200
  %i.i = load i8, ptr %i.a, align 8, !range !27, !noalias !2199, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.i, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx.i.i.i, i64 7, i1 false)
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.515.0.copyload.i.i.i = load i64, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !2199
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2198
  store i8 %i.i, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.515.0.copyload.i.i.i, ptr %.sroa.519.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !2199, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2198
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8
  store i64 %i.l, ptr %i.j, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB9_12SerdeDecoderpENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_mapINtB3_6AccessINtNtNtBf_2de7decoder11DecoderImplNtNtB2J_4read11SliceReaderNtNtBf_6config13ConfigurationuEENtB1r_9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEEB5r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 1), (8, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !23, !noundef !5
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !23, !noundef !5
end_hunk_1
