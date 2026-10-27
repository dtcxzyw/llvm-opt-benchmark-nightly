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
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !765
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699), !dbg !766
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !767 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !767, !alias.scope !699, !noundef !114 ; 3 uses
  %i.f = add i64 %i.e, %1, !dbg !768              ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e, !dbg !768
  br i1 %i.g, label %bb.c, label %bb.b, !dbg !769, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !770 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !770, !alias.scope !699, !noundef !114 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8, !dbg !771
  %i.k = add i64 %i.i, 1, !dbg !771               ; 6 uses
  %i.l = lshr i64 %i.k, 3, !dbg !771
  %i.m = mul nuw i64 %i.l, 7, !dbg !771
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m, !dbg !771 ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1, !dbg !772
  %.not.i = icmp ugt i64 %i.f, %i.n, !dbg !773
  br i1 %.not.i, label %bb.d, label %bb.o, !dbg !773

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !774, !noalias !700 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0, !dbg !774
  %i.q = extractvalue { i64, i64 } %i.o, 1, !dbg !774
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !775

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1, !dbg !776
  %..i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.f), !dbg !777 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701), !dbg !778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !779, !noalias !702
  %i.s = icmp ult i64 %..i, 15, !dbg !780
  br i1 %i.s, label %.thread.i, label %bb.e, !dbg !780

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %..i, 2305843009213693951, !dbg !781
  br i1 %i.t, label %bb.j, label %bb.f, !dbg !782, !prof !116

.thread.i:                                        ; preds = %bb.d
  %i.u = icmp samesign ult i64 %..i, 4, !dbg !783
  %i.v = and i64 %..i, 8, !dbg !783
  %..i.i = add nuw nsw i64 %i.v, 8, !dbg !783
  %.sroa.03.0.i.i = select i1 %i.u, i64 4, i64 %..i.i, !dbg !783
  br label %bb.g, !dbg !784

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %..i, 3, !dbg !781
  %i.x = udiv i64 %i.w, 7, !dbg !785
  %i.y = add nsw i64 %i.x, -1, !dbg !786
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true), !dbg !787
  %i.aa = lshr i64 -1, %i.z, !dbg !788            ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1, !dbg !789
  %i.ac = icmp samesign ugt i64 %i.aa, 1152921504606846974, !dbg !790
  br i1 %i.ac, label %bb.h, label %bb.g, !dbg !784, !prof !705

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph7.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.ab, %bb.f ] ; 5 uses
  %i.ad = shl nuw i64 %.sroa.4.0.i.ph7.i, 4, !dbg !790 ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph7.i, 16, !dbg !791 ; 2 uses
  %i.af = add i64 %i.ae, %i.ad, !dbg !792         ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad, !dbg !792
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah, !dbg !793
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, !dbg !793, !prof !130

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !794, !noalias !706
  %i.ai = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !dbg !795, !noalias !706 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null, !dbg !796
  br i1 %i.aj, label %bb.i, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !797

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !798, !noalias !706
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread, !dbg !799

bb.i:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !dbg !800, !noalias !706
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread, !dbg !801

bb.j:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !802, !noalias !710
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread, !dbg !803

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad, !dbg !804 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !dbg !805, !noalias !710
  %i.ao = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9, !dbg !806
  %i.ap = add nsw i64 %.sroa.4.0.i.ph7.i, -1, !dbg !807 ; 6 uses
  %i.aq = lshr i64 %.sroa.4.0.i.ph7.i, 3, !dbg !806
  %i.ar = mul nuw nsw i64 %i.aq, 7, !dbg !806
  %.sroa.07.0.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.ar, !dbg !806 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !dbg !808, !noalias !702
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !808 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !808, !noalias !702
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !808 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !808, !noalias !702
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !808 ; 3 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !808, !noalias !702
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !808 ; 2 uses
  store i64 %i.ap, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !808, !noalias !702
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !808 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !808, !noalias !702
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !808 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !808, !noalias !702
  %i.as = load i64, ptr %i.d, align 8, !dbg !809, !alias.scope !716, !noundef !114 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0, !dbg !810
  br i1 %i.at, label %._crit_edge54, label %.preheader.lr.ph, !dbg !810

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit
  %i.au = load ptr, ptr %0, align 8, !dbg !811, !alias.scope !716, !nonnull !114, !noundef !114 ; 2 uses
  %.val337 = load <16 x i8>, ptr %i.au, align 16, !dbg !812
  %i.av = icmp sgt <16 x i8> %.val337, splat (i8 -1), !dbg !813
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !814
  br label %.preheader, !dbg !810

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.12.033 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !815
  %.sroa.7.034 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !816, !noalias !702
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !817

