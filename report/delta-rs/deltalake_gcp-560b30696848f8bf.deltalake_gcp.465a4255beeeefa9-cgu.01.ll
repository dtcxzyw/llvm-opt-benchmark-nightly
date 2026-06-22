inline.NumInlined: 192
inline.NumDeleted: 93
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3, !noalias !6, !noundef !8 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !3, !noalias !6, !noundef !8 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 6 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !10 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14
  %i.s = icmp ult i64 %.sroa.0.0.i5, 15
  br i1 %i.s, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.t, label %bb.j, label %bb.f, !prof !9

.thread.i:                                        ; preds = %bb.d
  %i.u = icmp samesign ult i64 %.sroa.0.0.i5, 4
  %i.v = and i64 %.sroa.0.0.i5, 8
  %..i.i = add nuw nsw i64 %i.v, 8
  %.sroa.03.0.i.i = select i1 %i.u, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i5, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z                       ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  %i.ac = icmp samesign ugt i64 %i.aa, 576460752303423486
  br i1 %i.ac, label %bb.h, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph7.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.ab, %bb.f ] ; 5 uses
  %i.ad = shl nuw i64 %.sroa.4.0.i.ph7.i, 5       ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph7.i, 16  ; 2 uses
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, !prof !17

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !18
  %i.ai = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !18 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !18
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit.thread

bb.i:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !noalias !18
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !23
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit.thread

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !noalias !23
  %i.ao = add nsw i64 %.sroa.4.0.i.ph7.i, -1      ; 6 uses
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9
  %i.aq = lshr i64 %.sroa.4.0.i.ph7.i, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.07.0.i.i = select i1 %i.ap, i64 %i.ao, i64 %i.ar ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !14
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.ao, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  %i.as = load i64, ptr %i.d, align 8, !alias.scope !24, !noalias !25, !noundef !8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %._crit_edge48, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !24, !noalias !25, !nonnull !8, !noundef !8 ; 2 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16, !noalias !26
  %i.aw = icmp sgt <16 x i8> %i.av, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  br label %.preheader

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.7.029 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.030 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(56) %i.b) #20
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.015.047 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.015.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.046 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.045 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.044 = phi i16 [ %i.ax, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i239 = icmp eq i16 %.sroa.13.044, 0
  br i1 %.not.i239, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.015.141 = phi ptr [ %i.az, %.noexc3 ], [ %.sroa.015.047, %.preheader ] ; 2 uses
  %.sroa.5.140 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.046, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.141) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.015.141, i64 16 ; 3 uses
  %i.ba = load <16 x i8>, ptr %i.az, align 16, !noalias !29
  %i.bb = icmp sgt <16 x i8> %i.ba, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.140, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge48.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre61 = load i64, ptr %i.d, align 8, !alias.scope !24, !noalias !25
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %._crit_edge48.loopexit, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.be = phi i64 [ %.pre61, %._crit_edge48.loopexit ], [ 0, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit ] ; 2 uses
  %i.bf = sub i64 %.sroa.07.0.i.i, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge48
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #21
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %._crit_edge48
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !38 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !38 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !38, !noundef !8 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs62u4JVtZyFF_13deltalake_gcp.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs62u4JVtZyFF_13deltalake_gcp.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !38
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm)
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br)
  call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bo
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #19, !noalias !38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs62u4JVtZyFF_13deltalake_gcp.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.044, %.preheader ], [ %i.bc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.046, %.preheader ], [ %i.bd, %.noexc3 ] ; 2 uses
  %.sroa.015.1.lcssa = phi ptr [ %.sroa.015.047, %.preheader ], [ %i.az, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.045, -1                ; 2 uses
  %i.ce = load ptr, ptr %0, align 8, !alias.scope !39, !noalias !42, !nonnull !8, !noundef !8
  %i.cf = sub nsw i64 0, %i.cc
  %i.cg = getelementptr inbounds [32 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -32
  %i.ci = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ch)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.ao, %i.ci            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !44
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !47

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cl, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cn
  %i.cp = and i64 %i.co, %i.ao                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !8
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.n, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !9

bb.n:                                             ; preds = %._crit_edge.i
  %i.ct = load <16 x i8>, ptr %i.an, align 16, !noalias !48
  %i.cu = icmp slt <16 x i8> %i.ct, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.da, %i.ao            ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !44
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !51

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.n ], [ %i.cp, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.ci, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %i.ao
  store i8 %i.dg, ptr %i.de, align 1
  %i.dj = getelementptr i8, ptr %i.an, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1
  %i.dl = load ptr, ptr %0, align 8, !alias.scope !24, !noalias !25, !nonnull !8, !noundef !8
  %i.dm = shl i64 %i.cc, 5
  %i.dn = sub nuw nsw i64 -32, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.dn
  %i.dp = shl i64 %.sroa.0.0.i5.i, 5
  %i.dq = sub nuw nsw i64 -32, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.an, i64 %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dr, ptr noundef nonnull align 1 dereferenceable(32) %i.do, i64 32, i1 false)
  %i.ds = icmp eq i64 %i.cd, 0
  br i1 %i.ds, label %._crit_edge48.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.ey, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %.val14.i = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !8, !noundef !8 ; 5 uses
  %.not5.i.i = icmp eq i64 %i.k, 0
  br i1 %.not5.i.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  br label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dt = lshr i64 %i.k, 4
  %i.du = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.du, 0
  %i.dv = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dt, %i.dv ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dw = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dw, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ei, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i.epil.init ; 2 uses
  %i.dy = load <16 x i8>, ptr %i.dx, align 16, !noalias !55
  %.lobit.i.i.i.epil = ashr <16 x i8> %i.dy, splat (i8 7)
  %i.dz = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.ea = or <2 x i64> %i.dz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ea, ptr %i.dx, align 16, !noalias !58
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.ed = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull align 1 %.val14.i, i64 %.27.i, i1 false), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  store ptr @_RNvYNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtBb_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1W_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0Es_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTOhEE9call_onceCs62u4JVtZyFF_13deltalake_gcp, ptr %i.eb, align 8, !noalias !52
  store i64 32, ptr %i.ec, align 8, !noalias !52
  store ptr %0, ptr %i.a, align 8, !noalias !52
  br label %.lr.ph.i9

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.07.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ei, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i ; 2 uses
  %i.ef = load <16 x i8>, ptr %i.ee, align 16, !noalias !55
  %.lobit.i.i.i = ashr <16 x i8> %i.ef, splat (i8 7)
  %i.eg = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.eh = or <2 x i64> %i.eg, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eh, ptr %i.ee, align 16, !noalias !58
  %i.ei = add i64 %.sroa.0.07.i.i, 32             ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.el = load <16 x i8>, ptr %i.ek, align 16, !noalias !55
  %.lobit.i.i.i.1 = ashr <16 x i8> %i.el, splat (i8 7)
  %i.em = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.en = or <2 x i64> %i.em, splat (i64 -9187201950435737472)
  store <2 x i64> %i.en, ptr %i.ek, align 16, !noalias !58
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i9:                                        ; preds = %bb.w, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.eo, %bb.w ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.eo = add nuw i64 %.sroa.0.06.i, 1
  %i.ep = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !8, !noundef !8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.06.i
  %i.er = load i8, ptr %i.eq, align 1, !noundef !8
  %.not.i10 = icmp eq i8 %i.er, -128
  br i1 %.not.i10, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.lr.ph.i9
  %.neg.i = xor i64 %.sroa.0.06.i, -1
  %.neg12.i = shl i64 %.neg.i, 5
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 %.neg12.i ; 2 uses
  %i.et = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.x, %bb.q
  %i.eu = load ptr, ptr %0, align 8, !alias.scope !61, !noalias !64, !nonnull !8, !noundef !8
  %i.ev = getelementptr inbounds [32 x i8], ptr %i.eu, i64 %i.et
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -32
  %i.ex = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ew)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.r ; 3 uses

