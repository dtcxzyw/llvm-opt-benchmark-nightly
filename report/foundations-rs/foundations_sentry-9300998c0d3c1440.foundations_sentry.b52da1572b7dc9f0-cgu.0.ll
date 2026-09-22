Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_sentry-9300998c0d3c1440.foundations_sentry.b52da1572b7dc9f0-cgu.0?download=true
inline.NumInlined: 194
inline.NumDeleted: 102
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@3 = private unnamed_addr constant [48 x i8] c"assertion failed: shard_amount.is_power_of_two()", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"]\00\00\00\00\00\00\00\13\01\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBV_6string6StringERSReEE7reserveNCINvNtB8_3map11make_hasherBQ_B1J_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !245 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !248
  %i.b = load i64, ptr %i.a, align 8, !dbg !248, !noundef !114
  %i.c = icmp ugt i64 %1, %i.b, !dbg !249
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !250, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBV_6string6StringERSReEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1J_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #21, !dbg !251 ; 0 uses
  br label %bb.c, !dbg !252

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !253
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBV_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EB1E_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !254 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !771
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701), !dbg !772
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !773 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !773, !alias.scope !701, !noalias !702, !noundef !114 ; 3 uses
  %i.f = add i64 %i.e, %1, !dbg !774              ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e, !dbg !774
  br i1 %i.g, label %bb.c, label %bb.b, !dbg !775, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !776 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !776, !alias.scope !701, !noalias !702, !noundef !114 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8, !dbg !777
  %i.k = add i64 %i.i, 1, !dbg !777               ; 6 uses
  %i.l = lshr i64 %i.k, 3, !dbg !777
  %i.m = mul nuw i64 %i.l, 7, !dbg !777
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m, !dbg !777 ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1, !dbg !778
  %.not.i = icmp ugt i64 %i.f, %i.n, !dbg !779
  br i1 %.not.i, label %bb.d, label %bb.o, !dbg !779

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !780, !noalias !703 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0, !dbg !780
  %i.q = extractvalue { i64, i64 } %i.o, 1, !dbg !780
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !781

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1, !dbg !782
  %..i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.f), !dbg !783 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704), !dbg !784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !785, !noalias !705
  %i.s = icmp ult i64 %..i, 15, !dbg !786
  br i1 %i.s, label %.thread.i, label %bb.e, !dbg !786

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %..i, 2305843009213693951, !dbg !787
  br i1 %i.t, label %bb.j, label %bb.f, !dbg !788, !prof !116

.thread.i:                                        ; preds = %bb.d
  %i.u = icmp samesign ult i64 %..i, 4, !dbg !789
  %i.v = and i64 %..i, 8, !dbg !789
  %..i.i = add nuw nsw i64 %i.v, 8, !dbg !789
  %.sroa.03.0.i.i = select i1 %i.u, i64 4, i64 %..i.i, !dbg !789
  br label %bb.g, !dbg !790

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %..i, 3, !dbg !787
  %i.x = udiv i64 %i.w, 7, !dbg !791
  %i.y = add nsw i64 %i.x, -1, !dbg !792
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true), !dbg !793
  %i.aa = lshr i64 -1, %i.z, !dbg !794            ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1, !dbg !795
  %i.ac = icmp samesign ugt i64 %i.aa, 1152921504606846974, !dbg !796
  br i1 %i.ac, label %bb.h, label %bb.g, !dbg !790, !prof !708

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph7.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.ab, %bb.f ] ; 5 uses
  %i.ad = shl nuw i64 %.sroa.4.0.i.ph7.i, 4, !dbg !796 ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph7.i, 16, !dbg !797 ; 2 uses
  %i.af = add i64 %i.ae, %i.ad, !dbg !798         ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad, !dbg !798
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah, !dbg !799
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, !dbg !799, !prof !130

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !800, !noalias !709
  %i.ai = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !dbg !801, !noalias !709 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null, !dbg !802
  br i1 %i.aj, label %bb.i, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !803

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !804, !noalias !709
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread, !dbg !805

bb.i:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !dbg !806, !noalias !709
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread, !dbg !807

bb.j:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !808, !noalias !713
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread, !dbg !809

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad, !dbg !810 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !dbg !811, !noalias !713
  %i.ao = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9, !dbg !812
  %i.ap = add nsw i64 %.sroa.4.0.i.ph7.i, -1, !dbg !813 ; 6 uses
  %i.aq = lshr i64 %.sroa.4.0.i.ph7.i, 3, !dbg !812
  %i.ar = mul nuw nsw i64 %i.aq, 7, !dbg !812
  %.sroa.07.0.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.ar, !dbg !812 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !dbg !814, !noalias !705
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !814 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !814, !noalias !705
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !814 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !814, !noalias !705
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !814 ; 3 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !814, !noalias !705
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !814 ; 2 uses
  store i64 %i.ap, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !814, !noalias !705
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !814 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !814, !noalias !705
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !814 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !814, !noalias !705
  %i.as = load i64, ptr %i.d, align 8, !dbg !815, !alias.scope !719, !noalias !720, !noundef !114 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0, !dbg !816
  br i1 %i.at, label %._crit_edge54, label %.preheader.lr.ph, !dbg !816

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit
  %i.au = load ptr, ptr %0, align 8, !dbg !817, !alias.scope !719, !noalias !720, !nonnull !114, !noundef !114 ; 2 uses
  %.val337 = load <16 x i8>, ptr %i.au, align 16, !dbg !818
  %i.av = icmp sgt <16 x i8> %.val337, splat (i8 -1), !dbg !819
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !820
  br label %.preheader, !dbg !816

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.12.033 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !821
  %.sroa.7.034 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !822, !noalias !705
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !823

