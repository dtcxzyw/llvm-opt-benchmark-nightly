Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_load_balancing-58aa6fa8707f0f42.pingora_load_balancing.21c3f6b127470a61-cgu.10?download=true
inline.NumInlined: 190
inline.NumDeleted: 107
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs0_NtCskeugdADtBsi_12pingora_core10connectorsNtB6_20PreferredHttpVersion3getNtNtNtB8_9upstreams4peer9BasicPeerECs2TJrahNLnPN_22pingora_load_balancing:bb.a

bb.i:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyhNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyECs2TJrahNLnPN_22pingora_load_balancing.exit.thread
  call void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %1)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyhEEECs2TJrahNLnPN_22pingora_load_balancing.exit10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyhEEECs2TJrahNLnPN_22pingora_load_balancing.exit10: ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyhNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyECs2TJrahNLnPN_22pingora_load_balancing.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyhEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1W_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EB1Y_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !56, !noalias !57, !noundef !5 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !56, !noalias !57, !noundef !5 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 6 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !58 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60
  %i.s = icmp ult i64 %..i, 15
  br i1 %i.s, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.t, label %bb.j, label %bb.f, !prof !7

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
  %i.ac = icmp samesign ugt i64 %i.aa, 72057594037927934
  br i1 %i.ac, label %bb.h, label %bb.g, !prof !61

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph16.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.ab, %bb.f ] ; 5 uses
  %i.ad = shl nuw i64 %.sroa.4.0.i.ph16.i, 8      ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph16.i, 16 ; 2 uses
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, !prof !4

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !62
  %i.ai = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #18, !noalias !62 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !62
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit.thread

bb.i:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !noalias !62
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !63
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit.thread

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !noalias !63
  %i.ao = icmp samesign ult i64 %.sroa.4.0.i.ph16.i, 9
  %i.ap = add nsw i64 %.sroa.4.0.i.ph16.i, -1     ; 6 uses
  %i.aq = lshr i64 %.sroa.4.0.i.ph16.i, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.07.0.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.ar ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !60
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 256, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !60
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !60
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !60
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.ap, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !60
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !60
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !60
  %i.as = load i64, ptr %i.d, align 8, !alias.scope !64, !noalias !65, !noundef !5 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %._crit_edge53, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !64, !noalias !65, !nonnull !5, !noundef !5 ; 2 uses
  %.val536 = load <16 x i8>, ptr %i.au, align 16
  %i.av = icmp sgt <16 x i8> %.val536, splat (i8 -1)
  %i.aw = bitcast <16 x i1> %i.av to i16
  br label %.preheader

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.al, %bb.i ], [ %i.ak, %bb.h ] ; 2 uses
  %.sroa.12.032 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.033 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #19
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.018.052 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.018.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.051 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.050 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.049 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
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

