Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.02?download=true
inline.NumInlined: 301
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBW_4hash6random11RandomStateE6removejECslghKHtsL3a4_5tokio:bb.a
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aq, align 8, !alias.scope !53, !noalias !54
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %i.r, i64 -24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !41 ; 2 uses
  %.not = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBW_4hash6random11RandomStateE12remove_entryjECslghKHtsL3a4_5tokio.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBW_4hash6random11RandomStateE12remove_entryjECslghKHtsL3a4_5tokio.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.r, i64 -16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBW_4hash6random11RandomStateE12remove_entryjECslghKHtsL3a4_5tokio.exit.thread

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBW_4hash6random11RandomStateE12remove_entryjECslghKHtsL3a4_5tokio.exit.thread: ; preds = %._crit_edge.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBW_4hash6random11RandomStateE12remove_entryjECslghKHtsL3a4_5tokio.exit, %bb.f
  %storemerge = phi ptr [ %.sroa.3.0.copyload, %bb.f ], [ null, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBW_4hash6random11RandomStateE12remove_entryjECslghKHtsL3a4_5tokio.exit ], [ null, %._crit_edge.i.i.i ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtNtNtBY_4hash6random11RandomStateE0ECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !82, !noalias !83, !noundef !4 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !82, !noalias !83, !noundef !4 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 6 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !84 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !86
  %i.s = icmp ult i64 %..i, 15
  br i1 %i.s, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.t, label %bb.j, label %bb.f, !prof !6

.thread.i:                                        ; preds = %bb.d
  %i.u = icmp samesign ult i64 %..i, 4
  %i.v = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.v, 8
  %.sroa.03.0.i.i = select i1 %i.u, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %..i, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z                       ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  %i.ac = icmp samesign ugt i64 %i.aa, 576460752303423486
  br i1 %i.ac, label %bb.h, label %bb.g, !prof !87

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph7.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.ab, %bb.f ] ; 5 uses
  %i.ad = shl nuw i64 %.sroa.4.0.i.ph7.i, 5       ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph7.i, 16  ; 2 uses
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, !prof !88

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !89
  %i.ai = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !89 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !89
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit.thread

