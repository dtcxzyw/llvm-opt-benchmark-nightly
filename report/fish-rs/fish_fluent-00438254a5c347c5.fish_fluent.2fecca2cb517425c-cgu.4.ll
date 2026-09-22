Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_fluent-00438254a5c347c5.fish_fluent.2fecca2cb517425c-cgu.4?download=true
inline.NumInlined: 160
inline.NumDeleted: 77
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !34, !noalias !35, !noundef !4 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !34, !noalias !35, !noundef !4 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !36 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  %i.t = icmp ult i64 %..i, 15
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.u, label %bb.j, label %bb.f, !prof !5

.thread:                                          ; preds = %bb.d
  %i.v = icmp samesign ult i64 %..i, 4
  %i.w = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.w, 8
  %.sroa.03.0.i.i = select i1 %i.v, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %..i, 3
  %i.y = udiv i64 %i.x, 7
  %i.z = add nsw i64 %i.y, -1
  %i.aa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = lshr i64 -1, %i.aa                      ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = icmp ugt i64 %i.ab, 1152921504606846974
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !39

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i54 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ae = shl nuw i64 %.sroa.4.0.i.ph.i54, 4      ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i54, 16 ; 2 uses
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, !prof !6

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !40
  %i.aj = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !40 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !40
  br label %bb.k

bb.i:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !40
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !41
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.pn = phi { i64, i64 } [ %i.an, %bb.j ], [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #16, !noalias !42
  resume { ptr, i32 } %i.ao

bb.m:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 3 uses
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i54, -1     ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i54, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i54, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.07.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.af, i1 false), !noalias !41
  store ptr %i.d, ptr %i.a, align 8, !noalias !38
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !38
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !38
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !38
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !43, !noalias !44, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge38, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.m
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !43, !noalias !44, !nonnull !4, !noundef !4 ; 2 uses
  %.val326 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val326, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %i.dj, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.037 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.036 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.035 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.034 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i129 = icmp eq i16 %.sroa.13.034, 0
  br i1 %.not.i129, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.131 = phi ptr [ %i.az, %.noexc2 ], [ %.sroa.0.037, %.preheader ] ; 2 uses
  %.sroa.5.130 = phi i64 [ %i.bc, %.noexc2 ], [ %.sroa.5.036, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.131) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.131, i64 16 ; 3 uses
  %.val27 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val27, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.130, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bb, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge38.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !43, !noalias !44
  %.pre43 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %bb.m
  %i.bd = phi i64 [ %.pre43, %._crit_edge38.loopexit ], [ %.sroa.07.0.i.i, %bb.m ]
  %i.be = phi i64 [ %.pre, %._crit_edge38.loopexit ], [ 0, %bb.m ] ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !38
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs476pBYQK2Ku_11fish_fluent(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.n, !noalias !42

bb.n:                                             ; preds = %._crit_edge38
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #17, !noalias !42
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %._crit_edge38
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !46), !noalias !42
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !47, !noalias !42 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !47, !noalias !42 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !47, !noalias !42, !noundef !4 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !42
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !47, !noalias !42
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !42
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !42
  call void @llvm.assume(i1 %i.bt), !noalias !42
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !42
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bo
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.034, %.preheader ], [ %i.bb, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.036, %.preheader ], [ %i.bc, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.037, %.preheader ], [ %i.az, %.noexc2 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.035, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.ce = load ptr, ptr %i.b, align 8, !alias.scope !49, !noalias !51, !nonnull !4, !align !7, !noundef !4
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !50, !noalias !52, !nonnull !4, !noundef !4
  %i.cg = sub nsw i64 0, %i.cc
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -16
  %.val.i = load ptr, ptr %i.ce, align 8, !noalias !53, !nonnull !4, !align !7, !noundef !4
  %i.cj = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEB1H_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ci)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit unwind label %bb.l ; 2 uses

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val6 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val6, %i.cj ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !54
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.0.0.lcssa.i, %i.co
  %i.cq = and i64 %i.cp, %.sroa.619.0..sroa_idx.i.i.val6 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !4
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.p, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.p:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cu = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.da, %.sroa.619.0..sroa_idx.i.i.val6 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !54
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.p ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.cj, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %.sroa.619.0..sroa_idx.i.i.val6
  store i8 %i.dg, ptr %i.de, align 1, !noalias !42
  %i.dj = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !38, !nonnull !4, !noundef !4 ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store i8 %i.dg, ptr %i.dl, align 1, !noalias !42
  %i.dm = load ptr, ptr %0, align 8, !alias.scope !43, !noalias !44, !nonnull !4, !noundef !4
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 4
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 4
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.do, ptr noundef nonnull align 1 dereferenceable(16) %i.dn, i64 range(i64 16, 49) 16, i1 false), !noalias !42
  %i.dp = icmp eq i64 %i.cd, 0
  br i1 %i.dp, label %._crit_edge38.loopexit, label %.preheader