bb.k:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #23, !dbg !822
  br label %common.resume, !dbg !824

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.019.053 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.019.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.052 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.051 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.050 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i145 = icmp eq i16 %.sroa.13.050, 0, !dbg !825
  br i1 %.not.i145, label %.noexc2, label %._crit_edge, !dbg !826

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.019.147 = phi ptr [ %i.ay, %.noexc2 ], [ %.sroa.019.053, %.preheader ] ; 2 uses
  %.sroa.5.146 = phi i64 [ %i.bb, %.noexc2 ], [ %.sroa.5.052, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.147) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.019.147, i64 16, !dbg !827 ; 3 uses
  %.val38 = load <16 x i8>, ptr %i.ay, align 16, !dbg !828
  %i.az = icmp sgt <16 x i8> %.val38, splat (i8 -1), !dbg !829
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !830 ; 2 uses
  %i.bb = add i64 %.sroa.5.146, 16, !dbg !831     ; 2 uses
  %.not.i1 = icmp eq i16 %i.ba, 0, !dbg !825
  br i1 %.not.i1, label %.noexc2, label %._crit_edge, !dbg !826

._crit_edge54.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre67 = load i64, ptr %i.d, align 8, !dbg !832, !alias.scope !719, !noalias !720
  br label %._crit_edge54, !dbg !832

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit
  %i.bc = phi i64 [ %.pre67, %._crit_edge54.loopexit ], [ 0, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit ], !dbg !832 ; 2 uses
  %i.bd = sub i64 %.sroa.07.0.i.i, %i.bc, !dbg !833
  store i64 %i.bd, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !833, !noalias !705
  store i64 %i.bc, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !834, !noalias !705
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfypgzpEsCtg_18foundations_sentry(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECsfypgzpEsCtg_18foundations_sentry.exit unwind label %bb.l, !dbg !835

bb.l:                                             ; preds = %._crit_edge54
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !dbg !836
  unreachable, !dbg !836

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %._crit_edge54
  call void @llvm.experimental.noalias.scope.decl(metadata !728), !dbg !822
  call void @llvm.experimental.noalias.scope.decl(metadata !729), !dbg !837
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !838, !alias.scope !730 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !838, !alias.scope !730 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !838, !alias.scope !730, !noundef !114 ; 3 uses
  %i.bf = icmp eq i64 %.val3.i.i, 0, !dbg !839
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !840

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECsfypgzpEsCtg_18foundations_sentry.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !838, !alias.scope !730
  %i.bg = add i64 %.val3.i.i, 1, !dbg !841
  %i.bh = mul nuw i64 %.val.i.i, %i.bg, !dbg !842 ; 2 uses
  %i.bi = add i64 %.val1.i.i, -1, !dbg !843
  %i.bj = add i64 %i.bi, %i.bh, !dbg !844         ; 2 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh, !dbg !844
  call void @llvm.assume(i1 %i.bk), !dbg !845
  %i.bl = sub i64 0, %.val1.i.i, !dbg !846
  %i.bm = and i64 %i.bj, %i.bl, !dbg !847         ; 3 uses
  %i.bn = add i64 %.val3.i.i, 17, !dbg !848
  %i.bo = add i64 %i.bn, %i.bm, !dbg !849         ; 4 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm, !dbg !849
  %i.bq = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.br = icmp ule i64 %i.bo, %i.bq
  call void @llvm.assume(i1 %i.bp), !dbg !850
  call void @llvm.assume(i1 %i.br), !dbg !850
  %i.bs = icmp ne i64 %.val1.i.i, 0, !dbg !851
  call void @llvm.assume(i1 %i.bs), !dbg !852
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bt = icmp eq i64 %i.bo, 0, !dbg !853
  br i1 %i.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit, label %bb.m, !dbg !853

bb.m:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bm, !dbg !854
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu, !dbg !855
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #22, !dbg !856, !noalias !730
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !857

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECsfypgzpEsCtg_18foundations_sentry.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !822, !noalias !705
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !823

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.050, %.preheader ], [ %i.ba, %.noexc2 ], !dbg !858 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.052, %.preheader ], [ %i.bb, %.noexc2 ], !dbg !858 ; 2 uses
  %.sroa.019.1.lcssa = phi ptr [ %.sroa.019.053, %.preheader ], [ %i.ay, %.noexc2 ], !dbg !858
  %i.bw = add i16 %.sroa.13.1.lcssa, -1, !dbg !859
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !860
  %i.by = zext nneg i16 %i.bx to i64, !dbg !861
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa, !dbg !862
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by, !dbg !863 ; 2 uses
  %i.cb = add i64 %.sroa.9.051, -1, !dbg !864     ; 2 uses
  %i.cc = load ptr, ptr %0, align 8, !dbg !865, !alias.scope !731, !noalias !732, !nonnull !114, !noundef !114
  %i.cd = sub nsw i64 0, %i.ca, !dbg !866
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.cd, !dbg !867
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16, !dbg !868
  %i.cg = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalEEB2t_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit unwind label %bb.k, !dbg !869 ; 2 uses

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.ap, %i.cg, !dbg !870 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i, !dbg !871
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !872, !noalias !736
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !873
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !873 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cj, 0, !dbg !874
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !875, !prof !170

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ], !dbg !870
  %.lcssa.i = phi i16 [ %i.cj, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit ], [ %i.da, %.lr.ph.i ], !dbg !873
  %i.ck = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !876
  %i.cl = zext nneg i16 %i.ck to i64, !dbg !877
  %i.cm = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cl, !dbg !878
  %i.cn = and i64 %i.cm, %i.ap, !dbg !878         ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cn, !dbg !879
  %i.cp = load i8, ptr %i.co, align 1, !dbg !880, !noundef !114
  %i.cq = icmp sgt i8 %i.cp, -1, !dbg !881
  br i1 %i.cq, label %bb.n, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !882, !prof !116

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.an, align 16, !dbg !883
  %i.cr = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer, !dbg !884
  %i.cs = bitcast <16 x i1> %i.cr to i16, !dbg !884 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cs, 0, !dbg !885
  %i.ct = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cs, i1 true), !dbg !886
  %i.cu = zext nneg i16 %i.ct to i64, !dbg !886
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !887
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !888

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit ]
  %i.cv = phi i64 [ %i.cw, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit ]
  %i.cw = add i64 %i.cv, 16, !dbg !889            ; 2 uses
  %i.cx = add i64 %i.cw, %.sroa.0.010.i, !dbg !890
  %.sroa.0.0.i10 = and i64 %i.cx, %i.ap, !dbg !870 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i10, !dbg !871
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cy, align 1, !dbg !872, !noalias !736
  %i.cz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !873
  %i.da = bitcast <16 x i1> %i.cz to i16, !dbg !873 ; 2 uses
  %.not.i.i = icmp eq i16 %i.da, 0, !dbg !874
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !875, !prof !173

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cu, %bb.n ], [ %i.cn, %._crit_edge.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i5.i, !dbg !891
  %i.dc = lshr i64 %i.cg, 57, !dbg !892
  %i.dd = trunc nuw nsw i64 %i.dc to i8, !dbg !893 ; 2 uses
  %i.de = add nsw i64 %.sroa.0.0.i5.i, -16, !dbg !894
  %i.df = and i64 %i.de, %i.ap, !dbg !895
  store i8 %i.dd, ptr %i.db, align 1, !dbg !896
  %i.dg = getelementptr i8, ptr %i.an, i64 %i.df, !dbg !897
  %i.dh = getelementptr i8, ptr %i.dg, i64 16, !dbg !897
  store i8 %i.dd, ptr %i.dh, align 1, !dbg !898
  %i.di = load ptr, ptr %0, align 8, !dbg !899, !alias.scope !719, !noalias !720, !nonnull !114, !noundef !114
  %i.dj = shl i64 %i.ca, 4, !dbg !900
  %i.dk = sub nuw nsw i64 -16, %i.dj, !dbg !901
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk, !dbg !902
  %i.dm = shl i64 %.sroa.0.0.i5.i, 4, !dbg !903
  %i.dn = sub nuw nsw i64 -16, %i.dm, !dbg !904
  %i.do = getelementptr inbounds i8, ptr %i.an, i64 %i.dn, !dbg !905
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.do, ptr noundef nonnull align 1 dereferenceable(16) %i.dl, i64 16, i1 false), !dbg !906
  %i.dp = icmp eq i64 %i.cb, 0, !dbg !816
  br i1 %i.dp, label %._crit_edge54.loopexit, label %.preheader, !dbg !816

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.es, %bb.r ]
  resume { ptr, i32 } %common.resume.op, !dbg !907

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740), !dbg !908
  %.val13.i = load ptr, ptr %0, align 8, !dbg !909, !alias.scope !740 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0, !dbg !910
  br i1 %.not6.i.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i, !dbg !910

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !911, !noalias !740
  br label %bb.z, !dbg !912

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dq = lshr i64 %i.k, 4, !dbg !913
  %i.dr = and i64 %i.k, 15, !dbg !914
  %.not10.i.i.i.i = icmp ne i64 %i.dr, 0, !dbg !915
  %i.ds = zext i1 %.not10.i.i.i.i to i64, !dbg !915
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dq, %i.ds, !dbg !915 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1, !dbg !910
  %i.dt = icmp eq i64 %.sroa.05.0.i.i.i.i, 1, !dbg !910
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph.i.i.new, !dbg !910

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950, !dbg !910
  br label %bb.p, !dbg !910

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !910
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader, !dbg !910

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ed, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %.sroa.05.0.i.i.i.i to i1, !dbg !910
  tail call void @llvm.assume(i1 %lcmp.mod108), !dbg !910
  %i.du = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init, !dbg !916 ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.du, align 16, !dbg !917, !noalias !740
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7), !dbg !918
  %i.dv = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>, !dbg !919
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472), !dbg !919
  store <2 x i64> %i.dw, ptr %i.du, align 16, !dbg !920, !noalias !740
  br label %._crit_edge.i.i, !dbg !921

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !921
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !921
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16), !dbg !922
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16), !dbg !922
  %i.dz = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i12, !dbg !923
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !dbg !924, !noalias !740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !911, !noalias !740
  store ptr @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtB10_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B2L_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceB1J_, ptr %i.dx, align 8, !dbg !921, !noalias !740
  store i64 16, ptr %i.dy, align 8, !dbg !921, !noalias !740
  store ptr %0, ptr %i.a, align 8, !dbg !921, !noalias !740
  br label %.lr.ph.i13, !dbg !925

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ed, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i, !dbg !916 ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ea, align 16, !dbg !917, !noalias !740
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7), !dbg !918
  %i.eb = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>, !dbg !919
  %i.ec = or <2 x i64> %i.eb, splat (i64 -9187201950435737472), !dbg !919
  store <2 x i64> %i.ec, ptr %i.ea, align 16, !dbg !920, !noalias !740
  %i.ed = add i64 %.sroa.0.08.i.i, 32, !dbg !926  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i, !dbg !916
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16, !dbg !916 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ef, align 16, !dbg !917, !noalias !740
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7), !dbg !918
  %i.eg = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>, !dbg !919
  %i.eh = or <2 x i64> %i.eg, splat (i64 -9187201950435737472), !dbg !919
  store <2 x i64> %i.eh, ptr %i.ef, align 16, !dbg !920, !noalias !740
  %niter.next.1 = add i64 %niter, 2, !dbg !910    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !910
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p, !dbg !910