bb.r:                                             ; preds = %bb.x, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.a) #20
          to label %common.resume unwind label %bb.y

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i13 = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !8, !noundef !8 ; 7 uses
  %.val13.i = load i64, ptr %i.h, align 8, !alias.scope !52, !noundef !8 ; 6 uses
  %.sroa.0.07.i16.i = and i64 %.val13.i, %i.ex    ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.07.i16.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ez, align 1, !noalias !66
  %i.fa = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i18.i, label %._crit_edge.i17.i, !prof !47

._crit_edge.i17.i:                                ; preds = %.lr.ph.i18.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i16.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.i ], [ %.sroa.0.0.i.i14, %.lr.ph.i18.i ]
  %.lcssa.i.i = phi i16 [ %i.fb, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.i ], [ %i.ft, %.lr.ph.i18.i ]
  %i.fc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = add i64 %.sroa.0.0.lcssa.i.i, %i.fd
  %i.ff = and i64 %i.fe, %.val13.i                ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noundef !8
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %bb.s, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !9

bb.s:                                             ; preds = %._crit_edge.i17.i
  %i.fj = load <16 x i8>, ptr %.val.i13, align 16, !noalias !69
  %i.fk = icmp slt <16 x i8> %i.fj, zeroinitializer
  %i.fl = bitcast <16 x i1> %i.fk to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fl, 0
  %i.fm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fl, i1 true)
  %i.fn = zext nneg i16 %i.fm to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i18.i:                                     ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.i, %.lr.ph.i18.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i14, %.lr.ph.i18.i ], [ %.sroa.0.07.i16.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.i ]
  %i.fo = phi i64 [ %i.fp, %.lr.ph.i18.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.i ]
  %i.fp = add i64 %i.fo, 16                       ; 2 uses
  %i.fq = add i64 %i.fp, %.sroa.0.010.i.i
  %.sroa.0.0.i.i14 = and i64 %i.fq, %.val13.i     ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.0.i.i14
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fr, align 1, !noalias !66
  %i.fs = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.ft = bitcast <16 x i1> %i.fs to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ft, 0
  br i1 %.not.i.i.i, label %.lr.ph.i18.i, label %._crit_edge.i17.i, !prof !51

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i17.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fn, %bb.s ], [ %i.ff, %._crit_edge.i17.i ] ; 4 uses
  %i.fu = sub i64 %.sroa.0.06.i, %.sroa.0.07.i16.i
  %i.fv = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i16.i
  %i.fw = xor i64 %i.fv, %i.fu
  %.unshifted.i = and i64 %i.fw, %.val13.i
  %i.fx = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fx, label %bb.u, label %bb.t, !prof !72

bb.t:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fy = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.fz = sub nuw nsw i64 -32, %i.fy
  %i.ga = getelementptr inbounds i8, ptr %.val.i13, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !noundef !8
  %i.gd = lshr i64 %i.ex, 57
  %i.ge = trunc nuw nsw i64 %i.gd to i8           ; 2 uses
  %i.gf = add i64 %.sroa.0.0.i5.i.i, -16
  %i.gg = and i64 %i.gf, %.val13.i
  store i8 %i.ge, ptr %i.gb, align 1
  %i.gh = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !8, !noundef !8
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.gg
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  store i8 %i.ge, ptr %i.gj, align 1
  %i.gk = icmp eq i8 %i.gc, -1
  br i1 %i.gk, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.gl = lshr i64 %i.ex, 57
  %i.gm = trunc nuw nsw i64 %i.gl to i8           ; 2 uses
  %i.gn = add i64 %.sroa.0.06.i, -16
  %i.go = and i64 %.val13.i, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.06.i
  store i8 %i.gm, ptr %i.gp, align 1
  %i.gq = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !8, !noundef !8
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.go
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store i8 %i.gm, ptr %i.gs, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gt = add i64 %.sroa.0.06.i, -16
  %i.gu = load i64, ptr %i.h, align 8, !alias.scope !52, !noundef !8
  %i.gv = and i64 %i.gu, %i.gt
  %i.gw = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !8, !noundef !8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gx, align 1
  %i.gy = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !8, !noundef !8
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.gv
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  store i8 -1, ptr %i.ha, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ga, ptr noundef nonnull align 1 dereferenceable(32) %i.es, i64 32, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i9
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i9

bb.x:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull %i.es, ptr noundef nonnull %i.ga, i64 noundef 4)
          to label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r