._crit_edge53.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre66 = load i64, ptr %i.d, align 8, !alias.scope !64, !noalias !65
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.bc = phi i64 [ %.pre66, %._crit_edge53.loopexit ], [ 0, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit ] ; 2 uses
  %i.bd = sub i64 %.sroa.07.0.i.i, %i.bc
  store i64 %i.bd, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !60
  store i64 %i.bc, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !60
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge53
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %._crit_edge53
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !68 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !68 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !68, !noundef !5 ; 3 uses
  %i.bf = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2TJrahNLnPN_22pingora_load_balancing.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !68
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
  %i.bt = icmp eq i64 %i.bo, 0
  br i1 %i.bt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bm
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #18, !noalias !68
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2TJrahNLnPN_22pingora_load_balancing.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit

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
  %i.cc = load ptr, ptr %0, align 8, !alias.scope !69, !noalias !70, !nonnull !5, !noundef !5
  %i.cd = sub nsw i64 0, %i.ca
  %i.ce = getelementptr inbounds [256 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -256
  %i.cg = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.cf)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.ap, %i.cg            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ch, align 1, !noalias !71
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !72

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cj, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit ], [ %i.da, %.lr.ph.i ]
  %i.ck = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cl
  %i.cn = and i64 %i.cm, %i.ap                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noundef !5
  %i.cq = icmp sgt i8 %i.cp, -1
  br i1 %i.cq, label %bb.n, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.n:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.an, align 16
  %i.cr = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cs, 0
  %i.ct = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cs, i1 true)
  %i.cu = zext nneg i16 %i.ct to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit ]
  %i.cv = phi i64 [ %i.cw, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit ]
  %i.cw = add i64 %i.cv, 16                       ; 2 uses
  %i.cx = add i64 %i.cw, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cx, %i.ap            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cy, align 1, !noalias !71
  %i.cz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.da = bitcast <16 x i1> %i.cz to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !73

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
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
  %i.di = load ptr, ptr %0, align 8, !alias.scope !64, !noalias !65, !nonnull !5, !noundef !5
  %i.dj = shl i64 %i.ca, 8
  %i.dk = sub nuw nsw i64 -256, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = shl i64 %.sroa.0.0.i5.i, 8
  %i.dn = sub nuw nsw i64 -256, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.an, i64 %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.do, ptr noundef nonnull align 1 dereferenceable(256) %i.dl, i64 256, i1 false)
  %i.dp = icmp eq i64 %i.cb, 0
  br i1 %i.dp, label %._crit_edge53.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.es, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !74, !nonnull !5, !noundef !5 ; 5 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74
  br label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dq = lshr i64 %i.k, 4
  %i.dr = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dr, 0
  %i.ds = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dq, %i.ds ; 4 uses
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
  %.val5.i.i.epil = load <16 x i8>, ptr %i.du, align 16, !noalias !74
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dv = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dw, ptr %i.du, align 16, !noalias !74
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i11 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dz = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74
  store ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B21_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceB23_, ptr %i.dx, align 8, !noalias !74
  store i64 256, ptr %i.dy, align 8, !noalias !74
  store ptr %0, ptr %i.a, align 8, !noalias !74
  br label %.lr.ph.i12

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ed, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ea, align 16, !noalias !74
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.eb = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ec = or <2 x i64> %i.eb, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ec, ptr %i.ea, align 16, !noalias !74
  %i.ed = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ef, align 16, !noalias !74
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.eg = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.eh = or <2 x i64> %i.eg, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eh, ptr %i.ef, align 16, !noalias !74
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i12:                                       ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ei, %bb.x ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.ei = add nuw i64 %.sroa.0.06.i, 1
  %i.ej = load ptr, ptr %0, align 8, !alias.scope !74, !nonnull !5, !noundef !5 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.0.06.i
  %i.el = load i8, ptr %i.ek, align 1, !noundef !5
  %.not.i13 = icmp eq i8 %i.el, -128
  br i1 %.not.i13, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph.i12
  %.neg.i = xor i64 %.sroa.0.06.i, -1
  %.neg11.i = shl i64 %.neg.i, 8
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %.neg11.i ; 2 uses
  %i.en = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.w, %bb.q
  %i.eo = load ptr, ptr %0, align 8, !alias.scope !75, !noalias !76, !nonnull !5, !noundef !5
  %i.ep = getelementptr inbounds [256 x i8], ptr %i.eo, i64 %i.en
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -256
  %i.er = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.eq)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit.i unwind label %bb.r ; 3 uses

bb.r:                                             ; preds = %bb.w, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #19
          to label %common.resume unwind label %bb.y

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit.i: ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i16 = load ptr, ptr %0, align 8, !alias.scope !74, !nonnull !5, !noundef !5 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !74, !noundef !5 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.er      ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.et, align 1, !noalias !77
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ev = bitcast <16 x i1> %i.eu to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ev, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !72

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit.i ], [ %.sroa.0.0.i.i17, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.ev, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit.i ], [ %i.fm, %.lr.ph.i16.i ]
  %i.ew = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ex = zext nneg i16 %i.ew to i64
  %i.ey = add i64 %.sroa.0.0.lcssa.i.i, %i.ex
  %i.ez = and i64 %i.ey, %.val12.i                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !noundef !5
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.s, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !7