bb.k:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #23, !dbg !816
  br label %common.resume, !dbg !818

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.019.053 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.019.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.052 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.051 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.050 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i145 = icmp eq i16 %.sroa.13.050, 0, !dbg !819
  br i1 %.not.i145, label %.noexc2, label %._crit_edge, !dbg !820

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.019.147 = phi ptr [ %i.ay, %.noexc2 ], [ %.sroa.019.053, %.preheader ] ; 2 uses
  %.sroa.5.146 = phi i64 [ %i.bb, %.noexc2 ], [ %.sroa.5.052, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.147) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.019.147, i64 16, !dbg !821 ; 3 uses
  %.val38 = load <16 x i8>, ptr %i.ay, align 16, !dbg !822
  %i.az = icmp sgt <16 x i8> %.val38, splat (i8 -1), !dbg !823
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !824 ; 2 uses
  %i.bb = add i64 %.sroa.5.146, 16, !dbg !825     ; 2 uses
  %.not.i1 = icmp eq i16 %i.ba, 0, !dbg !819
  br i1 %.not.i1, label %.noexc2, label %._crit_edge, !dbg !820

._crit_edge54.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre67 = load i64, ptr %i.d, align 8, !dbg !826, !alias.scope !716
  br label %._crit_edge54, !dbg !826

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit
  %i.bc = phi i64 [ %.pre67, %._crit_edge54.loopexit ], [ 0, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit ], !dbg !826 ; 2 uses
  %i.bd = sub i64 %.sroa.07.0.i.i, %i.bc, !dbg !827
  store i64 %i.bd, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !827, !noalias !702
  store i64 %i.bc, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !828, !noalias !702
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfypgzpEsCtg_18foundations_sentry(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECsfypgzpEsCtg_18foundations_sentry.exit unwind label %bb.l, !dbg !829

bb.l:                                             ; preds = %._crit_edge54
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #24, !dbg !830
  unreachable, !dbg !830

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %._crit_edge54
  call void @llvm.experimental.noalias.scope.decl(metadata !724), !dbg !816
  call void @llvm.experimental.noalias.scope.decl(metadata !725), !dbg !831
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !832, !alias.scope !726 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !832, !alias.scope !726 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !832, !alias.scope !726, !noundef !114 ; 3 uses
  %i.bf = icmp eq i64 %.val3.i.i, 0, !dbg !833
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !834

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECsfypgzpEsCtg_18foundations_sentry.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !832, !alias.scope !726
  %i.bg = add i64 %.val3.i.i, 1, !dbg !835
  %i.bh = mul nuw i64 %.val.i.i, %i.bg, !dbg !836 ; 2 uses
  %i.bi = add i64 %.val1.i.i, -1, !dbg !837
  %i.bj = add i64 %i.bi, %i.bh, !dbg !838         ; 2 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh, !dbg !838
  call void @llvm.assume(i1 %i.bk), !dbg !839
  %i.bl = sub i64 0, %.val1.i.i, !dbg !840
  %i.bm = and i64 %i.bj, %i.bl, !dbg !841         ; 3 uses
  %i.bn = add i64 %.val3.i.i, 17, !dbg !842
  %i.bo = add i64 %i.bn, %i.bm, !dbg !843         ; 4 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm, !dbg !843
  %i.bq = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.br = icmp ule i64 %i.bo, %i.bq
  call void @llvm.assume(i1 %i.bp), !dbg !844
  call void @llvm.assume(i1 %i.br), !dbg !844
  %i.bs = icmp ne i64 %.val1.i.i, 0, !dbg !845
  call void @llvm.assume(i1 %i.bs), !dbg !846
  %i.bt = icmp eq i64 %i.bo, 0, !dbg !847
  br i1 %i.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit, label %bb.m, !dbg !847

bb.m:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bm, !dbg !848
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu, !dbg !849
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #22, !dbg !850, !noalias !726
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !851

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECsfypgzpEsCtg_18foundations_sentry.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !816, !noalias !702
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !817

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.050, %.preheader ], [ %i.ba, %.noexc2 ], !dbg !852 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.052, %.preheader ], [ %i.bb, %.noexc2 ], !dbg !852 ; 2 uses
  %.sroa.019.1.lcssa = phi ptr [ %.sroa.019.053, %.preheader ], [ %i.ay, %.noexc2 ], !dbg !852
  %i.bw = add i16 %.sroa.13.1.lcssa, -1, !dbg !853
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !854
  %i.by = zext nneg i16 %i.bx to i64, !dbg !855
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa, !dbg !856
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by, !dbg !857 ; 2 uses
  %i.cb = add i64 %.sroa.9.051, -1, !dbg !858     ; 2 uses
  %i.cc = load ptr, ptr %0, align 8, !dbg !859, !alias.scope !727, !nonnull !114, !noundef !114
  %i.cd = sub nsw i64 0, %i.ca, !dbg !860
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.cd, !dbg !861
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16, !dbg !862
  %i.cg = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalEEB2t_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit unwind label %bb.k, !dbg !863 ; 2 uses

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.ap, %i.cg, !dbg !864 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i, !dbg !865
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !866, !noalias !731
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !867
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !867 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cj, 0, !dbg !868
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !869, !prof !170

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ], !dbg !864
  %.lcssa.i = phi i16 [ %i.cj, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit ], [ %i.da, %.lr.ph.i ], !dbg !867
  %i.ck = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !870
  %i.cl = zext nneg i16 %i.ck to i64, !dbg !871
  %i.cm = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cl, !dbg !872
  %i.cn = and i64 %i.cm, %i.ap, !dbg !872         ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cn, !dbg !873
  %i.cp = load i8, ptr %i.co, align 1, !dbg !874, !noundef !114
  %i.cq = icmp sgt i8 %i.cp, -1, !dbg !875
  br i1 %i.cq, label %bb.n, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !876, !prof !116

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.an, align 16, !dbg !877
  %i.cr = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer, !dbg !878
  %i.cs = bitcast <16 x i1> %i.cr to i16, !dbg !878 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cs, 0, !dbg !879
  %i.ct = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cs, i1 true), !dbg !880
  %i.cu = zext nneg i16 %i.ct to i64, !dbg !880
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !881
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !882

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit ]
  %i.cv = phi i64 [ %i.cw, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit ]
  %i.cw = add i64 %i.cv, 16, !dbg !883            ; 2 uses
  %i.cx = add i64 %i.cw, %.sroa.0.010.i, !dbg !884
  %.sroa.0.0.i10 = and i64 %i.cx, %i.ap, !dbg !864 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i10, !dbg !865
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cy, align 1, !dbg !866, !noalias !731
  %i.cz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !867
  %i.da = bitcast <16 x i1> %i.cz to i16, !dbg !867 ; 2 uses
  %.not.i.i = icmp eq i16 %i.da, 0, !dbg !868
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !869, !prof !173

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cu, %bb.n ], [ %i.cn, %._crit_edge.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i5.i, !dbg !885
  %i.dc = lshr i64 %i.cg, 57, !dbg !886
  %i.dd = trunc nuw nsw i64 %i.dc to i8, !dbg !887 ; 2 uses
  %i.de = add nsw i64 %.sroa.0.0.i5.i, -16, !dbg !888
  %i.df = and i64 %i.de, %i.ap, !dbg !889
  store i8 %i.dd, ptr %i.db, align 1, !dbg !890
  %i.dg = getelementptr i8, ptr %i.an, i64 %i.df, !dbg !891
  %i.dh = getelementptr i8, ptr %i.dg, i64 16, !dbg !891
  store i8 %i.dd, ptr %i.dh, align 1, !dbg !892
  %i.di = load ptr, ptr %0, align 8, !dbg !893, !alias.scope !716, !nonnull !114, !noundef !114
  %i.dj = shl i64 %i.ca, 4, !dbg !894
  %i.dk = sub nuw nsw i64 -16, %i.dj, !dbg !895
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk, !dbg !896
  %i.dm = shl i64 %.sroa.0.0.i5.i, 4, !dbg !897
  %i.dn = sub nuw nsw i64 -16, %i.dm, !dbg !898
  %i.do = getelementptr inbounds i8, ptr %i.an, i64 %i.dn, !dbg !899
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.do, ptr noundef nonnull align 1 dereferenceable(16) %i.dl, i64 16, i1 false), !dbg !900
  %i.dp = icmp eq i64 %i.cb, 0, !dbg !810
  br i1 %i.dp, label %._crit_edge54.loopexit, label %.preheader, !dbg !810

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.es, %bb.r ]
  resume { ptr, i32 } %common.resume.op, !dbg !901

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735), !dbg !902
  %.val13.i = load ptr, ptr %0, align 8, !dbg !903, !alias.scope !735, !nonnull !114, !noundef !114 ; 5 uses
  %.not6.i.i = icmp eq i64 %i.k, 0, !dbg !904
  br i1 %.not6.i.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i, !dbg !904

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !905, !noalias !735
  br label %bb.z, !dbg !906

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dq = lshr i64 %i.k, 4, !dbg !907
  %i.dr = and i64 %i.k, 15, !dbg !908
  %.not10.i.i.i.i = icmp ne i64 %i.dr, 0, !dbg !909
  %i.ds = zext i1 %.not10.i.i.i.i to i64, !dbg !909
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dq, %i.ds, !dbg !909 ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1, !dbg !904
  %i.dt = icmp eq i64 %.sroa.05.0.i.i.i.i, 1, !dbg !904
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph.i.i.new, !dbg !904

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950, !dbg !904
  br label %bb.p, !dbg !904

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !904
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader, !dbg !904

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ed, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %.sroa.05.0.i.i.i.i to i1, !dbg !904
  tail call void @llvm.assume(i1 %lcmp.mod108), !dbg !904
  %i.du = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init, !dbg !910 ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.du, align 16, !dbg !911, !noalias !735
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7), !dbg !912
  %i.dv = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>, !dbg !913
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472), !dbg !913
  store <2 x i64> %i.dw, ptr %i.du, align 16, !dbg !914, !noalias !735
  br label %._crit_edge.i.i, !dbg !915

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !915
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !915
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16), !dbg !916
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16), !dbg !916
  %i.dz = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i12, !dbg !917
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !dbg !918, !noalias !735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !905, !noalias !735
  store ptr @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtB10_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B2L_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceB1J_, ptr %i.dx, align 8, !dbg !915, !noalias !735
  store i64 16, ptr %i.dy, align 8, !dbg !915, !noalias !735
  store ptr %0, ptr %i.a, align 8, !dbg !915, !noalias !735
  br label %.lr.ph.i13, !dbg !919

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ed, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i, !dbg !910 ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ea, align 16, !dbg !911, !noalias !735
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7), !dbg !912
  %i.eb = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>, !dbg !913
  %i.ec = or <2 x i64> %i.eb, splat (i64 -9187201950435737472), !dbg !913
  store <2 x i64> %i.ec, ptr %i.ea, align 16, !dbg !914, !noalias !735
  %i.ed = add i64 %.sroa.0.08.i.i, 32, !dbg !920  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i, !dbg !910
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16, !dbg !910 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ef, align 16, !dbg !911, !noalias !735
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7), !dbg !912
  %i.eg = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>, !dbg !913
  %i.eh = or <2 x i64> %i.eg, splat (i64 -9187201950435737472), !dbg !913
  store <2 x i64> %i.eh, ptr %i.ef, align 16, !dbg !914, !noalias !735
  %niter.next.1 = add i64 %niter, 2, !dbg !904    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !904
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p, !dbg !904