bb.y:                                             ; preds = %bb.r
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable
end_hunk_0
begin_hunk_1_@_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9fold_implNCINvXsG_NtB8_3mapINtB1V_4IterBV_BV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters10filter_map15filter_map_foldTRBV_B4e_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyBV_EuNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBV_BV_ENtB5z_10GcpOptions14as_gcp_options0NCINvNvB2n_8for_each4callB4n_NCINvXs1i_B1V_INtB1V_7HashMapB4o_BV_NtNtNtB6b_4hash6random11RandomStateEINtNtB2r_7collect6ExtendB4n_E6extendINtB3t_9FilterMapINtB65_4IterBV_BV_EB5u_EE0E0E0E0uEB5z_:bb.a

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa131135 = phi ptr [ %i.hw, %._crit_edge ], [ %.lcssa131136, %.outer ]
  %.lcssa130133 = phi ptr [ %i.hv, %._crit_edge ], [ %.lcssa130134, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.p, %.outer ] ; 3 uses
  %i.r = add i16 %.lcssa, -1
  %i.s = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa                    ; 2 uses
  store i16 %i.u, ptr %i.g, align 8
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.lcssa130133, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -24
  %i.y = getelementptr i8, ptr %i.w, i64 -40
  %.val1.i = load ptr, ptr %i.y, align 8, !nonnull !8, !noundef !8
  %i.z = getelementptr i8, ptr %i.w, i64 -32
  %.val2.i = load i64, ptr %i.z, align 8, !noundef !8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !73
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !82
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) %.val2.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !82
  %i.aa = load i64, ptr %i.c, align 8, !range !87, !noalias !82, !noundef !8
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = load i64, ptr %i.i, align 8, !range !88, !noalias !82, !noundef !8 ; 3 uses
  br i1 %i.ab, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.ad = load i64, ptr %i.j, align 8, !noalias !82
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ad) #22, !noalias !82
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i: ; preds = %bb.b
  %i.ae = load ptr, ptr %i.j, align 8, !noalias !82, !nonnull !8, !noundef !8 ; 6 uses
  %i.af = icmp samesign ule i64 %.val2.i, %i.ac
  call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82
  %.not.i.i.i.i.i = icmp eq i64 %.val2.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %.val1.i, i64 range(i64 0, -9223372036854775808) %.val2.i, i1 false), !noalias !89
  %min.iters.check = icmp ult i64 %.val2.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check283 = icmp ult i64 %.val2.i, 32
  br i1 %min.iters.check283, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.val2.i, 24
  %n.vec = and i64 %.val2.i, -32                  ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %index ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !90, !noalias !93 ; 2 uses
  %wide.load284 = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !90, !noalias !93 ; 2 uses
  %i.ai = add <16 x i8> %wide.load, splat (i8 -65)
  %i.aj = add <16 x i8> %wide.load284, splat (i8 -65)
  %i.ak = icmp ult <16 x i8> %i.ai, splat (i8 26)
  %i.al = icmp ult <16 x i8> %i.aj, splat (i8 26)
  %i.am = select <16 x i1> %i.ak, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.an = select <16 x i1> %i.al, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ao = or <16 x i8> %i.am, %wide.load
  %i.ap = or <16 x i8> %i.an, %wide.load284
  store <16 x i8> %i.ao, ptr %i.ag, align 1, !alias.scope !90, !noalias !93
  store <16 x i8> %i.ap, ptr %i.ah, align 1, !alias.scope !90, !noalias !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val2.i, %n.vec
  br i1 %cmp.n, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec286 = and i64 %.val2.i, -8                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index287 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next289, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 %index287 ; 2 uses
  %wide.load288 = load <8 x i8>, ptr %i.ar, align 1, !alias.scope !90, !noalias !93 ; 2 uses
  %i.as = add <8 x i8> %wide.load288, splat (i8 -65)
  %i.at = icmp ult <8 x i8> %i.as, splat (i8 26)
  %i.au = select <8 x i1> %i.at, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.av = or <8 x i8> %i.au, %wide.load288
  store <8 x i8> %i.av, ptr %i.ar, align 1, !alias.scope !90, !noalias !93
  %index.next289 = add nuw i64 %index287, 8       ; 2 uses
  %i.aw = icmp eq i64 %index.next289, %n.vec286
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n290 = icmp eq i64 %.val2.i, %n.vec286
  br i1 %cmp.n290, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec286, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.0.05.i.i.i.i.i ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !90, !noalias !93, !noundef !8 ; 2 uses
  %i.az = add i8 %i.ay, -65
  %i.ba = icmp ult i8 %i.az, 26
  %i.bb = select i1 %i.ba, i8 32, i8 0
  %.sroa.03.0.i.i.i.i.i = or i8 %i.bb, %i.ay
  store i8 %.sroa.03.0.i.i.i.i.i, ptr %i.ax, align 1, !alias.scope !90, !noalias !93
  %i.bc = add nuw i64 %.sroa.0.05.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bc, %.val2.i
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !99

_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i
  store i64 %i.ac, ptr %i.e, align 8, !alias.scope !79, !noalias !100
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx6.i.i.i.i, align 8, !alias.scope !79, !noalias !100
  store i64 %.val2.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !79, !noalias !100
  invoke void @_RNvXs0_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB5_15GoogleConfigKeyNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %.val2.i)
          to label %bb.e unwind label %bb.d, !noalias !73

bb.d:                                             ; preds = %bb.cm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i.i.i.invoke.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit10.i.i.i.i.i.i, %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i89.i.i.i.i.i, %bb.cl, %.body60.i.i.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i84.i.i.i.i.i, %bb.ch, %.body55.i.i.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i79.i.i.i.i.i, %bb.cd, %.body50.i.i.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i74.i.i.i.i.i, %bb.bz, %.body45.i.i.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i69.i.i.i.i.i, %bb.bv, %.body40.i.i.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i64.i.i.i.i.i, %bb.bq, %.body.i.i.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i34.i.i.i.i.i, %bb.ax, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i, %bb.at, %bb.an, %.body.i.i.i.i.i.i, %.body11.i.i.i.i.i.i, %.body8.i.i.i.i.i.i, %bb.ah, %bb.ae, %bb.v, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.m, %bb.h, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bd, %bb.d ], [ %i.go, %bb.ch ], [ %i.bk, %bb.h ], [ %i.bs, %bb.m ], [ %i.cu, %bb.an ], [ %i.de, %bb.at ], [ %i.dq, %bb.ax ], [ %i.en, %bb.bq ], [ %eh.lpad-body61.i.i.i.i.i, %.body60.i.i.i.i.i ], [ %i.fb, %bb.bv ], [ %i.fo, %bb.bz ], [ %i.gb, %bb.cd ], [ %i.bs, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %eh.lpad-body12.i.i.i.i.i.i, %.body11.i.i.i.i.i.i ], [ %i.cg, %bb.v ], [ %i.cm, %bb.ae ], [ %i.co, %bb.ah ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %eh.lpad-body9.i.i.i.i.i.i, %.body8.i.i.i.i.i.i ], [ %i.de, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i ], [ %i.dq, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i34.i.i.i.i.i ], [ %i.en, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i64.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %eh.lpad-body41.i.i.i.i.i, %.body40.i.i.i.i.i ], [ %eh.lpad-body46.i.i.i.i.i, %.body45.i.i.i.i.i ], [ %eh.lpad-body51.i.i.i.i.i, %.body50.i.i.i.i.i ], [ %eh.lpad-body56.i.i.i.i.i, %.body55.i.i.i.i.i ], [ %i.fb, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i69.i.i.i.i.i ], [ %i.fo, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i74.i.i.i.i.i ], [ %i.gb, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i79.i.i.i.i.i ], [ %i.go, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i84.i.i.i.i.i ], [ %i.hb, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i89.i.i.i.i.i ], [ %i.hb, %bb.cl ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.e) #20
          to label %common.resume.i.i unwind label %bb.ct, !noalias !101

