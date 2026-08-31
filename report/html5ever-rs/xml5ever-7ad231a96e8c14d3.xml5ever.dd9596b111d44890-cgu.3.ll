Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.3?download=true
inline.NumInlined: 96
inline.NumDeleted: 49
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBW_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever:bb.a
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
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i unwind label %bb.q, !noalias !9

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !9
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
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !7
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
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !7 ; 3 uses
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
  %i.cc = add i64 %.sroa.02.1.lcssa, 1
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
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7
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
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !align !14, !noundef !7 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.e, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15
  %i.f = load i64, ptr %i.d, align 8, !range !13, !alias.scope !15, !noundef !7 ; 2 uses
  %i.g = and i64 %i.f, 3
  %i.h = and i64 %i.f, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever.11, i64 %i.g
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %switch.ext = zext i8 %switch.load3 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !noalias !15, !captures !18
  store i64 %switch.ext, ptr %i.i, align 8, !noalias !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15
  %2 = ptrtoint ptr %i.c to i64
  %3 = ptrtoint ptr %i.b to i64
  store i64 %2, ptr %i.a, align 8, !noalias !15
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever to i64), ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.j, align 8, !noalias !15
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever to i64), ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.k = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @11, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !align !14, !noundef !7 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.e, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19
  %i.f = load i64, ptr %i.d, align 8, !range !13, !alias.scope !19, !noundef !7 ; 2 uses
  %i.g = and i64 %i.f, 3
  %i.h = and i64 %i.f, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsj1ugBVjDER0_8xml5ever.11, i64 %i.g
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %switch.ext = zext i8 %switch.load3 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !noalias !19, !captures !18
  store i64 %switch.ext, ptr %i.i, align 8, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19
  %2 = ptrtoint ptr %i.c to i64
  %3 = ptrtoint ptr %i.b to i64
  store i64 %2, ptr %i.a, align 8, !noalias !19
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever to i64), ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.j, align 8, !noalias !19
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever to i64), ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.k = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @11, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !14, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.b = load i64, ptr %i.a, align 8, !range !13, !alias.scope !28, !noalias !29, !noundef !7 ; 4 uses
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
  %i.f = load ptr, ptr %i.e, align 8, !noalias !31, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !31, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.b, 4
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.b, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !31, !noundef !7 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !31, !nonnull !7, !align !14, !noundef !7
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !31, !nonnull !7, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !31, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19, !noalias !31
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
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !14, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.b = load i64, ptr %i.a, align 8, !range !13, !alias.scope !38, !noalias !39, !noundef !7 ; 4 uses
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
  %i.f = load ptr, ptr %i.e, align 8, !noalias !41, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !41, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.b, 4
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.b, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !41, !noundef !7 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !41, !nonnull !7, !align !14, !noundef !7
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !41, !nonnull !7, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !41, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19, !noalias !41
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
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !7 ; 7 uses
  %i.f = icmp ult i64 %.sroa.3.0, 8
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.04.0 = load ptr, ptr %.sroa.04.0.in, align 8, !nonnull !7, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42
  %.val.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 48), align 8, !noalias !42, !noundef !7
  invoke fastcc void @_RINvCsf0tt01pzWYu_10phf_shared4hasheECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0, i64 noundef %.sroa.3.0, i64 %.val.i) #17
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.b
  %i.g = load ptr, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, align 8, !noalias !42, !nonnull !7, !align !46, !noundef !7
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 8), align 8, !noalias !42, !noundef !7 ; 3 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !42, !noundef !7 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.invoke50, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.l = load i32, ptr %i.b, align 4, !alias.scope !47, !noalias !52, !noundef !7 ; 2 uses
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
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !50, !noalias !53, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !47, !noalias !52, !noundef !7
  %i.x = load i32, ptr %i.s, align 4, !alias.scope !50, !noalias !53, !noundef !7
  %i.y = mul i32 %i.x, %i.w
  %i.z = add i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !47, !noalias !52, !noundef !7
  %i.ac = add i32 %i.z, %i.ab
  %i.ad = urem i32 %i.ac, %i.q
  %i.ae = zext i32 %i.ad to i64                   ; 4 uses
  %i.af = icmp ugt i64 %i.i, %i.ae
  br i1 %i.af, label %bb.e, label %.invoke

bb.e:                                             ; preds = %_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !42, !nonnull !7, !align !14, !noundef !7
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !54, !noundef !7
  %i.ak = icmp eq i64 %i.aj, %.sroa.3.0
  br i1 %i.ak, label %bb.f, label %bb.h

.invoke:                                          ; preds = %_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i, %bb.c
  %i.al = phi i64 [ %i.n, %bb.c ], [ %i.ae, %_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i ]
  %i.am = phi i64 [ %i.h, %bb.c ], [ %i.i, %_RNvCsf0tt01pzWYu_10phf_shared9get_index.exit.i ]
