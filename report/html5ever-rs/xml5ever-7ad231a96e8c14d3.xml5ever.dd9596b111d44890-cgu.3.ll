Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.3?download=true
inline.NumInlined: 96
inline.NumDeleted: 49
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBW_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever:bb.a
  %or.cond.not.i = and i1 %i.q, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.ab = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

bb.p:                                             ; preds = %bb.i
  %..i7.i = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 16) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i7.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #18
  %i.ac = shl nuw nsw i64 %..i7.i, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i, %.preheader16.i, %bb.n, %bb.j
  %.sroa.0.0.i13.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader16.i ], [ %.sroa.0.0.i394650.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i13.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ag = phi i64 [ %i.aa, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i394650.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i394650.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.am, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ai = xor i64 %.sroa.0.017.i.i.i, -1
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ak = getelementptr [40 x i8], ptr %i.ah, i64 %i.ai
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj1ugBVjDER0_8xml5ever(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i unwind label %bb.q, !noalias !16

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !16
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.am = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.ag
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i ], [ %i.ad, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %i.an = lshr i64 %.sroa.023.0, 1
  %i.ao = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ap = sub nsw i64 %factor, %i.an
  %i.aq = add nuw nsw i64 %i.ao, %factor
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = xor i64 %i.as, %i.ar
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false)
  %i.av = trunc nuw nsw i64 %i.au to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit
  %.sroa.02.136 = phi i64 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.aw = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.ay, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ba, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !4 ; 3 uses
  %i.bd = lshr i64 %i.bc, 1                       ; 5 uses
  %i.be = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bf = add nuw i64 %i.bd, %i.be                ; 5 uses
  %i.bg = sub i64 %.sroa.09.0, %i.bf
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bg ; 3 uses
  %i.bi = icmp samesign ugt i64 %i.bf, %3
  %i.bj = trunc i64 %.sroa.023.135 to i1
  %i.bk = or i64 %i.bc, %.sroa.023.135
  %i.bl = trunc i64 %i.bk to i1
  %or.cond3.i = or i1 %i.bi, %i.bl
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = trunc i64 %i.bc to i1
  br i1 %i.bm, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bn = shl nuw nsw i64 %i.bf, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bj, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bo = or i64 %i.bd, 1
  %i.bp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = xor i32 %i.br, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %i.bh, i64 noundef range(i64 0, 230584300921369396) %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bs, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #18
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %i.bd
  %i.bu = or i64 %i.be, 1
  %i.bv = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 230584300921369396) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.by, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %i.bh, i64 noundef range(i64 0, 230584300921369396) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bd, ptr noalias nofree noundef nonnull %5)
  %i.bz = shl nuw nsw i64 %i.bf, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ca, %bb.x ], [ %i.bn, %bb.t ] ; 2 uses
  %i.cb = icmp ugt i64 %i.aw, 1
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cc = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cd = lshr i64 %.sroa.018.0, 1
  %i.ce = add nuw i64 %i.cd, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cf = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cf, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = or i64 %1, 1
  %i.ch = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ck, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19
  %i.f = load i64, ptr %i.d, align 8, !range !6, !alias.scope !19, !noundef !4 ; 2 uses
  %i.g = and i64 %i.f, 3
  %i.h = and i64 %i.f, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever.11, i64 %i.g
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %switch.ext = zext i8 %switch.load3 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !noalias !19, !captures !8
  store i64 %switch.ext, ptr %i.i, align 8, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19
  store ptr %i.c, ptr %i.a, align 8, !noalias !19
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8, !noalias !19
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !19
  %i.k = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @11, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22
  %i.f = load i64, ptr %i.d, align 8, !range !6, !alias.scope !22, !noundef !4 ; 2 uses
  %i.g = and i64 %i.f, 3
  %i.h = and i64 %i.f, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever.11, i64 %i.g
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %switch.ext = zext i8 %switch.load3 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !noalias !22, !captures !8
  store i64 %switch.ext, ptr %i.i, align 8, !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  store ptr %i.c, ptr %i.a, align 8, !noalias !22
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8, !noalias !22
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !22
  %i.k = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @11, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !alias.scope !30, !noalias !31, !noundef !4 ; 4 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 3
  switch i8 %i.d, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !32, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !32, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.b, 4
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.b, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !32, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !32, !nonnull !4, !align !7, !noundef !4
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !32, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !32, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19, !noalias !32
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.s, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.q, %bb.f ]
  %i.t = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !alias.scope !40, !noalias !41, !noundef !4 ; 4 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 3
  switch i8 %i.d, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !42, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !42, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.b, 4
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.b, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !42, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !42, !nonnull !4, !align !7, !noundef !4
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !42, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !42, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19, !noalias !42
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.s, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.q, %bb.f ]
  %i.t = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 1, 0) i64 @_RNvXs2_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEE4fromCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !4 ; 7 uses
  %i.f = icmp ult i64 %.sroa.3.0, 8
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.04.0 = load ptr, ptr %.sroa.04.0.in, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !57
  %.val.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 48), align 8, !noalias !57, !noundef !4
  invoke fastcc void @_RINvCsf0tt01pzWYu_10phf_shared4hasheECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0, i64 noundef %.sroa.3.0, i64 %.val.i) #17
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.b
  %i.g = load ptr, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, align 8, !noalias !57, !nonnull !4, !align !9, !noundef !4
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 8), align 8, !noalias !57, !noundef !4 ; 3 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !57, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.invoke50, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.l = load i32, ptr %i.b, align 4, !alias.scope !58, !noalias !60, !noundef !4 ; 2 uses
  %i.m = urem i32 %i.l, %i.j
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp samesign ugt i64 %i.h, %i.n
  br i1 %i.o, label %bb.d, label %.invoke

.invoke50:                                        ; preds = %bb.d, %.noexc
  %i.p = phi ptr [ @1, %.noexc ], [ @3, %bb.d ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #19
          to label %.cont51 unwind label %bb.t

.cont51:                                          ; preds = %.invoke50
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.q = trunc i64 %i.i to i32                    ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.invoke50, label %_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i

_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i:  ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !59, !noalias !61, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !58, !noalias !60, !noundef !4
  %i.x = load i32, ptr %i.s, align 4, !alias.scope !59, !noalias !61, !noundef !4
  %i.y = mul i32 %i.x, %i.w
  %i.z = add i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !58, !noalias !60, !noundef !4
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = urem i32 %i.ac, %i.q
  %i.ae = zext i32 %i.ad to i64                   ; 4 uses
  %i.af = icmp ugt i64 %i.i, %i.ae
  br i1 %i.af, label %bb.e, label %.invoke

bb.e:                                             ; preds = %_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !57, !nonnull !4, !align !7, !noundef !4
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !62, !noundef !4
  %i.ak = icmp eq i64 %i.aj, %.sroa.3.0
  br i1 %i.ak, label %bb.f, label %bb.h

.invoke:                                          ; preds = %_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i, %bb.c
  %i.al = phi i64 [ %i.n, %bb.c ], [ %i.ae, %_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i ]
  %i.am = phi i64 [ %i.h, %bb.c ], [ %i.i, %_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i ]
  %i.an = phi ptr [ @2, %bb.c ], [ @5, %_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an) #19
end_hunk_0