bb.i:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !noalias !89
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !90
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit.thread

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !noalias !90
  %i.ao = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9
  %i.ap = add nsw i64 %.sroa.4.0.i.ph7.i, -1      ; 6 uses
  %i.aq = lshr i64 %.sroa.4.0.i.ph7.i, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.07.0.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.ar ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !86
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !86
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !86
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !86
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.ap, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !86
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !86
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !86
  %i.as = load i64, ptr %i.d, align 8, !alias.scope !91, !noalias !92, !noundef !4 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %._crit_edge53, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !91, !noalias !92, !nonnull !4, !noundef !4 ; 2 uses
  %.val536 = load <16 x i8>, ptr %i.au, align 16
  %i.av = icmp sgt <16 x i8> %.val536, splat (i8 -1)
  %i.aw = bitcast <16 x i1> %i.av to i16
  br label %.preheader

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.12.032 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.033 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !86
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #25
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.018.052 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.018.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.051 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.050 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.049 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i144 = icmp eq i16 %.sroa.13.049, 0
  br i1 %.not.i144, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.018.146 = phi ptr [ %i.ay, %.noexc2 ], [ %.sroa.018.052, %.preheader ] ; 2 uses
  %.sroa.5.145 = phi i64 [ %i.bb, %.noexc2 ], [ %.sroa.5.051, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.146) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.018.146, i64 16 ; 3 uses
  %.val437 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = icmp sgt <16 x i8> %.val437, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %i.bb = add i64 %.sroa.5.145, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ba, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge53.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre66 = load i64, ptr %i.d, align 8, !alias.scope !91, !noalias !92
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit
  %i.bc = phi i64 [ %.pre66, %._crit_edge53.loopexit ], [ 0, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit ] ; 2 uses
  %i.bd = sub i64 %.sroa.07.0.i.i, %i.bc
  store i64 %i.bd, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !86
  store i64 %i.bc, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !86
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslghKHtsL3a4_5tokio(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECslghKHtsL3a4_5tokio.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge53
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECslghKHtsL3a4_5tokio.exit: ; preds = %._crit_edge53
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !95 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !95 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !95, !noundef !4 ; 3 uses
  %i.bf = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECslghKHtsL3a4_5tokio.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !95
  %i.bg = add i64 %.val3.i.i, 1
  %i.bh = mul nuw i64 %.val.i.i, %i.bg            ; 2 uses
  %i.bi = add i64 %.val1.i.i, -1
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh
  call void @llvm.assume(i1 %i.bk)
  %i.bl = sub i64 0, %.val1.i.i
  %i.bm = and i64 %i.bj, %i.bl                    ; 3 uses
  %i.bn = add i64 %.val3.i.i, 17
  %i.bo = add i64 %i.bn, %i.bm                    ; 4 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  %i.bq = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.br = icmp ule i64 %i.bo, %i.bq
  call void @llvm.assume(i1 %i.bp)
  call void @llvm.assume(i1 %i.br)
  %i.bs = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bt = icmp eq i64 %i.bo, 0
  br i1 %i.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bm
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #24, !noalias !95
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECslghKHtsL3a4_5tokio.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !86
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.049, %.preheader ], [ %i.ba, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.051, %.preheader ], [ %i.bb, %.noexc2 ] ; 2 uses
  %.sroa.018.1.lcssa = phi ptr [ %.sroa.018.052, %.preheader ], [ %i.ay, %.noexc2 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.050, -1                ; 2 uses
  %i.cc = load ptr, ptr %0, align 8, !alias.scope !96, !noalias !97, !nonnull !4, !noundef !4
  %i.cd = sub nsw i64 0, %i.ca
  %i.ce = getelementptr inbounds [32 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -32
  %i.cg = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRjECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cf)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.ap, %i.cg            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ch, align 1, !noalias !98
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !99

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cj, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit ], [ %i.da, %.lr.ph.i ]
  %i.ck = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cl
  %i.cn = and i64 %i.cm, %i.ap                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noundef !4
  %i.cq = icmp sgt i8 %i.cp, -1
  br i1 %i.cq, label %bb.n, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.n:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.an, align 16
  %i.cr = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cs, 0
  %i.ct = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cs, i1 true)
  %i.cu = zext nneg i16 %i.ct to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit ]
  %i.cv = phi i64 [ %i.cw, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit ]
  %i.cw = add i64 %i.cv, 16                       ; 2 uses
  %i.cx = add i64 %i.cw, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cx, %i.ap            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cy, align 1, !noalias !98
  %i.cz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.da = bitcast <16 x i1> %i.cz to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !100

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cu, %bb.n ], [ %i.cn, %._crit_edge.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i5.i
  %i.dc = lshr i64 %i.cg, 57
  %i.dd = trunc nuw nsw i64 %i.dc to i8           ; 2 uses
  %i.de = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.df = and i64 %i.de, %i.ap
  store i8 %i.dd, ptr %i.db, align 1
  %i.dg = getelementptr i8, ptr %i.an, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  store i8 %i.dd, ptr %i.dh, align 1
  %i.di = load ptr, ptr %0, align 8, !alias.scope !91, !noalias !92, !nonnull !4, !noundef !4
  %i.dj = shl i64 %i.ca, 5
  %i.dk = sub nuw nsw i64 -32, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = shl i64 %.sroa.0.0.i5.i, 5
  %i.dn = sub nuw nsw i64 -32, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.an, i64 %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.do, ptr noundef nonnull align 1 dereferenceable(32) %i.dl, i64 32, i1 false)
  %i.dp = icmp eq i64 %i.cb, 0
  br i1 %i.dp, label %._crit_edge53.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.es, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !101 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  br label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dq = lshr i64 %i.k, 4
  %i.dr = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dr, 0
  %i.ds = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dq, %i.ds ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dt = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ed, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod107 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.du = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.du, align 16, !noalias !101
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dv = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dw, ptr %i.du, align 16, !noalias !101
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i11 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dz = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store ptr @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtNtB13_4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCslghKHtsL3a4_5tokio, ptr %i.dx, align 8, !noalias !101
  store i64 32, ptr %i.dy, align 8, !noalias !101
  store ptr %0, ptr %i.a, align 8, !noalias !101
  br label %.lr.ph.i12

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ed, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ea, align 16, !noalias !101
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.eb = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ec = or <2 x i64> %i.eb, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ec, ptr %i.ea, align 16, !noalias !101
  %i.ed = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ef, align 16, !noalias !101
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.eg = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.eh = or <2 x i64> %i.eg, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eh, ptr %i.ef, align 16, !noalias !101
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i12:                                       ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ei, %bb.x ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.ei = add nuw i64 %.sroa.0.06.i, 1
  %i.ej = load ptr, ptr %0, align 8, !alias.scope !101, !nonnull !4, !noundef !4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.0.06.i
  %i.el = load i8, ptr %i.ek, align 1, !noundef !4
  %.not.i13 = icmp eq i8 %i.el, -128
  br i1 %.not.i13, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph.i12
  %.neg.i = xor i64 %.sroa.0.06.i, -1
  %.neg11.i = shl i64 %.neg.i, 5
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %.neg11.i ; 2 uses
  %i.en = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.w, %bb.q
  %i.eo = load ptr, ptr %0, align 8, !alias.scope !102, !noalias !103, !nonnull !4, !noundef !4
  %i.ep = getelementptr inbounds [32 x i8], ptr %i.eo, i64 %i.en
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -32
  %i.er = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRjECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eq)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i unwind label %bb.r ; 3 uses