end_hunk_0
begin_hunk_1_@_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever:bb.a
bb.u:                                             ; preds = %bb.r
  %i.bc = lshr i64 %i.b, 4
  %i.bd = and i64 %i.bc, 15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.bf = lshr i64 %i.b, 32                       ; 3 uses
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !133, !noundef !7 ; 2 uses
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !133, !nonnull !7, !align !14, !noundef !7
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bf ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !133, !nonnull !7, !noundef !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !133, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19, !noalias !133
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i: ; preds = %bb.w, %bb.u, %bb.t
  %.sroa.4.0.i.i6.i.i.i.i = phi i64 [ %i.bb, %bb.t ], [ %i.bd, %bb.u ], [ %i.bm, %bb.w ] ; 2 uses
  %.sroa.0.0.i.i7.i.i.i.i = phi ptr [ %i.az, %bb.t ], [ %i.be, %bb.u ], [ %i.bk, %bb.w ]
  %i.bn = trunc i64 %i.d to i8
  %i.bo = and i8 %i.bn, 3
  switch i8 %i.bo, label %bb.y [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
  ]

bb.y:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  unreachable

bb.z:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.bp = inttoptr i64 %i.d to ptr                ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !139, !nonnull !7, !noundef !7
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !139, !noundef !7
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

bb.aa:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.bt = lshr i64 %i.d, 4
  %i.bu = and i64 %i.bt, 15
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 17
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

bb.ab:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.bw = lshr i64 %i.d, 32                       ; 3 uses
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !139, !noundef !7 ; 2 uses
  %i.by = icmp ult i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !139, !nonnull !7, !align !14, !noundef !7
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bw ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !139, !nonnull !7, !noundef !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !139, !noundef !7
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19, !noalias !139
  unreachable

_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i: ; preds = %bb.ac, %bb.aa, %bb.z
  %.sroa.4.0.i6.i8.i.i.i.i = phi i64 [ %i.bs, %bb.z ], [ %i.bu, %bb.aa ], [ %i.cd, %bb.ac ] ; 2 uses
  %.sroa.0.0.i7.i9.i.i.i.i = phi ptr [ %i.bq, %bb.z ], [ %i.bv, %bb.aa ], [ %i.cb, %bb.ac ]
  %spec.store.select.i10.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i6.i.i.i.i, i64 %.sroa.4.0.i6.i8.i.i.i.i)
  %i.ce = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i7.i.i.i.i, ptr nonnull %.sroa.0.0.i7.i9.i.i.i.i, i64 %spec.store.select.i10.i.i.i.i) ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp eq i32 %i.ce, 0
  %i.ch = sub i64 %.sroa.4.0.i.i6.i.i.i.i, %.sroa.4.0.i6.i8.i.i.i.i
  %spec.select.i11.i.i.i.i = select i1 %i.cg, i64 %i.ch, i64 %i.cf ; 2 uses
  %i.ci = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i11.i.i.i.i, i64 0)
  %i.cj = icmp eq i64 %spec.select.i11.i.i.i.i, 0
  br i1 %i.cj, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i, label %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i: ; preds = %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.cm = load i64, ptr %i.ck, align 8, !range !13, !alias.scope !147, !noalias !148, !noundef !7 ; 5 uses
  %i.cn = load i64, ptr %i.cl, align 8, !range !13, !alias.scope !148, !noalias !147, !noundef !7 ; 5 uses
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i
  %i.cp = trunc i64 %i.cm to i8
  %i.cq = and i8 %i.cp, 3
  switch i8 %i.cq, label %bb.af [
    i8 0, label %bb.ag
    i8 1, label %bb.ah
    i8 2, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cr = inttoptr i64 %i.cm to ptr               ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !149, !nonnull !7, !noundef !7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !149, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  %i.cv = lshr i64 %i.cm, 4
  %i.cw = and i64 %i.cv, 15
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.cy = lshr i64 %i.cm, 32                      ; 3 uses
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !149, !noundef !7 ; 2 uses
  %i.da = icmp ult i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !149, !nonnull !7, !align !14, !noundef !7
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cy ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !149, !nonnull !7, !noundef !7
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8, !noalias !149, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19, !noalias !149
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ah, %bb.ag
  %.sroa.4.0.i.i13.i.i.i.i = phi i64 [ %i.cu, %bb.ag ], [ %i.cw, %bb.ah ], [ %i.df, %bb.aj ] ; 2 uses
  %.sroa.0.0.i.i14.i.i.i.i = phi ptr [ %i.cs, %bb.ag ], [ %i.cx, %bb.ah ], [ %i.dd, %bb.aj ]
  %i.dg = trunc i64 %i.cn to i8
  %i.dh = and i8 %i.dg, 3
  switch i8 %i.dh, label %bb.al [
    i8 0, label %bb.am
    i8 1, label %bb.an
    i8 2, label %bb.ao
  ]

bb.al:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  unreachable

bb.am:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.di = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !152, !nonnull !7, !noundef !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !152, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i.i.i

bb.an:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.dm = lshr i64 %i.cn, 4
  %i.dn = and i64 %i.dm, 15
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i.i.i

bb.ao:                                            ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.dp = lshr i64 %i.cn, 32                      ; 3 uses
  %i.dq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !152, !noundef !7 ; 2 uses
  %i.dr = icmp ult i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !152, !nonnull !7, !align !14, !noundef !7
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dp ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !152, !nonnull !7, !noundef !7
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !152, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dp, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19, !noalias !152
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i.i.i: ; preds = %bb.ap, %bb.an, %bb.am
  %.sroa.4.0.i6.i15.i.i.i.i = phi i64 [ %i.dl, %bb.am ], [ %i.dn, %bb.an ], [ %i.dw, %bb.ap ] ; 2 uses
  %.sroa.0.0.i7.i16.i.i.i.i = phi ptr [ %i.dj, %bb.am ], [ %i.do, %bb.an ], [ %i.du, %bb.ap ]
  %spec.store.select.i17.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i13.i.i.i.i, i64 %.sroa.4.0.i6.i15.i.i.i.i)
  %i.dx = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i14.i.i.i.i, ptr nonnull %.sroa.0.0.i7.i16.i.i.i.i, i64 %spec.store.select.i17.i.i.i.i) ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp eq i32 %i.dx, 0
  %i.ea = sub i64 %.sroa.4.0.i.i13.i.i.i.i, %.sroa.4.0.i6.i15.i.i.i.i
  %spec.select.i18.i.i.i.i = select i1 %i.dz, i64 %i.ea, i64 %i.dy
  %i.eb = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i18.i.i.i.i, i64 0)
  br label %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i.i.i, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.eb, %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i.i.i ], [ %i.at, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i ], [ %i.ci, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i ] ; 2 uses
  %i.ec = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.ec, label %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i, label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsj1ugBVjDER0_8xml5ever.exit