bb.s:                                             ; preds = %._crit_edge.i15.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i16, align 16
  %i.fd = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.fe = bitcast <16 x i1> %i.fd to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fe, 0
  %i.ff = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fe, i1 true)
  %i.fg = zext nneg i16 %i.ff to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i16.i:                                     ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit.i, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i17, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit.i ]
  %i.fh = phi i64 [ %i.fi, %.lr.ph.i16.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B20_.exit.i ]
  %i.fi = add i64 %i.fh, 16                       ; 2 uses
  %i.fj = add i64 %i.fi, %.sroa.0.010.i.i
  %.sroa.0.0.i.i17 = and i64 %i.fj, %.val12.i     ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.0.i.i17
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fk, align 1, !noalias !77
  %i.fl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fm = bitcast <16 x i1> %i.fl to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !73

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fg, %bb.s ], [ %i.ez, %._crit_edge.i15.i ] ; 4 uses
  %i.fn = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fo = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fp = xor i64 %i.fo, %i.fn
  %.unshifted.i = and i64 %i.fp, %.val12.i
  %i.fq = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fq, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fr = shl i64 %.sroa.0.0.i5.i.i, 8
  %i.fs = sub nuw nsw i64 -256, %i.fr
  %i.ft = getelementptr inbounds i8, ptr %.val.i16, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !noundef !5
  %i.fw = lshr i64 %i.er, 57
  %i.fx = trunc nuw nsw i64 %i.fw to i8           ; 2 uses
  %i.fy = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fz = and i64 %i.fy, %.val12.i
  store i8 %i.fx, ptr %i.fu, align 1
  %i.ga = load ptr, ptr %0, align 8, !alias.scope !74, !nonnull !5, !noundef !5
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store i8 %i.fx, ptr %i.gc, align 1
  %i.gd = icmp eq i8 %i.fv, -1
  br i1 %i.gd, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ge = lshr i64 %i.er, 57
  %i.gf = trunc nuw nsw i64 %i.ge to i8           ; 2 uses
  %i.gg = add i64 %.sroa.0.06.i, -16
  %i.gh = and i64 %.val12.i, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.06.i
  store i8 %i.gf, ptr %i.gi, align 1
  %i.gj = load ptr, ptr %0, align 8, !alias.scope !74, !nonnull !5, !noundef !5
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gh
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  store i8 %i.gf, ptr %i.gl, align 1
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.gm = add i64 %.sroa.0.06.i, -16
  %i.gn = load i64, ptr %i.h, align 8, !alias.scope !74, !noundef !5
  %i.go = and i64 %i.gn, %i.gm
  %i.gp = load ptr, ptr %0, align 8, !alias.scope !74, !nonnull !5, !noundef !5
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gq, align 1
  %i.gr = load ptr, ptr %0, align 8, !alias.scope !74, !nonnull !5, !noundef !5
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.go
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  store i8 -1, ptr %i.gt, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ft, ptr noundef nonnull align 1 dereferenceable(256) %i.em, i64 256, i1 false)
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %i.em, ptr noundef nonnull %i.ft, i64 noundef 32)
          to label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r

bb.x:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i12
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i12