bb.e:                                             ; preds = %_RNvMs3_NtCs6Po7BT7Nknu_5alloc3stre18to_ascii_lowercase.exit.i.i.i
  %i.be = load i64, ptr %i.f, align 8, !range !102, !noalias !73, !noundef !8 ; 7 uses
  %.not.not.i.i.i = icmp eq i64 %i.be, -9223372036854775790
  %i.bf = load i8, ptr %i.k, align 8, !range !103, !noalias !73
  br i1 %.not.not.i.i.i, label %bb.cm, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = icmp ne i64 %i.be, -9223372036854775800
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nsw i64 %i.be, 9223372036854775802
  %i.bi = icmp ugt i64 %i.be, -9223372036854775803
  %i.bj = select i1 %i.bi, i64 %i.bh, i64 2
  switch i64 %i.bj, label %bb.g [
    i64 0, label %bb.j
    i64 1, label %bb.n
    i64 2, label %bb.q
    i64 3, label %bb.ap
    i64 4, label %bb.au
    i64 5, label %bb.ay
    i64 6, label %bb.bb
    i64 7, label %bb.be
    i64 8, label %bb.cn
    i64 9, label %bb.bh
    i64 10, label %bb.bk
  ]

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i.i.i.invoke.i.i.i unwind label %bb.h, !noalias !73

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i.i unwind label %bb.i, !noalias !73

bb.i:                                             ; preds = %bb.h
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

bb.j:                                             ; preds = %bb.f
  %.val27.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !104, !noalias !73 ; 5 uses
  %.val28.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8 ; 5 uses
  %i.bm = load ptr, ptr %.val28.i.i.i.i.i, align 8, !invariant.load !8, !noalias !73 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i.i.i.i.i) ]
  invoke void %i.bm(ptr noundef nonnull %.val27.i.i.i.i.i)
          to label %bb.l unwind label %bb.m, !noalias !73

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.cn, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i.i.i.i.i) ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i.i.i.i, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %i.br) #19, !noalias !73
  br label %bb.cn

bb.m:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) %i.bx) #19, !noalias !73
  br label %.body.i.i.i

bb.n:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i unwind label %bb.o, !noalias !73

bb.o:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i.i.i.i unwind label %bb.p, !noalias !73

bb.p:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit32.i.i.i.i.i unwind label %bb.bn, !noalias !73

bb.q:                                             ; preds = %bb.f
  %i.ca = icmp ne i64 %i.be, -9223372036854775807
  call void @llvm.assume(i1 %i.ca)
  %i.cb = xor i64 %i.be, -9223372036854775808
  %i.cc = icmp slt i64 %i.be, 0
  %i.cd = select i1 %i.cc, i64 %i.cb, i64 1
  switch i64 %i.cd, label %bb.r [
    i64 0, label %bb.u
    i64 1, label %bb.x
    i64 2, label %bb.aa
    i64 3, label %bb.ad
    i64 4, label %bb.ag
  ]

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i unwind label %bb.s, !noalias !73

bb.s:                                             ; preds = %bb.r
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i.i.i.i.i unwind label %bb.t, !noalias !73

bb.t:                                             ; preds = %bb.s
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i unwind label %bb.am, !noalias !73

bb.u:                                             ; preds = %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i.i.i.invoke.i.i.i unwind label %bb.v, !noalias !73

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i.i unwind label %bb.w, !noalias !73

bb.w:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

bb.x:                                             ; preds = %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i7.i.i.i.i.i.i unwind label %bb.y, !noalias !73

bb.y:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.body8.i.i.i.i.i.i unwind label %bb.z, !noalias !73

bb.z:                                             ; preds = %bb.y
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i7.i.i.i.i.i.i: ; preds = %bb.x
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit10.i.i.i.i.i.i unwind label %bb.aj, !noalias !73

bb.aa:                                            ; preds = %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !73

bb.ab:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body11.i.i.i.i.i.i unwind label %bb.ac, !noalias !73

bb.ac:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i unwind label %bb.al, !noalias !73

bb.ad:                                            ; preds = %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i.i.i.invoke.i.i.i unwind label %bb.ae, !noalias !73

bb.ae:                                            ; preds = %bb.ad
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i.i unwind label %bb.af, !noalias !73

bb.af:                                            ; preds = %bb.ae
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

bb.ag:                                            ; preds = %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i.i.i.invoke.i.i.i unwind label %bb.ah, !noalias !73

bb.ah:                                            ; preds = %bb.ag
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i.i unwind label %bb.ai, !noalias !73

bb.ai:                                            ; preds = %bb.ah
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i7.i.i.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.i.i.i.i.i

.body8.i.i.i.i.i.i:                               ; preds = %bb.aj, %bb.y
  %eh.lpad-body9.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cq, %bb.aj ], [ %i.ci, %bb.y ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(48) %i.o) #20
          to label %.body.i.i.i unwind label %bb.ak, !noalias !73

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit10.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i7.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(48) %i.o)
          to label %bb.cn unwind label %bb.d, !noalias !73

bb.ak:                                            ; preds = %.body.i.i.i.i.i.i, %.body11.i.i.i.i.i.i, %.body8.i.i.i.i.i.i
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i.i.i.i.i.i

.body11.i.i.i.i.i.i:                              ; preds = %bb.al, %bb.ab
  %eh.lpad-body12.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cs, %bb.al ], [ %i.ck, %bb.ab ]
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !112, !noalias !73, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp(ptr nonnull %.val2.i.i.i.i.i.i) #20
          to label %.body.i.i.i unwind label %bb.ak, !noalias !73

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !112, !noalias !73, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp(ptr nonnull %.val.i.i.i.i.i.i)
          to label %bb.cn unwind label %bb.d, !noalias !73

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.am, %bb.s
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ct, %bb.am ], [ %i.ce, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.l) #20
          to label %.body.i.i.i unwind label %bb.ak, !noalias !73

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i.i.i.invoke.i.i.i unwind label %bb.an, !noalias !73

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i.i.i unwind label %bb.ao, !noalias !73

bb.ao:                                            ; preds = %bb.an
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i.i.i.invoke.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i, %bb.ag, %bb.ad, %bb.u, %bb.g
  %i.cw = phi ptr [ %i.k, %bb.ag ], [ %i.k, %bb.ad ], [ %i.k, %bb.u ], [ %i.k, %bb.g ], [ %i.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %bb.cn unwind label %bb.d, !noalias !73

bb.ap:                                            ; preds = %bb.f
  %.val29.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !104, !noalias !73, !noundef !8 ; 4 uses
  %.val30.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !104, !noalias !73 ; 6 uses
  %i.cx = icmp eq ptr %.val29.i.i.i.i.i, null
  br i1 %i.cx, label %bb.cn, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30.i.i.i.i.i) ]
  %i.cy = load ptr, ptr %.val30.i.i.i.i.i, align 8, !invariant.load !8, !noalias !73 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void %i.cy(ptr noundef nonnull %.val29.i.i.i.i.i)
          to label %bb.as unwind label %bb.at, !noalias !73

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cz = getelementptr inbounds nuw i8, ptr %.val30.i.i.i.i.i, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.cn, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.dc = getelementptr inbounds nuw i8, ptr %.val30.i.i.i.i.i, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i.i.i.i.i, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) %i.dd) #19, !noalias !73
  br label %bb.cn