.lr.ph.i13:                                       ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ei, %bb.x ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.ei = add nuw i64 %.sroa.0.06.i, 1, !dbg !921
  %i.ej = load ptr, ptr %0, align 8, !dbg !922, !alias.scope !735, !nonnull !114, !noundef !114 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.0.06.i, !dbg !923
  %i.el = load i8, ptr %i.ek, align 1, !dbg !924, !noundef !114
  %.not.i14 = icmp eq i8 %i.el, -128, !dbg !924
  br i1 %.not.i14, label %bb.q, label %bb.x, !dbg !919

bb.q:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.0.06.i, -1, !dbg !921
  %.neg11.i = shl i64 %.neg.i, 4, !dbg !925
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %.neg11.i, !dbg !926 ; 2 uses
  %i.en = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i, !dbg !927

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.w, %bb.q
  %i.eo = load ptr, ptr %0, align 8, !dbg !928, !alias.scope !746, !nonnull !114, !noundef !114
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.eo, i64 %i.en, !dbg !929
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -16, !dbg !930
  %i.er = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalEEB2t_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eq)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i unwind label %bb.r, !dbg !931 ; 3 uses

bb.r:                                             ; preds = %bb.w, %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %common.resume unwind label %bb.y, !dbg !932

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i17 = load ptr, ptr %0, align 8, !dbg !933, !alias.scope !735, !nonnull !114, !noundef !114 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !dbg !933, !alias.scope !735, !noundef !114 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.er, !dbg !934 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.07.i.i, !dbg !935
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.et, align 1, !dbg !936, !noalias !747
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer, !dbg !937
  %i.ev = bitcast <16 x i1> %i.eu to i16, !dbg !937 ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ev, 0, !dbg !938
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !dbg !939, !prof !170

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i ], [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ], !dbg !934
  %.lcssa.i.i = phi i16 [ %i.ev, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i ], [ %i.fm, %.lr.ph.i16.i ], !dbg !937
  %i.ew = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true), !dbg !940
  %i.ex = zext nneg i16 %i.ew to i64, !dbg !941
  %i.ey = add i64 %.sroa.0.0.lcssa.i.i, %i.ex, !dbg !942
  %i.ez = and i64 %i.ey, %.val12.i, !dbg !942     ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %i.ez, !dbg !943
  %i.fb = load i8, ptr %i.fa, align 1, !dbg !944, !noundef !114
  %i.fc = icmp sgt i8 %i.fb, -1, !dbg !945
  br i1 %i.fc, label %bb.s, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !dbg !946, !prof !116