_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i: ; preds = %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = load ptr, ptr %i.ed, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.eg = ptrtoint ptr %i.ef to i64               ; 3 uses
  %i.eh = icmp eq ptr %i.ef, inttoptr (i64 15 to ptr)
  br i1 %i.eh, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i
  %i.ei = icmp ult ptr %i.ef, inttoptr (i64 9 to ptr)
  br i1 %i.ei, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ej = and i64 %i.eg, -2
  %i.ek = trunc i64 %i.eg to i1
  br i1 %i.ek, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.em = load i32, ptr %i.el, align 4, !noalias !155, !noundef !7
  %i.en = zext i32 %i.em to i64
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

bb.av:                                            ; preds = %bb.at, %bb.as
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.en, %bb.at ], [ 0, %bb.as ]
  %2 = inttoptr i64 %i.ej to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.er = load i32, ptr %i.eq, align 8, !noundef !7
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.01.0.i.i.i.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i: ; preds = %bb.av, %bb.au, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %i.es, %bb.av ], [ %i.eg, %bb.au ], [ 0, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.et, %bb.av ], [ %i.eo, %bb.au ], [ inttoptr (i64 1 to ptr), %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread5.i.i.i ]
  %i.eu = load ptr, ptr %i.ee, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.ev = ptrtoint ptr %i.eu to i64               ; 3 uses
  %i.ew = icmp eq ptr %i.eu, inttoptr (i64 15 to ptr)
  br i1 %i.ew, label %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i
  %i.ex = icmp ult ptr %i.eu, inttoptr (i64 9 to ptr)
  br i1 %i.ex, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ey = and i64 %i.ev, -2
  %i.ez = trunc i64 %i.ev to i1
  br i1 %i.ez, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.fb = load i32, ptr %i.fa, align 4, !noalias !158, !noundef !7
  %i.fc = zext i32 %i.fb to i64
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.01.0.i.i1.i.i.i.i = phi i64 [ %i.fc, %bb.ay ], [ 0, %bb.ax ]
  %3 = inttoptr i64 %i.ey to ptr
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !noundef !7
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.01.0.i.i1.i.i.i.i
  br label %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i