bb.at:                                            ; preds = %bb.ar
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val30.i.i.i.i.i, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.di = getelementptr inbounds nuw i8, ptr %.val30.i.i.i.i.i, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i.i.i.i.i, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) %i.dj) #19, !noalias !73
  br label %.body.i.i.i

bb.au:                                            ; preds = %bb.f
  %.val25.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !104, !noalias !73 ; 5 uses
  %.val26.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8 ; 5 uses
  %i.dk = load ptr, ptr %.val26.i.i.i.i.i, align 8, !invariant.load !8, !noalias !73 ; 2 uses
  %.not.i33.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i33.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i.i.i.i.i) ]
  invoke void %i.dk(ptr noundef nonnull %.val25.i.i.i.i.i)
          to label %bb.aw unwind label %bb.ax, !noalias !73

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.dl = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i.i, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.cn, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i36.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i36.i.i.i.i.i: ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i.i.i.i.i) ]
  %i.do = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i.i, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i.i.i.i.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) %i.dp) #19, !noalias !73
  br label %bb.cn

bb.ax:                                            ; preds = %bb.av
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i.i, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i34.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i34.i.i.i.i.i: ; preds = %bb.ax
  %i.du = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i.i, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i.i.i.i.i, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) %i.dv) #19, !noalias !73
  br label %.body.i.i.i

bb.ay:                                            ; preds = %bb.f
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i39.i.i.i.i.i unwind label %bb.az, !noalias !73

bb.az:                                            ; preds = %bb.ay
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body40.i.i.i.i.i unwind label %bb.ba, !noalias !73

bb.ba:                                            ; preds = %bb.az
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i39.i.i.i.i.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit42.i.i.i.i.i unwind label %bb.bs, !noalias !73

bb.bb:                                            ; preds = %bb.f
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i44.i.i.i.i.i unwind label %bb.bc, !noalias !73

bb.bc:                                            ; preds = %bb.bb
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body45.i.i.i.i.i unwind label %bb.bd, !noalias !73

bb.bd:                                            ; preds = %bb.bc
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i44.i.i.i.i.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit47.i.i.i.i.i unwind label %bb.bw, !noalias !73

bb.be:                                            ; preds = %bb.f
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i49.i.i.i.i.i unwind label %bb.bf, !noalias !73

bb.bf:                                            ; preds = %bb.be
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body50.i.i.i.i.i unwind label %bb.bg, !noalias !73

bb.bg:                                            ; preds = %bb.bf
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i49.i.i.i.i.i: ; preds = %bb.be
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit52.i.i.i.i.i unwind label %bb.ca, !noalias !73

bb.bh:                                            ; preds = %bb.f
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i54.i.i.i.i.i unwind label %bb.bi, !noalias !73

bb.bi:                                            ; preds = %bb.bh
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body55.i.i.i.i.i unwind label %bb.bj, !noalias !73

bb.bj:                                            ; preds = %bb.bi
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i54.i.i.i.i.i: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit57.i.i.i.i.i unwind label %bb.ce, !noalias !73

bb.bk:                                            ; preds = %bb.f
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i59.i.i.i.i.i unwind label %bb.bl, !noalias !73

bb.bl:                                            ; preds = %bb.bk
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body60.i.i.i.i.i unwind label %bb.bm, !noalias !73

bb.bm:                                            ; preds = %bb.bl
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i59.i.i.i.i.i: ; preds = %bb.bk
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit62.i.i.i.i.i unwind label %bb.ci, !noalias !73

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.bn, %bb.o
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.eg, %bb.bn ], [ %i.by, %bb.o ]
  %.val23.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73
  %.val24.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs62u4JVtZyFF_13deltalake_gcp(ptr %.val23.i.i.i.i.i, ptr nonnull %.val24.i.i.i.i.i) #20
          to label %.body.i.i.i unwind label %bb.br, !noalias !73

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit32.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i
  %.val21.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73 ; 5 uses
  %.val22.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8 ; 5 uses
  %i.eh = load ptr, ptr %.val22.i.i.i.i.i, align 8, !invariant.load !8, !noalias !73 ; 2 uses
  %.not.i63.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i63.i.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit32.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i.i.i.i) ]
  invoke void %i.eh(ptr noundef nonnull %.val21.i.i.i.i.i)
          to label %bb.bp unwind label %bb.bq, !noalias !73

bb.bp:                                            ; preds = %bb.bo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit32.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.cn, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i66.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i66.i.i.i.i.i: ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i.i.i.i) ]
  %i.el = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i, i64 16
  %i.em = load i64, ptr %i.el, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i.i.i.i, i64 noundef %i.ej, i64 noundef range(i64 1, -9223372036854775807) %i.em) #19, !noalias !73
  br label %bb.cn

bb.bq:                                            ; preds = %bb.bo
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i64.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i64.i.i.i.i.i: ; preds = %bb.bq
  %i.er = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i, i64 16
  %i.es = load i64, ptr %i.er, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i.i.i.i, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) %i.es) #19, !noalias !73
  br label %.body.i.i.i

bb.br:                                            ; preds = %.body60.i.i.i.i.i, %.body55.i.i.i.i.i, %.body50.i.i.i.i.i, %.body45.i.i.i.i.i, %.body40.i.i.i.i.i, %.body.i.i.i.i.i
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

bb.bs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i39.i.i.i.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i.i.i.i.i

.body40.i.i.i.i.i:                                ; preds = %bb.bs, %bb.az
  %eh.lpad-body41.i.i.i.i.i = phi { ptr, i32 } [ %i.eu, %bb.bs ], [ %i.dw, %bb.az ]
  %.val19.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73
  %.val20.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs62u4JVtZyFF_13deltalake_gcp(ptr %.val19.i.i.i.i.i, ptr nonnull %.val20.i.i.i.i.i) #20
          to label %.body.i.i.i unwind label %bb.br, !noalias !73

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit42.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i39.i.i.i.i.i
  %.val17.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73 ; 5 uses
  %.val18.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8 ; 5 uses
  %i.ev = load ptr, ptr %.val18.i.i.i.i.i, align 8, !invariant.load !8, !noalias !73 ; 2 uses
  %.not.i68.i.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i68.i.i.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit42.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i.i.i.i) ]
  invoke void %i.ev(ptr noundef nonnull %.val17.i.i.i.i.i)
          to label %bb.bu unwind label %bb.bv, !noalias !73

bb.bu:                                            ; preds = %bb.bt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit42.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.val18.i.i.i.i.i, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.cn, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i71.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i71.i.i.i.i.i: ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i.i.i.i) ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.val18.i.i.i.i.i, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) %i.fa) #19, !noalias !73
  br label %bb.cn

bb.bv:                                            ; preds = %bb.bt
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val18.i.i.i.i.i, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i69.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i69.i.i.i.i.i: ; preds = %bb.bv
  %i.ff = getelementptr inbounds nuw i8, ptr %.val18.i.i.i.i.i, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i.i.i.i, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) %i.fg) #19, !noalias !73
  br label %.body.i.i.i

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i44.i.i.i.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i.i.i.i.i