bb.y:                                             ; preds = %bb.r
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1V_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE12remove_entryNCINvNtB8_3map14equivalent_keyllBR_E0ECs2TJrahNLnPN_22pingora_load_balancing
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1V_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE12remove_entryNCINvNtB8_3map14equivalent_keyllBR_E0ECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !101, !noalias !102, !noundef !5 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !101, !noalias !102, !nonnull !5, !noundef !5 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.d          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.h, align 1, !noalias !103 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -24 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownlINtB2_10EquivalentlE10equivalentCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q), !noalias !104
  br i1 %i.r, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1V_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE4findNCINvNtB8_3map14equivalent_keyllBR_E0ECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c, !prof !6

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !7

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i31.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i31.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1V_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE4findNCINvNtB8_3map14equivalent_keyllBR_E0ECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %.idx.neg = mul i64 %i.n, 24
  %i.z = sdiv exact i64 %.idx.neg, 24             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.aa = add nsw i64 %i.z, -16
  %i.ab = and i64 %i.aa, %i.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !108
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !109
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ae, i1 false)
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.aj, %i.ai
  %i.ak = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.ak, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1U_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE6removeCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1V_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE4findNCINvNtB8_3map14equivalent_keyllBR_E0ECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !110, !noalias !111, !noundef !5
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !alias.scope !110, !noalias !111
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1U_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE6removeCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1U_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE6removeCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1V_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE4findNCINvNtB8_3map14equivalent_keyllBR_E0ECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1V_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE4findNCINvNtB8_3map14equivalent_keyllBR_E0ECs2TJrahNLnPN_22pingora_load_balancing.exit ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.af, align 1, !noalias !112
  %i.ao = getelementptr i8, ptr %i.ac, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.ao, align 1, !noalias !112
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !110, !noalias !111, !noundef !5
  %i.ar = add i64 %i.aq, -1
  store i64 %i.ar, ptr %i.ap, align 8, !alias.scope !110, !noalias !111
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.as, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1U_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE6removeCs2TJrahNLnPN_22pingora_load_balancing.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCsaHowi4STlW6_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCsaHowi4STlW6_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsaHowi4STlW6_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #18
  br label %_RNvXs_NtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCsaHowi4STlW6_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB20_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE9next_implKb0_ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not11 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not11, label %.lr.ph, label %._crit_edge18

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val79 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val79, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !115 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !115 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !115, !noundef !5 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !115
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
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #18, !noalias !115
  br label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !119
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !119, !nonnull !5, !align !8, !noundef !5 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !119, !noundef !5 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !119, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !119, !noundef !5
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !119, !noundef !5
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !119
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !119, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !119
  %i.q = load i64, ptr %i.e, align 8, !noalias !119, !noundef !5
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !119
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !119, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !119, !noundef !5
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !119, !noundef !5
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !119
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !119, !nonnull !5, !noundef !5
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !119
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !119, !nonnull !5, !noundef !5
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !119, !inline_history !118
  %i.af = load i64, ptr %i.e, align 8, !noalias !119, !noundef !5
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !119
  br label %bb.d

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !119, !noundef !5 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !119, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !119
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3t_4SyncEL_EEEENCNvMse_B1y_B1v_15clone_from_impl0EECs2TJrahNLnPN_22pingora_load_balancing(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1s_6marker4SendNtB3g_4SyncEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtB1s_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !5
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val.i.i = load ptr, ptr %i.h, align 8         ; 5 uses
  %i.i = getelementptr i8, ptr %i.g, i64 -8
  %.val6.i.i = load ptr, ptr %i.i, align 8, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.j = load ptr, ptr %.val6.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !5 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtNtB1u_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !10, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) %i.u) #18
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtNtB1u_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtNtB1u_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.f
  resume { ptr, i32 } %i.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.e, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1s_6marker4SendNtB3g_4SyncEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtB1s_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1s_6marker4SendNtB3g_4SyncEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtB1s_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2awuzAz5vY4_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB21_18TransportConnector10new_streamNtNtNtB23_9upstreams4peer9BasicPeerE0s_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CellINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2awuzAz5vY4_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB21_18TransportConnector10new_streamNtNtNtB23_9upstreams4peer9BasicPeerE0s_0EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CellINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2awuzAz5vY4_5tokio7runtime4task8new_taskNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtBW_18TransportConnector10new_streamNtNtNtBY_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1816) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1816) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2awuzAz5vY4_5tokio7runtime4task8new_taskNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtBW_18TransportConnector10new_streamNtNtNtBY_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1816) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1816) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsifUeDn7Bu1H_3nix3sys6socket11getpeernameNtNtB2_4addr15SockaddrStorageECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 128, ptr %i.c, align 4
  %i.e = call noundef i32 @getpeername(i32 noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #18
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef i32 @_RNvMNtCsifUeDn7Bu1H_3nix5errnoNtNtB2_6consts5Errno4last()
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false)
  %i.i = load i32, ptr %i.c, align 4, !noundef !5
  call void @_RNvXsp_NtNtNtCsifUeDn7Bu1H_3nix3sys6socket4addrNtB5_15SockaddrStorageNtB5_12SockaddrLike8from_raw(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noundef nonnull %i.a, i32 noundef 1, i32 %i.i)
  %i.j = load i64, ptr %i.b, align 8, !range !120, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.n, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ 0, %bb.d ], [ 1, %bb.e ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsifUeDn7Bu1H_3nix3sys6socket11getpeernameNtNtB2_4addr8UnixAddrECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([116 x i8]) align 4 captures(none) dereferenceable(116) initializes((0, 2), (4, 8)) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [110 x i8], align 2               ; 3 uses
  %i.b = alloca [112 x i8], align 2               ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [112 x i8], align 2               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 110, ptr %i.c, align 4
  %i.e = call noundef i32 @getpeername(i32 noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #18
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef i32 @_RNvMNtCsifUeDn7Bu1H_3nix5errnoNtNtB2_6consts5Errno4last()
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4
  store i16 1, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(112) %i.b, ptr noundef nonnull align 2 dereferenceable(112) %i.d, i64 112, i1 false)
  %i.i = load i32, ptr %i.c, align 4, !noundef !5 ; 3 uses
  %i.j = add i32 %i.i, -2
  %or.cond.i = icmp ult i32 %i.j, 254
  %.0..0..0. = load i16, ptr %i.b, align 2
  %.not.i = icmp eq i16 %.0..0..0., 1
  %or.cond = select i1 %or.cond.i, i1 %.not.i, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %i.a, i8 0, i64 110, i1 false)
  %i.k = zext nneg i32 %i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.a, ptr nonnull readonly align 2 %i.b, i64 %i.k, i1 false)
  %i.l = trunc nuw i32 %i.i to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %i.m, ptr noundef nonnull align 2 dereferenceable(110) %i.a, i64 110, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.l, ptr %.sroa.47.0..sroa_idx, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.n, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i16 [ 0, %bb.d ], [ 1, %bb.e ]
  store i16 %.sink, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1Z_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val13 = load <16 x i8>, ptr %1, align 16