bb.s:                                             ; preds = %._crit_edge.i15.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i17, align 16, !dbg !947
  %i.fd = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer, !dbg !948
  %i.fe = bitcast <16 x i1> %i.fd to i16, !dbg !948 ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fe, 0, !dbg !949
  %i.ff = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fe, i1 true), !dbg !950
  %i.fg = zext nneg i16 %i.ff to i64, !dbg !950
  tail call void @llvm.assume(i1 %.not.i6.i.i), !dbg !951
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !dbg !952

.lr.ph.i16.i:                                     ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i ]
  %i.fh = phi i64 [ %i.fi, %.lr.ph.i16.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBX_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0B1G_.exit.i ]
  %i.fi = add i64 %i.fh, 16, !dbg !953            ; 2 uses
  %i.fj = add i64 %i.fi, %.sroa.0.010.i.i, !dbg !954
  %.sroa.0.0.i.i18 = and i64 %i.fj, %.val12.i, !dbg !934 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i.i18, !dbg !935
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fk, align 1, !dbg !936, !noalias !747
  %i.fl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer, !dbg !937
  %i.fm = bitcast <16 x i1> %i.fl to i16, !dbg !937 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fm, 0, !dbg !938
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !dbg !939, !prof !173

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fg, %bb.s ], [ %i.ez, %._crit_edge.i15.i ] ; 4 uses
  %i.fn = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i, !dbg !955
  %i.fo = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i, !dbg !956
  %i.fp = xor i64 %i.fo, %i.fn, !dbg !957
  %.unshifted.i = and i64 %i.fp, %.val12.i, !dbg !957
  %i.fq = icmp ult i64 %.unshifted.i, 16, !dbg !957
  br i1 %i.fq, label %bb.u, label %bb.t, !dbg !958, !prof !186