bb.r:                                             ; preds = %bb.w, %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #25
          to label %common.resume unwind label %bb.y

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i16 = load ptr, ptr %0, align 8, !alias.scope !101, !nonnull !4, !noundef !4 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !101, !noundef !4 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.er      ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.et, align 1, !noalias !104
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ev = bitcast <16 x i1> %i.eu to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ev, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !99

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i ], [ %.sroa.0.0.i.i17, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.ev, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i ], [ %i.fm, %.lr.ph.i16.i ]
  %i.ew = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ex = zext nneg i16 %i.ew to i64
  %i.ey = add i64 %.sroa.0.0.lcssa.i.i, %i.ex
  %i.ez = and i64 %i.ey, %.val12.i                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !noundef !4
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.s, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !6

bb.s:                                             ; preds = %._crit_edge.i15.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i16, align 16
  %i.fd = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.fe = bitcast <16 x i1> %i.fd to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fe, 0
  %i.ff = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fe, i1 true)
  %i.fg = zext nneg i16 %i.ff to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i16.i:                                     ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i17, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i ]
  %i.fh = phi i64 [ %i.fi, %.lr.ph.i16.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtNtB10_4hash6random11RandomStateE0E0CslghKHtsL3a4_5tokio.exit.i ]
  %i.fi = add i64 %i.fh, 16                       ; 2 uses
  %i.fj = add i64 %i.fi, %.sroa.0.010.i.i
  %.sroa.0.0.i.i17 = and i64 %i.fj, %.val12.i     ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.0.i.i17
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fk, align 1, !noalias !104
  %i.fl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fm = bitcast <16 x i1> %i.fl to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !100

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fg, %bb.s ], [ %i.ez, %._crit_edge.i15.i ] ; 4 uses
  %i.fn = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fo = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fp = xor i64 %i.fo, %i.fn
  %.unshifted.i = and i64 %i.fp, %.val12.i
  %i.fq = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fq, label %bb.u, label %bb.t, !prof !5