.body45.i.i.i.i.i:                                ; preds = %bb.bw, %bb.bc
  %eh.lpad-body46.i.i.i.i.i = phi { ptr, i32 } [ %i.fh, %bb.bw ], [ %i.dy, %bb.bc ]
  %.val15.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73
  %.val16.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs62u4JVtZyFF_13deltalake_gcp(ptr %.val15.i.i.i.i.i, ptr nonnull %.val16.i.i.i.i.i) #20
          to label %.body.i.i.i unwind label %bb.br, !noalias !73

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit47.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i44.i.i.i.i.i
  %.val13.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73 ; 5 uses
  %.val14.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8 ; 5 uses
  %i.fi = load ptr, ptr %.val14.i.i.i.i.i, align 8, !invariant.load !8, !noalias !73 ; 2 uses
  %.not.i73.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i73.i.i.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit47.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i.i.i) ]
  invoke void %i.fi(ptr noundef nonnull %.val13.i.i.i.i.i)
          to label %bb.by unwind label %bb.bz, !noalias !73

bb.by:                                            ; preds = %bb.bx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit47.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i.i, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.cn, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i76.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i76.i.i.i.i.i: ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i.i.i) ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i.i, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i.i.i.i, i64 noundef %i.fk, i64 noundef range(i64 1, -9223372036854775807) %i.fn) #19, !noalias !73
  br label %bb.cn

bb.bz:                                            ; preds = %bb.bx
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i.i, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i74.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i74.i.i.i.i.i: ; preds = %bb.bz
  %i.fs = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i.i, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i.i.i.i, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) %i.ft) #19, !noalias !73
  br label %.body.i.i.i

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i49.i.i.i.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body50.i.i.i.i.i

.body50.i.i.i.i.i:                                ; preds = %bb.ca, %bb.bf
  %eh.lpad-body51.i.i.i.i.i = phi { ptr, i32 } [ %i.fu, %bb.ca ], [ %i.ea, %bb.bf ]
  %.val11.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73
  %.val12.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs62u4JVtZyFF_13deltalake_gcp(ptr %.val11.i.i.i.i.i, ptr nonnull %.val12.i.i.i.i.i) #20
          to label %.body.i.i.i unwind label %bb.br, !noalias !73

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit52.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i49.i.i.i.i.i
  %.val9.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73 ; 5 uses
  %.val10.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8 ; 5 uses
  %i.fv = load ptr, ptr %.val10.i.i.i.i.i, align 8, !invariant.load !8, !noalias !73 ; 2 uses
  %.not.i78.i.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i78.i.i.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit52.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i) ]
  invoke void %i.fv(ptr noundef nonnull %.val9.i.i.i.i.i)
          to label %bb.cc unwind label %bb.cd, !noalias !73

bb.cc:                                            ; preds = %bb.cb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit52.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %bb.cn, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i81.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i81.i.i.i.i.i: ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i) ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.fx, i64 noundef range(i64 1, -9223372036854775807) %i.ga) #19, !noalias !73
  br label %bb.cn

bb.cd:                                            ; preds = %bb.cb
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i79.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i79.i.i.i.i.i: ; preds = %bb.cd
  %i.gf = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) %i.gg) #19, !noalias !73
  br label %.body.i.i.i

bb.ce:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i54.i.i.i.i.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i.i.i.i.i

.body55.i.i.i.i.i:                                ; preds = %bb.ce, %bb.bi
  %eh.lpad-body56.i.i.i.i.i = phi { ptr, i32 } [ %i.gh, %bb.ce ], [ %i.ec, %bb.bi ]
  %.val7.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73
  %.val8.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs62u4JVtZyFF_13deltalake_gcp(ptr %.val7.i.i.i.i.i, ptr nonnull %.val8.i.i.i.i.i) #20
          to label %.body.i.i.i unwind label %bb.br, !noalias !73

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit57.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i54.i.i.i.i.i
  %.val5.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73 ; 5 uses
  %.val6.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8 ; 5 uses
  %i.gi = load ptr, ptr %.val6.i.i.i.i.i, align 8, !invariant.load !8, !noalias !73 ; 2 uses
  %.not.i83.i.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i83.i.i.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit57.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i) ]
  invoke void %i.gi(ptr noundef nonnull %.val5.i.i.i.i.i)
          to label %bb.cg unwind label %bb.ch, !noalias !73

bb.cg:                                            ; preds = %bb.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit57.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %bb.cn, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i86.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i86.i.i.i.i.i: ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i) ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.gk, i64 noundef range(i64 1, -9223372036854775807) %i.gn) #19, !noalias !73
  br label %bb.cn

bb.ch:                                            ; preds = %bb.cf
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i84.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i84.i.i.i.i.i: ; preds = %bb.ch
  %i.gs = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) %i.gt) #19, !noalias !73
  br label %.body.i.i.i

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i59.i.i.i.i.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i.i.i.i.i

.body60.i.i.i.i.i:                                ; preds = %bb.ci, %bb.bl
  %eh.lpad-body61.i.i.i.i.i = phi { ptr, i32 } [ %i.gu, %bb.ci ], [ %i.ee, %bb.bl ]
  %.val3.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73
  %.val4.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs62u4JVtZyFF_13deltalake_gcp(ptr %.val3.i.i.i.i.i, ptr nonnull %.val4.i.i.i.i.i) #20
          to label %.body.i.i.i unwind label %bb.br, !noalias !73

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit62.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i59.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !104, !noalias !73 ; 5 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !73, !nonnull !8, !align !109, !noundef !8 ; 5 uses
  %i.gv = load ptr, ptr %.val2.i.i.i.i.i, align 8, !invariant.load !8, !noalias !73 ; 2 uses
  %.not.i88.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i88.i.i.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit62.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.gv(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.ck unwind label %bb.cl, !noalias !73

bb.ck:                                            ; preds = %bb.cj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit62.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.cn, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i: ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) %i.ha) #19, !noalias !73
  br label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !range !110, !invariant.load !8, !noalias !73 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i89.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i89.i.i.i.i.i: ; preds = %bb.cl
  %i.hf = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !range !111, !invariant.load !8, !noalias !73
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.hd, i64 noundef range(i64 1, -9223372036854775807) %i.hg) #19, !noalias !73
  br label %.body.i.i.i

bb.cm:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !73
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.cq unwind label %bb.d, !noalias !101

bb.cn:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i, %bb.ck, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i86.i.i.i.i.i, %bb.cg, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i81.i.i.i.i.i, %bb.cc, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i76.i.i.i.i.i, %bb.by, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i71.i.i.i.i.i, %bb.bu, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i66.i.i.i.i.i, %bb.bp, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i36.i.i.i.i.i, %bb.aw, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.as, %bb.ap, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i.i.i.invoke.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit10.i.i.i.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.l, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !73
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1s_ENtB4_10GcpOptions14as_gcp_options0B4_.exit.thread.i.i unwind label %bb.co, !noalias !73

_RNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1s_ENtB4_10GcpOptions14as_gcp_options0B4_.exit.thread.i.i: ; preds = %bb.cn
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !73
  br label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyBN_EuNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBN_BN_ENtB4F_10GcpOptions14as_gcp_options0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtB5h_4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtB5b_4IterBN_BN_EB4A_EE0E0E0E0B4F_.exit

bb.co:                                            ; preds = %bb.cn
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.i.i unwind label %bb.cp, !noalias !73

bb.cp:                                            ; preds = %bb.co
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !73
  unreachable

common.resume.i.i:                                ; preds = %bb.cw, %bb.cr, %bb.co, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.hj, %bb.cr ], [ %i.hh, %bb.co ], [ %i.ho, %bb.cw ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.cq:                                            ; preds = %bb.cm
  %.sroa.5.i.sroa.3.7.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !73 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.sroa.5.7..sroa_idx.i.i, i64 16, i1 false), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !73
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1s_ENtB4_10GcpOptions14as_gcp_options0B4_.exit.i.i unwind label %bb.cr, !noalias !101

bb.cr:                                            ; preds = %bb.cq
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.i.i unwind label %bb.cs, !noalias !101

bb.cs:                                            ; preds = %bb.cr
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !101
  unreachable

bb.ct:                                            ; preds = %.body.i.i.i
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !101
  unreachable

_RNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1s_ENtB4_10GcpOptions14as_gcp_options0B4_.exit.i.i: ; preds = %bb.cq
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !73
  %.not.i.i = icmp eq i64 %.sroa.5.i.sroa.3.7.copyload.i.i, -9223372036854775808
  br i1 %.not.i.i, label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyBN_EuNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBN_BN_ENtB4F_10GcpOptions14as_gcp_options0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtB5h_4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtB5b_4IterBN_BN_EB4A_EE0E0E0E0B4F_.exit, label %bb.cu

bb.cu:                                            ; preds = %_RNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1s_ENtB4_10GcpOptions14as_gcp_options0B4_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !noalias !120
  store i64 %.sroa.5.i.sroa.3.7.copyload.i.i, ptr %i.b, align 8, !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  call void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, i8 noundef %i.bf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !124
  %i.hm = load i64, ptr %i.a, align 8, !range !88, !alias.scope !125, !noalias !121, !noundef !8
  %i.hn = icmp eq i64 %i.hm, -9223372036854775808
  br i1 %i.hn, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB34_7HashMapB1g_B2h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB41_11collections4hash3map4IterB2h_B2h_ENCNvXCs62u4JVtZyFF_13deltalake_gcpINtB60_7HashMapB2h_B2h_ENtB6P_10GcpOptions14as_gcp_options0EE0E0B6P_.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i unwind label %bb.cw, !noalias !124

bb.cw:                                            ; preds = %bb.cv
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i unwind label %bb.cx, !noalias !124

bb.cx:                                            ; preds = %bb.cw
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !124
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i: ; preds = %bb.cv
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !124
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB34_7HashMapB1g_B2h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB41_11collections4hash3map4IterB2h_B2h_ENCNvXCs62u4JVtZyFF_13deltalake_gcpINtB60_7HashMapB2h_B2h_ENtB6P_10GcpOptions14as_gcp_options0EE0E0B6P_.exit.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB34_7HashMapB1g_B2h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB41_11collections4hash3map4IterB2h_B2h_ENCNvXCs62u4JVtZyFF_13deltalake_gcpINtB60_7HashMapB2h_B2h_ENtB6P_10GcpOptions14as_gcp_options0EE0E0B6P_.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117
  br label %_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyBN_EuNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBN_BN_ENtB4F_10GcpOptions14as_gcp_options0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtB5h_4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtB5b_4IterBN_BN_EB4A_EE0E0E0E0B4F_.exit

_RNCINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters10filter_map15filter_map_foldTRBN_B3k_ETNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyBN_EuNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBN_BN_ENtB4F_10GcpOptions14as_gcp_options0NCINvNvB1t_8for_each4callB3t_NCINvXs1i_B8_INtB8_7HashMapB3u_BN_NtNtNtB5h_4hash6random11RandomStateEINtNtB1x_7collect6ExtendB3t_E6extendINtB2z_9FilterMapINtB5b_4IterBN_BN_EB4A_EE0E0E0E0B4F_.exit: ; preds = %_RNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1s_ENtB4_10GcpOptions14as_gcp_options0B4_.exit.thread.i.i, %_RNCNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1s_ENtB4_10GcpOptions14as_gcp_options0B4_.exit.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB34_7HashMapB1g_B2h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtB41_11collections4hash3map4IterB2h_B2h_ENCNvXCs62u4JVtZyFF_13deltalake_gcpINtB60_7HashMapB2h_B2h_ENtB6P_10GcpOptions14as_gcp_options0EE0E0B6P_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.hq = add i64 %.sroa.0.0.ph, -1
  br label %.outer

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.hr = phi ptr [ %i.hw, %.lr.ph.split ], [ %.lcssa131136, %.lr.ph ] ; 2 uses
  %i.hs = phi ptr [ %i.hv, %.lr.ph.split ], [ %.lcssa130134, %.lr.ph ]
  %i.ht = load <16 x i8>, ptr %i.hr, align 16, !noalias !128
  %i.hu = icmp sgt <16 x i8> %i.ht, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.hu, ptr %i.g, align 8
  %i.hv = getelementptr inbounds i8, ptr %i.hs, i64 -768 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 3 uses
  %.cast = bitcast <16 x i1> %i.hu to i16         ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.cy:                                            ; preds = %.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted12, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !131
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted12, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !134
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs62u4JVtZyFF_13deltalake_gcp(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !137 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !137 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !137, !noundef !8 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !137
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
  br i1 %i.s, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #19, !noalias !137
  br label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs62u4JVtZyFF_13deltalake_gcp(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !140, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !140
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !140 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !140, !noundef !8 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !140, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !140, !noundef !8
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !140, !noundef !8
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !140
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !140, !nonnull !8, !noundef !8
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !140
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !140, !nonnull !8, !noundef !8
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg7.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !140, !inline_history !143
  %i.s = load i64, ptr %i.e, align 8, !noalias !140, !noundef !8
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !140
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.c

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.e, %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !140, !noundef !8 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.04.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !140, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.04.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !140
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs62u4JVtZyFF_13deltalake_gcp(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !110, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !111, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #19
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !110, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !111, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #19
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes14AttributeValueECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !88, !alias.scope !144, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs62u4JVtZyFF_13deltalake_gcp.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs62u4JVtZyFF_13deltalake_gcp.exit
    i64 1, label %bb.c
  ], !prof !147

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs62u4JVtZyFF_13deltalake_gcp.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !8, !align !109, !noundef !8 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !110, !invariant.load !8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !111, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.k) #19
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !110, !invariant.load !8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !111, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #19
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.f
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #19
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #19
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14insert_no_growCs62u4JVtZyFF_13deltalake_gcp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !8 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !148
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !47

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.v, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !8  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !9

bb.b:                                             ; preds = %._crit_edge.i
  %i.l = load <16 x i8>, ptr %.val, align 16, !noalias !151
  %i.m = icmp slt <16 x i8> %i.l, zeroinitializer
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.n, 0
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.n, i1 true)
  %i.p = zext nneg i16 %i.o to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.q = phi i64 [ %i.r, %.lr.ph.i ], [ 0, %bb.a ]
  %i.r = add i64 %i.q, 16                         ; 2 uses
  %i.s = add i64 %i.r, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.s, %.val3             ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.t, align 1, !noalias !148
  %i.u = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !51

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.w = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.p, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.y = lshr i64 %1, 57
  %i.z = trunc nuw nsw i64 %i.y to i8             ; 2 uses
  %i.aa = add i64 %.sroa.0.0.i5.i, -16
  %i.ab = and i64 %i.aa, %.val3
  store i8 %i.z, ptr %i.x, align 1
  %i.ac = getelementptr i8, ptr %.val, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  store i8 %i.z, ptr %i.ad, align 1
  %i.ae = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.af = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.ae ; 2 uses
  %i.ag = and i8 %i.w, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.ak = load <2 x i64>, ptr %i.ai, align 8
  %i.al = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ah, i64 0
  %i.am = sub <2 x i64> %i.ak, %i.al
  store <2 x i64> %i.am, ptr %i.ai, align 8
  ret ptr %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !154
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !157
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
end_hunk_1
begin_hunk_2_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs62u4JVtZyFF_13deltalake_gcp.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !182, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !183
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, %bb.c
  %.sroa.05.023.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ] ; 2 uses
  %.sroa.6.022.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ] ; 2 uses
  %.sroa.107.021.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ]
  %.sroa.86.020.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.020.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.022.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.023.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !188
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.022.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.023.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.020.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 3 uses
  %i.x = add i64 %.sroa.107.021.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i unwind label %bb.e, !noalias !182

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %.body.i.i.i unwind label %bb.f, !noalias !182

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !182
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i unwind label %bb.g, !noalias !182

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.z, %bb.e ]
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #20
          to label %common.resume.i.i.i unwind label %bb.j, !noalias !182

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs62u4JVtZyFF_13deltalake_gcp.exit.i.i unwind label %bb.h, !noalias !182

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume.i.i.i unwind label %bb.i, !noalias !182

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !182
  unreachable