bb.t:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fr = shl i64 %.sroa.0.0.i5.i.i, 4, !dbg !959
  %i.fs = sub nuw nsw i64 -16, %i.fr, !dbg !960
  %i.ft = getelementptr inbounds i8, ptr %.val.i17, i64 %i.fs, !dbg !961 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i5.i.i, !dbg !962 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !963, !noundef !114
  %i.fw = lshr i64 %i.er, 57, !dbg !964
  %i.fx = trunc nuw nsw i64 %i.fw to i8, !dbg !965 ; 2 uses
  %i.fy = add i64 %.sroa.0.0.i5.i.i, -16, !dbg !966
  %i.fz = and i64 %i.fy, %.val12.i, !dbg !967
  store i8 %i.fx, ptr %i.fu, align 1, !dbg !968
  %i.ga = load ptr, ptr %0, align 8, !dbg !969, !alias.scope !735, !nonnull !114, !noundef !114
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz, !dbg !970
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !970
  store i8 %i.fx, ptr %i.gc, align 1, !dbg !971
  %i.gd = icmp eq i8 %i.fv, -1, !dbg !972
  br i1 %i.gd, label %bb.v, label %bb.w, !dbg !973

bb.u:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ge = lshr i64 %i.er, 57, !dbg !974
  %i.gf = trunc nuw nsw i64 %i.ge to i8, !dbg !975 ; 2 uses
  %i.gg = add i64 %.sroa.0.06.i, -16, !dbg !976
  %i.gh = and i64 %.val12.i, %i.gg, !dbg !977
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.06.i, !dbg !978
  store i8 %i.gf, ptr %i.gi, align 1, !dbg !979
  %i.gj = load ptr, ptr %0, align 8, !dbg !980, !alias.scope !735, !nonnull !114, !noundef !114
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gh, !dbg !981
  %i.gl = getelementptr i8, ptr %i.gk, i64 16, !dbg !981
  store i8 %i.gf, ptr %i.gl, align 1, !dbg !982
  br label %bb.x, !dbg !983

bb.v:                                             ; preds = %bb.t
  %i.gm = add i64 %.sroa.0.06.i, -16, !dbg !984
  %i.gn = load i64, ptr %i.h, align 8, !dbg !985, !alias.scope !735, !noundef !114
  %i.go = and i64 %i.gn, %i.gm, !dbg !986
  %i.gp = load ptr, ptr %0, align 8, !dbg !987, !alias.scope !735, !nonnull !114, !noundef !114
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.0.06.i, !dbg !988
  store i8 -1, ptr %i.gq, align 1, !dbg !989
  %i.gr = load ptr, ptr %0, align 8, !dbg !990, !alias.scope !735, !nonnull !114, !noundef !114
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.go, !dbg !991
  %i.gt = getelementptr i8, ptr %i.gs, i64 16, !dbg !991
  store i8 -1, ptr %i.gt, align 1, !dbg !992
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ft, ptr noundef nonnull align 1 dereferenceable(16) %i.em, i64 16, i1 false), !dbg !993
  br label %bb.x, !dbg !983

bb.w:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfypgzpEsCtg_18foundations_sentry(ptr noundef nonnull %i.em, ptr noundef nonnull %i.ft, i64 noundef 2)
          to label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r, !dbg !994

bb.x:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i, !dbg !995
  br i1 %exitcond.not.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13, !dbg !916

bb.y:                                             ; preds = %bb.r
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !996
  unreachable, !dbg !996

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.x
  %.pre.i = load i64, ptr %i.h, align 8, !dbg !997, !alias.scope !735
  %.pre.i.fr = freeze i64 %.pre.i, !dbg !906      ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1, !dbg !906
  %i.gv = lshr i64 %.pre13.i, 3, !dbg !906
  %i.gw = mul nuw i64 %i.gv, 7, !dbg !906
  %i.gx = icmp ult i64 %.pre.i.fr, 8, !dbg !906
  %spec.select = select i1 %i.gx, i64 %.pre.i.fr, i64 %i.gw, !dbg !906
  %.pre = load i64, ptr %i.d, align 8, !dbg !998, !alias.scope !735
  br label %bb.z, !dbg !906