_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i: ; preds = %bb.ba, %bb.az, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i
  %.sroa.4.0.i2.i.i.i.i = phi i64 [ %i.fh, %bb.ba ], [ %i.ev, %bb.az ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i3.i.i.i.i = phi ptr [ %i.fi, %bb.ba ], [ %i.fd, %bb.az ], [ inttoptr (i64 1 to ptr), %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i ]
  %spec.store.select.i.i2.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %.sroa.4.0.i.i.i.i.i, i64 range(i64 0, 4294967296) %.sroa.4.0.i2.i.i.i.i)
  %i.fj = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %.sroa.0.0.i3.i.i.i.i, i64 %spec.store.select.i.i2.i.i.i), !alias.scope !161 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp eq i32 %i.fj, 0
  %i.fm = sub nsw i64 %.sroa.4.0.i.i.i.i.i, %.sroa.4.0.i2.i.i.i.i
  %spec.select.i.i3.i.i.i = select i1 %i.fl, i64 %i.fm, i64 %i.fk
  %i.fn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i3.i.i.i, i64 0)
  br label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsj1ugBVjDER0_8xml5ever.exit

_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.b, %bb.c, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.fn, %_RNvXso_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i ], [ -1, %bb.c ], [ 1, %bb.b ]
  %i.fo = icmp slt i8 %.sroa.0.0.i.i.i, 0
  ret i1 %i.fo
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i32 noundef, ptr noundef align 8, ptr noalias nofree noundef nonnull) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsf0tt01pzWYu_10phf_shared6hasherINtB4_17PortableSipHasherNtNtCs2v27nWyKdpW_9siphasher6sip12811SipHasher13ENtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Csj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(72), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsf0tt01pzWYu_10phf_shared6hasherINtB4_17PortableSipHasherNtNtCs2v27nWyKdpW_9siphasher6sip12811SipHasher13ENtNtCskKLDkoKarTP_4core4hash6Hasher5writeCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6insert(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj1ugBVjDER0_8xml5ever(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { inlinehint }
attributes #18 = { noinline }
attributes #19 = { noinline noreturn }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RINvXs8_Csf0tt01pzWYu_10phf_sharedeNtB6_7PhfHash8phf_hashINtNtB6_6hasher17PortableSipHasherNtNtCs2v27nWyKdpW_9siphasher6sip12811SipHasher13EECsj1ugBVjDER0_8xml5ever: argument 0"}
!6 = distinct !{!6, !"_RINvXs8_Csf0tt01pzWYu_10phf_sharedeNtB6_7PhfHash8phf_hashINtNtB6_6hasher17PortableSipHasherNtNtCs2v27nWyKdpW_9siphasher6sip12811SipHasher13EECsj1ugBVjDER0_8xml5ever"}
!7 = !{}
!8 = !{i64 -1, i64 -9223372036854775808}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever: argument 1"}
!11 = distinct !{!11, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever"}
!12 = distinct !{!12, !11, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever: argument 2"}
!13 = !{i64 1, i64 0}
!14 = !{i64 8}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsj1ugBVjDER0_8xml5ever: argument 0"}
!17 = distinct !{!17, !"_RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsj1ugBVjDER0_8xml5ever"}
!18 = !{!"address", !"read_provenance"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsj1ugBVjDER0_8xml5ever: argument 0"}
!21 = distinct !{!21, !"_RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsj1ugBVjDER0_8xml5ever"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever: argument 0"}
!24 = distinct !{!24, !"_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever: argument 0"}
!27 = distinct !{!27, !"_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever"}
!28 = !{!26, !23}
!29 = !{!30}
!30 = distinct !{!30, !24, !"_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever: argument 1"}
!31 = !{!26, !23, !30}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever: argument 0"}
!34 = distinct !{!34, !"_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever: argument 0"}
!37 = distinct !{!37, !"_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever"}
!38 = !{!36, !33}
!39 = !{!40}
!40 = distinct !{!40, !34, !"_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsj1ugBVjDER0_8xml5ever: argument 1"}
!41 = !{!36, !33, !40}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"_RNvMs_NtCsgv7xG79AfeB_12string_cache4atomINtB4_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetE19try_static_internalCsj1ugBVjDER0_8xml5ever: argument 0"}
!44 = distinct !{!44, !"_RNvMs_NtCsgv7xG79AfeB_12string_cache4atomINtB4_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetE19try_static_internalCsj1ugBVjDER0_8xml5ever"}
!45 = distinct !{!45, !44, !"_RNvMs_NtCsgv7xG79AfeB_12string_cache4atomINtB4_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetE19try_static_internalCsj1ugBVjDER0_8xml5ever: argument 1"}
!46 = !{i64 4}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_RNvCsf0tt01pzWYu_10phf_shared9get_index: argument 0"}
!49 = distinct !{!49, !"_RNvCsf0tt01pzWYu_10phf_shared9get_index"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"_RNvCsf0tt01pzWYu_10phf_shared9get_index: argument 1"}
!52 = !{!51, !43, !45}
!53 = !{!48, !43}
!54 = !{!43}
end_hunk_1