bb.t:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fr = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.fs = sub nuw nsw i64 -32, %i.fr
  %i.ft = getelementptr inbounds i8, ptr %.val.i16, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !noundef !4
  %i.fw = lshr i64 %i.er, 57
  %i.fx = trunc nuw nsw i64 %i.fw to i8           ; 2 uses
  %i.fy = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fz = and i64 %i.fy, %.val12.i
  store i8 %i.fx, ptr %i.fu, align 1
  %i.ga = load ptr, ptr %0, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store i8 %i.fx, ptr %i.gc, align 1
  %i.gd = icmp eq i8 %i.fv, -1
  br i1 %i.gd, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ge = lshr i64 %i.er, 57
  %i.gf = trunc nuw nsw i64 %i.ge to i8           ; 2 uses
  %i.gg = add i64 %.sroa.0.06.i, -16
  %i.gh = and i64 %.val12.i, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.06.i
  store i8 %i.gf, ptr %i.gi, align 1
  %i.gj = load ptr, ptr %0, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gh
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  store i8 %i.gf, ptr %i.gl, align 1
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.gm = add i64 %.sroa.0.06.i, -16
  %i.gn = load i64, ptr %i.h, align 8, !alias.scope !101, !noundef !4
  %i.go = and i64 %i.gn, %i.gm
  %i.gp = load ptr, ptr %0, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gq, align 1
  %i.gr = load ptr, ptr %0, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.go
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  store i8 -1, ptr %i.gt, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ft, ptr noundef nonnull align 1 dereferenceable(32) %i.em, i64 32, i1 false)
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslghKHtsL3a4_5tokio(ptr noundef nonnull %i.em, ptr noundef nonnull %i.ft, i64 noundef 4)
          to label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r

bb.x:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i12
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i12

bb.y:                                             ; preds = %bb.r
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.x
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !101
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1
  %i.gv = lshr i64 %.pre13.i, 3
  %i.gw = mul nuw i64 %i.gv, 7
  %i.gx = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.gx, i64 %.pre.i.fr, i64 %i.gw
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !101
  br label %bb.z