.lr.ph.i13:                                       ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ei, %bb.x ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.ei = add nuw i64 %.sroa.0.06.i, 1, !dbg !927
  %i.ej = load ptr, ptr %0, align 8, !dbg !928, !alias.scope !740, !nonnull !114, !noundef !114 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.0.06.i, !dbg !929
  %i.el = load i8, ptr %i.ek, align 1, !dbg !930, !noundef !114
  %.not.i14 = icmp eq i8 %i.el, -128, !dbg !930
  br i1 %.not.i14, label %bb.q, label %bb.x, !dbg !925

bb.q:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.0.06.i, -1, !dbg !927
  %.neg11.i = shl i64 %.neg.i, 4, !dbg !931
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %.neg11.i, !dbg !932 ; 2 uses
  %i.en = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i, !dbg !933

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.w, %bb.q
  %i.eo = load ptr, ptr %0, align 8, !dbg !934, !alias.scope !751, !noalias !752, !nonnull !114, !noundef !114
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.eo, i64 %i.en, !dbg !935
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -16, !dbg !936
  %i.er = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalEEB2t_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eq)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i unwind label %bb.r, !dbg !937 ; 3 uses

bb.r:                                             ; preds = %bb.w, %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %common.resume unwind label %bb.y, !dbg !938

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i17 = load ptr, ptr %0, align 8, !dbg !939, !alias.scope !740, !nonnull !114, !noundef !114 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !dbg !939, !alias.scope !740, !noundef !114 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.er, !dbg !940 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.07.i.i, !dbg !941
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.et, align 1, !dbg !942, !noalias !753
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer, !dbg !943
  %i.ev = bitcast <16 x i1> %i.eu to i16, !dbg !943 ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ev, 0, !dbg !944
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !dbg !945, !prof !170

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i ], [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ], !dbg !940
  %.lcssa.i.i = phi i16 [ %i.ev, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i ], [ %i.fm, %.lr.ph.i16.i ], !dbg !943
  %i.ew = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true), !dbg !946
  %i.ex = zext nneg i16 %i.ew to i64, !dbg !947
  %i.ey = add i64 %.sroa.0.0.lcssa.i.i, %i.ex, !dbg !948
  %i.ez = and i64 %i.ey, %.val12.i, !dbg !948     ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %i.ez, !dbg !949
  %i.fb = load i8, ptr %i.fa, align 1, !dbg !950, !noundef !114
  %i.fc = icmp sgt i8 %i.fb, -1, !dbg !951
  br i1 %i.fc, label %bb.s, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !dbg !952, !prof !116