bb.q:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_, i64 noundef 16, ptr noundef null) #18
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, %bb.c, %bb.q
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.q ], [ %.sroa.12.0.ph, %bb.k ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.q ], [ %.sroa.7.0.ph, %bb.k ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit ]
  %i.dq = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dr = insertvalue { i64, i64 } %i.dq, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1E_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1y_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !76, !noalias !77, !noundef !4 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !76, !noalias !77, !noundef !4 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !78 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80
  %i.t = icmp ult i64 %..i, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %..i, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %..i, 4
  %i.ac = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 16, 49) 24) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = add nuw i64 %i.af, 8
  %i.ah = and i64 %i.ag, -16                      ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.aj = add i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = icmp ugt i64 %i.aj, 9223372036854775792
  %or.cond.i.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, !prof !6

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !81
  %i.am = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !81 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !81
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.aj), !noalias !81
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.aq = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !82
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ap, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #16, !noalias !83
  resume { ptr, i32 } %i.ar

bb.o:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah ; 3 uses
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.au = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.av = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aw = mul nuw nsw i64 %i.av, 7
  %.sroa.07.0.i.i = select i1 %i.au, i64 %i.at, i64 %i.aw ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.as, i8 -1, i64 %i.ai, i1 false), !noalias !82
  store ptr %i.d, ptr %i.a, align 8, !noalias !80
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !80
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !80
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.as, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !80
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !80
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !80
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !80
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !84, !noalias !85, !noundef !4 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %._crit_edge38, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.az = load ptr, ptr %0, align 8, !alias.scope !84, !noalias !85, !nonnull !4, !noundef !4 ; 2 uses
  %.val326 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val326, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.dm, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.037 = phi ptr [ %i.az, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.036 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.035 = phi i64 [ %i.ax, %.preheader.lr.ph ], [ %i.cg, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.034 = phi i16 [ %i.bb, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i129 = icmp eq i16 %.sroa.13.034, 0
  br i1 %.not.i129, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.131 = phi ptr [ %i.bc, %.noexc2 ], [ %.sroa.0.037, %.preheader ] ; 2 uses
  %.sroa.5.130 = phi i64 [ %i.bf, %.noexc2 ], [ %.sroa.5.036, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.131) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.131, i64 16 ; 3 uses
  %.val27 = load <16 x i8>, ptr %i.bc, align 16
  %i.bd = icmp sgt <16 x i8> %.val27, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = add i64 %.sroa.5.130, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.be, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge38.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !84, !noalias !85
  %.pre43 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !80
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %bb.o
  %i.bg = phi i64 [ %.pre43, %._crit_edge38.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bh = phi i64 [ %.pre, %._crit_edge38.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !80
  store i64 %i.bh, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !80
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs476pBYQK2Ku_11fish_fluent(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.p, !noalias !83

bb.p:                                             ; preds = %._crit_edge38
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #17, !noalias !83
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %._crit_edge38
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87), !noalias !83
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !88, !noalias !83 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !88, !noalias !83 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !88, !noalias !83, !noundef !4 ; 3 uses
  %i.bk = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !83
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !88, !noalias !83
  %i.bl = add i64 %.val3.i.i, 1
  %i.bm = mul nuw i64 %.val.i.i, %i.bl            ; 2 uses
  %i.bn = add i64 %.val1.i.i, -1
  %i.bo = add i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  call void @llvm.assume(i1 %i.bp), !noalias !83
  %i.bq = sub i64 0, %.val1.i.i
  %i.br = and i64 %i.bo, %i.bq                    ; 3 uses
  %i.bs = add i64 %.val3.i.i, 17
  %i.bt = add i64 %i.bs, %i.br                    ; 4 uses
  %i.bu = icmp uge i64 %i.bt, %i.br
  %i.bv = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bw = icmp ule i64 %i.bt, %i.bv
  call void @llvm.assume(i1 %i.bu), !noalias !83
  call void @llvm.assume(i1 %i.bw), !noalias !83
  %i.bx = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bx), !noalias !83
  %i.by = icmp eq i64 %i.bt, 0
  br i1 %i.by, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bz = sub nsw i64 0, %i.br
  %i.ca = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bz
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !89
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.034, %.preheader ], [ %i.be, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.036, %.preheader ], [ %i.bf, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.037, %.preheader ], [ %i.bc, %.noexc2 ]
  %i.cb = add i16 %.sroa.13.1.lcssa, -1
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = and i16 %i.cb, %.sroa.13.1.lcssa
  %i.cf = add i64 %.sroa.5.1.lcssa, %i.cd         ; 2 uses
  %i.cg = add i64 %.sroa.9.035, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.ch = load ptr, ptr %i.b, align 8, !alias.scope !90, !noalias !92, !nonnull !4, !align !7, !noundef !4
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !91, !noalias !93, !nonnull !4, !noundef !4
  %i.cj = sub nsw i64 0, %i.cf
  %i.ck = getelementptr inbounds [24 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -24
  %.val.i = load ptr, ptr %i.ch, align 8, !noalias !94, !nonnull !4, !align !7, !noundef !4
  %i.cm = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCslSwhfOFuxKz_17fish_localization8LanguageECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val6 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val6, %i.cm ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cn, align 1, !noalias !95
  %i.co = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cp, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit ], [ %i.dg, %.lr.ph.i ]
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = add i64 %.sroa.0.0.lcssa.i, %i.cr
  %i.ct = and i64 %i.cs, %.sroa.619.0..sroa_idx.i.i.val6 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !4
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.r, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.r:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cx = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cy, 0
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cy, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit ]
  %i.db = phi i64 [ %i.dc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit ]
  %i.dc = add i64 %i.db, 16                       ; 2 uses
  %i.dd = add i64 %i.dc, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.dd, %.sroa.619.0..sroa_idx.i.i.val6 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.de, align 1, !noalias !95
  %i.df = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.da, %bb.r ], [ %i.ct, %._crit_edge.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.di = lshr i64 %i.cm, 57
  %i.dj = trunc nuw nsw i64 %i.di to i8           ; 2 uses
  %i.dk = add i64 %.sroa.0.0.i5.i, -16
  %i.dl = and i64 %i.dk, %.sroa.619.0..sroa_idx.i.i.val6
  store i8 %i.dj, ptr %i.dh, align 1, !noalias !83
  %i.dm = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !80, !nonnull !4, !noundef !4 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  store i8 %i.dj, ptr %i.do, align 1, !noalias !83
  %i.dp = load ptr, ptr %0, align 8, !alias.scope !84, !noalias !85, !nonnull !4, !noundef !4
  %.neg.i.i = xor i64 %i.cf, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.dr = getelementptr inbounds i8, ptr %i.dm, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dr, ptr noundef nonnull align 1 dereferenceable(24) %i.dq, i64 range(i64 16, 49) 24, i1 false), !noalias !83
  %i.ds = icmp eq i64 %i.cg, 0
  br i1 %i.ds, label %._crit_edge38.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent, i64 noundef 24, ptr noundef null) #18
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, %bb.c, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.s ], [ %.sroa.12.0.ph, %bb.m ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit ]
  %i.dt = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.du = insertvalue { i64, i64 } %i.dt, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.du
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1E_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1y_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1E_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1y_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !117, !noalias !118, !noundef !4 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !117, !noalias !118, !noundef !4 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !119 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  %i.t = icmp ult i64 %..i, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %..i, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %..i, 4
  %i.ac = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 16, 49) 48) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0       ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, !prof !6

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !122
  %i.ak = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !122 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !122
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ah), !noalias !122
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !123
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.an, %bb.k ], [ %i.am, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #16, !noalias !124
  resume { ptr, i32 } %i.ap

bb.o:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 3 uses
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.07.0.i.i = select i1 %i.as, i64 %i.ar, i64 %i.au ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ag, i1 false), !noalias !123
  store ptr %i.d, ptr %i.a, align 8, !noalias !121
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !121
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !121
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !121
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !121
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !121
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !121
  %i.av = load i64, ptr %i.e, align 8, !alias.scope !125, !noalias !126, !noundef !4 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge38, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !125, !noalias !126, !nonnull !4, !noundef !4 ; 2 uses
  %.val326 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val326, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %i.dk, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.037 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.036 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.035 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.034 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i129 = icmp eq i16 %.sroa.13.034, 0
  br i1 %.not.i129, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.131 = phi ptr [ %i.ba, %.noexc2 ], [ %.sroa.0.037, %.preheader ] ; 2 uses
  %.sroa.5.130 = phi i64 [ %i.bd, %.noexc2 ], [ %.sroa.5.036, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.131) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.131, i64 16 ; 3 uses
  %.val27 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val27, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.130, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge38.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !125, !noalias !126
  %.pre43 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !121
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %bb.o
  %i.be = phi i64 [ %.pre43, %._crit_edge38.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bf = phi i64 [ %.pre, %._crit_edge38.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !121
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !121
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs476pBYQK2Ku_11fish_fluent(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.p, !noalias !124

bb.p:                                             ; preds = %._crit_edge38
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #17, !noalias !124
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %._crit_edge38
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !128), !noalias !124
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !129, !noalias !124 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !129, !noalias !124 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !129, !noalias !124, !noundef !4 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !124
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !129, !noalias !124
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn), !noalias !124
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 4 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !124
  call void @llvm.assume(i1 %i.bu), !noalias !124
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !124
  %i.bw = icmp eq i64 %i.br, 0
  br i1 %i.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bx = sub nsw i64 0, %i.bp
  %i.by = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bx
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !130
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.034, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.036, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.037, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bz = add i16 %.sroa.13.1.lcssa, -1
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = and i16 %i.bz, %.sroa.13.1.lcssa
  %i.cd = add i64 %.sroa.5.1.lcssa, %i.cb         ; 2 uses
  %i.ce = add i64 %.sroa.9.035, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.cf = load ptr, ptr %i.b, align 8, !alias.scope !131, !noalias !133, !nonnull !4, !align !7, !noundef !4
  %i.cg = load ptr, ptr %0, align 8, !alias.scope !132, !noalias !134, !nonnull !4, !noundef !4
  %i.ch = sub nsw i64 0, %i.cd
  %i.ci = getelementptr inbounds [48 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -48
  %.val.i = load ptr, ptr %i.cf, align 8, !noalias !135, !nonnull !4, !noundef !4
  %i.ck = invoke noundef i64 @_RINvYNtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cj)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0E0Cs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0E0Cs476pBYQK2Ku_11fish_fluent.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val6 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val6, %i.ck ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cl, align 1, !noalias !136
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0E0Cs476pBYQK2Ku_11fish_fluent.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0E0Cs476pBYQK2Ku_11fish_fluent.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cn, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0E0Cs476pBYQK2Ku_11fish_fluent.exit ], [ %i.de, %.lr.ph.i ]
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = add i64 %.sroa.0.0.lcssa.i, %i.cp
  %i.cr = and i64 %i.cq, %.sroa.619.0..sroa_idx.i.i.val6 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !4
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %bb.r, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.r:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cv = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cw = bitcast <16 x i1> %i.cv to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cw, 0
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cw, i1 true)
  %i.cy = zext nneg i16 %i.cx to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0E0Cs476pBYQK2Ku_11fish_fluent.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0E0Cs476pBYQK2Ku_11fish_fluent.exit ]
  %i.cz = phi i64 [ %i.da, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0E0Cs476pBYQK2Ku_11fish_fluent.exit ]
  %i.da = add i64 %i.cz, 16                       ; 2 uses
  %i.db = add i64 %i.da, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.db, %.sroa.619.0..sroa_idx.i.i.val6 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.dc, align 1, !noalias !136
  %i.dd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.de, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cy, %bb.r ], [ %i.cr, %._crit_edge.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.dg = lshr i64 %i.ck, 57
  %i.dh = trunc nuw nsw i64 %i.dg to i8           ; 2 uses
  %i.di = add i64 %.sroa.0.0.i5.i, -16
  %i.dj = and i64 %i.di, %.sroa.619.0..sroa_idx.i.i.val6
  store i8 %i.dh, ptr %i.df, align 1, !noalias !124
  %i.dk = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !121, !nonnull !4, !noundef !4 ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.dj
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  store i8 %i.dh, ptr %i.dm, align 1, !noalias !124
  %i.dn = load ptr, ptr %0, align 8, !alias.scope !125, !noalias !126, !nonnull !4, !noundef !4
  %.neg.i.i = xor i64 %i.cd, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 48
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 48
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.dp, ptr noundef nonnull align 1 dereferenceable(48) %i.do, i64 range(i64 16, 49) 48, i1 false), !noalias !124
  %i.dq = icmp eq i64 %i.ce, 0
  br i1 %i.dq, label %._crit_edge38.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0E0Cs476pBYQK2Ku_11fish_fluent, i64 noundef 48, ptr noundef nonnull @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCs476pBYQK2Ku_11fish_fluent) #18
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, %bb.c, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.s ], [ %.sroa.12.0.ph, %bb.m ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit ]
  %i.dr = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.ds = insertvalue { i64, i64 } %i.dr, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.ds
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1o_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0ECsg2OgSy4wQJW_8type_map(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !158, !noalias !159, !noundef !4 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !158, !noalias !159, !noundef !4 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !160 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !162
  %i.t = icmp ult i64 %..i, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %..i, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %..i, 4
  %i.ac = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 16, 49) 48) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0       ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, !prof !6

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !163
  %i.ak = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !163 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !163
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ah), !noalias !163
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !164
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.an, %bb.k ], [ %i.am, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !162
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #16, !noalias !165
  resume { ptr, i32 } %i.ap

bb.o:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 3 uses
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.07.0.i.i = select i1 %i.as, i64 %i.ar, i64 %i.au ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ag, i1 false), !noalias !164
  store ptr %i.d, ptr %i.a, align 8, !noalias !162
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !162
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !162
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !162
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !162
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !162
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !162
  %i.av = load i64, ptr %i.e, align 8, !alias.scope !166, !noalias !167, !noundef !4 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge38, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !166, !noalias !167, !nonnull !4, !noundef !4 ; 2 uses
  %.val326 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val326, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %i.dk, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.037 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.036 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.035 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.034 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i129 = icmp eq i16 %.sroa.13.034, 0
  br i1 %.not.i129, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.131 = phi ptr [ %i.ba, %.noexc2 ], [ %.sroa.0.037, %.preheader ] ; 2 uses
  %.sroa.5.130 = phi i64 [ %i.bd, %.noexc2 ], [ %.sroa.5.036, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.131) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.131, i64 16 ; 3 uses
  %.val27 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val27, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.130, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bc, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge38.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !166, !noalias !167
  %.pre43 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !162
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %bb.o
  %i.be = phi i64 [ %.pre43, %._crit_edge38.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bf = phi i64 [ %.pre, %._crit_edge38.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !162
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !162
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs476pBYQK2Ku_11fish_fluent(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.p, !noalias !165

bb.p:                                             ; preds = %._crit_edge38
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #17, !noalias !165
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %._crit_edge38
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !169), !noalias !165
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !170, !noalias !165 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !170, !noalias !165 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !170, !noalias !165, !noundef !4 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !165
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !170, !noalias !165
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn), !noalias !165
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 4 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !165
  call void @llvm.assume(i1 %i.bu), !noalias !165
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !165
  %i.bw = icmp eq i64 %i.br, 0
  br i1 %i.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bx = sub nsw i64 0, %i.bp
  %i.by = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bx
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #15, !noalias !171
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECs476pBYQK2Ku_11fish_fluent.exit, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !162
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.034, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.036, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.037, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bz = add i16 %.sroa.13.1.lcssa, -1
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = and i16 %i.bz, %.sroa.13.1.lcssa
  %i.cd = add i64 %.sroa.5.1.lcssa, %i.cb         ; 2 uses
  %i.ce = add i64 %.sroa.9.035, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.cf = load ptr, ptr %i.b, align 8, !alias.scope !172, !noalias !174, !nonnull !4, !align !7, !noundef !4
  %i.cg = load ptr, ptr %0, align 8, !alias.scope !173, !noalias !175, !nonnull !4, !noundef !4
  %i.ch = sub nsw i64 0, %i.cd
  %i.ci = getelementptr inbounds [48 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -48
  %.val.i = load ptr, ptr %i.cf, align 8, !noalias !176, !nonnull !4, !align !7, !noundef !4
  %i.ck = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cj)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val6 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val6, %i.ck ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cl, align 1, !noalias !177
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cn, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit ], [ %i.de, %.lr.ph.i ]
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = add i64 %.sroa.0.0.lcssa.i, %i.cp
  %i.cr = and i64 %i.cq, %.sroa.619.0..sroa_idx.i.i.val6 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !4
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %bb.r, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.r:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cv = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cw = bitcast <16 x i1> %i.cv to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cw, 0
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cw, i1 true)
  %i.cy = zext nneg i16 %i.cx to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit ]
  %i.cz = phi i64 [ %i.da, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent.exit ]
  %i.da = add i64 %i.cz, 16                       ; 2 uses
  %i.db = add i64 %i.da, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.db, %.sroa.619.0..sroa_idx.i.i.val6 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.dc, align 1, !noalias !177
  %i.dd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.de, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cy, %bb.r ], [ %i.cr, %._crit_edge.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.dg = lshr i64 %i.ck, 57
  %i.dh = trunc nuw nsw i64 %i.dg to i8           ; 2 uses
  %i.di = add i64 %.sroa.0.0.i5.i, -16
  %i.dj = and i64 %i.di, %.sroa.619.0..sroa_idx.i.i.val6
  store i8 %i.dh, ptr %i.df, align 1, !noalias !165
  %i.dk = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !162, !nonnull !4, !noundef !4 ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.dj
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  store i8 %i.dh, ptr %i.dm, align 1, !noalias !165
  %i.dn = load ptr, ptr %0, align 8, !alias.scope !166, !noalias !167, !nonnull !4, !noundef !4
  %.neg.i.i = xor i64 %i.cd, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 48
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 48
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.dp, ptr noundef nonnull align 1 dereferenceable(48) %i.do, i64 range(i64 16, 49) 48, i1 false), !noalias !165
  %i.dq = icmp eq i64 %i.ce, 0
  br i1 %i.dq, label %._crit_edge38.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent, i64 noundef 48, ptr noundef nonnull @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1L_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCs476pBYQK2Ku_11fish_fluent) #18
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit, %bb.c, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.s ], [ %.sroa.12.0.ph, %bb.m ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent.exit ]
  %i.dr = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.ds = insertvalue { i64, i64 } %i.dr, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.ds
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE7reserveNCINvNtB8_3map11make_hasherBQ_B1G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !180 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !180 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !180, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !180
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
  br i1 %i.s, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #15, !noalias !180
  br label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !184
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !184, !nonnull !4, !align !7, !noundef !4 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !184, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !184, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !184, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !184, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !184
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !184, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !184
  %i.q = load i64, ptr %i.e, align 8, !noalias !184, !noundef !4
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !184
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !184, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !184, !noundef !4
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !184, !noundef !4
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !184
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !184, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !184
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !184, !nonnull !4, !noundef !4
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !184, !inline_history !183
  %i.af = load i64, ptr %i.e, align 8, !noalias !184, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !184
  br label %bb.d

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !184, !noundef !4 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !184, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !184
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %switch = icmp samesign ult i64 %i.a, 2
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG2_INtNtNtB4_3ops8function2FnTRL3_SINtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueL2_ERL1_INtNtB1P_4args10FluentArgsL0_EEEp6OutputIB1L_L2_ENtNtB4_6marker4SendNtB3y_4SyncEL_EECs476pBYQK2Ku_11fish_fluent.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG2_INtNtNtB4_3ops8function2FnTRL3_SINtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueL2_ERL1_INtNtB1P_4args10FluentArgsL0_EEEp6OutputIB1L_L2_ENtNtB4_6marker4SendNtB3y_4SyncEL_EECs476pBYQK2Ku_11fish_fluent.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.i) #15
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG2_INtNtNtB4_3ops8function2FnTRL3_SINtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueL2_ERL1_INtNtB1P_4args10FluentArgsL0_EEEp6OutputIB1L_L2_ENtNtB4_6marker4SendNtB3y_4SyncEL_EECs476pBYQK2Ku_11fish_fluent.exit

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG2_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL3_SINtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueL2_ERL1_INtNtB1C_4args10FluentArgsL0_EEEp6OutputIB1y_L2_ENtNtBS_6marker4SendNtB3l_4SyncEL_ENtNtBQ_4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit5.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #15
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG2_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL3_SINtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueL2_ERL1_INtNtB1C_4args10FluentArgsL0_EEEp6OutputIB1y_L2_ENtNtBS_6marker4SendNtB3l_4SyncEL_ENtNtBQ_4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit5.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG2_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL3_SINtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueL2_ERL1_INtNtB1C_4args10FluentArgsL0_EEEp6OutputIB1y_L2_ENtNtBS_6marker4SendNtB3l_4SyncEL_ENtNtBQ_4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit5.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG2_INtNtNtB4_3ops8function2FnTRL3_SINtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueL2_ERL1_INtNtB1P_4args10FluentArgsL0_EEEp6OutputIB1L_L2_ENtNtB4_6marker4SendNtB3y_4SyncEL_EECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #16
          to label %common.resume unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.f = load i64, ptr %i.e, align 8, !range !10, !alias.scope !187, !noundef !4
  %switch.i = icmp samesign ult i64 %i.f, 2
  br i1 %switch.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryECs476pBYQK2Ku_11fish_fluent.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !187 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !187, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.i = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !187 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.i(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.h, !noalias !187

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !11, !invariant.load !4, !noalias !187 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryECs476pBYQK2Ku_11fish_fluent.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !12, !invariant.load !4, !noalias !187
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #15, !noalias !187
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryECs476pBYQK2Ku_11fish_fluent.exit

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !11, !invariant.load !4, !noalias !187 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !12, !invariant.load !4, !noalias !187
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #15, !noalias !187
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.o, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit, %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void

bb.i:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !7, !noundef !4
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEB1H_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !7, !noundef !4
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCslSwhfOFuxKz_17fish_localization8LanguageECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0E0Cs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -48
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.f = tail call noundef i64 @_RINvYNtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -48
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !7, !noundef !4
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14insert_no_growCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !190
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !4  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !190
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [48 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SendNtB28_4SyncEL_EEE14insert_no_growCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !193
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !4  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !193
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14insert_no_growCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !196
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !4  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !196
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [48 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 16, 49) %2, ptr noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !4
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #16
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !199
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !8

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !4
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !199
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !9

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !200

bb.h:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !4
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val14
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val14, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !4
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
          to label %bb.d unwind label %bb.e

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val16
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 16, 49) %2) unnamed_addr #3 {
bb.a:
  %i.a = and i64 %2, 7                            ; 2 uses
  %i.b = lshr i64 %2, 3
  tail call void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs476pBYQK2Ku_11fish_fluent(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.b)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %2, 56                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 4 uses
  %i.f = icmp samesign ult i64 %i.a, 4
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 1, !alias.scope !210, !noalias !211
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.e, align 1, !alias.scope !211, !noalias !210
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.d, align 1, !alias.scope !210, !noalias !211
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.e, align 1, !alias.scope !211, !noalias !210
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.g = and i64 %2, 2
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.i, align 1, !alias.scope !212, !noalias !213
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.j, align 1, !alias.scope !213, !noalias !212
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.i, align 1, !alias.scope !212, !noalias !213
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.j, align 1, !alias.scope !213, !noalias !212
  %i.k = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.l = and i64 %2, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.n, align 1, !alias.scope !214, !noalias !215
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.o, align 1, !alias.scope !215, !noalias !214
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.n, align 1, !alias.scope !214, !noalias !215
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.o, align 1, !alias.scope !215, !noalias !214
  br label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1f_.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
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
  br i1 %i.i, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1f_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #15
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1f_.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1f_.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1D_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB21_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB21_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #15
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB21_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB21_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !224, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryENtNtB1h_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !226, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEECs476pBYQK2Ku_11fish_fluent.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !226, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !227
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !228
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w), !noalias !226
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEECs476pBYQK2Ku_11fish_fluent.exit.i, label %bb.d

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEECs476pBYQK2Ku_11fish_fluent.exit.i: ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 48                         ; 2 uses
  %i.z = add i64 %i.y, 48                         ; 2 uses
  %i.aa = add i64 %i.b, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryENtNtB1h_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEECs476pBYQK2Ku_11fish_fluent.exit.i
  %i.af = load ptr, ptr %0, align 8, !alias.scope !224, !nonnull !4, !noundef !4
  %i.ag = sub i64 -48, %i.y
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !224
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryENtNtB1h_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryENtNtB1h_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.a, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEECs476pBYQK2Ku_11fish_fluent.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SendNtB28_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !237, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SendNtB2x_4SyncEL_EENtNtB1Q_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !239, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SendNtB2u_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !239, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !240
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBE_3AnyNtNtB4_6marker4SendNtB1F_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBE_3AnyNtNtB4_6marker4SendNtB1F_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBE_3AnyNtNtB4_6marker4SendNtB1F_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i.i ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBE_3AnyNtNtB4_6marker4SendNtB1F_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i.i ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBE_3AnyNtNtB4_6marker4SendNtB1F_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SendNtB2e_4SyncEL_EEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !241
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SendNtB2e_4SyncEL_EEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SendNtB2e_4SyncEL_EEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
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
  %.val.i.i = load ptr, ptr %i.w, align 8, !noalias !239 ; 5 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %.val5.i.i = load ptr, ptr %i.x, align 8, !noalias !239, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.y = load ptr, ptr %.val5.i.i, align 8, !invariant.load !4, !noalias !239 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SendNtB2e_4SyncEL_EEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !239

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBX_3AnyNtNtBZ_6marker4SendNtB2e_4SyncEL_EEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !11, !invariant.load !4, !noalias !239 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBE_3AnyNtNtB4_6marker4SendNtB1F_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !12, !invariant.load !4, !noalias !239
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #15, !noalias !239
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBE_3AnyNtNtB4_6marker4SendNtB1F_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !11, !invariant.load !4, !noalias !239 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit5.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !12, !invariant.load !4, !noalias !239
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #15, !noalias !239
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit5.i.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit5.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBE_3AnyNtNtB4_6marker4SendNtB1F_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.ak = icmp eq i64 %i.v, 0
  br i1 %i.ak, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SendNtB2u_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i, label %bb.d

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SendNtB2u_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBE_3AnyNtNtB4_6marker4SendNtB1F_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i.i, %bb.b
  %i.al = shl i64 %i.b, 5                         ; 2 uses
  %i.am = add i64 %i.al, 32                       ; 2 uses
  %i.an = add i64 %i.b, 17
  %i.ao = add i64 %i.an, %i.am                    ; 4 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = icmp ult i64 %i.ao, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap)
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SendNtB2x_4SyncEL_EENtNtB1Q_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SendNtB2u_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i
  %i.as = load ptr, ptr %0, align 8, !alias.scope !237, !nonnull !4, !noundef !4
  %i.at = sub nuw nsw i64 -32, %i.al
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !237
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SendNtB2x_4SyncEL_EENtNtB1Q_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1f_3AnyNtNtB1h_6marker4SendNtB2x_4SyncEL_EENtNtB1Q_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.a, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB1c_3AnyNtNtB1e_6marker4SendNtB2u_4SyncEL_EEECs476pBYQK2Ku_11fish_fluent.exit.i, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !250, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !252, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !252, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !253
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i.i ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i.i ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !254
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.06.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -32
  %.val.i.i = load ptr, ptr %i.w, align 8, !noalias !252, !noundef !4 ; 3 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -24
  %.val5.i.i = load i64, ptr %i.x, align 8, !noalias !252 ; 2 uses
  %i.y = icmp eq ptr %.val.i.i, null
  %i.z = icmp eq i64 %.val5.i.i, 0
  %or.cond.i.i.i.i.i.i.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %1 = shl nuw nsw i64 %.val5.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %1, i64 noundef 1) #15, !noalias !252
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE9next_implKb0_ECs476pBYQK2Ku_11fish_fluent.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i, label %bb.d

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 48                        ; 2 uses
  %i.ac = add i64 %i.ab, 48                       ; 2 uses
  %i.ad = add i64 %i.b, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i
  %i.ai = load ptr, ptr %0, align 8, !alias.scope !250, !nonnull !4, !noundef !4
  %i.aj = sub i64 -48, %i.ab
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #15, !noalias !250
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.a, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEECs476pBYQK2Ku_11fish_fluent.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCs476pBYQK2Ku_11fish_fluent(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1L_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCs476pBYQK2Ku_11fish_fluent(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.c = icmp eq ptr %.val, null
  %i.d = icmp eq i64 %.val1, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond.i.i.i.i.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0Cs476pBYQK2Ku_11fish_fluent.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %1 = shl nuw nsw i64 %.val1, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %1, i64 noundef 1) #15
  br label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0Cs476pBYQK2Ku_11fish_fluent.exit

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0Cs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1o_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0ECsg2OgSy4wQJW_8type_map(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEB1H_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCslSwhfOFuxKz_17fish_localization8LanguageECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs476pBYQK2Ku_11fish_fluent(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { inlinehint }
attributes #19 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", i32 2002, i32 2000}
!7 = !{i64 8}
!8 = !{!"branch_weights", i32 1, i32 1999}
!9 = !{!"branch_weights", i32 0, i32 1}
!10 = !{i64 0, i64 3}
!11 = !{i64 0, i64 -9223372036854775808}
!12 = !{i64 1, i64 536870913}
!13 = distinct !{!13, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent"}
!14 = distinct !{!14, !13, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 0"}
!15 = distinct !{!15, !13, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 2"}
!16 = distinct !{!16, !13, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 1"}
!17 = distinct !{!17, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent"}
!18 = distinct !{!18, !17, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 0"}
!19 = distinct !{!19, !17, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 2"}
!20 = distinct !{!20, !17, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 1"}
!21 = distinct !{!21, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent"}
!22 = distinct !{!22, !21, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 0"}
!23 = distinct !{!23, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent"}
!24 = distinct !{!24, !23, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 0"}
!25 = distinct !{!25, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent"}
!26 = distinct !{!26, !25, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent: argument 0"}
!27 = distinct !{!27, !"_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent"}
!28 = distinct !{!28, !27, !"_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent: argument 0"}
!29 = distinct !{!29, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_"}
!30 = distinct !{!30, !29, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_: argument 0"}
!31 = distinct !{!31, !29, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_: argument 1"}
!32 = distinct !{!32, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!33 = distinct !{!33, !32, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!34 = !{!14}
!35 = !{!16, !15}
!36 = !{!14, !16, !15}
!37 = !{!18}
!38 = !{!18, !20, !19, !14, !16, !15}
!39 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!40 = !{!24, !22}
!41 = !{!22}
!42 = !{!19, !15}
!43 = !{!18, !14}
!44 = !{!20, !19, !16, !15}
!45 = !{!26}
!46 = !{!28}
!47 = !{!28, !26}
!48 = !{!28, !26, !19, !15}
!49 = !{!30}
!50 = !{!31}
!51 = !{!31, !19, !15}
!52 = !{!30, !19, !15}
!53 = !{!30, !31, !19, !15}
!54 = !{!33}
!55 = distinct !{!55, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent"}
!56 = distinct !{!56, !55, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 0"}
!57 = distinct !{!57, !55, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 2"}
!58 = distinct !{!58, !55, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 1"}
!59 = distinct !{!59, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent"}
!60 = distinct !{!60, !59, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 0"}
!61 = distinct !{!61, !59, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 2"}
!62 = distinct !{!62, !59, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 1"}
!63 = distinct !{!63, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent"}
!64 = distinct !{!64, !63, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 0"}
!65 = distinct !{!65, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent"}
!66 = distinct !{!66, !65, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs476pBYQK2Ku_11fish_fluent: argument 0"}
!67 = distinct !{!67, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent"}
!68 = distinct !{!68, !67, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs476pBYQK2Ku_11fish_fluent: argument 0"}
!69 = distinct !{!69, !"_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent"}
!70 = distinct !{!70, !69, !"_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent: argument 0"}
!71 = distinct !{!71, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent"}
!72 = distinct !{!72, !71, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent: argument 0"}
!73 = distinct !{!73, !71, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1G_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0Cs476pBYQK2Ku_11fish_fluent: argument 1"}
!74 = distinct !{!74, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!75 = distinct !{!75, !74, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!76 = !{!56}
!77 = !{!58, !57}
!78 = !{!56, !58, !57}
!79 = !{!60}
!80 = !{!60, !62, !61, !56, !58, !57}
!81 = !{!66, !64}
!82 = !{!64}
!83 = !{!61, !57}
!84 = !{!60, !56}
end_hunk_0