bb.z:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gy = phi i64 [ %i.e, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gz = phi i64 [ 0, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hb = sub i64 %i.gz, %i.gy
  store i64 %i.hb, ptr %i.ha, align 8, !alias.scope !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit, %bb.c, %bb.z
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.z ], [ %.sroa.12.032, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit.thread ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.z ], [ %.sroa.7.033, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECslghKHtsL3a4_5tokio.exit.thread ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio.exit ]
  %i.hc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hd = insertvalue { i64, i64 } %i.hc, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hd
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !107, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !107
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_.exit

_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !110 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !110 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !110, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !110
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #24, !noalias !110
  br label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !114
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !114
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !114, !nonnull !4, !align !7, !noundef !4 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !114, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !114, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !114, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !114, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !114
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !114, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !114
  %i.q = load i64, ptr %i.e, align 8, !noalias !114, !noundef !4
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !114
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !114, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !114, !noundef !4
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !114, !noundef !4
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !114
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !114, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !114
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !114, !nonnull !4, !noundef !4
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !114, !inline_history !113
  %i.af = load i64, ptr %i.e, align 8, !noalias !114, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !114
  br label %bb.d

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !114, !noundef !4 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !114, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !114
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs1_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6ThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !145, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !146
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !151, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !152
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.f, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !155, !nonnull !4, !noundef !4
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !156
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio.exit.i

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !159, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !160
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle9JoinInneruEECslghKHtsL3a4_5tokio.exit

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #27
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle9JoinInneruEECslghKHtsL3a4_5tokio.exit

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle9JoinInneruEECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvNtNtCslghKHtsL3a4_5tokio4sync5watch13maybe_changeduEB6_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = tail call noundef i64 @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr noundef nonnull align 8 %i.a) ; 2 uses
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = load i64, ptr %1, align 8, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCs3oUPovFnLWP_4core6future6future6Future4poll:bb.a
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.s = add i8 %i.q, -1
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit: ; preds = %bb.c, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.s, %bb.c ], [ %i.q, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.p, align 1, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i
  %.sroa.03.011.i22.off8 = phi i8 [ %i.n, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ]
  %.sroa.03.011.i22.off16 = phi i8 [ %i.q, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit ], [ 0, %_RNvYNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceBc_.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 %.sroa.03.011.i22.off8, ptr %i.b, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i22.off16, ptr %i.v, align 1
  %i.w = load i8, ptr %i.f, align 8, !range !10, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1                  ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load atomic i64, ptr %i.y acquire, align 8
  br label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i: ; preds = %bb.af, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, %.split.i, %bb.r, %.loopexit.split-lp.i
  %.sroa.0.09.i = phi ptr [ %.sroa.0.340.i, %bb.ae ], [ %.sroa.0.340.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %.sroa.0.340.i, %bb.r ], [ %.sroa.0.340.i, %.split.i ], [ %.sroa.0.340.i, %bb.af ], [ %.sroa.0.110.ph.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn32.i = phi { ptr, i32 } [ %.pn63.i, %bb.ae ], [ %lpad.thr_comm.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %lpad.thr_comm.split-lp.i, %bb.r ], [ %i.bb, %.split.i ], [ %.pn63.i, %bb.af ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 3 uses
  %.sroa.020.0.i = phi i8 [ %.sroa.020.5.i, %bb.ae ], [ %.sroa.020.5.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %.sroa.020.5.i, %bb.r ], [ %.sroa.020.5.i, %.split.i ], [ %.sroa.020.5.i, %bb.af ], [ %.sroa.020.1.ph.i, %.loopexit.split-lp.i ]
  %i.aa = trunc nuw i8 %.sroa.020.0.i to i1
  %i.ab = icmp ne ptr %.sroa.0.09.i, null
  %or.cond85.not.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond85.not.i, label %bb.ah, label %.body

.loopexit.split-lp.i:                             ; preds = %bb.q, %bb.m
  %.sroa.0.110.ph.i = phi ptr [ %.sroa.0.340.i, %bb.q ], [ null, %bb.m ]
  %.sroa.020.1.ph.i = phi i8 [ %.sroa.020.5.i, %bb.q ], [ 1, %bb.m ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

bb.e:                                             ; preds = %bb.d, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread
  %.sroa.01.0.in.i = phi i64 [ %i.z, %bb.d ], [ %i.e, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingENtNtNtCsaL1QbXo9JQH_3std6thread5local11AccessErrorE9unwrap_orB1c_.exit.thread ] ; 2 uses
  %.sroa.01.0.i = shl i64 %.sroa.01.0.in.i, 1     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = and i64 %i.ad, 1
  %.not94.i = icmp eq i64 %i.ae, 0
  br i1 %.not94.i, label %.lr.ph.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread: ; preds = %bb.e
  store i8 0, ptr %i.b, align 1
  br label %bb.aj

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.sroa.014.096.i = phi i64 [ %.sroa.01.0.i42.i, %bb.i ], [ %i.ad, %bb.e ] ; 5 uses
  %.sroa.0.295.i = phi ptr [ %.sroa.0.338.i, %bb.i ], [ null, %bb.e ] ; 7 uses
  %.not26.i = icmp ult i64 %.sroa.014.096.i, %.sroa.01.0.i
  br i1 %.not26.i, label %bb.f, label %.thread27.i

bb.f:                                             ; preds = %.lr.ph.i
  %.not28.i = icmp eq ptr %.sroa.0.295.i, null
  br i1 %.not28.i, label %bb.g, label %.noexc

bb.g:                                             ; preds = %bb.f
  %i.af = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.ag = extractvalue { i8, i1 } %i.af, 1
  br i1 %i.ag, label %.noexc, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  %i.ah = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.c, i64 undef, i32 noundef -1)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.3.i = phi ptr [ %i.c, %bb.g ], [ %.sroa.0.295.i, %bb.f ], [ %i.c, %bb.h ] ; 3 uses
  %i.ai = cmpxchg ptr %i.ac, i64 %.sroa.014.096.i, i64 0 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ai, 1
  br i1 %.sroa.18.0.in.i.i, label %.thread.loopexit.i, label %bb.i

.thread27.i:                                      ; preds = %.lr.ph.i
  %i.aj = sub nuw i64 %.sroa.014.096.i, %.sroa.01.0.i
  %i.ak = cmpxchg ptr %i.ac, i64 %.sroa.014.096.i, i64 %i.aj acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i32.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i32.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread27.i, %.noexc
  %.pn.i = phi { i64, i1 } [ %i.ak, %.thread27.i ], [ %i.ai, %.noexc ]
  %.sroa.0.338.i = phi ptr [ %.sroa.0.295.i, %.thread27.i ], [ %.sroa.0.3.i, %.noexc ] ; 2 uses
  %.sroa.01.0.i42.i = extractvalue { i64, i1 } %.pn.i, 0 ; 2 uses
  %i.al = and i64 %.sroa.01.0.i42.i, 1
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %.lr.ph.i, label %.thread52.i

bb.j:                                             ; preds = %.thread27.i
  %i.am = and i64 %.sroa.01.0.in.i, 9223372036854775807 ; 3 uses
  br i1 %i.x, label %bb.k, label %.thread52.i

bb.k:                                             ; preds = %bb.j
  %.not29.i = icmp eq ptr %.sroa.0.295.i, null
  br i1 %.not29.i, label %bb.l, label %.thread.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i: ; preds = %bb.t, %bb.q, %bb.p
  %.sroa.0.0.i18 = phi i8 [ 0, %bb.t ], [ 1, %bb.q ], [ 1, %bb.p ] ; 2 uses
  %i.an = trunc nuw i8 %.sroa.020.5.i to i1
  br i1 %i.an, label %.thread52.i, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ao = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.ap = extractvalue { i8, i1 } %i.ao, 1
  br i1 %i.ap, label %.thread.i, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.aq = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.c, i64 undef, i32 noundef -1)
          to label %.thread.i unwind label %.loopexit.split-lp.i ; 0 uses

.thread.loopexit.i:                               ; preds = %.noexc
  %i.ar = lshr exact i64 %.sroa.014.096.i, 1
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.m, %bb.l, %bb.k
  %.sroa.09.0243749.i = phi i64 [ %i.am, %bb.l ], [ %i.am, %bb.m ], [ %i.am, %bb.k ], [ %i.ar, %.thread.loopexit.i ] ; 3 uses
  %.sroa.0.340.i = phi ptr [ null, %bb.l ], [ null, %bb.m ], [ %.sroa.0.295.i, %bb.k ], [ %.sroa.0.3.i, %.thread.loopexit.i ] ; 10 uses
  %storemerge.i = phi ptr [ %i.c, %bb.l ], [ %i.c, %bb.m ], [ %.sroa.0.295.i, %bb.k ], [ %.sroa.0.3.i, %.thread.loopexit.i ] ; 12 uses
  %.sroa.020.5.i = phi i8 [ 1, %bb.l ], [ 1, %bb.m ], [ 0, %bb.k ], [ 0, %.thread.loopexit.i ] ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.at = load i8, ptr %i.as, align 8, !range !10, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.thread.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8, !noalias !299
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.sroa.02.0.i.i = phi i64 [ %i.aw, %bb.n ], [ %.sroa.01.0.i.i.i, %bb.o ] ; 4 uses
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.09.0243749.i, i64 %.sroa.02.0.i.i) ; 2 uses
  %i.ax = sub nuw i64 %.sroa.02.0.i.i, %..i.i.i
  %i.ay = cmpxchg ptr %i.av, i64 %.sroa.02.0.i.i, i64 %i.ax acq_rel acquire, align 8, !noalias !299 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ay, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.ay, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.s, label %bb.o

bb.p:                                             ; preds = %.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.az = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
  %i.ba = extractvalue { i8, i1 } %i.az, 1
  br i1 %i.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i unwind label %.loopexit.split-lp.i

bb.r:                                             ; preds = %bb.z
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

.split.i:                                         ; preds = %bb.t
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

bb.s:                                             ; preds = %bb.o
  %.not86.i = icmp ugt i64 %.sroa.02.0.i.i, %.sroa.09.0243749.i
  br i1 %.not86.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = sub nuw nsw i64 %.sroa.09.0243749.i, %..i.i.i
  invoke fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore18add_permits_locked(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bc, ptr noundef nonnull align 8 %storemerge.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i unwind label %.split.i

bb.u:                                             ; preds = %bb.s
  %i.bd = load ptr, ptr %i.u, align 8, !noalias !300, !align !7, !noundef !4 ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  br i1 %.not.i.i, label %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i, label %bb.v

._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i: ; preds = %bb.u
  %.pre.i.i = load ptr, ptr %.val, align 8, !noalias !300
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.pre4.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !300
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i

bb.v:                                             ; preds = %bb.u
  %.val5.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !301, !noalias !300, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !302, !noundef !4 ; 2 uses
  %i.bh = icmp eq ptr %.val5.i.i.i, %i.bg
  %.pre3.i.i = load ptr, ptr %.val, align 8, !noalias !300 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.bd, %.pre3.i.i
  %or.cond.i.i = select i1 %i.bh, i1 %.not2.i.i, i1 false
  br i1 %or.cond.i.i, label %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i: ; preds = %bb.v, %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i
  %i.bi = phi ptr [ %.pre4.i.i, %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i ], [ %i.bg, %bb.v ]
  %i.bj = phi ptr [ %.pre.i.i, %._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread_crit_edge.i.i ], [ %.pre3.i.i, %bb.v ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !300, !nonnull !4, !noundef !4
  %i.bl = invoke { ptr, ptr } %i.bk(ptr noundef %i.bi)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i, !inline_history !295 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i
  %lpad.thr_comm78.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtB5_4task4wake5WakerE6map_orbNCNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB1o_9Semaphore12poll_acquire00EB1s_.exit.thread.i.i
  %i.bm = extractvalue { ptr, ptr } %i.bl, 0      ; 2 uses
  %2 = extractvalue { ptr, ptr } %i.bl, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bn = load ptr, ptr %i.u, align 8, !noalias !300, !align !7, !noundef !4
  %i.bo = load ptr, ptr %i.be, align 8, !noalias !300
  store ptr %i.bm, ptr %i.u, align 8, !noalias !300
  store ptr %2, ptr %i.be, align 8, !noalias !300
  br label %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i

_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i, %bb.v
  %.sroa.8.0.i = phi ptr [ %i.bo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i ], [ undef, %bb.v ] ; 2 uses
  %.sroa.06.0.i = phi ptr [ %i.bn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i ], [ null, %bb.v ] ; 4 uses
  br i1 %i.x, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 8
  invoke void @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync15batch_semaphore6WaiterE10push_frontB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 %i.u)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w, %_RNCNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB4_9Semaphore12poll_acquire0B8_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.bq = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
  %i.br = extractvalue { i8, i1 } %i.bq, 1
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i unwind label %bb.ab

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i: ; preds = %bb.y, %bb.x
  %i.bs = icmp eq ptr %.sroa.06.0.i, null
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4
  invoke void %i.bu(ptr noundef %.sroa.8.0.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.r, !inline_history !296

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit49.i
  %i.bv = trunc nuw i8 %.sroa.020.5.i to i1
  %i.bw = icmp ne ptr %.sroa.0.340.i, null
  %or.cond.not.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.not.i, label %bb.aa, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i
  %i.bx = cmpxchg ptr %.sroa.0.340.i, i8 1, i8 0 release monotonic, align 1
  %i.by = extractvalue { i8, i1 } %i.bx, 1
  br i1 %i.by, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i, !prof !5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i: ; preds = %bb.ag, %bb.aa
  %.sroa.0.456.sink.i = phi ptr [ %.sroa.0.456.i, %bb.ag ], [ %.sroa.0.340.i, %bb.aa ]
  %.sroa.0.1.ph.i = phi i8 [ %.sroa.0.058.i, %bb.ag ], [ 2, %bb.aa ] ; 2 uses
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.456.sink.i, i1 noundef zeroext false)
          to label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.y, %bb.w
  %.sroa.023.3.ph.i = phi i1 [ false, %bb.y ], [ true, %bb.w ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = icmp eq ptr %.sroa.06.0.i, null
  br i1 %i.bz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !4, !noundef !4
  invoke void %i.cb(ptr noundef %.sroa.8.0.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i unwind label %bb.ad, !inline_history !296

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i: ; preds = %bb.ac, %bb.ab
  br i1 %.sroa.023.3.ph.i, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i

bb.ad:                                            ; preds = %bb.ai, %bb.af, %bb.ac
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i
  %.pn63.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.i ], [ %lpad.thr_comm78.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit53.thread.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.cd = cmpxchg ptr %storemerge.i, i8 1, i8 0 release monotonic, align 1
  %i.ce = extractvalue { i8, i1 } %i.cd, 1
  br i1 %i.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i, label %bb.af, !prof !5

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %storemerge.i, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i unwind label %bb.ad

.thread52.i:                                      ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i, %bb.j
  %.sroa.0.058.i = phi i8 [ %.sroa.0.0.i18, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i ], [ 0, %bb.j ], [ 1, %bb.i ] ; 3 uses
  %.sroa.0.456.i = phi ptr [ %.sroa.0.340.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i ], [ %.sroa.0.295.i, %bb.j ], [ %.sroa.0.338.i, %bb.i ] ; 3 uses
  %i.cf = icmp eq ptr %.sroa.0.456.i, null
  br i1 %i.cf, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %.thread52.i
  %i.cg = cmpxchg ptr %.sroa.0.456.i, i8 1, i8 0 release monotonic, align 1
  %i.ch = extractvalue { i8, i1 } %i.cg, 1
  br i1 %i.ch, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i, !prof !5

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i
  %i.ci = cmpxchg ptr %.sroa.0.09.i, i8 1, i8 0 release monotonic, align 1
  %i.cj = extractvalue { i8, i1 } %i.ci, 1
  br i1 %i.cj, label %.body, label %bb.ai, !prof !5

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.09.i, i1 noundef zeroext false)
          to label %.body unwind label %bb.ad

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i, %bb.ah, %bb.ai
  %eh.lpad-body = phi { ptr, i32 } [ %.pn32.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit55.i ], [ %.pn32.i, %bb.ai ], [ %.pn32.i, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit unwind label %bb.al

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtB16_4sync15batch_semaphore8WaitlistEEEB16_.exit51.sink.split.i
  %i.ck = icmp eq i8 %.sroa.0.1.ph.i, 2
  br i1 %i.ck, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread: ; preds = %bb.ag, %.thread52.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit
  %.sroa.0.1.i24 = phi i8 [ %.sroa.0.1.ph.i, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit ], [ %.sroa.0.058.i, %bb.ag ], [ %.sroa.0.058.i, %.thread52.i ], [ %.sroa.0.0.i18, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4sync15batch_semaphore8WaitlistEEBK_.exit.i ]
  %i.cl = trunc nuw i8 %.sroa.0.1.i24 to i1
  store i8 0, ptr %i.b, align 1
  br i1 %i.cl, label %bb.aj, label %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26

_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26: ; preds = %bb.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit
  %storemerge = phi i8 [ 1, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit ], [ 0, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i ], [ 1, %bb.aa ]
  %.sroa.0.0 = phi i8 [ 2, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit ], [ 0, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i ], [ 2, %bb.aa ]
  store i8 %storemerge, ptr %i.f, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread26 ], [ 1, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread ], [ 1, %_RNvMNtNtCslghKHtsL3a4_5tokio4sync15batch_semaphoreNtB2_9Semaphore12poll_acquire.exit.thread.thread ]
  call void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %bb.aj
  %.sroa.0.2 = phi i8 [ %.sroa.0.1, %bb.aj ], [ 2, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.2

bb.al:                                            ; preds = %.body
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_6ShareduENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB9_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = tail call noundef i64 @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr noundef nonnull align 8 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 6)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 5, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = and i64 %i.e, -2
  store i64 %i.h, ptr %i.b, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = trunc i64 %i.e to i8
  %i.k = and i8 %i.j, 1
  store i8 %i.k, ptr %i.a, align 1
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 12, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  %i.o = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB5_8SnapshotNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 8)
end_hunk_1