bb.s:                                             ; preds = %._crit_edge.i15.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i17, align 16, !dbg !953
  %i.fd = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer, !dbg !954
  %i.fe = bitcast <16 x i1> %i.fd to i16, !dbg !954 ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fe, 0, !dbg !955
  %i.ff = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fe, i1 true), !dbg !956
  %i.fg = zext nneg i16 %i.ff to i64, !dbg !956
  tail call void @llvm.assume(i1 %.not.i6.i.i), !dbg !957
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !dbg !958

.lr.ph.i16.i:                                     ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i ]
  %i.fh = phi i64 [ %i.fi, %.lr.ph.i16.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i ]
  %i.fi = add i64 %i.fh, 16, !dbg !959            ; 2 uses
  %i.fj = add i64 %i.fi, %.sroa.0.010.i.i, !dbg !960
  %.sroa.0.0.i.i18 = and i64 %i.fj, %.val12.i, !dbg !940 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i.i18, !dbg !941
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fk, align 1, !dbg !942, !noalias !753
  %i.fl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer, !dbg !943
  %i.fm = bitcast <16 x i1> %i.fl to i16, !dbg !943 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fm, 0, !dbg !944
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !dbg !945, !prof !173

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fg, %bb.s ], [ %i.ez, %._crit_edge.i15.i ] ; 4 uses
  %i.fn = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i, !dbg !961
  %i.fo = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i, !dbg !962
  %i.fp = xor i64 %i.fo, %i.fn, !dbg !963
  %.unshifted.i = and i64 %i.fp, %.val12.i, !dbg !963
  %i.fq = icmp ult i64 %.unshifted.i, 16, !dbg !963
  br i1 %i.fq, label %bb.u, label %bb.t, !dbg !964, !prof !186