common.resume.i.i.i:                              ; preds = %bb.h, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !182
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad), !noalias !182
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs62u4JVtZyFF_13deltalake_gcp.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, %bb.b
  %i.ai = mul i64 %i.b, 48                        ; 2 uses
  %i.aj = add i64 %i.ai, 48                       ; 2 uses
  %i.ak = add i64 %i.b, 17
  %i.al = add i64 %i.ak, %i.aj                    ; 4 uses
  %i.am = icmp uge i64 %i.al, %i.aj
  %i.an = icmp ult i64 %i.al, 9223372036854775793
  tail call void @llvm.assume(i1 %i.am)
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs62u4JVtZyFF_13deltalake_gcp.exit.i
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !176, !nonnull !8, !noundef !8
  %i.aq = sub i64 -48, %i.ai
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !176
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECs62u4JVtZyFF_13deltalake_gcp.exit.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !193, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !199, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !199, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !200
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ] ; 2 uses
  %.sroa.108.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ]
  %.sroa.87.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.87.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !205
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.v ; 2 uses
  %i.x = add i64 %.sroa.108.015.i.i, -1           ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 -16
  %.val.i.i = load ptr, ptr %i.y, align 8, !noalias !199 ; 5 uses
  %i.z = getelementptr i8, ptr %i.w, i64 -8
  %.val5.i.i = load ptr, ptr %i.z, align 8, !noalias !199, !nonnull !8, !align !109, !noundef !8 ; 5 uses
  %i.aa = load ptr, ptr %.val5.i.i, align 8, !invariant.load !8, !noalias !199 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !199

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !110, !invariant.load !8, !noalias !199 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !111, !invariant.load !8, !noalias !199
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #19, !noalias !199
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !110, !invariant.load !8, !noalias !199 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !111, !invariant.load !8, !noalias !199
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.al) #19, !noalias !199
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.am = icmp eq i64 %i.x, 0
  br i1 %i.am, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, %bb.b
  %i.an = shl i64 %i.b, 5                         ; 2 uses
  %i.ao = add i64 %i.an, 32                       ; 2 uses
  %i.ap = add i64 %i.b, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !193, !nonnull !8, !noundef !8
  %i.av = sub nuw nsw i64 -32, %i.an
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !193
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECs62u4JVtZyFF_13deltalake_gcp.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !210, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !216, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !216, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !217
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, %bb.c
  %.sroa.05.023.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ] ; 2 uses
  %.sroa.6.022.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ] ; 2 uses
  %.sroa.107.021.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ]
  %.sroa.86.020.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.020.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.022.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.023.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !222
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.022.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.023.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.020.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 3 uses
  %i.x = add i64 %.sroa.107.021.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !227, !alias.scope !228, !noalias !216, !noundef !8
  %i.aa = icmp slt i64 %i.z, -9223372036854775801
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i unwind label %bb.f, !noalias !216

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %.body.i.i.i unwind label %bb.g, !noalias !216

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !216
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i unwind label %bb.h, !noalias !216

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ab, %bb.f ]
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes14AttributeValueECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #20
          to label %common.resume.i.i.i unwind label %bb.l, !noalias !216

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !88, !alias.scope !233, !noalias !216, !noundef !8
  %i.ah = icmp eq i64 %i.ag, -9223372036854775808
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i2.i.i.i unwind label %bb.j, !noalias !216

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume.i.i.i unwind label %bb.k, !noalias !216

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !216
  unreachable

common.resume.i.i.i:                              ; preds = %bb.j, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i2.i.i.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !216
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i

bb.l:                                             ; preds = %.body.i.i.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !216
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i2.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i
  %i.al = icmp eq i64 %i.x, 0
  br i1 %i.al, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, %bb.b
  %i.am = mul i64 %i.b, 48                        ; 2 uses
  %i.an = add i64 %i.am, 48                       ; 2 uses
  %i.ao = add i64 %i.b, 17
  %i.ap = add i64 %i.ao, %i.an                    ; 4 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  %i.ar = icmp ult i64 %i.ap, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aq)
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.m

bb.m:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i
  %i.at = load ptr, ptr %0, align 8, !alias.scope !210, !nonnull !8, !noundef !8
  %i.au = sub i64 -48, %i.am
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !210
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1c_14AttributeValueEECs62u4JVtZyFF_13deltalake_gcp.exit.i, %bb.m
  ret void
}

end_hunk_2