end_hunk_1
begin_hunk_2_@_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtBT_5clone5Clone5cloneCs2TJrahNLnPN_22pingora_load_balancing:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3t_4SyncEL_EEEENCNvMse_B1y_B1v_15clone_from_impl0EECs2TJrahNLnPN_22pingora_load_balancing(i64 %.sroa.011.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.a) #19
          to label %.body unwind label %bb.k, !noalias !150

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.011.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ba, %bb.j ]
  %.sroa.012.027.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.012.1.i.i, %bb.j ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.j ] ; 2 uses
  %.sroa.813.025.i.i = phi i16 [ %i.z, %.lr.ph.i.i ], [ %i.ar, %bb.j ] ; 2 uses
  %.sroa.1014.024.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ap, %bb.j ]
  %.not11.i.i.i = icmp eq i16 %.sroa.813.025.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ad = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.sroa.012.027.i.i, %bb.i ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.ad, align 16, !noalias !154
  %i.af = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -512 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.af to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.i ], [ %i.ah, %.lr.ph.i.i.i ]
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.027.i.i, %bb.i ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.813.025.i.i, %bb.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [32 x i8], ptr %.sroa.012.1.i.i, i64 %i.ak ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !alias.scope !155, !noalias !152
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -16
  %i.ao = invoke { ptr, ptr } @_RNvXs2_NtCs84JG9zk80ZV_4http10extensionsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB5_8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtB1u_5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %bb.j unwind label %bb.h, !noalias !152 ; 2 uses

bb.j:                                             ; preds = %.loopexit.i.i
  %i.ap = add i64 %.sroa.1014.024.i.i, -1         ; 2 uses
  %i.aq = add i16 %.lcssa.i.i.i, -1
  %i.ar = and i16 %i.aq, %.lcssa.i.i.i
  %i.as = extractvalue { ptr, ptr } %i.ao, 0
  %i.at = extractvalue { ptr, ptr } %i.ao, 1
  %i.au = ptrtoint ptr %i.al to i64
  %i.av = sub i64 %i.ab, %i.au
  %i.aw = ashr exact i64 %i.av, 5                 ; 2 uses
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !noalias !152
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ay, i64 -16
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !152
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ay, i64 -8
  store ptr %i.at, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ba = add nsw i64 %i.aw, 1
  %i.bb = icmp eq i64 %i.ap, 0
  br i1 %i.bb, label %.loopexit, label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !152
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.m

.body:                                            ; preds = %bb.h
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2U_4SyncEL_EEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.n

.loopexit:                                        ; preds = %bb.j, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCs2TJrahNLnPN_22pingora_load_balancing.exit
  store i64 %i.w, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !151, !noalias !150
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !150, !noalias !151, !noundef !5
  store i64 %i.be, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !151, !noalias !150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.l
  ret void