bb.t:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fr = shl i64 %.sroa.0.0.i5.i.i, 4, !dbg !965
  %i.fs = sub nuw nsw i64 -16, %i.fr, !dbg !966
  %i.ft = getelementptr inbounds i8, ptr %.val.i17, i64 %i.fs, !dbg !967 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i5.i.i, !dbg !968 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !969, !noundef !114
  %i.fw = lshr i64 %i.er, 57, !dbg !970
  %i.fx = trunc nuw nsw i64 %i.fw to i8, !dbg !971 ; 2 uses
  %i.fy = add i64 %.sroa.0.0.i5.i.i, -16, !dbg !972
  %i.fz = and i64 %i.fy, %.val12.i, !dbg !973
  store i8 %i.fx, ptr %i.fu, align 1, !dbg !974
  %i.ga = load ptr, ptr %0, align 8, !dbg !975, !alias.scope !740, !nonnull !114, !noundef !114
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz, !dbg !976
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !976
  store i8 %i.fx, ptr %i.gc, align 1, !dbg !977
  %i.gd = icmp eq i8 %i.fv, -1, !dbg !978
  br i1 %i.gd, label %bb.v, label %bb.w, !dbg !979

bb.u:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ge = lshr i64 %i.er, 57, !dbg !980
  %i.gf = trunc nuw nsw i64 %i.ge to i8, !dbg !981 ; 2 uses
  %i.gg = add i64 %.sroa.0.06.i, -16, !dbg !982
  %i.gh = and i64 %.val12.i, %i.gg, !dbg !983
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.06.i, !dbg !984
  store i8 %i.gf, ptr %i.gi, align 1, !dbg !985
  %i.gj = load ptr, ptr %0, align 8, !dbg !986, !alias.scope !740, !nonnull !114, !noundef !114
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gh, !dbg !987
  %i.gl = getelementptr i8, ptr %i.gk, i64 16, !dbg !987
  store i8 %i.gf, ptr %i.gl, align 1, !dbg !988
  br label %bb.x, !dbg !989

bb.v:                                             ; preds = %bb.t
  %i.gm = add i64 %.sroa.0.06.i, -16, !dbg !990
  %i.gn = load i64, ptr %i.h, align 8, !dbg !991, !alias.scope !740, !noundef !114
  %i.go = and i64 %i.gn, %i.gm, !dbg !992
  %i.gp = load ptr, ptr %0, align 8, !dbg !993, !alias.scope !740, !nonnull !114, !noundef !114
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.0.06.i, !dbg !994
  store i8 -1, ptr %i.gq, align 1, !dbg !995
  %i.gr = load ptr, ptr %0, align 8, !dbg !996, !alias.scope !740, !nonnull !114, !noundef !114
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.go, !dbg !997
  %i.gt = getelementptr i8, ptr %i.gs, i64 16, !dbg !997
  store i8 -1, ptr %i.gt, align 1, !dbg !998
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ft, ptr noundef nonnull align 1 dereferenceable(16) %i.em, i64 16, i1 false), !dbg !999
  br label %bb.x, !dbg !989

bb.w:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfypgzpEsCtg_18foundations_sentry(ptr noundef nonnull %i.em, ptr noundef nonnull %i.ft, i64 noundef 2)
          to label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r, !dbg !1000

bb.x:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i, !dbg !1001
  br i1 %exitcond.not.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13, !dbg !922

bb.y:                                             ; preds = %bb.r
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !1002
  unreachable, !dbg !1002

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.x
  %.pre.i = load i64, ptr %i.h, align 8, !dbg !1003, !alias.scope !740
  %.pre.i.fr = freeze i64 %.pre.i, !dbg !912      ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1, !dbg !912
  %i.gv = lshr i64 %.pre13.i, 3, !dbg !912
  %i.gw = mul nuw i64 %i.gv, 7, !dbg !912
  %i.gx = icmp ult i64 %.pre.i.fr, 8, !dbg !912
  %spec.select = select i1 %i.gx, i64 %.pre.i.fr, i64 %i.gw, !dbg !912
  %.pre = load i64, ptr %i.d, align 8, !dbg !1004, !alias.scope !740
  br label %bb.z, !dbg !912