bb.z:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gy = phi i64 [ %i.e, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], !dbg !998
  %i.gz = phi i64 [ 0, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], !dbg !906
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !999
  %i.hb = sub i64 %i.gz, %i.gy, !dbg !999
  store i64 %i.hb, ptr %i.ha, align 8, !dbg !999, !alias.scope !735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !932, !noalias !735
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit, !dbg !1000

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit, %bb.c, %bb.z
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.z ], [ %.sroa.12.033, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit ], !dbg !1001
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.z ], [ %.sroa.7.034, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsfypgzpEsCtg_18foundations_sentry.exit.thread ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry.exit ], !dbg !1001
  %i.hc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !1002
  %i.hd = insertvalue { i64, i64 } %i.hc, i64 %.sroa.4.0.i, 1, !dbg !1002
  ret { i64, i64 } %i.hd, !dbg !1003
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBV_11nonstandard28NonstandardUnsuffixedCounterEE7reserveNCINvNtB8_3map11make_hasherBQ_B2G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EB1E_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1004 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1007
  %i.b = load i64, ptr %i.a, align 8, !dbg !1007, !noundef !114
  %i.c = icmp ugt i64 %1, %i.b, !dbg !1008
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !1009, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtBV_11nonstandard28NonstandardUnsuffixedCounterEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #21, !dbg !1010 ; 0 uses
  br label %bb.c, !dbg !1011

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !1012
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTINtNtCskfQLOxWbF12_10prometools5serde6BridgeNtNtNtCsfypgzpEsCtg_18foundations_sentry7metrics6sentry12events_totalENtNtB10_11nonstandard28NonstandardUnsuffixedCounterEE9next_implKb0_EB1J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 !dbg !58 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !dbg !1028, !noundef !114 ; 2 uses
  %.not11 = icmp eq i16 %i.b, 0, !dbg !1029
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not11, label %.lr.ph, label %._crit_edge18, !dbg !1030

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load ptr, ptr %i.c, align 8
  br label %bb.b, !dbg !1030

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8, !dbg !1031
  store ptr %i.n, ptr %0, align 8, !dbg !1032
  br label %._crit_edge18, !dbg !1030

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ], !dbg !1033
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ], !dbg !1028 ; 3 uses
  %i.e = add i16 %.lcssa, -1, !dbg !1034
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true), !dbg !1035
  %i.g = zext nneg i16 %i.f to i64, !dbg !1036
  %i.h = and i16 %i.e, %.lcssa, !dbg !1037
  store i16 %i.h, ptr %i.a, align 8, !dbg !1038
  %i.i = sub nsw i64 0, %i.g, !dbg !1039
  %i.j = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.i, !dbg !1040
  ret ptr %i.j, !dbg !1041

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ], !dbg !1042 ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val9 = load <16 x i8>, ptr %i.k, align 16, !dbg !1043
  %i.m = icmp sgt <16 x i8> %.val9, splat (i8 -1), !dbg !1044
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -256, !dbg !1045 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !1046 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16, !dbg !1028 ; 2 uses
  %.not = icmp eq i16 %.cast, 0, !dbg !1029
  br i1 %.not, label %bb.b, label %._crit_edge, !dbg !1030
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1047 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1056, !range !1055, !noundef !114
  %i.b = icmp eq i64 %i.a, -1, !dbg !1056
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1056

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsfypgzpEsCtg_18foundations_sentry.exit, %bb.a
  ret void, !dbg !1056

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsfypgzpEsCtg_18foundations_sentry.exit unwind label %bb.d, !dbg !1057

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsfypgzpEsCtg_18foundations_sentry.exit.i.i unwind label %bb.e, !dbg !1058

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !1057
  unreachable, !dbg !1057

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsfypgzpEsCtg_18foundations_sentry.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !1057

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1059
  br label %bb.b, !dbg !1056
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 !dbg !11 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081), !dbg !1082
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1083
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1084
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !1084, !alias.scope !1081 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !1084, !alias.scope !1081 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1084
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !1084, !alias.scope !1081, !noundef !114 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !1085
  br i1 %i.d, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !1086

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1084
  %.val.i = load i64, ptr %i.e, align 8, !dbg !1084, !alias.scope !1081
  %i.f = add i64 %.val3.i, 1, !dbg !1087
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !1088    ; 2 uses
  %i.h = add i64 %.val1.i, -1, !dbg !1089
  %i.i = add i64 %i.h, %i.g, !dbg !1090           ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !1090
  tail call void @llvm.assume(i1 %i.j), !dbg !1091
  %i.k = sub i64 0, %.val1.i, !dbg !1092
  %i.l = and i64 %i.i, %i.k, !dbg !1093           ; 3 uses
  %i.m = add i64 %.val3.i, 17, !dbg !1094
  %i.n = add i64 %i.m, %i.l, !dbg !1095           ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !1095
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !1096
  tail call void @llvm.assume(i1 %i.q), !dbg !1096
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !1097
  tail call void @llvm.assume(i1 %i.r), !dbg !1098
  %i.s = icmp eq i64 %i.n, 0, !dbg !1099
  br i1 %i.s, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, label %bb.b, !dbg !1099

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l, !dbg !1100
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t, !dbg !1101
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #22, !dbg !1102, !noalias !1081
  br label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, !dbg !1103

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !1082
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !1104 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150), !dbg !1154
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1155
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !1155, !alias.scope !1150
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1155
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !1155, !alias.scope !1150
  %.val2.i = load ptr, ptr %0, align 8, !dbg !1155, !alias.scope !1150, !nonnull !114, !align !194, !noundef !114 ; 10 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !1156 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !1156, !noalias !1150, !noundef !114 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !1157
  br i1 %.not4.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, label %.lr.ph.i.i, !dbg !1158

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !dbg !1159, !noalias !1150
  br label %.lr.ph.split.us.i.i, !dbg !1160

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %i.f = phi ptr [ %i.s, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ], !dbg !1159 ; 2 uses
  %.sroa.0.03.us.i.i = phi i64 [ %i.g, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %i.g = add nuw i64 %.sroa.0.03.us.i.i, 1, !dbg !1161
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.03.us.i.i, !dbg !1162 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !1163, !noalias !1150, !noundef !114
  %i.j = icmp eq i8 %i.i, -128, !dbg !1163
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !1160

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16, !dbg !1164
  %i.l = load i64, ptr %i.c, align 8, !dbg !1165, !noalias !1150, !noundef !114
  %i.m = and i64 %i.l, %i.k, !dbg !1166
  store i8 -1, ptr %i.h, align 1, !dbg !1167, !noalias !1150
  %i.n = load ptr, ptr %.val2.i, align 8, !dbg !1168, !noalias !1150, !nonnull !114, !noundef !114
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m, !dbg !1169
  %i.p = getelementptr i8, ptr %i.o, i64 16, !dbg !1169
  store i8 -1, ptr %i.p, align 1, !dbg !1170, !noalias !1150
  %i.q = load i64, ptr %i.e, align 8, !dbg !1171, !noalias !1150, !noundef !114
  %i.r = add i64 %i.q, -1, !dbg !1171
  store i64 %i.r, ptr %i.e, align 8, !dbg !1171, !noalias !1150
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !dbg !1159, !noalias !1150
  br label %bb.c, !dbg !1172

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %i.s = phi ptr [ %.pre.i.i, %bb.b ], [ %i.f, %.lr.ph.split.us.i.i ]
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d, !dbg !1157
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, label %.lr.ph.split.us.i.i, !dbg !1158

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.t, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.t = add nuw i64 %.sroa.0.03.i.i, 1, !dbg !1161
  %i.u = load ptr, ptr %.val2.i, align 8, !dbg !1159, !noalias !1150, !nonnull !114, !noundef !114
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.03.i.i, !dbg !1162 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !dbg !1163, !noalias !1150, !noundef !114
  %i.x = icmp eq i8 %i.w, -128, !dbg !1163
  br i1 %i.x, label %bb.e, label %bb.d, !dbg !1160

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d, !dbg !1157
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit, label %.lr.ph.split.i.i, !dbg !1158

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1, !dbg !1161
  %i.y = add i64 %.sroa.0.03.i.i, -16, !dbg !1164
  %i.z = load i64, ptr %i.c, align 8, !dbg !1165, !noalias !1150, !noundef !114
  %i.aa = and i64 %i.z, %i.y, !dbg !1166
  store i8 -1, ptr %i.v, align 1, !dbg !1167, !noalias !1150
  %i.ab = load ptr, ptr %.val2.i, align 8, !dbg !1168, !noalias !1150, !nonnull !114, !noundef !114
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.aa, !dbg !1169
  %i.ad = getelementptr i8, ptr %i.ac, i64 16, !dbg !1169
  store i8 -1, ptr %i.ad, align 1, !dbg !1170, !noalias !1150
  %i.ae = load ptr, ptr %.val2.i, align 8, !dbg !1173, !noalias !1150, !nonnull !114, !noundef !114
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !1174
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %.neg7.i.i, !dbg !1175
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.af), !dbg !1176, !noalias !1150, !inline_history !1147
  %i.ag = load i64, ptr %i.e, align 8, !dbg !1171, !noalias !1150, !noundef !114
  %i.ah = add i64 %i.ag, -1, !dbg !1171
  store i64 %i.ah, ptr %i.e, align 8, !dbg !1171, !noalias !1150
  br label %bb.d, !dbg !1172

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsfypgzpEsCtg_18foundations_sentry.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ai = load i64, ptr %i.c, align 8, !dbg !1177, !noalias !1150, !noundef !114 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 8, !dbg !1178
  %i.ak = add i64 %i.ai, 1, !dbg !1178
  %i.al = lshr i64 %i.ak, 3, !dbg !1178
  %i.am = mul nuw i64 %i.al, 7, !dbg !1178
  %.sroa.04.0.i.i = select i1 %i.aj, i64 %i.ai, i64 %i.am, !dbg !1178
  %i.an = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !1179
  %i.ao = load i64, ptr %i.an, align 8, !dbg !1179, !noalias !1150, !noundef !114
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !1180
  %i.aq = sub i64 %.sroa.04.0.i.i, %i.ao, !dbg !1180
  store i64 %i.aq, ptr %i.ap, align 8, !dbg !1180, !noalias !1150
  ret void, !dbg !1154
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtCsgtgatFLTNh8_8governor5state5keyed7dashmapINtCsdra7vpBasQ9_7dashmap7DashMapINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtB7_9in_memory13InMemoryStateENtB7_10StateStore19measure_and_replaceuNCINvMs0_NtB9_4gcraNtB3i_4Gcra15test_and_updateB1n_NtNtNtB9_5clock6quanta13QuantaInstantBQ_INtNtB9_10middleware14NoOpMiddlewareB3Y_EE0INtB3i_8NotUntilB3Y_EECsfypgzpEsCtg_18foundations_sentry(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1181 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746), !dbg !1849
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1748), !dbg !1849
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1850
  %.val.i = load i64, ptr %i.k, align 8, !dbg !1850, !alias.scope !1746, !noundef !114 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !1850
  %.val6.i = load i64, ptr %i.l, align 8, !dbg !1850, !alias.scope !1746, !noundef !114 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1851, !noalias !1749
  %i.m = xor i64 %.val.i, 8317987319222330741, !dbg !1852 ; 2 uses
  %i.n = xor i64 %.val6.i, 7237128888997146477, !dbg !1853 ; 2 uses
  %i.o = xor i64 %.val.i, 7816392313619706465, !dbg !1854 ; 2 uses
  %i.p = xor i64 %.val6.i, 8387220255154660723, !dbg !1855 ; 2 uses
  store i64 %i.m, ptr %i.e, align 8, !dbg !1856, !alias.scope !1757, !noalias !1749
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !1856 ; 2 uses
  store i64 %i.o, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !dbg !1856, !alias.scope !1757, !noalias !1749
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !1856 ; 2 uses
  store i64 %i.n, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !dbg !1856, !alias.scope !1757, !noalias !1749
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !1856 ; 2 uses
  store i64 %i.p, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !dbg !1856, !alias.scope !1757, !noalias !1749
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !1856
  store i64 %.val.i, ptr %.sroa.711.0..sroa_idx.i.i.i, align 8, !dbg !1856, !alias.scope !1757, !noalias !1749
  %.sroa.812.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !1856
  store i64 %.val6.i, ptr %.sroa.812.0..sroa_idx.i.i.i, align 8, !dbg !1856, !alias.scope !1757, !noalias !1749
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !1856 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !dbg !1856, !alias.scope !1757, !noalias !1749
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758), !dbg !1857
  %.sroa.0.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !1858
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i, align 8, !dbg !1858, !alias.scope !1766, !noalias !1767, !nonnull !114, !noundef !114 ; 2 uses
  %.sroa.3.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !1858
  %.sroa.3.0.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i, align 8, !dbg !1858, !alias.scope !1766, !noalias !1767, !noundef !114 ; 3 uses
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i) #25, !dbg !1859, !noalias !1768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1860, !noalias !1772
  store i8 -1, ptr %i.d, align 1, !dbg !1860, !noalias !1772
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsfypgzpEsCtg_18foundations_sentry(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1) #25, !dbg !1861, !noalias !1774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1862, !noalias !1772
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !dbg !1863, !alias.scope !1775, !noalias !1749
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !dbg !1863, !alias.scope !1775, !noalias !1749
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !dbg !1863, !alias.scope !1775, !noalias !1749 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !dbg !1863, !alias.scope !1775, !noalias !1749
  %i.q = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 8, !dbg !1864, !alias.scope !1775, !noalias !1749, !noundef !114
  %i.r = shl i64 %i.q, 56, !dbg !1865
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !1866
  %i.t = load i64, ptr %i.s, align 8, !dbg !1866, !alias.scope !1775, !noalias !1749, !noundef !114
  %i.u = or i64 %i.r, %i.t, !dbg !1865            ; 2 uses
  %i.v = xor i64 %i.u, %.sroa.22.0.copyload.i.i.i.i, !dbg !1867 ; 3 uses
  %i.w = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i, !dbg !1868 ; 3 uses
  %i.x = add i64 %i.v, %.sroa.10.0.copyload.i.i.i.i, !dbg !1869 ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13), !dbg !1870
  %i.z = xor i64 %i.y, %i.w, !dbg !1871           ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 16), !dbg !1872
  %i.ab = xor i64 %i.aa, %i.x, !dbg !1873         ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32), !dbg !1874
  %i.ad = add i64 %i.x, %i.z, !dbg !1875          ; 3 uses
  %i.ae = add i64 %i.ab, %i.ac, !dbg !1876        ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17), !dbg !1877
  %i.ag = xor i64 %i.ad, %i.af, !dbg !1873        ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 21), !dbg !1878
  %i.ai = xor i64 %i.ah, %i.ae, !dbg !1871        ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32), !dbg !1879
  %i.ak = xor i64 %i.ae, %i.u, !dbg !1880
  %i.al = xor i64 %i.aj, 255, !dbg !1881
  %i.am = add i64 %i.ak, %i.ag, !dbg !1882        ; 3 uses
  %i.an = add i64 %i.ai, %i.al, !dbg !1883        ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 13), !dbg !1884
  %i.ap = xor i64 %i.am, %i.ao, !dbg !1885        ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16), !dbg !1886
  %i.ar = xor i64 %i.aq, %i.an, !dbg !1887        ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32), !dbg !1888
  %i.at = add i64 %i.ap, %i.an, !dbg !1889        ; 3 uses
  %i.au = add i64 %i.ar, %i.as, !dbg !1890        ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17), !dbg !1891
  %i.aw = xor i64 %i.at, %i.av, !dbg !1887        ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21), !dbg !1892
  %i.ay = xor i64 %i.ax, %i.au, !dbg !1885        ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32), !dbg !1893
end_hunk_0