bb.n:                                             ; preds = %.body
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2U_4SyncEL_EEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.body
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCs2awuzAz5vY4_5tokio7runtime4taskINtB5_4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCs2awuzAz5vY4_5tokio7runtime4taskINtB5_4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !164, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB35_4SyncEL_EENtNtB1Q_5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !166, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !166, !nonnull !5, !noundef !5 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !167
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !168
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -16
  %.val.i.i = load ptr, ptr %i.w, align 8, !noalias !166 ; 5 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %.val5.i.i = load ptr, ptr %i.x, align 8, !noalias !166, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.y = load ptr, ptr %.val5.i.i, align 8, !invariant.load !5, !noalias !166 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !166

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !9, !invariant.load !5, !noalias !166 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !10, !invariant.load !5, !noalias !166
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #18, !noalias !166
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !9, !invariant.load !5, !noalias !166 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtNtB1u_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !10, !invariant.load !5, !noalias !166
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #18, !noalias !166
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtNtB1u_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtNtB1u_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.ak = icmp eq i64 %i.v, 0
  br i1 %i.ak, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, %bb.b
  %i.al = shl i64 %i.b, 5                         ; 2 uses
  %i.am = add i64 %i.al, 32                       ; 2 uses
  %i.an = add i64 %i.b, 17
  %i.ao = add i64 %i.an, %i.am                    ; 4 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = icmp ult i64 %i.ao, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap)
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB35_4SyncEL_EENtNtB1Q_5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.as = load ptr, ptr %0, align 8, !alias.scope !164, !nonnull !5, !noundef !5
  %i.at = sub nuw nsw i64 -32, %i.al
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 16) #18, !noalias !164
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB35_4SyncEL_EENtNtB1Q_5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB35_4SyncEL_EENtNtB1Q_5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1X_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !177, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB2l_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !179, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB2i_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !179, !nonnull !5, !noundef !5 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !180
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB1K_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB1K_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB1K_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB1K_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB1K_.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE9next_implKb0_EB23_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !181
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4096 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE9next_implKb0_EB23_.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE9next_implKb0_EB23_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [256 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -8
  %.val.i.i = load ptr, ptr %i.w, align 8, !noalias !179, !align !8, !noundef !5 ; 4 uses
  %i.x = icmp eq ptr %.val.i.i, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB1K_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE9next_implKb0_EB23_.exit.i.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !179

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #18, !noalias !179
  resume { ptr, i32 } %i.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #18, !noalias !179
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB1K_.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB1K_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE9next_implKb0_EB23_.exit.i.i
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB2i_.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB2i_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB1K_.exit.i.i, %bb.b
  %i.aa = shl i64 %i.b, 8                         ; 2 uses
  %i.ab = add i64 %i.aa, 256                      ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB2l_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB2i_.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !177, !nonnull !5, !noundef !5
  %i.ai = sub nuw nsw i64 -256, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #18, !noalias !177
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB2l_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB2l_.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB2i_.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !190, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !192, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEEB1f_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !192, !nonnull !5, !noundef !5 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !193
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEE9next_implKb0_EB10_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEE9next_implKb0_EB10_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEE9next_implKb0_EB10_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEE9next_implKb0_EB10_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEE9next_implKb0_EB10_.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEE9next_implKb0_EB10_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !194
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEE9next_implKb0_EB10_.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEE9next_implKb0_EB10_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [16 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8
  tail call void @_RNvXs5_Cs6SaDaKcgSi6_8arc_swapINtB5_10ArcSwapAnyINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check11HealthInnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w), !noalias !192
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEEB1f_.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEEB1f_.exit.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEE9next_implKb0_EB10_.exit.i.i, %bb.b
  %i.y = shl i64 %i.b, 4                          ; 2 uses
  %i.z = add i64 %i.y, 16                         ; 2 uses
  %i.aa = add i64 %i.b, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEEB1f_.exit.i
  %i.af = load ptr, ptr %0, align 8, !alias.scope !190, !nonnull !5, !noundef !5
  %i.ag = sub nuw nsw i64 -16, %i.y
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #18, !noalias !190
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check6HealthEEB1f_.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTybEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTybENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTybENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #18
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTybENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTybENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyhEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyhENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyhENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #18
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyhENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyhENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B21_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceB23_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248
  %.val = load ptr, ptr %i.a, align 8, !align !8, !noundef !5 ; 4 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0B20_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #18
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #18
  br label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0B20_.exit

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0B20_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 134) i32 @_RNvMNtCsifUeDn7Bu1H_3nix5errnoNtNtB2_6consts5Errno4last() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs1_NtNtCskeugdADtBsi_12pingora_core9upstreams4peerNtB5_9BasicPeerNtB5_4Peer10reuse_hash(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(544)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8, i1 noundef zeroext, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_Cs6SaDaKcgSi6_8arc_swapINtB5_10ArcSwapAnyINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check11HealthInnerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CellINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CellINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1816), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1816), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @getpeername(i32 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtNtNtCsifUeDn7Bu1H_3nix3sys6socket4addrNtB5_15SockaddrStorageNtB5_12SockaddrLike8from_raw(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noundef, i32 noundef range(i32 0, 2), i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownlINtB2_10EquivalentlE10equivalentCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8) unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs84JG9zk80ZV_4http10extensionsNtB5_10ExtensionsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCs2awuzAz5vY4_5tokio2io4util10buf_reader9BufReaderINtNtBB_10buf_writer9BufWriterNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperEENtB6_5Debug3fmtCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs2_NtCs84JG9zk80ZV_4http10extensionsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB5_8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtB1u_5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"branch_weights", i32 2002, i32 2000}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 8}
!9 = !{i64 0, i64 -9223372036854775808}
end_hunk_2