bb.z:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gy = phi i64 [ %i.e, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], !dbg !1004
  %i.gz = phi i64 [ 0, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], !dbg !912
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1005
  %i.hb = sub i64 %i.gz, %i.gy, !dbg !1005
  store i64 %i.hb, ptr %i.ha, align 8, !dbg !1005, !alias.scope !740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !938, !noalias !740
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !1006

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit, %bb.c, %bb.z
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.z ], [ %.sroa.12.033, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit ], !dbg !1007
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.z ], [ %.sroa.7.034, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit ], !dbg !1007
  %i.hc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !1008
  %i.hd = insertvalue { i64, i64 } %i.hc, i64 %.sroa.4.0.i, 1, !dbg !1008
  ret { i64, i64 } %i.hd, !dbg !1009
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBV_11nonstandard28NonstandardUnsuffixedCounterEE7reserveNCINvNtB8_3map11make_hasherBQ_B2G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EB1E_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1010 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1013
  %i.b = load i64, ptr %i.a, align 8, !dbg !1013, !noundef !114
  %i.c = icmp ugt i64 %1, %i.b, !dbg !1014
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !1015, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBV_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #21, !dbg !1016 ; 0 uses
  br label %bb.c, !dbg !1017

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !1018
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtB10_11nonstandard28NonstandardUnsuffixedCounterEE9next_implKb0_EB1J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 !dbg !58 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !dbg !1034, !noundef !114 ; 2 uses
  %.not11 = icmp eq i16 %i.b, 0, !dbg !1035
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not11, label %.lr.ph, label %._crit_edge18, !dbg !1036

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load ptr, ptr %i.c, align 8
  br label %bb.b, !dbg !1036

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8, !dbg !1037
  store ptr %i.n, ptr %0, align 8, !dbg !1038
  br label %._crit_edge18, !dbg !1036

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ], !dbg !1039
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ], !dbg !1034 ; 3 uses
  %i.e = add i16 %.lcssa, -1, !dbg !1040
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true), !dbg !1041
  %i.g = zext nneg i16 %i.f to i64, !dbg !1042
  %i.h = and i16 %i.e, %.lcssa, !dbg !1043
  store i16 %i.h, ptr %i.a, align 8, !dbg !1044
  %i.i = sub nsw i64 0, %i.g, !dbg !1045
  %i.j = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.i, !dbg !1046
  ret ptr %i.j, !dbg !1047

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ], !dbg !1048 ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val9 = load <16 x i8>, ptr %i.k, align 16, !dbg !1049
  %i.m = icmp sgt <16 x i8> %.val9, splat (i8 -1), !dbg !1050
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -256, !dbg !1051 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !1052 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16, !dbg !1034 ; 2 uses
  %.not = icmp eq i16 %.cast, 0, !dbg !1035
  br i1 %.not, label %bb.b, label %._crit_edge, !dbg !1036
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1053 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1062, !range !1061, !noundef !114
  %i.b = icmp eq i64 %i.a, -1, !dbg !1062
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1062

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsfypgzpEsCtg_18foundations_sentry.exit, %bb.a
  ret void, !dbg !1062

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsfypgzpEsCtg_18foundations_sentry.exit unwind label %bb.d, !dbg !1063

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsfypgzpEsCtg_18foundations_sentry.exit.i.i unwind label %bb.e, !dbg !1064

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !1063
  unreachable, !dbg !1063

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsfypgzpEsCtg_18foundations_sentry.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !1063

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1065
  br label %bb.b, !dbg !1062
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 !dbg !11 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087), !dbg !1088
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1089
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1090
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !1090, !alias.scope !1087 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !1090, !alias.scope !1087 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1090
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !1090, !alias.scope !1087, !noundef !114 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !1091
  br i1 %i.d, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !1092

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1090
  %.val.i = load i64, ptr %i.e, align 8, !dbg !1090, !alias.scope !1087
  %i.f = add i64 %.val3.i, 1, !dbg !1093
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !1094    ; 2 uses
  %i.h = add i64 %.val1.i, -1, !dbg !1095
  %i.i = add i64 %i.h, %i.g, !dbg !1096           ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !1096
  tail call void @llvm.assume(i1 %i.j), !dbg !1097
  %i.k = sub i64 0, %.val1.i, !dbg !1098
  %i.l = and i64 %i.i, %i.k, !dbg !1099           ; 3 uses
  %i.m = add i64 %.val3.i, 17, !dbg !1100
  %i.n = add i64 %i.m, %i.l, !dbg !1101           ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !1101
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !1102
  tail call void @llvm.assume(i1 %i.q), !dbg !1102
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !1103
  tail call void @llvm.assume(i1 %i.r), !dbg !1104
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0, !dbg !1105
  br i1 %i.s, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, label %bb.b, !dbg !1105

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l, !dbg !1106
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t, !dbg !1107
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #22, !dbg !1108, !noalias !1087
  br label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, !dbg !1109

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !1088
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !1110 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156), !dbg !1160
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1161
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !1161, !alias.scope !1156
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1161
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !1161, !alias.scope !1156
  %.val2.i = load ptr, ptr %0, align 8, !dbg !1161, !alias.scope !1156, !nonnull !114, !align !194, !noundef !114 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !1162 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !1162, !noalias !1156, !noundef !114 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !1163
  br i1 %.not4.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, label %.lr.ph.i.i, !dbg !1164

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1, !dbg !1165
  %i.g = load ptr, ptr %.val2.i, align 8, !dbg !1166, !noalias !1156, !nonnull !114, !noundef !114
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i, !dbg !1167 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !1168, !noalias !1156, !noundef !114
  %i.j = icmp eq i8 %i.i, -128, !dbg !1168
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !1169

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16, !dbg !1170
  %i.l = load i64, ptr %i.c, align 8, !dbg !1171, !noalias !1156, !noundef !114
  %i.m = and i64 %i.l, %i.k, !dbg !1172
  store i8 -1, ptr %i.h, align 1, !dbg !1173, !noalias !1156
  %i.n = load ptr, ptr %.val2.i, align 8, !dbg !1174, !noalias !1156, !nonnull !114, !noundef !114
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m, !dbg !1175
  %i.p = getelementptr i8, ptr %i.o, i64 16, !dbg !1175
  store i8 -1, ptr %i.p, align 1, !dbg !1176, !noalias !1156
  %i.q = load i64, ptr %i.e, align 8, !dbg !1177, !noalias !1156, !noundef !114
  %i.r = add i64 %i.q, -1, !dbg !1177
  store i64 %i.r, ptr %i.e, align 8, !dbg !1177, !noalias !1156
  br label %bb.c, !dbg !1178

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d, !dbg !1163
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, label %.lr.ph.split.us.i.i, !dbg !1164

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1, !dbg !1165
  %i.t = load ptr, ptr %.val2.i, align 8, !dbg !1166, !noalias !1156, !nonnull !114, !noundef !114
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i, !dbg !1167 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !dbg !1168, !noalias !1156, !noundef !114
  %i.w = icmp eq i8 %i.v, -128, !dbg !1168
  br i1 %i.w, label %bb.e, label %bb.d, !dbg !1169

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d, !dbg !1163
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, label %.lr.ph.split.i.i, !dbg !1164

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1, !dbg !1165
  %i.x = add i64 %.sroa.0.03.i.i, -16, !dbg !1170
  %i.y = load i64, ptr %i.c, align 8, !dbg !1171, !noalias !1156, !noundef !114
  %i.z = and i64 %i.y, %i.x, !dbg !1172
  store i8 -1, ptr %i.u, align 1, !dbg !1173, !noalias !1156
  %i.aa = load ptr, ptr %.val2.i, align 8, !dbg !1174, !noalias !1156, !nonnull !114, !noundef !114
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z, !dbg !1175
  %i.ac = getelementptr i8, ptr %i.ab, i64 16, !dbg !1175
  store i8 -1, ptr %i.ac, align 1, !dbg !1176, !noalias !1156
  %i.ad = load ptr, ptr %.val2.i, align 8, !dbg !1179, !noalias !1156, !nonnull !114, !noundef !114
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !1180
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i, !dbg !1181
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !dbg !1182, !noalias !1156, !inline_history !1153
  %i.af = load i64, ptr %i.e, align 8, !dbg !1177, !noalias !1156, !noundef !114
  %i.ag = add i64 %i.af, -1, !dbg !1177
  store i64 %i.ag, ptr %i.e, align 8, !dbg !1177, !noalias !1156
  br label %bb.d, !dbg !1178

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !dbg !1183, !noalias !1156, !noundef !114 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8, !dbg !1184
  %i.aj = add i64 %i.ah, 1, !dbg !1184
  %i.ak = lshr i64 %i.aj, 3, !dbg !1184
  %i.al = mul nuw i64 %i.ak, 7, !dbg !1184
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al, !dbg !1184
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !1185
  %i.an = load i64, ptr %i.am, align 8, !dbg !1185, !noalias !1156, !noundef !114
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !1186
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an, !dbg !1186
  store i64 %i.ap, ptr %i.ao, align 8, !dbg !1186, !noalias !1156
  ret void, !dbg !1160
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtCsgtgatFLTNh8_8governor5state5keyed7dashmapINtCsdra7vpBasQ9_7dashmap7DashMapINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtB7_9in_memory13InMemoryStateENtB7_10StateStore19measure_and_replaceuNCINvMs0_NtB9_4gcraNtB3i_4Gcra15test_and_updateB1n_NtNtNtB9_5clock6quanta13QuantaInstantBQ_INtNtB9_10middleware14NoOpMiddlewareB3Y_EE0INtB3i_8NotUntilB3Y_EECsfypgzpEsCtg_18foundations_sentry(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1187 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1754), !dbg !1864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756), !dbg !1864
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1865
  %.val.i = load i64, ptr %i.k, align 8, !dbg !1865, !alias.scope !1754, !noalias !1757, !noundef !114 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !1865
  %.val6.i = load i64, ptr %i.l, align 8, !dbg !1865, !alias.scope !1754, !noalias !1757, !noundef !114 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1866, !noalias !1758
  %i.m = xor i64 %.val.i, 8317987319222330741, !dbg !1867 ; 2 uses
  %i.n = xor i64 %.val6.i, 7237128888997146477, !dbg !1868 ; 2 uses
  %i.o = xor i64 %.val.i, 7816392313619706465, !dbg !1869 ; 2 uses
  %i.p = xor i64 %.val6.i, 8387220255154660723, !dbg !1870 ; 2 uses
  store i64 %i.m, ptr %i.e, align 8, !dbg !1871, !alias.scope !1766, !noalias !1758
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !1871 ; 2 uses
  store i64 %i.o, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !dbg !1871, !alias.scope !1766, !noalias !1758
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !1871 ; 2 uses
  store i64 %i.n, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !dbg !1871, !alias.scope !1766, !noalias !1758
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !1871 ; 2 uses
  store i64 %i.p, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !dbg !1871, !alias.scope !1766, !noalias !1758
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !1871
  store i64 %.val.i, ptr %.sroa.711.0..sroa_idx.i.i.i, align 8, !dbg !1871, !alias.scope !1766, !noalias !1758
  %.sroa.812.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !1871
  store i64 %.val6.i, ptr %.sroa.812.0..sroa_idx.i.i.i, align 8, !dbg !1871, !alias.scope !1766, !noalias !1758
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !1871 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !dbg !1871, !alias.scope !1766, !noalias !1758
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767), !dbg !1872
  %.sroa.0.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !1873
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i, align 8, !dbg !1873, !alias.scope !1775, !noalias !1776, !nonnull !114, !noundef !114 ; 2 uses
  %.sroa.3.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !1873
  %.sroa.3.0.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i, align 8, !dbg !1873, !alias.scope !1775, !noalias !1776, !noundef !114 ; 3 uses
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i) #25, !dbg !1874, !noalias !1777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1875, !noalias !1781
  store i8 -1, ptr %i.d, align 1, !dbg !1875, !noalias !1781
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1) #25, !dbg !1876, !noalias !1783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1877, !noalias !1781
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !dbg !1878, !alias.scope !1784, !noalias !1758
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !dbg !1878, !alias.scope !1784, !noalias !1758
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !dbg !1878, !alias.scope !1784, !noalias !1758 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !dbg !1878, !alias.scope !1784, !noalias !1758
  %i.q = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 8, !dbg !1879, !alias.scope !1784, !noalias !1758, !noundef !114
  %i.r = shl i64 %i.q, 56, !dbg !1880
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !1881
  %i.t = load i64, ptr %i.s, align 8, !dbg !1881, !alias.scope !1784, !noalias !1758, !noundef !114
  %i.u = or i64 %i.r, %i.t, !dbg !1880            ; 2 uses
  %i.v = xor i64 %i.u, %.sroa.22.0.copyload.i.i.i.i, !dbg !1882 ; 3 uses
  %i.w = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i, !dbg !1883 ; 3 uses
  %i.x = add i64 %i.v, %.sroa.10.0.copyload.i.i.i.i, !dbg !1884 ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13), !dbg !1885
  %i.z = xor i64 %i.y, %i.w, !dbg !1886           ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 16), !dbg !1887
  %i.ab = xor i64 %i.aa, %i.x, !dbg !1888         ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32), !dbg !1889
  %i.ad = add i64 %i.x, %i.z, !dbg !1890          ; 3 uses
  %i.ae = add i64 %i.ab, %i.ac, !dbg !1891        ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17), !dbg !1892
  %i.ag = xor i64 %i.ad, %i.af, !dbg !1888        ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 21), !dbg !1893
  %i.ai = xor i64 %i.ah, %i.ae, !dbg !1886        ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32), !dbg !1894
  %i.ak = xor i64 %i.ae, %i.u, !dbg !1895
  %i.al = xor i64 %i.aj, 255, !dbg !1896
  %i.am = add i64 %i.ak, %i.ag, !dbg !1897        ; 3 uses
  %i.an = add i64 %i.ai, %i.al, !dbg !1898        ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 13), !dbg !1899
  %i.ap = xor i64 %i.am, %i.ao, !dbg !1900        ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16), !dbg !1901
  %i.ar = xor i64 %i.aq, %i.an, !dbg !1902        ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32), !dbg !1903
  %i.at = add i64 %i.ap, %i.an, !dbg !1904        ; 3 uses
  %i.au = add i64 %i.ar, %i.as, !dbg !1905        ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17), !dbg !1906
  %i.aw = xor i64 %i.at, %i.av, !dbg !1902        ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21), !dbg !1907
  %i.ay = xor i64 %i.ax, %i.au, !dbg !1900        ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32), !dbg !1908
  %i.ba = add i64 %i.aw, %i.au, !dbg !1909        ; 3 uses
  %i.bb = add i64 %i.ay, %i.az, !dbg !1910        ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13), !dbg !1911
  %i.bd = xor i64 %i.bc, %i.ba, !dbg !1900        ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16), !dbg !1912
  %i.bf = xor i64 %i.be, %i.bb, !dbg !1902        ; 3 uses
end_hunk_0
