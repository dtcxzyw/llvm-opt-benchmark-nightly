Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.02?download=true
inline.NumInlined: 1670
inline.NumDeleted: 656
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@1 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @0, [24 x i8] zeroinitializer }>, align 8

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTableINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtNtCs9gyJhbkOeXY_8hashlink15linked_hash_map4NodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdNtNtCsG258MDvU3F_3std4time7InstantEEE14reserve_rehashNCINvMss_B1D_INtB1D_17RawVacantEntryMutB2o_B3e_NtB1F_18DefaultHashBuilderE24insert_entry_with_hasherNCNvB4a_21insert_hashed_nocheck0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !48, !noundef !7 ; 4 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !48, !noundef !7 ; 4 uses
  %i.i = icmp ult i64 %i.h, 8
  %i.j = add i64 %i.h, 1                          ; 6 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %.sroa.03.0.i = select i1 %i.i, i64 %i.h, i64 %i.l ; 2 uses
  %i.m = lshr i64 %.sroa.03.0.i, 1
  %.not.i.not = icmp ult i64 %i.e, %i.m
  br i1 %.not.i.not, label %bb.n, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !49
  %i.o = extractvalue { i64, i64 } %i.n, 0
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit

bb.d:                                             ; preds = %bb.b
  %2 = tail call i64 @llvm.umax.i64(i64 %.sroa.03.0.i, i64 %i.e) ; 4 uses
  %..i = add nuw nsw i64 %2, 1                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51
  %i.p = icmp ult i64 %2, 14
  br i1 %i.p, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i64 %2, 2305843009213693950
  br i1 %i.q, label %bb.j, label %bb.f, !prof !8

.thread.i:                                        ; preds = %bb.d
  %i.r = icmp samesign ult i64 %2, 3
  %i.s = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.s, 8
  %.sroa.03.0.i.i = select i1 %i.r, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i64 %..i, 3
  %i.u = udiv i64 %i.t, 7
  %i.v = add nsw i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = lshr i64 -1, %i.w                        ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 1
  %or.cond8.i.i = icmp samesign ugt i64 %i.x, 2305843009213693949
  br i1 %or.cond8.i.i, label %bb.h, label %bb.g, !prof !52

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph8.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.y, %bb.f ] ; 5 uses
  %i.z = shl nuw i64 %.sroa.4.0.i.ph8.i, 3
  %i.aa = add nuw i64 %i.z, 8
  %i.ab = and i64 %i.aa, -16                      ; 3 uses
  %i.ac = add nuw nsw i64 %.sroa.4.0.i.ph8.i, 16  ; 2 uses
  %i.ad = add i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = icmp ugt i64 %i.ad, 9223372036854775792
  %or.cond.i.i = or i1 %i.ae, %i.af
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !9

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !53
  %i.ag = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !53 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !53
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aj = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ad), !noalias !53
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ak = tail call { i64, i64 } @_RNvMNtCsiHO4aZxHxup_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !54
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit.thread

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.al, i8 -1, i64 %i.ac, i1 false), !noalias !54
  %i.am = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.an = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 6 uses
  %i.ao = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.ap = mul nuw nsw i64 %i.ao, 7
  %.sroa.09.0.i.i = select i1 %i.am, i64 %i.an, i64 %i.ap ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !51
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !51
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.al, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.an, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  %i.aq = load i64, ptr %i.d, align 8, !alias.scope !55, !noundef !7 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %._crit_edge54, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit
  %i.as = load ptr, ptr %0, align 8, !alias.scope !55, !nonnull !7, !noundef !7 ; 2 uses
  %.val537 = load <16 x i8>, ptr %i.as, align 16
  %i.at = icmp sgt <16 x i8> %.val537, splat (i8 -1)
  %i.au = bitcast <16 x i1> %i.at to i16
  br label %.preheader

_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ak, %bb.j ], [ %i.ai, %bb.h ], [ %i.aj, %bb.i ]
  %.sroa.7.034 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit

bb.k:                                             ; preds = %._crit_edge
  %i.av = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #27
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.019.053 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %.sroa.019.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.052 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.051 = phi i64 [ %i.aq, %.preheader.lr.ph ], [ %i.by, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.050 = phi i16 [ %i.au, %.preheader.lr.ph ], [ %i.bw, %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i145 = icmp eq i16 %.sroa.13.050, 0
  br i1 %.not.i145, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.019.147 = phi ptr [ %i.aw, %.noexc2 ], [ %.sroa.019.053, %.preheader ] ; 2 uses
  %.sroa.5.146 = phi i64 [ %i.az, %.noexc2 ], [ %.sroa.5.052, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.147) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.019.147, i64 16 ; 3 uses
  %.val438 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val438, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = add i64 %.sroa.5.146, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ay, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge54.loopexit:                           ; preds = %_RNvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre.a = load i64, ptr %i.d, align 8, !alias.scope !55
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit
  %i.ba = phi i64 [ %.pre.a, %._crit_edge54.loopexit ], [ 0, %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit ] ; 2 uses
  %i.bb = sub i64 %.sroa.09.0.i.i, %i.ba
  store i64 %i.bb, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  store i64 %i.ba, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge54
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %._crit_edge54
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !58, !noundef !7 ; 3 uses
  %i.bd = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECshke30g4Hb4g_20ipfs_private_example.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !58 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !58 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !58
  %i.be = add i64 %.val3.i.i, 1
  %i.bf = mul nuw i64 %.val.i.i, %i.be            ; 2 uses
  %i.bg = add i64 %.val1.i.i, -1
  %i.bh = add i64 %i.bg, %i.bf                    ; 2 uses
  %i.bi = icmp uge i64 %i.bh, %i.bf
  call void @llvm.assume(i1 %i.bi)
  %i.bj = sub i64 0, %.val1.i.i
  %i.bk = and i64 %i.bh, %i.bj                    ; 3 uses
  %i.bl = add i64 %.val3.i.i, 17
  %i.bm = add i64 %i.bl, %i.bk                    ; 3 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  %i.bo = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bp = icmp ule i64 %i.bm, %i.bo
  call void @llvm.assume(i1 %i.bn)
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.br = sub nsw i64 0, %i.bk
  %i.bs = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.br
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #26, !noalias !58
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiHO4aZxHxup_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsiHO4aZxHxup_9hashbrown3raw13RawTableInnerECshke30g4Hb4g_20ipfs_private_example.exit, %_RNvMs1_NtCsiHO4aZxHxup_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51
  br label %_RINvMsa_NtCsiHO4aZxHxup_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECshke30g4Hb4g_20ipfs_private_example.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.050, %.preheader ], [ %i.ay, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.052, %.preheader ], [ %i.az, %.noexc2 ] ; 2 uses
  %.sroa.019.1.lcssa = phi ptr [ %.sroa.019.053, %.preheader ], [ %i.aw, %.noexc2 ]
  %i.bt = add i16 %.sroa.13.1.lcssa, -1
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = and i16 %i.bt, %.sroa.13.1.lcssa
  %i.bx = add i64 %.sroa.5.1.lcssa, %i.bv         ; 2 uses
  %i.by = add i64 %.sroa.9.051, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.bz = load ptr, ptr %0, align 8, !alias.scope !59, !nonnull !7, !noundef !7
  %i.ca = sub nsw i64 0, %i.bx
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %.val2.i = load ptr, ptr %i.cc, align 8, !noalias !60, !nonnull !7, !noundef !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ce = invoke noundef i64 @_RINvYNtCs9gyJhbkOeXY_8hashlink18DefaultHashBuilderNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd)
          to label %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtNtCs9gyJhbkOeXY_8hashlink15linked_hash_map4NodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdNtNtCsG258MDvU3F_3std4time7InstantEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_B3g_NtB1H_18DefaultHashBuilderE24insert_entry_with_hasherNCNvB4c_21insert_hashed_nocheck0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtNtCs9gyJhbkOeXY_8hashlink15linked_hash_map4NodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdNtNtCsG258MDvU3F_3std4time7InstantEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_B3g_NtB1H_18DefaultHashBuilderE24insert_entry_with_hasherNCNvB4c_21insert_hashed_nocheck0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.an, %i.ce            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !61
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtNtCs9gyJhbkOeXY_8hashlink15linked_hash_map4NodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdNtNtCsG258MDvU3F_3std4time7InstantEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_B3g_NtB1H_18DefaultHashBuilderE24insert_entry_with_hasherNCNvB4c_21insert_hashed_nocheck0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtNtCs9gyJhbkOeXY_8hashlink15linked_hash_map4NodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdNtNtCsG258MDvU3F_3std4time7InstantEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_B3g_NtB1H_18DefaultHashBuilderE24insert_entry_with_hasherNCNvB4c_21insert_hashed_nocheck0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ch, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTableINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtNtCs9gyJhbkOeXY_8hashlink15linked_hash_map4NodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdNtNtCsG258MDvU3F_3std4time7InstantEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_B3g_NtB1H_18DefaultHashBuilderE24insert_entry_with_hasherNCNvB4c_21insert_hashed_nocheck0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.cy, %.lr.ph.i ]
  %i.ci = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cj
end_hunk_0
